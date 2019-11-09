--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:02:32 11/09/2019
-- Design Name:   
-- Module Name:   E:/xilinx/projects/lab3-4/dep_latch_TB.vhd
-- Project Name:  lab3-4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dep_latch
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
 
ENTITY dep_latch_TB IS
END dep_latch_TB;
 
ARCHITECTURE behavior OF dep_latch_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dep_latch
    PORT(
         PRE : IN  std_logic;
         E : IN  std_logic;
         D : IN  std_logic;
         Q : OUT  std_logic;
         nQ : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal PRE : std_logic := '0';
   signal E : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal nQ : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dep_latch PORT MAP (
          PRE => PRE,
          E => E,
          D => D,
          Q => Q,
          nQ => nQ
        );
		  
	
	D <= '1' after 8 ns when D = '0' else '0' after 2 ns;
	E <= not E after 64 ns;
	PRE <= '1' after 30 ns when PRE = '0' else '0' after 2 ns;
	
END;
