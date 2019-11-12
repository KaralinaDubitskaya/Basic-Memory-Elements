--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:18:27 11/12/2019
-- Design Name:   
-- Module Name:   E:/xilinx/projects/lab3-4/reg_sync_beh_TB.vhd
-- Project Name:  lab3-4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: reg_sync_beh
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
 
ENTITY reg_sync_beh_TB IS
END reg_sync_beh_TB;
 
ARCHITECTURE behavior OF reg_sync_beh_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reg_sync_beh
    PORT(
         Din : IN  std_logic_vector(3 downto 0);
         Dout : OUT  std_logic_vector(3 downto 0);
         CLK : IN  std_logic;
         E : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Din : std_logic_vector(3 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal E : std_logic := '0';

 	--Outputs
   signal Dout : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg_sync_beh PORT MAP (
          Din => Din,
          Dout => Dout,
          CLK => CLK,
          E => E
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

      wait for CLK_period*10;

      -- hold reset state for 100 ns.
      wait for 100 ns;	

      Din <= "1111"; wait for CLK_period*10;
		E <= '1'; wait for CLK_period*10;
		Din <= "0000"; wait for CLK_period*10;
		E <= '0'; wait for CLK_period*10;
		Din <= "1010"; wait for CLK_period*10;
		
      wait;
   end process;

END;
