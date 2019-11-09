----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:41:57 11/07/2019 
-- Design Name: 
-- Module Name:    rs_latch - Behavioral 
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

entity rs_latch is
    Port ( R : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Q_beh : out  STD_LOGIC;
           nQ_beh : out  STD_LOGIC;
           Q_str : out  STD_LOGIC;
           nQ_str : out  STD_LOGIC;
           Q_param : out  STD_LOGIC;
           nQ_param : out  STD_LOGIC);
end rs_latch;

-- Behavioral
architecture Behavioral of rs_latch is

component rs_latch_struct is
    Port ( R : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end component;

component rs_latch_beh is
    Port ( R : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end component;

component rs_latch_param is
    Port ( R : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end component;

begin

	u1: rs_latch_struct port map(R => R, S => S, Q => Q_str, nQ => nQ_str);
	u2: rs_latch_beh port map(R => R, S => S, Q => Q_beh, nQ => nQ_beh);
	u3: rs_latch_param port map(R => R, S => S, Q => Q_param, nQ => nQ_param);

end Behavioral;

