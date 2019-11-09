--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:48:08 11/09/2019
-- Design Name:   
-- Module Name:   E:/xilinx/projects/lab3-4/fdp_TB.vhd
-- Project Name:  lab3-4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fdp
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
 
ENTITY fdp_TB IS
END fdp_TB;
 
ARCHITECTURE behavior OF fdp_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fdp
    PORT(
         D : IN  std_logic;
         CLK : IN  std_logic;
         PRE : IN  std_logic;
         Q : OUT  std_logic;
         nQ : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal CLK : std_logic := '0';
   signal PRE : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal nQ : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fdp PORT MAP (
          D => D,
          CLK => CLK,
          PRE => PRE,
          Q => Q,
          nQ => nQ
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
   
	D <= not D after 4 * CLK_period;
	PRE <= '1' after 90 ns when PRE = '0' else '0' after 2 ns;

END;
