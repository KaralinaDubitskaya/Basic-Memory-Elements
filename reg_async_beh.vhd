----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:36:56 11/10/2019 
-- Design Name: 
-- Module Name:    reg_async_beh - Behavioral 
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

entity reg_async_beh is
	 Generic ( n : integer := 4 ); 
    Port ( Din : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Dout : out  STD_LOGIC_VECTOR (n-1 downto 0);
           E : in  STD_LOGIC);
end reg_async_beh;

architecture Behavioral of reg_async_beh is

	signal reg : std_logic_vector(n-1 downto 0);

begin

	main: process (Din, E)
	begin
		if E = '1' then
			reg <= Din;
		end if;
	end process;
	
	Dout <= reg;

end Behavioral;

