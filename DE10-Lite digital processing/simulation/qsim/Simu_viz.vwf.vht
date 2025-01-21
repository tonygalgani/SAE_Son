-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/22/2024 10:20:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Vizualizer
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Vizualizer_vhd_vec_tst IS
END Vizualizer_vhd_vec_tst;
ARCHITECTURE Vizualizer_arch OF Vizualizer_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Entre_viz : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Vizualizer
	PORT (
	Entre_viz : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	S : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Vizualizer
	PORT MAP (
-- list connections between master ports and signals
	Entre_viz => Entre_viz,
	S => S
	);
-- Entre_viz[7]
t_prcs_Entre_viz_7: PROCESS
BEGIN
	Entre_viz(7) <= '1';
	WAIT FOR 190000 ps;
	Entre_viz(7) <= '0';
	WAIT FOR 340000 ps;
	Entre_viz(7) <= '1';
	WAIT FOR 170000 ps;
	Entre_viz(7) <= '0';
WAIT;
END PROCESS t_prcs_Entre_viz_7;
-- Entre_viz[6]
t_prcs_Entre_viz_6: PROCESS
BEGIN
	Entre_viz(6) <= '1';
	WAIT FOR 190000 ps;
	Entre_viz(6) <= '0';
	WAIT FOR 150000 ps;
	Entre_viz(6) <= '1';
	WAIT FOR 190000 ps;
	Entre_viz(6) <= '0';
WAIT;
END PROCESS t_prcs_Entre_viz_6;
-- Entre_viz[5]
t_prcs_Entre_viz_5: PROCESS
BEGIN
	Entre_viz(5) <= '1';
	WAIT FOR 190000 ps;
	Entre_viz(5) <= '0';
	WAIT FOR 150000 ps;
	Entre_viz(5) <= '1';
	WAIT FOR 190000 ps;
	Entre_viz(5) <= '0';
	WAIT FOR 110000 ps;
	Entre_viz(5) <= '1';
	WAIT FOR 60000 ps;
	Entre_viz(5) <= '0';
WAIT;
END PROCESS t_prcs_Entre_viz_5;
-- Entre_viz[4]
t_prcs_Entre_viz_4: PROCESS
BEGIN
	Entre_viz(4) <= '1';
	WAIT FOR 190000 ps;
	Entre_viz(4) <= '0';
	WAIT FOR 150000 ps;
	Entre_viz(4) <= '1';
	WAIT FOR 190000 ps;
	Entre_viz(4) <= '0';
	WAIT FOR 50000 ps;
	Entre_viz(4) <= '1';
	WAIT FOR 60000 ps;
	Entre_viz(4) <= '0';
	WAIT FOR 60000 ps;
	Entre_viz(4) <= '1';
	WAIT FOR 70000 ps;
	Entre_viz(4) <= '0';
WAIT;
END PROCESS t_prcs_Entre_viz_4;
-- Entre_viz[3]
t_prcs_Entre_viz_3: PROCESS
BEGIN
	Entre_viz(3) <= '1';
	WAIT FOR 190000 ps;
	Entre_viz(3) <= '0';
	WAIT FOR 150000 ps;
	Entre_viz(3) <= '1';
	WAIT FOR 360000 ps;
	Entre_viz(3) <= '0';
WAIT;
END PROCESS t_prcs_Entre_viz_3;
-- Entre_viz[2]
t_prcs_Entre_viz_2: PROCESS
BEGIN
	Entre_viz(2) <= '1';
	WAIT FOR 190000 ps;
	Entre_viz(2) <= '0';
	WAIT FOR 150000 ps;
	Entre_viz(2) <= '1';
	WAIT FOR 360000 ps;
	Entre_viz(2) <= '0';
WAIT;
END PROCESS t_prcs_Entre_viz_2;
-- Entre_viz[1]
t_prcs_Entre_viz_1: PROCESS
BEGIN
	Entre_viz(1) <= '1';
	WAIT FOR 190000 ps;
	Entre_viz(1) <= '0';
	WAIT FOR 150000 ps;
	Entre_viz(1) <= '1';
	WAIT FOR 360000 ps;
	Entre_viz(1) <= '0';
WAIT;
END PROCESS t_prcs_Entre_viz_1;
-- Entre_viz[0]
t_prcs_Entre_viz_0: PROCESS
BEGIN
	Entre_viz(0) <= '1';
	WAIT FOR 190000 ps;
	Entre_viz(0) <= '0';
	WAIT FOR 150000 ps;
	Entre_viz(0) <= '1';
	WAIT FOR 360000 ps;
	Entre_viz(0) <= '0';
WAIT;
END PROCESS t_prcs_Entre_viz_0;
END Vizualizer_arch;
