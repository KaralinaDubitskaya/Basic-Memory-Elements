----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:13:14 11/12/2019 
-- Design Name: 
-- Module Name:    johnson_counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity johnson_counter is
	 Generic ( n : integer := 4 ); 
    Port ( Pout : out  STD_LOGIC_VECTOR (0 to n-1);
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC);
end johnson_counter;

architecture Behavioral of johnson_counter is

signal reg : std_logic_vector(0 to n-1);

begin

	main: process (CLK, RST)
	begin
	
		if RST = '1' then
			reg <= (others => '0');
		elsif rising_edge(CLK) then
			reg <= not (reg(n-1)) & reg(0 to n-2);
		end if;
		
	end process;	
	
	Pout <= reg;

end Behavioral;

