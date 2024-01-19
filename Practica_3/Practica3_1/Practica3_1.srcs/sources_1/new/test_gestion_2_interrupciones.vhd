--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:08:29 09/13/2015
-- Design Name:   
-- Module Name:   C:/Users/fpoza/Desktop/Practica_13_c/test_gestion_2_interrupciones_con_prioridad.vhd
-- Project Name:  Practica_13_c
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: gestion_2_interrupciones_con_prioridad
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
 
ENTITY test_gestion_2_interrupciones IS
END test_gestion_2_interrupciones;
 
ARCHITECTURE behavior OF test_gestion_2_interrupciones IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT gestion_2_interrupciones
    PORT(
         reset : IN  std_logic;
         clk_micro : IN  std_logic;
         peticion_int_0 : IN  std_logic;
         peticion_int_1 : IN  std_logic;			
         interrupt_ack : IN  std_logic;
         interrupt : OUT  std_logic;
         origen_int : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';
   signal peticion_int_0, peticion_int_1 : std_logic := '0';
   signal interrupt_ack : std_logic := '0';

 	--Outputs
   signal interrupt : std_logic;
   signal origen_int : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: gestion_2_interrupciones PORT MAP (
          reset => reset,
          clk_micro => clk,
          peticion_int_0 => peticion_int_0,
          peticion_int_1 => peticion_int_1,			 
          interrupt_ack => interrupt_ack,
          interrupt => interrupt,
          origen_int => origen_int
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
   begin		
		reset <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		reset <= '0';
      wait for clk_period*10;
		peticion_int_0 <= '1';
		peticion_int_1 <= '1';		
		wait for clk_period*2;
		peticion_int_0 <= '0';
		peticion_int_1 <= '0';		
		wait for clk_period*2;
		interrupt_ack <= '1';
		wait for clk_period;
		interrupt_ack <= '0';
		wait for clk_period*4;
		interrupt_ack <= '1';
		wait for clk_period;
		interrupt_ack <= '0';
		wait for clk_period*10;
		reset <= '1';
		wait for clk_period;
		reset <= '0';
		wait for clk_period*10;
		
-- This sentence stops the simulation when you execute the "run -all" option in Modelsim
	assert (false) report "Fin simulacion. NO es un error" severity FAILURE;

      wait;
   end process;

END;
