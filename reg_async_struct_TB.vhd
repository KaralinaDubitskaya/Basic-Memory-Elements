--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:17:25 11/12/2019
-- Design Name:   
-- Module Name:   E:/xilinx/projects/lab3-4/reg_async_struct_TB.vhd
-- Project Name:  lab3-4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: reg_async_struct
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
 
ENTITY reg_async_struct_TB IS
END reg_async_struct_TB;
 
ARCHITECTURE behavior OF reg_async_struct_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reg_async_struct
    PORT(
         Din : IN  std_logic_vector(3 downto 0);
         E : IN  std_logic;
         Dout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Din : std_logic_vector(3 downto 0) := (others => '0');
   signal E : std_logic := '0';

 	--Outputs
   signal Dout : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg_async_struct PORT MAP (
          Din => Din,
          E => E,
          Dout => Dout
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      Din <= "1111"; wait for 100 ns;
		E <= '1'; wait for 100 ns;
		Din <= "0000"; wait for 100 ns;
		E <= '0'; wait for 100 ns;
		Din <= "1010"; wait for 100 ns;
		
      wait;
   end process;

END;
