----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:21:30 11/11/2019 
-- Design Name: 
-- Module Name:    reg_sync_beh - Behavioral 
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

entity reg_sync_beh is
	 Generic ( n : integer := 4 ); 
    Port ( Din : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Dout : out  STD_LOGIC_VECTOR (n-1 downto 0);
           CLK : in  STD_LOGIC;
           E : in  STD_LOGIC);
end reg_sync_beh;

architecture Behavioral of reg_sync_beh is

	signal reg : std_logic_vector(n-1 downto 0);

begin

	main: process ( Din, E, CLK )
	begin
		if E = '1' then
			if rising_edge( CLK ) then
				reg <= Din;
			end if;
		end if;
	end process;
	
	Dout <= reg;

end Behavioral;

