----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:10:03 11/07/2019 
-- Design Name: 
-- Module Name:    d_latch_param - Behavioral 
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

entity d_latch_param is
    Port ( D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end d_latch_param;

architecture Behavioral of d_latch_param is

	signal S1, S2, nD : STD_LOGIC;

begin

	nD <= inertial not D after 1 ns;
	S2 <= inertial D nor S1 after 1 ns;
	S1 <= inertial nD nor S2 after 1 ns;
	Q <= transport S1 after 1 ns;
	nQ <= transport S2 after 1 ns;
	
end Behavioral;

