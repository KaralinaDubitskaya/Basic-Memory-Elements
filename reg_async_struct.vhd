----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:42:48 11/10/2019 
-- Design Name: 
-- Module Name:    reg_async_struct - Behavioral 
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

entity reg_async_struct is
	 Generic ( n : integer := 4 ); 
    Port ( Din : in  STD_LOGIC_VECTOR (n-1 downto 0);
           E : in  STD_LOGIC;
           Dout : out  STD_LOGIC_VECTOR (n-1 downto 0));
end reg_async_struct;

architecture Behavioral of reg_async_struct is

component de_latch_struct is
    Port ( D : in  STD_LOGIC;
           E : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end component;

signal reg : std_logic_vector(n-1 downto 0);
	
begin

	u1: for i in n-1 downto 0 generate
		u2: de_latch_struct port map (
		D => Din(i),
		E => E,
		Q => reg(i));
	end generate;
	
	Dout <= reg;

end Behavioral;

