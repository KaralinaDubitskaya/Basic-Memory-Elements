----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:13:08 11/07/2019 
-- Design Name: 
-- Module Name:    d_latch - Behavioral 
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

entity d_latch is
    Port ( D : in  STD_LOGIC;
           Q_str : out  STD_LOGIC;
           nQ_str : out  STD_LOGIC;
           Q_beh : out  STD_LOGIC;
           nQ_beh : out  STD_LOGIC;
           Q_par : out  STD_LOGIC;
           nQ_par : out  STD_LOGIC);
end d_latch;

architecture Behavioral of d_latch is

component d_latch_beh is
    Port ( D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end component;

component d_latch_struct is
    Port ( D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end component;

component d_latch_param is
    Port ( D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end component;

begin

	beh: d_latch_beh port map (D => D, Q => Q_beh, nQ => nQ_beh);
	str: d_latch_struct port map (D => D, Q => Q_str, nQ => nQ_str);
	param: d_latch_param port map (D => D, Q => Q_par, nQ => nQ_par);

end Behavioral;

