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
-- Generated on "05/22/2024 11:18:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TOP
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TOP_vhd_vec_tst IS
END TOP_vhd_vec_tst;
ARCHITECTURE TOP_arch OF TOP_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CPT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL H50M : STD_LOGIC;
SIGNAL LED_rouge : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pin_name1 : STD_LOGIC;
SIGNAL SW : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT TOP
	PORT (
	CPT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	H50M : IN STD_LOGIC;
	LED_rouge : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	pin_name1 : OUT STD_LOGIC;
	SW : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : TOP
	PORT MAP (
-- list connections between master ports and signals
	CPT => CPT,
	H50M => H50M,
	LED_rouge => LED_rouge,
	pin_name1 => pin_name1,
	SW => SW
	);

-- H50M
t_prcs_H50M: PROCESS
BEGIN
LOOP
	H50M <= '0';
	WAIT FOR 500 ps;
	H50M <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_H50M;
-- SW[7]
t_prcs_SW_7: PROCESS
BEGIN
	SW(7) <= '1';
	WAIT FOR 260000 ps;
	SW(7) <= '0';
	WAIT FOR 540000 ps;
	SW(7) <= '1';
WAIT;
END PROCESS t_prcs_SW_7;
-- SW[6]
t_prcs_SW_6: PROCESS
BEGIN
	SW(6) <= '1';
	WAIT FOR 540000 ps;
	SW(6) <= '0';
	WAIT FOR 260000 ps;
	SW(6) <= '1';
WAIT;
END PROCESS t_prcs_SW_6;
-- SW[5]
t_prcs_SW_5: PROCESS
BEGIN
	SW(5) <= '1';
	WAIT FOR 540000 ps;
	SW(5) <= '0';
	WAIT FOR 360000 ps;
	SW(5) <= '1';
WAIT;
END PROCESS t_prcs_SW_5;
-- SW[4]
t_prcs_SW_4: PROCESS
BEGIN
	SW(4) <= '1';
	WAIT FOR 540000 ps;
	SW(4) <= '0';
	WAIT FOR 300000 ps;
	SW(4) <= '1';
	WAIT FOR 60000 ps;
	SW(4) <= '0';
	WAIT FOR 60000 ps;
	SW(4) <= '1';
WAIT;
END PROCESS t_prcs_SW_4;
-- SW[3]
t_prcs_SW_3: PROCESS
BEGIN
	SW(3) <= '1';
	WAIT FOR 540000 ps;
	SW(3) <= '0';
	WAIT FOR 260000 ps;
	SW(3) <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 2
	LOOP
		SW(3) <= '0';
		WAIT FOR 40000 ps;
		SW(3) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	SW(3) <= '0';
WAIT;
END PROCESS t_prcs_SW_3;
-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
	SW(2) <= '1';
	WAIT FOR 540000 ps;
	SW(2) <= '0';
	WAIT FOR 280000 ps;
	SW(2) <= '1';
	WAIT FOR 20000 ps;
	SW(2) <= '0';
	WAIT FOR 20000 ps;
	SW(2) <= '1';
	WAIT FOR 40000 ps;
	SW(2) <= '0';
	WAIT FOR 20000 ps;
	SW(2) <= '1';
	WAIT FOR 20000 ps;
	SW(2) <= '0';
	WAIT FOR 40000 ps;
	SW(2) <= '1';
WAIT;
END PROCESS t_prcs_SW_2;
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	SW(1) <= '1';
	WAIT FOR 540000 ps;
	SW(1) <= '0';
	WAIT FOR 300000 ps;
	SW(1) <= '1';
	WAIT FOR 40000 ps;
	SW(1) <= '0';
	WAIT FOR 40000 ps;
	SW(1) <= '1';
	WAIT FOR 40000 ps;
	SW(1) <= '0';
WAIT;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
	SW(0) <= '1';
	WAIT FOR 540000 ps;
	SW(0) <= '0';
	WAIT FOR 280000 ps;
	SW(0) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 4
	LOOP
		SW(0) <= '0';
		WAIT FOR 20000 ps;
		SW(0) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_SW_0;
END TOP_arch;
