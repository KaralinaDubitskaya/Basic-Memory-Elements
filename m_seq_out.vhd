----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:47:40 11/12/2019 
-- Design Name: 
-- Module Name:    m_seq_out - Behavioral 
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

entity m_seq_out is
	 Generic ( alpha : STD_LOGIC_VECTOR := "1000100001" ); -- 1 + x^4 + x^9
    Port ( Pout : out  STD_LOGIC_VECTOR (0 to alpha'high - 1);
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC);
end m_seq_out;

architecture Behavioral of m_seq_out is

signal sdat : std_logic_vector(0 to alpha'high - 1);
signal sreg : std_logic_vector(0 to alpha'high - 1);

begin
 
	main: process ( CLK, RST )
	begin	
		if RST = '1' then
			sreg <= (others => '1');
		elsif rising_edge( CLK ) then
			sreg <= sdat;
		end if;		
	end process;

	data: process ( sreg )	
		variable newbit : std_logic;		
	begin	
		newbit := '0';		
		for i in 0 to alpha'high - 2 loop
			if alpha( i + 1 ) = '1' then
				newbit := newbit xor sreg ( i );
			end if;
		end loop;		
		newbit := newbit xor sreg ( alpha'high - 1 );
		sdat <= newbit & sreg ( 0 to alpha'high - 2 );			
	end process;

	Pout <= sreg;

end Behavioral;

