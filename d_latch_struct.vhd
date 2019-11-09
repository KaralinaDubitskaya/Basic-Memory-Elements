----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:09:08 11/07/2019 
-- Design Name: 
-- Module Name:    d_latch_struct - Behavioral 
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

entity d_latch_struct is
    Port ( D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end d_latch_struct;

architecture Struct of d_latch_struct is

component nor_el is
    Port ( X1 : in  STD_LOGIC;
           X2 : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end component;

component invert is
    Port ( X : in  STD_LOGIC;
           not_X : out  STD_LOGIC);
end component;

signal S1, S2, nD : STD_LOGIC;

begin

   inv: invert port map (X => D, not_X => nD);
	nor1 : nor_el port map (X1 => D, X2 => S2, Y => S1);
	nor2 : nor_el port map (X1 => nD, X2 => S1, Y => S2);
	Q <=  S2;
	nQ <= S1;

end Struct;
