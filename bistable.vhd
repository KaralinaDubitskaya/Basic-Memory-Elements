----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:46:43 11/06/2019 
-- Design Name: 
-- Module Name:    bistable - Behavioral 
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

entity bistable is
    Port ( Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end bistable;

architecture Struct of bistable is

component invert is
    Port ( X : in  STD_LOGIC;
           not_X : out  STD_LOGIC);
end component;

signal S : STD_LOGIC := '0';
signal nS : STD_LOGIC;

begin

	u1: invert port map(X => S, not_X => nS);
	u2: invert port map(X => nS, not_X => S);
	Q <= S;
	nQ <= nS;

end Struct;

