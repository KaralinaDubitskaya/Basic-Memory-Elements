----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:39:30 11/10/2019 
-- Design Name: 
-- Module Name:    ftc - Behavioral 
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

entity ft is
    Port ( CLK : in  STD_LOGIC;
           T : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end ft;

architecture Behavioral of ft is

	signal data : STD_LOGIC := '0';

begin

	main : process ( CLK, T )
	begin
		if T = '1' then
			if rising_edge(CLK) then
				data <= not data;
			end if;
		end if;
	end process;

	Q <= data;
	nQ <= not data;

end Behavioral;

