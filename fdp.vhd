----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:31:42 11/09/2019 
-- Design Name: 
-- Module Name:    fdp - Behavioral 
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

entity fdp is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           PRE : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end fdp;

architecture Behavioral of fdp is

	signal data : STD_LOGIC;

begin

	main : process ( PRE, CLK, D)
	begin
		if PRE = '1' then
			data <= '1';
		elsif rising_edge(CLK) then
			data <= D;
		end if;
	end process;

	Q <= data;
	nQ <= not data;
	
end Behavioral;

