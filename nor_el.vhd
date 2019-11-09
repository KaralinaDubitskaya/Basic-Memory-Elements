----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:29:10 11/07/2019 
-- Design Name: 
-- Module Name:    nor_el - Behavioral 
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

entity nor_el is
    Port ( X1 : in  STD_LOGIC;
           X2 : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end nor_el;

architecture Behavioral of nor_el is

begin

	Y <= not (X1 or X2);

end Behavioral;

