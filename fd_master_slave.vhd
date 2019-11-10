----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:42:45 11/10/2019 
-- Design Name: 
-- Module Name:    fd_master_slave - Behavioral 
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

entity fd_master_slave is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end fd_master_slave;

architecture Behavioral of fd_master_slave is

	signal Q1, Q2 : STD_LOGIC;

begin

	main : process ( CLK, D )
	begin
		if rising_edge( CLK ) then
			Q1 <= D;
		elsif falling_edge ( CLK ) then
			Q2 <= Q1;
		end if;
	end process;

	Q <= Q2;
	nQ <= not Q2;
	
end Behavioral;

