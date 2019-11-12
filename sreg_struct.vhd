----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:39:19 11/11/2019 
-- Design Name: 
-- Module Name:    sreg_struct - Behavioral 
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

entity sreg_struct is
	 Generic ( n : integer := 4 ); 
    Port ( Sin : in  STD_LOGIC;
           Pout : out  STD_LOGIC_VECTOR (0 to n-1);
           SE : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC);
end sreg_struct;

architecture Behavioral of sreg_struct is

component fdcpe is
    Port ( CLR : in  STD_LOGIC;
           PRE : in  STD_LOGIC := '0';
           CE : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end component;

signal reg : std_logic_vector(0 to n-1);

begin

	u1: fdcpe port map(
			CLR => RST, 
			CE => SE,  
			CLK => CLK,
			D => Sin,
			Q => reg(0));
		
	u: for i in 1 to n-1 generate		
		ui: fdcpe port map (
				CLR => RST, 
				CE => SE,  
				CLK => CLK,
				D => reg(i-1),
				Q => reg(i));
	end generate;	
	
	Pout <= reg;

end Behavioral;

