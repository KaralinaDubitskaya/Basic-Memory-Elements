----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:11:30 11/07/2019 
-- Design Name: 
-- Module Name:    de_latch_param - Behavioral 
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

entity de_latch_param is
    Port ( D : in  STD_LOGIC;
           E : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end de_latch_param;

architecture Param of de_latch_param is

	signal S1, S2 : STD_LOGIC;

begin

	S2 <= inertial(E and D) nor S1 after 2 ns;
	S1 <= inertial(E and (not D)) nor S2 after 2 ns;
	Q <= transport S1 after 2 ns;
	nQ <= transport S2 after 2 ns;

end Param;

