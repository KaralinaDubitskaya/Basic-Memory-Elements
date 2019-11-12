----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:25:29 11/11/2019 
-- Design Name: 
-- Module Name:    reg_sync_struct - Behavioral 
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

entity reg_sync_struct is
	 Generic ( n : integer := 4 ); 
    Port ( Din : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Dout : out  STD_LOGIC_VECTOR (n-1 downto 0);
           E : in  STD_LOGIC;
           CLK : in  STD_LOGIC);
end reg_sync_struct;

architecture Behavioral of reg_sync_struct is

component fde is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end component;

signal reg : std_logic_vector(n-1 downto 0);
	
begin

	u1: for i in n-1 downto 0 generate
		u2: fde port map (
			D => Din(i),
			CLK => CLK,
			CE => E,
			Q => reg(i));
	end generate;
	
	Dout <= reg;
	
end Behavioral;

