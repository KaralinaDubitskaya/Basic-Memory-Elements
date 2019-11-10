----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:10:03 11/07/2019 
-- Design Name: 
-- Module Name:    d_latch_param - Behavioral 
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

entity d_latch_param is
    Port ( D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end d_latch_param;

architecture Behavioral of d_latch_param is
	
	signal data : STD_LOGIC;

begin

	 main : process( D )
	 begin
		 if data /= D then
			  data <= inertial D after 2 ns;
		 end if;
	 end process;
	 
	 Q <= transport data after 2 ns;
	 nQ <= transport not data after 2 ns;
	
end Behavioral;

