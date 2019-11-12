----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:16:19 11/12/2019 
-- Design Name: 
-- Module Name:    sreg_struct - Behavioral 
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

entity sreg_beh is
	 Generic ( n : integer := 4 ); 
    Port ( Sin : in  STD_LOGIC;
           Pout : out  STD_LOGIC_VECTOR (0 to n-1);
           SE : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC);
end sreg_beh;

architecture Behavioral of sreg_beh is

signal reg : std_logic_vector(0 to n-1);

begin

	main: process (Sin, SE, CLK, RST)
	begin
		if RST = '1' then
			reg <= (others => '0');
		elsif rising_edge(CLK) then
			if SE = '1' then
				reg <= Sin & reg(0 to n-2);
			end if;
		end if;
	end process;	
	
	Pout <= reg;

end Behavioral;

