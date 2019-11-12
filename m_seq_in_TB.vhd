--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:14:04 11/12/2019
-- Design Name:   
-- Module Name:   E:/xilinx/projects/lab3-4/m_seq_in_TB.vhd
-- Project Name:  lab3-4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: m_seq_in
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
 
ENTITY m_seq_in_TB IS
END m_seq_in_TB;
 
ARCHITECTURE behavior OF m_seq_in_TB IS 
 
	 constant alpha : STD_LOGIC_VECTOR := "1000100001";
	 
    -- Component Declaration for the Unit Under Test (UUT)
		 
    COMPONENT m_seq_in
		 Port ( Pout : out  STD_LOGIC_VECTOR (0 to alpha'high - 1);
				  CLK : in  STD_LOGIC;
				  RST : in  STD_LOGIC);
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal Pout : std_logic_vector(0 to alpha'high - 1);

   -- Clock period definitions
   constant CLK_period : time := 1 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: m_seq_in PORT MAP (
          Pout => Pout,
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
      wait for 4 ns;	

		RST <= '0'; wait for CLK_period*5;
		RST <= '1'; wait for CLK_period;
		RST <= '0'; 
      wait;
   end process;

END;
