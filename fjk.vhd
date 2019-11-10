----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:43:23 11/10/2019 
-- Design Name: 
-- Module Name:    fjk - Behavioral 
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

entity fjk is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end fjk;

architecture Behavioral of fjk is

	signal data : STD_LOGIC;

begin

	main : process ( J, K, CLK )
	begin
		if rising_edge( CLK ) then
			if (J = '1' and K = '1') then
				data <= not data;
			elsif K = '1' then
				data <= '0';
			elsif J = '1' then
				data <= '1';
			end if; 
		end if;
	end process;
	
	Q <= data;
	nQ <= not data;

end Behavioral;

