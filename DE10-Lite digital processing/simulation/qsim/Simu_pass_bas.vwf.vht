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
-- Generated on "06/10/2024 16:30:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          passe_bas
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY passe_bas_vhd_vec_tst IS
END passe_bas_vhd_vec_tst;
ARCHITECTURE passe_bas_arch OF passe_bas_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL E : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL H : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SW : STD_LOGIC;
COMPONENT passe_bas
	PORT (
	E : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	H : IN STD_LOGIC;
	S : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	SW : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : passe_bas
	PORT MAP (
-- list connections between master ports and signals
	E => E,
	H => H,
	S => S,
	SW => SW
	);
-- E[7]
t_prcs_E_7: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		E(7) <= '0';
		WAIT FOR 12800000 ps;
		E(7) <= '1';
		WAIT FOR 12800000 ps;
	END LOOP;
	E(7) <= '0';
	WAIT FOR 12800000 ps;
	E(7) <= '1';
WAIT;
END PROCESS t_prcs_E_7;
-- E[6]
t_prcs_E_6: PROCESS
BEGIN
	FOR i IN 1 TO 7
	LOOP
		E(6) <= '0';
		WAIT FOR 6400000 ps;
		E(6) <= '1';
		WAIT FOR 6400000 ps;
	END LOOP;
	E(6) <= '0';
	WAIT FOR 6400000 ps;
	E(6) <= '1';
WAIT;
END PROCESS t_prcs_E_6;
-- E[5]
t_prcs_E_5: PROCESS
BEGIN
	FOR i IN 1 TO 15
	LOOP
		E(5) <= '0';
		WAIT FOR 3200000 ps;
		E(5) <= '1';
		WAIT FOR 3200000 ps;
	END LOOP;
	E(5) <= '0';
	WAIT FOR 3200000 ps;
	E(5) <= '1';
WAIT;
END PROCESS t_prcs_E_5;
-- E[4]
t_prcs_E_4: PROCESS
BEGIN
	FOR i IN 1 TO 31
	LOOP
		E(4) <= '0';
		WAIT FOR 1600000 ps;
		E(4) <= '1';
		WAIT FOR 1600000 ps;
	END LOOP;
	E(4) <= '0';
WAIT;
END PROCESS t_prcs_E_4;
-- E[3]
t_prcs_E_3: PROCESS
BEGIN
	FOR i IN 1 TO 62
	LOOP
		E(3) <= '0';
		WAIT FOR 800000 ps;
		E(3) <= '1';
		WAIT FOR 800000 ps;
	END LOOP;
	E(3) <= '0';
WAIT;
END PROCESS t_prcs_E_3;
-- E[2]
t_prcs_E_2: PROCESS
BEGIN
LOOP
	E(2) <= '0';
	WAIT FOR 400000 ps;
	E(2) <= '1';
	WAIT FOR 400000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_E_2;
-- E[1]
t_prcs_E_1: PROCESS
BEGIN
LOOP
	E(1) <= '0';
	WAIT FOR 200000 ps;
	E(1) <= '1';
	WAIT FOR 200000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_E_1;
-- E[0]
t_prcs_E_0: PROCESS
BEGIN
LOOP
	E(0) <= '0';
	WAIT FOR 100000 ps;
	E(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_E_0;

-- H
t_prcs_H: PROCESS
BEGIN
LOOP
	H <= '0';
	WAIT FOR 50000 ps;
	H <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_H;

-- SW
t_prcs_SW: PROCESS
BEGIN
	SW <= '0';
	WAIT FOR 7040000 ps;
	SW <= '1';
	WAIT FOR 92800000 ps;
	SW <= '0';
WAIT;
END PROCESS t_prcs_SW;
END passe_bas_arch;
