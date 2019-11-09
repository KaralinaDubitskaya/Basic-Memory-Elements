----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:03:47 11/09/2019 
-- Design Name: 
-- Module Name:    dec_latch - Behavioral 
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

entity dec_latch is
    Port ( D : in  STD_LOGIC;
           E : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end dec_latch;

architecture Behavioral of dec_latch is

	signal data : STD_LOGIC;

begin

	main: process (CLR, E, D)
	begin
	
		if CLR = '1' then 
			data <= '0';
		elsif E = '1' then
			data <= D;
		end if;
		
	end process;
	
	Q <= data;
	nQ <= not data;

end Behavioral;

