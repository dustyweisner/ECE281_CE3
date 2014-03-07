--------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Dusty Weisner
--
-- Create Date:   23:18:10 03/06/2014
-- Design Name:   CE3 Moore Test bench
-- Module Name:   C:/Users/C16Dustin.Weisner/Documents/Xilinx/CE3_Weisner.Initialize/Moore_testbench_Weisner.vhd
-- Project Name:  CE3_Weisner.Initialize
-- Target Device:  N/A
-- Tool versions:  N/A
-- Description:   N/A
-- 
-- VHDL Test Bench Created by ISE for module: MooreElevatorController_Shell
-- 
-- Dependencies:N/A
-- 
-- Revision:N/A
-- Revision 0.01 - File Created
-- Additional Comments:N/A
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
USE ieee.numeric_std.ALL;
 
ENTITY Moore_testbench_Weisner IS
END Moore_testbench_Weisner;
 
ARCHITECTURE behavior OF Moore_testbench_Weisner IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MooreElevatorController_Shell
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         stop : IN  std_logic;
         up_down : IN  std_logic;
         floor : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal stop : std_logic := '0';
   signal up_down : std_logic := '0';

 	--Outputs
   signal floor : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MooreElevatorController_Shell PORT MAP (
          clk => clk,
          reset => reset,
          stop => stop,
          up_down => up_down,
          floor => floor
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
    stim_proc: process
  variable i,j:   integer;
    begin
	 reset <= '0';
	 wait for 100 ns;
	 wait for clk_period*10;
	 
	 reset <= '1';
	 wait for clk_period;
	 reset <= '0';
	 
	 for i in 0 to 2 loop
				up_down <= '1';
				stop <= '0';
				wait for clk_period;
            stop <= '1';
				wait for clk_period*2;
	 end loop;
	 
	up_down <= '0'; 
	stop <= '0';
	wait;
	up_down <= '0'; 
	stop <= '1'; 
	wait;
	up_down <= '0'; 
	stop <= '0'; 
	
--        for i in 0 to 2 loop
--				up_down <= '1';
--				wait for clk_period*2;
--            stop <= '0';
--				wait for clk_period*2;
--				
--        end loop;
--		  
--		 
--		  up_down <= '0';
--		  stop <= '0'; 
--		  wait for clk_period*2;
--		  stop <= '0'; 
--		  wait for clk_period;
--		
		  
		 


     wait;
   end process;

END;
