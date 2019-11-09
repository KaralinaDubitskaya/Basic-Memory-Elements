----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:17:46 11/07/2019 
-- Design Name: 
-- Module Name:    de_latch - Behavioral 
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

entity de_latch is
    Port ( D : in  STD_LOGIC;
           E : in  STD_LOGIC;
           Q_str : out  STD_LOGIC;
           nQ_str : out  STD_LOGIC;
           Q_beh : out  STD_LOGIC;
           nQ_beh : out  STD_LOGIC;
           Q_par : out  STD_LOGIC;
           nQ_par : out  STD_LOGIC);
end de_latch;

architecture Behavioral of de_latch is

component de_latch_beh is
    Port ( D : in  STD_LOGIC;
           E : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end component;

component de_latch_param is
    Port ( D : in  STD_LOGIC;
           E : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end component;

component de_latch_struct is
    Port ( D : in  STD_LOGIC;
           E : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end component;

begin

	beh: de_latch_beh port map (D => D, E => E, Q => Q_beh, nQ => nQ_beh);
	str: de_latch_struct port map (D => D, E => E, Q => Q_str, nQ => nQ_str);
	par: de_latch_param port map (D => D, E => E, Q => Q_par, nQ => nQ_par);

end Behavioral;

