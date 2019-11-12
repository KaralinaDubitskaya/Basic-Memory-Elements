--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:20:55 11/12/2019
-- Design Name:   
-- Module Name:   E:/xilinx/projects/lab3-4/sreg_beh_TB.vhd
-- Project Name:  lab3-4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sreg_beh
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
 
ENTITY sreg_beh_TB IS
END sreg_beh_TB;
 
ARCHITECTURE behavior OF sreg_beh_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sreg_beh
    PORT(
         Sin : IN  std_logic;
         Pout : OUT  std_logic_vector(0 to 3);
         SE : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Sin : std_logic := '0';
   signal SE : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal Pout : std_logic_vector(0 to 3);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sreg_beh PORT MAP (
          Sin => Sin,
          Pout => Pout,
          SE => SE,
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		RST <= '0'; wait for CLK_period*5;
		RST <= '1'; wait for CLK_period*5;
		RST <= '0'; wait for CLK_period*30;
		RST <= '1'; wait for CLK_period*5;
		RST <= '0';
      wait;
   end process;
	
	
	SE <= not SE after CLK_period*10;
	Sin <= not Sin after CLK_period;

END;
