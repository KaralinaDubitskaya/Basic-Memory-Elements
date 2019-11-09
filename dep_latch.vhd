----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:59:11 11/09/2019 
-- Design Name: 
-- Module Name:    dep_latch - Behavioral 
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

entity dep_latch is
    Port ( PRE : in  STD_LOGIC;
           E : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end dep_latch;

architecture Behavioral of dep_latch is

	signal data : STD_LOGIC;

begin

	main: process (PRE, E, D)
	begin
	
		if PRE = '1' then 
			data <= '1';
		elsif E = '1' then
			data <= D;
		end if;
		
	end process;
	
	Q <= data;
	nQ <= not data;
	
end Behavioral;

