----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:38:57 11/09/2019 
-- Design Name: 
-- Module Name:    fdcpe - Behavioral 
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

entity fdcpe is
    Port ( CLR : in  STD_LOGIC;
           PRE : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end fdcpe;

architecture Behavioral of fdcpe is

	signal data : STD_LOGIC;

begin

	main : process ( CLR, PRE, CE, CLK, D)
	begin
		if CLR = '1' then
			data <= '0';
		elsif PRE = '1' then
			data <= '1';
		elsif CE = '1' then
			if rising_edge(CLK) then
				data <= D;
			end if;
		end if;
	end process;
	
	Q <= data;
	nQ <= not data;
	
end Behavioral;

