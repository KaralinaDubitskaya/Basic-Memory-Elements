--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:52:43 11/10/2019
-- Design Name:   
-- Module Name:   E:/xilinx/projects/lab3-4/frs_TB.vhd
-- Project Name:  lab3-4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: frs
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
 
ENTITY frs_TB IS
END frs_TB;
 
ARCHITECTURE behavior OF frs_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT frs
    PORT(
         R : IN  std_logic;
         S : IN  std_logic;
         CLK : IN  std_logic;
         Q : OUT  std_logic;
         nQ : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal R : std_logic := '0';
   signal S : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal nQ : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: frs PORT MAP (
          R => R,
          S => S,
          CLK => CLK,
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

	main: process
	begin
	  R <= '0' after 50 ns,    -- s = 1 
	       '1' after 150 ns,   -- s = 0 
			 '0' after 200 ns,   -- s = 0
			 '1' after 250 ns;   -- s = 1
			 
	  S <= '1' after 50 ns,   -- r = 0
	       '0' after 100 ns,  -- r = 0 
			 '1' after 250 ns;  -- r = 1
	  wait;
	end process main;

END;
