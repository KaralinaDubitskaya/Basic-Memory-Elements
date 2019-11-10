----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:05:25 11/07/2019 
-- Design Name: 
-- Module Name:    rs_latch_param - Behavioral 
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

entity rs_latch_param is
    Port ( R : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end rs_latch_param;

architecture Param of rs_latch_param is

	signal data : STD_LOGIC;

begin

	 main : process( R, S )
	 begin
		 if R = '1' then
			  data <= inertial '0' after 2 ns;
		 elsif S = '1' then
			  data <= inertial '1' after 2 ns;
		 else
			  data <= inertial data after 2 ns;
		 end if;
	 end process;
	 
	 Q <= transport data after 2 ns;
	 nQ <= transport not data after 2 ns;

end Param;

