----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:01:29 11/12/2019 
-- Design Name: 
-- Module Name:    signature_analizer - Behavioral 
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

entity signature_analizer is
	 Generic ( alpha : STD_LOGIC_VECTOR := "1000100001" ); -- 1 + x^4 + x^9
    Port ( Pout : out  STD_LOGIC_VECTOR (0 to alpha'high - 1);
           Pin : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC);
end signature_analizer;

architecture Behavioral of signature_analizer is

signal sdat : std_logic_vector(0 to alpha'high - 1);
signal sreg : std_logic_vector(0 to alpha'high - 1);

begin
 
	main: process ( CLK, RST )
	begin	
		if RST = '1' then
			sreg <= (others => '0');
		elsif rising_edge( CLK ) then
			sreg <= sdat;
		end if;		
	end process;

	data: process ( sreg, Pin )
	begin
		for i in alpha'high - 1 downto 1 loop
			if alpha( i ) = '1' then
				sdat ( i ) <= sreg ( i - 1 ) xor sreg ( alpha'high - 1 );
			else 
				sdat ( i ) <= sreg ( i - 1 );
			end if;
		end loop;		
		sdat( 0 ) <= Pin xor sreg ( alpha'high - 1 );		
	end process;

	Pout <= sreg;

end Behavioral;

