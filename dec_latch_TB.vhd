--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:09:58 11/09/2019
-- Design Name:   
-- Module Name:   E:/xilinx/projects/lab3-4/dec_latch_TB.vhd
-- Project Name:  lab3-4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dec_latch
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
 
ENTITY dec_latch_TB IS
END dec_latch_TB;
 
ARCHITECTURE behavior OF dec_latch_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dec_latch
    PORT(
         D : IN  std_logic;
         E : IN  std_logic;
         CLR : IN  std_logic;
         Q : OUT  std_logic;
         nQ : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal E : std_logic := '0';
   signal CLR : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal nQ : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dec_latch PORT MAP (
          D => D,
          E => E,
          CLR => CLR,
          Q => Q,
          nQ => nQ
        );
	
	D <= not D after 8 ns;
	E <= not E after 64 ns;
	CLR <= '1' after 90 ns when CLR = '0' else '0' after 2 ns;

END;
