--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:47:32 11/07/2019
-- Design Name:   
-- Module Name:   E:/xilinx/projects/lab3-4/bistable_TB.vhd
-- Project Name:  lab3-4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bistable
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
 
ENTITY bistable_TB IS
END bistable_TB;
 
ARCHITECTURE behavior OF bistable_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bistable
    PORT(
         Q : OUT  std_logic;
         nQ : OUT  std_logic
        );
    END COMPONENT;
    

 	--Outputs
   signal Q : std_logic;
   signal nQ : std_logic;
	signal ASSERT_SIGNAL: std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bistable PORT MAP (
          Q => Q,
          nQ => nQ
        );	  
	
	ASSERT_SIGNAL <= (not Q) xor nQ;

END;
