----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:43:52 11/10/2019 
-- Design Name: 
-- Module Name:    frs - Behavioral 
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

entity frs is
    Port ( R : in  STD_LOGIC;
           S : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end frs;

architecture Behavioral of frs is

	signal data : STD_LOGIC;

begin

	 main : process( CLK, R, S )
	 begin	 
		if rising_edge(CLK) then
			 if R = '1' then
				  data <= '0';
			 elsif S = '1' then
				  data <= '1';
			 else
				  data <= data;
			 end if;
		end if;
	 end process;
	 
	 Q <= data;
	 nQ <= not data;

end Behavioral;

