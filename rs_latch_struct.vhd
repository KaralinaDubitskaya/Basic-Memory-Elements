----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:59:23 11/07/2019 
-- Design Name: 
-- Module Name:    rs_latch_struct - Behavioral 
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

entity rs_latch_struct is
    Port ( R : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end rs_latch_struct;

architecture Struct of rs_latch_struct is

component nor_el is
    Port ( X1 : in  STD_LOGIC;
           X2 : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end component;

signal S1, S2 : STD_LOGIC;

begin

	nor1 : nor_el port map (X1 => S, X2 => S2, Y => S1);
	nor2 : nor_el port map (X1 => R, X2 => S1, Y => S2);
	Q <=  S2;
	nQ <= S1;

end Struct;

