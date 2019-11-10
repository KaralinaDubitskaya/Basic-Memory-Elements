----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:01:54 11/07/2019 
-- Design Name: 
-- Module Name:    rs_latch_beh - Behavioral 
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

entity rs_latch_beh is
    Port ( R : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end rs_latch_beh;

architecture Behavioral of rs_latch_beh is

	signal data : STD_LOGIC;

begin

	 main : process( R, S )
	 begin
		 if R = '1' then
			  data <= '0';
		 elsif S = '1' then
			  data <= '1';
		 else
			  data <= data;
		 end if;
	 end process;
	 
	 Q <= data;
	 nQ <= not data;

end Behavioral;

