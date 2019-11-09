--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:09:09 11/07/2019
-- Design Name:   
-- Module Name:   E:/xilinx/projects/lab3-4/d_latch_TB.vhd
-- Project Name:  lab3-4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: d_latch
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
 
ENTITY d_latch_TB IS
END d_latch_TB;
 
ARCHITECTURE behavior OF d_latch_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT d_latch
    PORT(
         D : IN  std_logic;
         Q_str : OUT  std_logic;
         nQ_str : OUT  std_logic;
         Q_beh : OUT  std_logic;
         nQ_beh : OUT  std_logic;
         Q_par : OUT  std_logic;
         nQ_par : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';

 	--Outputs
   signal Q_str : std_logic;
   signal nQ_str : std_logic;
   signal Q_beh : std_logic;
   signal nQ_beh : std_logic;
   signal Q_par : std_logic;
   signal nQ_par : std_logic;
	signal ASSERT_SIGNAL: std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: d_latch PORT MAP (
          D => D,
          Q_str => Q_str,
          nQ_str => nQ_str,
          Q_beh => Q_beh,
          nQ_beh => nQ_beh,
          Q_par => Q_par,
          nQ_par => nQ_par
        );
		  
	D <= not D after 8 ns;
	
	ASSERT_SIGNAL <= (Q_str xor Q_beh) or (nQ_str xor nQ_beh);

END;
