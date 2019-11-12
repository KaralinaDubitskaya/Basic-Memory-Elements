--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:20:10 11/12/2019
-- Design Name:   
-- Module Name:   E:/xilinx/projects/lab3-4/signature_analizer_TB.vhd
-- Project Name:  lab3-4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: signature_analizer
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY signature_analizer_TB IS
END signature_analizer_TB;
 
ARCHITECTURE behavior OF signature_analizer_TB IS 
 
	 constant alpha : STD_LOGIC_VECTOR := "1000100001";
	 
    COMPONENT signature_analizer
    PORT(
         Pout : OUT  std_logic_vector(0 to alpha'high - 1);
         Pin : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Pin : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal Pout : std_logic_vector(0 to alpha'high - 1);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: signature_analizer PORT MAP (
          Pout => Pout,
          Pin => Pin,
          CLK => CLK,
          RST => RST
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		

      wait;
   end process;
	
	polynom: process	
		constant polynom : std_logic_vector := "1100000011";
	begin
		RST <= '0'; wait for CLK_period*4;
		RST <= '1'; wait for CLK_period;
		RST <= '0'; 
		for i in 9 downto 0 loop
			Pin <= polynom( i );					
			wait for CLK_period;
		end loop;
		Pin <= '0';
		wait;
	end process;

END;
