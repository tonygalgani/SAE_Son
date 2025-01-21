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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "06/13/2024 16:41:44"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Volume IS
    PORT (
	E : IN std_logic_vector(7 DOWNTO 0);
	SW : IN std_logic_vector(6 DOWNTO 0);
	S : OUT std_logic_vector(7 DOWNTO 0);
	H : IN std_logic
	);
END Volume;

-- Design Ports Information
-- S[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[2]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[6]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Volume IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_E : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_H : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \H~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \H~input_o\ : std_logic;
SIGNAL \H~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \tempo2~0_combout\ : std_logic;
SIGNAL \tempo2~1_combout\ : std_logic;
SIGNAL \tempo[6]~4_combout\ : std_logic;
SIGNAL \E[4]~input_o\ : std_logic;
SIGNAL \tempo2~10_combout\ : std_logic;
SIGNAL \E[7]~input_o\ : std_logic;
SIGNAL \Mult1|mult_core|_~4_combout\ : std_logic;
SIGNAL \Mult1|mult_core|_~3_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[2][4]~10_combout\ : std_logic;
SIGNAL \E[1]~input_o\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][5]~2_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][4]~3_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \tempo2~11_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \tempo[6]~5_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \tempo~37_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][1]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][5]~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][4]~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \tempo~38_combout\ : std_logic;
SIGNAL \tempo~39_combout\ : std_logic;
SIGNAL \tempo~40_combout\ : std_logic;
SIGNAL \tempo2~12_combout\ : std_logic;
SIGNAL \Add3~1_cout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][3]~11_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][3]~11_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \tempo~45_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \tempo~46_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \tempo~47_combout\ : std_logic;
SIGNAL \tempo~48_combout\ : std_logic;
SIGNAL \tempo2~14_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \tempo~41_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \tempo~42_combout\ : std_logic;
SIGNAL \tempo~43_combout\ : std_logic;
SIGNAL \tempo~44_combout\ : std_logic;
SIGNAL \tempo2~13_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][7]~5_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[1][3]~4_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][6]~1_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Mult1|mult_core|_~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][3]~5_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][2]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][6]~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \tempo~10_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \tempo~11_combout\ : std_logic;
SIGNAL \tempo~12_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \tempo~13_combout\ : std_logic;
SIGNAL \tempo2~3_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[1][4]~6_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][4]~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \tempo~14_combout\ : std_logic;
SIGNAL \tempo~15_combout\ : std_logic;
SIGNAL \tempo~16_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \tempo~17_combout\ : std_logic;
SIGNAL \E[2]~input_o\ : std_logic;
SIGNAL \tempo2~4_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[1][7]~9_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[1][6]~combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[2][2]~8_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \tempo~35_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \tempo~49_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][5]~10_combout\ : std_logic;
SIGNAL \Mult1|mult_core|_~1_combout\ : std_logic;
SIGNAL \Mult1|mult_core|_~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][3]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][6]~9_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][5]~7_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][2]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][1]~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \tempo~50_combout\ : std_logic;
SIGNAL \tempo~34_combout\ : std_logic;
SIGNAL \tempo~36_combout\ : std_logic;
SIGNAL \tempo2~9_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[2][3]~combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \tempo~26_combout\ : std_logic;
SIGNAL \tempo~27_combout\ : std_logic;
SIGNAL \tempo~28_combout\ : std_logic;
SIGNAL \tempo~29_combout\ : std_logic;
SIGNAL \E[5]~input_o\ : std_logic;
SIGNAL \tempo2~7_combout\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \tempo~30_combout\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \tempo~31_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \tempo~32_combout\ : std_logic;
SIGNAL \tempo~33_combout\ : std_logic;
SIGNAL \E[6]~input_o\ : std_logic;
SIGNAL \tempo2~8_combout\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \tempo~22_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \tempo~23_combout\ : std_logic;
SIGNAL \tempo~24_combout\ : std_logic;
SIGNAL \tempo~25_combout\ : std_logic;
SIGNAL \tempo2~6_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[1][5]~7_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \tempo~18_combout\ : std_logic;
SIGNAL \tempo~19_combout\ : std_logic;
SIGNAL \tempo~20_combout\ : std_logic;
SIGNAL \tempo~21_combout\ : std_logic;
SIGNAL \E[3]~input_o\ : std_logic;
SIGNAL \tempo2~5_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[1][2]~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \tempo~6_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \tempo~7_combout\ : std_logic;
SIGNAL \tempo~8_combout\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \tempo~9_combout\ : std_logic;
SIGNAL \E[0]~input_o\ : std_logic;
SIGNAL \tempo2~2_combout\ : std_logic;
SIGNAL \S[0]~reg0_q\ : std_logic;
SIGNAL \S[1]~reg0feeder_combout\ : std_logic;
SIGNAL \S[1]~reg0_q\ : std_logic;
SIGNAL \S[2]~reg0_q\ : std_logic;
SIGNAL \S[3]~reg0_q\ : std_logic;
SIGNAL \S[4]~reg0_q\ : std_logic;
SIGNAL \S[5]~reg0feeder_combout\ : std_logic;
SIGNAL \S[5]~reg0_q\ : std_logic;
SIGNAL \S[6]~reg0_q\ : std_logic;
SIGNAL \S[7]~reg0feeder_combout\ : std_logic;
SIGNAL \S[7]~reg0_q\ : std_logic;
SIGNAL tempo2 : std_logic_vector(10 DOWNTO 0);
SIGNAL tempo : std_logic_vector(21 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_E <= E;
ww_SW <= SW;
S <= ww_S;
ww_H <= H;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\H~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \H~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X56_Y54_N16
\S[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[0]~reg0_q\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\S[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[1]~reg0_q\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\S[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[2]~reg0_q\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\S[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[3]~reg0_q\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\S[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[4]~reg0_q\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\S[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[5]~reg0_q\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\S[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[6]~reg0_q\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\S[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[7]~reg0_q\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\H~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H,
	o => \H~input_o\);

-- Location: CLKCTRL_G3
\H~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \H~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \H~inputclkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X55_Y50_N18
\tempo2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo2~0_combout\ = (\SW[5]~input_o\) # ((\SW[2]~input_o\) # ((\SW[3]~input_o\) # (\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \tempo2~0_combout\);

-- Location: LCCOMB_X55_Y50_N16
\tempo2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo2~1_combout\ = (\SW[0]~input_o\) # ((\SW[4]~input_o\) # ((\SW[1]~input_o\) # (\tempo2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \tempo2~0_combout\,
	combout => \tempo2~1_combout\);

-- Location: LCCOMB_X55_Y50_N14
\tempo[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo[6]~4_combout\ = (\SW[6]~input_o\) # ((!\SW[5]~input_o\ & \SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[4]~input_o\,
	combout => \tempo[6]~4_combout\);

-- Location: IOIBUF_X60_Y54_N22
\E[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(4),
	o => \E[4]~input_o\);

-- Location: LCCOMB_X55_Y50_N28
\tempo2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo2~10_combout\ = (!\SW[5]~input_o\ & !\SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \tempo2~10_combout\);

-- Location: IOIBUF_X56_Y54_N29
\E[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(7),
	o => \E[7]~input_o\);

-- Location: LCCOMB_X54_Y51_N8
\Mult1|mult_core|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|_~4_combout\ = (!tempo2(8) & (tempo2(10) & !tempo2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(8),
	datab => tempo2(10),
	datad => tempo2(9),
	combout => \Mult1|mult_core|_~4_combout\);

-- Location: LCCOMB_X54_Y51_N30
\Mult1|mult_core|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|_~3_combout\ = (tempo2(8) & (!tempo2(10) & tempo2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(8),
	datab => tempo2(10),
	datad => tempo2(9),
	combout => \Mult1|mult_core|_~3_combout\);

-- Location: LCCOMB_X54_Y51_N16
\Mult1|mult_core|romout[2][4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[2][4]~10_combout\ = (tempo2(9) & (tempo2(8) $ (tempo2(10)))) # (!tempo2(9) & ((tempo2(8)) # (!tempo2(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(9),
	datac => tempo2(8),
	datad => tempo2(10),
	combout => \Mult1|mult_core|romout[2][4]~10_combout\);

-- Location: IOIBUF_X60_Y54_N8
\E[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(1),
	o => \E[1]~input_o\);

-- Location: LCCOMB_X58_Y50_N16
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (tempo2(5) & (!\Add3~7\ & VCC)) # (!tempo2(5) & (\Add3~7\ $ (GND)))
-- \Add3~9\ = CARRY((!tempo2(5) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tempo2(5),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X58_Y50_N12
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (tempo2(3) & (!\Add3~3\ & VCC)) # (!tempo2(3) & (\Add3~3\ $ (GND)))
-- \Add3~5\ = CARRY((!tempo2(3) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(3),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X58_Y50_N14
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (tempo2(4) & ((\Add3~5\) # (GND))) # (!tempo2(4) & (!\Add3~5\))
-- \Add3~7\ = CARRY((tempo2(4)) # (!\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(4),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X56_Y50_N6
\Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (tempo2(0) & (\Add3~6_combout\ $ (VCC))) # (!tempo2(0) & (\Add3~6_combout\ & VCC))
-- \Add5~1\ = CARRY((tempo2(0) & \Add3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(0),
	datab => \Add3~6_combout\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X56_Y50_N8
\Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\Add3~8_combout\ & ((tempo2(1) & (\Add5~1\ & VCC)) # (!tempo2(1) & (!\Add5~1\)))) # (!\Add3~8_combout\ & ((tempo2(1) & (!\Add5~1\)) # (!tempo2(1) & ((\Add5~1\) # (GND)))))
-- \Add5~3\ = CARRY((\Add3~8_combout\ & (!tempo2(1) & !\Add5~1\)) # (!\Add3~8_combout\ & ((!\Add5~1\) # (!tempo2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => tempo2(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X57_Y50_N6
\Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (tempo2(0) & (\Add3~4_combout\ $ (VCC))) # (!tempo2(0) & (\Add3~4_combout\ & VCC))
-- \Add4~1\ = CARRY((tempo2(0) & \Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(0),
	datab => \Add3~4_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X57_Y50_N8
\Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (tempo2(1) & ((\Add3~6_combout\ & (\Add4~1\ & VCC)) # (!\Add3~6_combout\ & (!\Add4~1\)))) # (!tempo2(1) & ((\Add3~6_combout\ & (!\Add4~1\)) # (!\Add3~6_combout\ & ((\Add4~1\) # (GND)))))
-- \Add4~3\ = CARRY((tempo2(1) & (!\Add3~6_combout\ & !\Add4~1\)) # (!tempo2(1) & ((!\Add4~1\) # (!\Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(1),
	datab => \Add3~6_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X55_Y51_N30
\Mult1|mult_core|romout[0][5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][5]~2_combout\ = (tempo2(3) & (tempo2(1) $ (((tempo2(0)) # (!tempo2(2)))))) # (!tempo2(3) & ((tempo2(2) & (!tempo2(1) & !tempo2(0))) # (!tempo2(2) & (tempo2(1) & tempo2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(2),
	datab => tempo2(3),
	datac => tempo2(1),
	datad => tempo2(0),
	combout => \Mult1|mult_core|romout[0][5]~2_combout\);

-- Location: LCCOMB_X57_Y51_N24
\Mult1|mult_core|romout[0][4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][4]~3_combout\ = (tempo2(2) & (tempo2(0) $ (((tempo2(3)) # (!tempo2(1)))))) # (!tempo2(2) & ((tempo2(3) & (tempo2(0) & !tempo2(1))) # (!tempo2(3) & (!tempo2(0) & tempo2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(2),
	datab => tempo2(3),
	datac => tempo2(0),
	datad => tempo2(1),
	combout => \Mult1|mult_core|romout[0][4]~3_combout\);

-- Location: LCCOMB_X55_Y51_N0
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (tempo2(4) & (\Mult1|mult_core|romout[0][4]~3_combout\ $ (VCC))) # (!tempo2(4) & (\Mult1|mult_core|romout[0][4]~3_combout\ & VCC))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((tempo2(4) & \Mult1|mult_core|romout[0][4]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(4),
	datab => \Mult1|mult_core|romout[0][4]~3_combout\,
	datad => VCC,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X55_Y51_N2
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult1|mult_core|romout[0][5]~2_combout\ & ((tempo2(5) & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # (!tempo2(5) & 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\Mult1|mult_core|romout[0][5]~2_combout\ & ((tempo2(5) & (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!tempo2(5) & 
-- ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult1|mult_core|romout[0][5]~2_combout\ & (!tempo2(5) & !\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult1|mult_core|romout[0][5]~2_combout\ & 
-- ((!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!tempo2(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[0][5]~2_combout\,
	datab => tempo2(5),
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X58_Y49_N8
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (tempo2(0) & (tempo2(1) $ (VCC))) # (!tempo2(0) & (tempo2(1) & VCC))
-- \Add2~1\ = CARRY((tempo2(0) & tempo2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(0),
	datab => tempo2(1),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X58_Y49_N10
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (tempo2(2) & ((tempo2(1) & (\Add2~1\ & VCC)) # (!tempo2(1) & (!\Add2~1\)))) # (!tempo2(2) & ((tempo2(1) & (!\Add2~1\)) # (!tempo2(1) & ((\Add2~1\) # (GND)))))
-- \Add2~3\ = CARRY((tempo2(2) & (!tempo2(1) & !\Add2~1\)) # (!tempo2(2) & ((!\Add2~1\) # (!tempo2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(2),
	datab => tempo2(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X58_Y49_N12
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((tempo2(3) $ (tempo2(2) $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((tempo2(3) & ((tempo2(2)) # (!\Add2~3\))) # (!tempo2(3) & (tempo2(2) & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(3),
	datab => tempo2(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X55_Y50_N0
\tempo2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo2~11_combout\ = (!\SW[3]~input_o\ & !\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	combout => \tempo2~11_combout\);

-- Location: LCCOMB_X56_Y51_N10
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (tempo2(0) & (tempo2(3) $ (VCC))) # (!tempo2(0) & (tempo2(3) & VCC))
-- \Add0~1\ = CARRY((tempo2(0) & tempo2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(0),
	datab => tempo2(3),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X56_Y51_N12
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (tempo2(1) & ((tempo2(4) & (\Add0~1\ & VCC)) # (!tempo2(4) & (!\Add0~1\)))) # (!tempo2(1) & ((tempo2(4) & (!\Add0~1\)) # (!tempo2(4) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((tempo2(1) & (!tempo2(4) & !\Add0~1\)) # (!tempo2(1) & ((!\Add0~1\) # (!tempo2(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(1),
	datab => tempo2(4),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X56_Y51_N14
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((tempo2(5) $ (tempo2(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((tempo2(5) & ((tempo2(2)) # (!\Add0~3\))) # (!tempo2(5) & (tempo2(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(5),
	datab => tempo2(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X55_Y50_N22
\tempo[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo[6]~5_combout\ = (\SW[3]~input_o\) # ((!\SW[2]~input_o\ & \SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \tempo[6]~5_combout\);

-- Location: LCCOMB_X60_Y51_N6
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (tempo2(2) & (tempo2(0) $ (VCC))) # (!tempo2(2) & (tempo2(0) & VCC))
-- \Add1~1\ = CARRY((tempo2(2) & tempo2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(2),
	datab => tempo2(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X60_Y51_N8
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (tempo2(3) & ((tempo2(1) & (\Add1~1\ & VCC)) # (!tempo2(1) & (!\Add1~1\)))) # (!tempo2(3) & ((tempo2(1) & (!\Add1~1\)) # (!tempo2(1) & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((tempo2(3) & (!tempo2(1) & !\Add1~1\)) # (!tempo2(3) & ((!\Add1~1\) # (!tempo2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(3),
	datab => tempo2(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X60_Y51_N10
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((tempo2(2) $ (tempo2(4) $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((tempo2(2) & ((tempo2(4)) # (!\Add1~3\))) # (!tempo2(2) & (tempo2(4) & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(2),
	datab => tempo2(4),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X56_Y50_N26
\tempo~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~37_combout\ = (\tempo2~11_combout\ & ((\tempo[6]~5_combout\ & ((\Add1~4_combout\))) # (!\tempo[6]~5_combout\ & (\Add0~4_combout\)))) # (!\tempo2~11_combout\ & (((\tempo[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo2~11_combout\,
	datab => \Add0~4_combout\,
	datac => \tempo[6]~5_combout\,
	datad => \Add1~4_combout\,
	combout => \tempo~37_combout\);

-- Location: LCCOMB_X59_Y51_N20
\Mult0|mult_core|romout[1][1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][1]~2_combout\ = tempo2(4) $ (tempo2(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(4),
	datad => tempo2(5),
	combout => \Mult0|mult_core|romout[1][1]~2_combout\);

-- Location: LCCOMB_X57_Y51_N6
\Mult0|mult_core|romout[0][5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][5]~3_combout\ = (tempo2(2) & ((tempo2(3) & (tempo2(0) & tempo2(1))) # (!tempo2(3) & ((!tempo2(1)))))) # (!tempo2(2) & ((tempo2(0) & ((tempo2(3)) # (tempo2(1)))) # (!tempo2(0) & (tempo2(3) & tempo2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(2),
	datab => tempo2(0),
	datac => tempo2(3),
	datad => tempo2(1),
	combout => \Mult0|mult_core|romout[0][5]~3_combout\);

-- Location: LCCOMB_X57_Y51_N16
\Mult0|mult_core|romout[0][4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][4]~4_combout\ = (tempo2(2) & ((tempo2(3) & (!tempo2(0) & tempo2(1))) # (!tempo2(3) & (tempo2(0) & !tempo2(1))))) # (!tempo2(2) & ((tempo2(3) & (tempo2(0) $ (!tempo2(1)))) # (!tempo2(3) & (!tempo2(0) & tempo2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(2),
	datab => tempo2(3),
	datac => tempo2(0),
	datad => tempo2(1),
	combout => \Mult0|mult_core|romout[0][4]~4_combout\);

-- Location: LCCOMB_X58_Y51_N2
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\Mult0|mult_core|romout[0][4]~4_combout\ & (tempo2(4) $ (VCC))) # (!\Mult0|mult_core|romout[0][4]~4_combout\ & (tempo2(4) & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\Mult0|mult_core|romout[0][4]~4_combout\ & tempo2(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][4]~4_combout\,
	datab => tempo2(4),
	datad => VCC,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X58_Y51_N4
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|romout[1][1]~2_combout\ & ((\Mult0|mult_core|romout[0][5]~3_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\Mult0|mult_core|romout[0][5]~3_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\Mult0|mult_core|romout[1][1]~2_combout\ & ((\Mult0|mult_core|romout[0][5]~3_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|romout[0][5]~3_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult0|mult_core|romout[1][1]~2_combout\ & (!\Mult0|mult_core|romout[0][5]~3_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\Mult0|mult_core|romout[1][1]~2_combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\Mult0|mult_core|romout[0][5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][1]~2_combout\,
	datab => \Mult0|mult_core|romout[0][5]~3_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X57_Y50_N28
\tempo~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~38_combout\ = (\tempo2~11_combout\ & (((\tempo~37_combout\)))) # (!\tempo2~11_combout\ & ((\tempo~37_combout\ & (\Add2~4_combout\)) # (!\tempo~37_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \tempo2~11_combout\,
	datac => \tempo~37_combout\,
	datad => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	combout => \tempo~38_combout\);

-- Location: LCCOMB_X57_Y50_N2
\tempo~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~39_combout\ = (\tempo[6]~4_combout\ & (((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\)) # (!\tempo2~10_combout\))) # (!\tempo[6]~4_combout\ & (\tempo2~10_combout\ & ((\tempo~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[6]~4_combout\,
	datab => \tempo2~10_combout\,
	datac => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => \tempo~38_combout\,
	combout => \tempo~39_combout\);

-- Location: LCCOMB_X57_Y50_N26
\tempo~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~40_combout\ = (\tempo2~10_combout\ & (((\tempo~39_combout\)))) # (!\tempo2~10_combout\ & ((\tempo~39_combout\ & (\Add5~2_combout\)) # (!\tempo~39_combout\ & ((\Add4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \tempo2~10_combout\,
	datac => \Add4~2_combout\,
	datad => \tempo~39_combout\,
	combout => \tempo~40_combout\);

-- Location: FF_X57_Y50_N27
\tempo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \tempo~40_combout\,
	ena => \tempo2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo(5));

-- Location: LCCOMB_X57_Y51_N26
\tempo2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo2~12_combout\ = (\tempo2~1_combout\ & tempo(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempo2~1_combout\,
	datad => tempo(5),
	combout => \tempo2~12_combout\);

-- Location: FF_X57_Y51_N27
\tempo2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \tempo2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo2(2));

-- Location: LCCOMB_X58_Y50_N8
\Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~1_cout\ = CARRY((!tempo2(0) & !tempo2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(0),
	datab => tempo2(1),
	datad => VCC,
	cout => \Add3~1_cout\);

-- Location: LCCOMB_X58_Y50_N10
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (tempo2(2) & ((\Add3~1_cout\) # (GND))) # (!tempo2(2) & (!\Add3~1_cout\))
-- \Add3~3\ = CARRY((tempo2(2)) # (!\Add3~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tempo2(2),
	datad => VCC,
	cin => \Add3~1_cout\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X58_Y49_N0
\Mult1|mult_core|romout[0][3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][3]~11_combout\ = tempo2(3) $ (tempo2(1) $ (((!tempo2(2) & tempo2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(2),
	datab => tempo2(0),
	datac => tempo2(3),
	datad => tempo2(1),
	combout => \Mult1|mult_core|romout[0][3]~11_combout\);

-- Location: LCCOMB_X58_Y49_N2
\Mult0|mult_core|romout[0][3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][3]~11_combout\ = tempo2(3) $ (((tempo2(2) & (tempo2(0) $ (!tempo2(1)))) # (!tempo2(2) & (tempo2(0) & !tempo2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(2),
	datab => tempo2(0),
	datac => tempo2(3),
	datad => tempo2(1),
	combout => \Mult0|mult_core|romout[0][3]~11_combout\);

-- Location: LCCOMB_X58_Y49_N4
\tempo~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~45_combout\ = (\tempo2~11_combout\ & (((!\tempo[6]~5_combout\ & \Add0~0_combout\)))) # (!\tempo2~11_combout\ & ((\Mult0|mult_core|romout[0][3]~11_combout\) # ((\tempo[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo2~11_combout\,
	datab => \Mult0|mult_core|romout[0][3]~11_combout\,
	datac => \tempo[6]~5_combout\,
	datad => \Add0~0_combout\,
	combout => \tempo~45_combout\);

-- Location: LCCOMB_X58_Y49_N6
\tempo~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~46_combout\ = (\tempo[6]~5_combout\ & ((\tempo~45_combout\ & (\Add2~0_combout\)) # (!\tempo~45_combout\ & ((\Add1~0_combout\))))) # (!\tempo[6]~5_combout\ & (((\tempo~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[6]~5_combout\,
	datab => \Add2~0_combout\,
	datac => \tempo~45_combout\,
	datad => \Add1~0_combout\,
	combout => \tempo~46_combout\);

-- Location: LCCOMB_X58_Y50_N6
\tempo~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~47_combout\ = (\tempo[6]~4_combout\ & (!\tempo2~10_combout\)) # (!\tempo[6]~4_combout\ & ((\tempo2~10_combout\ & (\tempo~46_combout\)) # (!\tempo2~10_combout\ & ((\Add3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[6]~4_combout\,
	datab => \tempo2~10_combout\,
	datac => \tempo~46_combout\,
	datad => \Add3~2_combout\,
	combout => \tempo~47_combout\);

-- Location: LCCOMB_X58_Y50_N30
\tempo~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~48_combout\ = (\tempo[6]~4_combout\ & ((\tempo~47_combout\ & (\Add3~4_combout\)) # (!\tempo~47_combout\ & ((\Mult1|mult_core|romout[0][3]~11_combout\))))) # (!\tempo[6]~4_combout\ & (((\tempo~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Mult1|mult_core|romout[0][3]~11_combout\,
	datac => \tempo[6]~4_combout\,
	datad => \tempo~47_combout\,
	combout => \tempo~48_combout\);

-- Location: FF_X58_Y50_N31
\tempo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \tempo~48_combout\,
	ena => \tempo2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo(3));

-- Location: LCCOMB_X57_Y51_N14
\tempo2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo2~14_combout\ = (\tempo2~1_combout\ & tempo(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempo2~1_combout\,
	datad => tempo(3),
	combout => \tempo2~14_combout\);

-- Location: FF_X57_Y51_N15
\tempo2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \tempo2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo2(0));

-- Location: LCCOMB_X59_Y50_N4
\tempo~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~41_combout\ = (\tempo[6]~5_combout\ & (((\Add1~2_combout\)) # (!\tempo2~11_combout\))) # (!\tempo[6]~5_combout\ & (\tempo2~11_combout\ & (\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[6]~5_combout\,
	datab => \tempo2~11_combout\,
	datac => \Add0~2_combout\,
	datad => \Add1~2_combout\,
	combout => \tempo~41_combout\);

-- Location: LCCOMB_X59_Y50_N10
\tempo~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~42_combout\ = (\tempo2~11_combout\ & (((\tempo~41_combout\)))) # (!\tempo2~11_combout\ & ((\tempo~41_combout\ & (\Add2~2_combout\)) # (!\tempo~41_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \tempo2~11_combout\,
	datac => \tempo~41_combout\,
	datad => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	combout => \tempo~42_combout\);

-- Location: LCCOMB_X59_Y50_N28
\tempo~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~43_combout\ = (\tempo[6]~4_combout\ & (((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\)) # (!\tempo2~10_combout\))) # (!\tempo[6]~4_combout\ & (\tempo2~10_combout\ & ((\tempo~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[6]~4_combout\,
	datab => \tempo2~10_combout\,
	datac => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => \tempo~42_combout\,
	combout => \tempo~43_combout\);

-- Location: LCCOMB_X59_Y50_N26
\tempo~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~44_combout\ = (\tempo2~10_combout\ & (((\tempo~43_combout\)))) # (!\tempo2~10_combout\ & ((\tempo~43_combout\ & ((\Add5~0_combout\))) # (!\tempo~43_combout\ & (\Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \tempo2~10_combout\,
	datac => \Add5~0_combout\,
	datad => \tempo~43_combout\,
	combout => \tempo~44_combout\);

-- Location: FF_X59_Y50_N27
\tempo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \tempo~44_combout\,
	ena => \tempo2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo(4));

-- Location: LCCOMB_X57_Y51_N2
\tempo2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo2~13_combout\ = (\tempo2~1_combout\ & tempo(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempo2~1_combout\,
	datad => tempo(4),
	combout => \tempo2~13_combout\);

-- Location: FF_X57_Y51_N3
\tempo2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \tempo2~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo2(1));

-- Location: LCCOMB_X56_Y51_N4
\Mult1|mult_core|romout[0][7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][7]~5_combout\ = (tempo2(3) & ((tempo2(1)) # (tempo2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(1),
	datac => tempo2(3),
	datad => tempo2(2),
	combout => \Mult1|mult_core|romout[0][7]~5_combout\);

-- Location: LCCOMB_X59_Y51_N24
\Mult1|mult_core|romout[1][3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[1][3]~4_combout\ = tempo2(7) $ (tempo2(5) $ (((tempo2(4) & !tempo2(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(7),
	datab => tempo2(4),
	datac => tempo2(6),
	datad => tempo2(5),
	combout => \Mult1|mult_core|romout[1][3]~4_combout\);

-- Location: LCCOMB_X55_Y51_N28
\Mult1|mult_core|romout[0][6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][6]~1_combout\ = (tempo2(2) & ((tempo2(3) & (tempo2(1) & tempo2(0))) # (!tempo2(3) & ((tempo2(1)) # (tempo2(0)))))) # (!tempo2(2) & (tempo2(3) & (!tempo2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(2),
	datab => tempo2(3),
	datac => tempo2(1),
	datad => tempo2(0),
	combout => \Mult1|mult_core|romout[0][6]~1_combout\);

-- Location: LCCOMB_X55_Y51_N4
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\Mult1|mult_core|romout[1][2]~0_combout\ $ (\Mult1|mult_core|romout[0][6]~1_combout\ $ (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult1|mult_core|romout[1][2]~0_combout\ & ((\Mult1|mult_core|romout[0][6]~1_combout\) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\Mult1|mult_core|romout[1][2]~0_combout\ & (\Mult1|mult_core|romout[0][6]~1_combout\ & !\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[1][2]~0_combout\,
	datab => \Mult1|mult_core|romout[0][6]~1_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X55_Y51_N6
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\Mult1|mult_core|romout[0][7]~5_combout\ & ((\Mult1|mult_core|romout[1][3]~4_combout\ & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\Mult1|mult_core|romout[1][3]~4_combout\ & (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\Mult1|mult_core|romout[0][7]~5_combout\ & ((\Mult1|mult_core|romout[1][3]~4_combout\ & 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult1|mult_core|romout[1][3]~4_combout\ & ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult1|mult_core|romout[0][7]~5_combout\ & (!\Mult1|mult_core|romout[1][3]~4_combout\ & !\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\Mult1|mult_core|romout[0][7]~5_combout\ & ((!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult1|mult_core|romout[1][3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[0][7]~5_combout\,
	datab => \Mult1|mult_core|romout[1][3]~4_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X58_Y50_N18
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (tempo2(6) & ((\Add3~9\) # (GND))) # (!tempo2(6) & (!\Add3~9\))
-- \Add3~11\ = CARRY((tempo2(6)) # (!\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tempo2(6),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X57_Y50_N10
\Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ((tempo2(2) $ (\Add3~8_combout\ $ (!\Add4~3\)))) # (GND)
-- \Add4~5\ = CARRY((tempo2(2) & ((\Add3~8_combout\) # (!\Add4~3\))) # (!tempo2(2) & (\Add3~8_combout\ & !\Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(2),
	datab => \Add3~8_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X57_Y50_N12
\Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (tempo2(3) & ((\Add3~10_combout\ & (\Add4~5\ & VCC)) # (!\Add3~10_combout\ & (!\Add4~5\)))) # (!tempo2(3) & ((\Add3~10_combout\ & (!\Add4~5\)) # (!\Add3~10_combout\ & ((\Add4~5\) # (GND)))))
-- \Add4~7\ = CARRY((tempo2(3) & (!\Add3~10_combout\ & !\Add4~5\)) # (!tempo2(3) & ((!\Add4~5\) # (!\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(3),
	datab => \Add3~10_combout\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X58_Y51_N30
\Mult1|mult_core|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|_~0_combout\ = (tempo2(2) & tempo2(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempo2(2),
	datad => tempo2(3),
	combout => \Mult1|mult_core|_~0_combout\);

-- Location: LCCOMB_X59_Y51_N14
\Mult0|mult_core|romout[1][3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][3]~5_combout\ = tempo2(7) $ (((tempo2(5) & (tempo2(6) & tempo2(4))) # (!tempo2(5) & (tempo2(6) $ (tempo2(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(7),
	datab => tempo2(5),
	datac => tempo2(6),
	datad => tempo2(4),
	combout => \Mult0|mult_core|romout[1][3]~5_combout\);

-- Location: LCCOMB_X59_Y51_N30
\Mult0|mult_core|romout[1][2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][2]~0_combout\ = tempo2(6) $ (((!tempo2(4) & tempo2(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(4),
	datac => tempo2(6),
	datad => tempo2(5),
	combout => \Mult0|mult_core|romout[1][2]~0_combout\);

-- Location: LCCOMB_X58_Y51_N0
\Mult0|mult_core|romout[0][6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][6]~1_combout\ = (tempo2(2) & (tempo2(1) & !tempo2(3))) # (!tempo2(2) & ((tempo2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(1),
	datac => tempo2(2),
	datad => tempo2(3),
	combout => \Mult0|mult_core|romout[0][6]~1_combout\);

-- Location: LCCOMB_X58_Y51_N6
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\Mult0|mult_core|romout[1][2]~0_combout\ $ (\Mult0|mult_core|romout[0][6]~1_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult0|mult_core|romout[1][2]~0_combout\ & ((\Mult0|mult_core|romout[0][6]~1_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\Mult0|mult_core|romout[1][2]~0_combout\ & (\Mult0|mult_core|romout[0][6]~1_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][2]~0_combout\,
	datab => \Mult0|mult_core|romout[0][6]~1_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X58_Y51_N8
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\Mult1|mult_core|_~0_combout\ & ((\Mult0|mult_core|romout[1][3]~5_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\Mult0|mult_core|romout[1][3]~5_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\Mult1|mult_core|_~0_combout\ & ((\Mult0|mult_core|romout[1][3]~5_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|romout[1][3]~5_combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult1|mult_core|_~0_combout\ & (!\Mult0|mult_core|romout[1][3]~5_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult1|mult_core|_~0_combout\ & 
-- ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult0|mult_core|romout[1][3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|_~0_combout\,
	datab => \Mult0|mult_core|romout[1][3]~5_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X56_Y51_N16
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (tempo2(6) & ((tempo2(3) & (\Add0~5\ & VCC)) # (!tempo2(3) & (!\Add0~5\)))) # (!tempo2(6) & ((tempo2(3) & (!\Add0~5\)) # (!tempo2(3) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((tempo2(6) & (!tempo2(3) & !\Add0~5\)) # (!tempo2(6) & ((!\Add0~5\) # (!tempo2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(6),
	datab => tempo2(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X56_Y51_N18
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((tempo2(4) $ (tempo2(7) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((tempo2(4) & ((tempo2(7)) # (!\Add0~7\))) # (!tempo2(4) & (tempo2(7) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(4),
	datab => tempo2(7),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X59_Y50_N14
\tempo~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~10_combout\ = (\tempo[6]~5_combout\ & (!\tempo2~11_combout\)) # (!\tempo[6]~5_combout\ & ((\tempo2~11_combout\ & ((\Add0~8_combout\))) # (!\tempo2~11_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[6]~5_combout\,
	datab => \tempo2~11_combout\,
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => \Add0~8_combout\,
	combout => \tempo~10_combout\);

-- Location: LCCOMB_X58_Y49_N14
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (tempo2(3) & ((tempo2(4) & (\Add2~5\ & VCC)) # (!tempo2(4) & (!\Add2~5\)))) # (!tempo2(3) & ((tempo2(4) & (!\Add2~5\)) # (!tempo2(4) & ((\Add2~5\) # (GND)))))
-- \Add2~7\ = CARRY((tempo2(3) & (!tempo2(4) & !\Add2~5\)) # (!tempo2(3) & ((!\Add2~5\) # (!tempo2(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(3),
	datab => tempo2(4),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X58_Y49_N16
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((tempo2(5) $ (tempo2(4) $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((tempo2(5) & ((tempo2(4)) # (!\Add2~7\))) # (!tempo2(5) & (tempo2(4) & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(5),
	datab => tempo2(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X60_Y51_N12
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (tempo2(5) & ((tempo2(3) & (\Add1~5\ & VCC)) # (!tempo2(3) & (!\Add1~5\)))) # (!tempo2(5) & ((tempo2(3) & (!\Add1~5\)) # (!tempo2(3) & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((tempo2(5) & (!tempo2(3) & !\Add1~5\)) # (!tempo2(5) & ((!\Add1~5\) # (!tempo2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(5),
	datab => tempo2(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X60_Y51_N14
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((tempo2(4) $ (tempo2(6) $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((tempo2(4) & ((tempo2(6)) # (!\Add1~7\))) # (!tempo2(4) & (tempo2(6) & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(4),
	datab => tempo2(6),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X59_Y50_N12
\tempo~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~11_combout\ = (\tempo[6]~5_combout\ & ((\tempo~10_combout\ & (\Add2~8_combout\)) # (!\tempo~10_combout\ & ((\Add1~8_combout\))))) # (!\tempo[6]~5_combout\ & (\tempo~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[6]~5_combout\,
	datab => \tempo~10_combout\,
	datac => \Add2~8_combout\,
	datad => \Add1~8_combout\,
	combout => \tempo~11_combout\);

-- Location: LCCOMB_X59_Y50_N30
\tempo~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~12_combout\ = (\tempo[6]~4_combout\ & (!\tempo2~10_combout\)) # (!\tempo[6]~4_combout\ & ((\tempo2~10_combout\ & ((\tempo~11_combout\))) # (!\tempo2~10_combout\ & (\Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[6]~4_combout\,
	datab => \tempo2~10_combout\,
	datac => \Add4~6_combout\,
	datad => \tempo~11_combout\,
	combout => \tempo~12_combout\);

-- Location: LCCOMB_X56_Y50_N10
\Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = ((\Add3~10_combout\ $ (tempo2(2) $ (!\Add5~3\)))) # (GND)
-- \Add5~5\ = CARRY((\Add3~10_combout\ & ((tempo2(2)) # (!\Add5~3\))) # (!\Add3~10_combout\ & (tempo2(2) & !\Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => tempo2(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X56_Y50_N12
\Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\Add3~12_combout\ & ((tempo2(3) & (\Add5~5\ & VCC)) # (!tempo2(3) & (!\Add5~5\)))) # (!\Add3~12_combout\ & ((tempo2(3) & (!\Add5~5\)) # (!tempo2(3) & ((\Add5~5\) # (GND)))))
-- \Add5~7\ = CARRY((\Add3~12_combout\ & (!tempo2(3) & !\Add5~5\)) # (!\Add3~12_combout\ & ((!\Add5~5\) # (!tempo2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => tempo2(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X59_Y50_N8
\tempo~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~13_combout\ = (\tempo[6]~4_combout\ & ((\tempo~12_combout\ & ((\Add5~6_combout\))) # (!\tempo~12_combout\ & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\)))) # (!\tempo[6]~4_combout\ & (((\tempo~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[6]~4_combout\,
	datab => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datac => \tempo~12_combout\,
	datad => \Add5~6_combout\,
	combout => \tempo~13_combout\);

-- Location: FF_X59_Y50_N9
\tempo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \tempo~13_combout\,
	ena => \tempo2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo(7));

-- Location: LCCOMB_X59_Y51_N22
\tempo2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo2~3_combout\ = (\tempo2~1_combout\ & ((tempo(7)))) # (!\tempo2~1_combout\ & (\E[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E[1]~input_o\,
	datab => \tempo2~1_combout\,
	datac => tempo(7),
	combout => \tempo2~3_combout\);

-- Location: FF_X59_Y51_N23
\tempo2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \tempo2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo2(4));

-- Location: LCCOMB_X58_Y50_N20
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (tempo2(7) & (!\Add3~11\ & VCC)) # (!tempo2(7) & (\Add3~11\ $ (GND)))
-- \Add3~13\ = CARRY((!tempo2(7) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(7),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X57_Y50_N14
\Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = ((\Add3~12_combout\ $ (tempo2(4) $ (!\Add4~7\)))) # (GND)
-- \Add4~9\ = CARRY((\Add3~12_combout\ & ((tempo2(4)) # (!\Add4~7\))) # (!\Add3~12_combout\ & (tempo2(4) & !\Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => tempo2(4),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X59_Y51_N26
\Mult1|mult_core|romout[1][4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[1][4]~6_combout\ = (tempo2(4) & ((tempo2(7) & (!tempo2(5) & !tempo2(6))) # (!tempo2(7) & (tempo2(5) & tempo2(6))))) # (!tempo2(4) & (tempo2(6) $ (((!tempo2(7) & tempo2(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(7),
	datab => tempo2(4),
	datac => tempo2(5),
	datad => tempo2(6),
	combout => \Mult1|mult_core|romout[1][4]~6_combout\);

-- Location: LCCOMB_X55_Y51_N8
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = (\Mult1|mult_core|romout[1][4]~6_combout\ & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\ $ (GND))) # (!\Mult1|mult_core|romout[1][4]~6_combout\ & 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\ & VCC))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult1|mult_core|romout[1][4]~6_combout\ & !\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[1][4]~6_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X55_Y51_N16
\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (tempo2(8) & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (VCC))) # (!tempo2(8) & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & VCC))
-- \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((tempo2(8) & \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(8),
	datab => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	combout => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X59_Y51_N4
\Mult0|mult_core|romout[1][4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][4]~6_combout\ = (tempo2(7) & ((tempo2(6) & (tempo2(5) & !tempo2(4))) # (!tempo2(6) & (tempo2(5) $ (!tempo2(4)))))) # (!tempo2(7) & ((tempo2(6) & (!tempo2(5) & tempo2(4))) # (!tempo2(6) & (tempo2(5) & !tempo2(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(7),
	datab => tempo2(6),
	datac => tempo2(5),
	datad => tempo2(4),
	combout => \Mult0|mult_core|romout[1][4]~6_combout\);

-- Location: LCCOMB_X58_Y51_N10
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = (\Mult0|mult_core|romout[1][4]~6_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ $ (GND))) # (!\Mult0|mult_core|romout[1][4]~6_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult0|mult_core|romout[1][4]~6_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][4]~6_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X58_Y51_N18
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (tempo2(8) $ (VCC))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (tempo2(8) & VCC))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & tempo2(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => tempo2(8),
	datad => VCC,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X58_Y49_N18
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (tempo2(5) & ((tempo2(6) & (\Add2~9\ & VCC)) # (!tempo2(6) & (!\Add2~9\)))) # (!tempo2(5) & ((tempo2(6) & (!\Add2~9\)) # (!tempo2(6) & ((\Add2~9\) # (GND)))))
-- \Add2~11\ = CARRY((tempo2(5) & (!tempo2(6) & !\Add2~9\)) # (!tempo2(5) & ((!\Add2~9\) # (!tempo2(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(5),
	datab => tempo2(6),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X60_Y51_N16
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (tempo2(5) & ((tempo2(7) & (\Add1~9\ & VCC)) # (!tempo2(7) & (!\Add1~9\)))) # (!tempo2(5) & ((tempo2(7) & (!\Add1~9\)) # (!tempo2(7) & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((tempo2(5) & (!tempo2(7) & !\Add1~9\)) # (!tempo2(5) & ((!\Add1~9\) # (!tempo2(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(5),
	datab => tempo2(7),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X56_Y51_N20
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (tempo2(8) & ((tempo2(5) & (\Add0~9\ & VCC)) # (!tempo2(5) & (!\Add0~9\)))) # (!tempo2(8) & ((tempo2(5) & (!\Add0~9\)) # (!tempo2(5) & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((tempo2(8) & (!tempo2(5) & !\Add0~9\)) # (!tempo2(8) & ((!\Add0~9\) # (!tempo2(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(8),
	datab => tempo2(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X60_Y51_N4
\tempo~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~14_combout\ = (\tempo2~11_combout\ & ((\tempo[6]~5_combout\ & (\Add1~10_combout\)) # (!\tempo[6]~5_combout\ & ((\Add0~10_combout\))))) # (!\tempo2~11_combout\ & (((\tempo[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo2~11_combout\,
	datab => \Add1~10_combout\,
	datac => \tempo[6]~5_combout\,
	datad => \Add0~10_combout\,
	combout => \tempo~14_combout\);

-- Location: LCCOMB_X59_Y50_N24
\tempo~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~15_combout\ = (\tempo2~11_combout\ & (((\tempo~14_combout\)))) # (!\tempo2~11_combout\ & ((\tempo~14_combout\ & ((\Add2~10_combout\))) # (!\tempo~14_combout\ & (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datab => \tempo2~11_combout\,
	datac => \Add2~10_combout\,
	datad => \tempo~14_combout\,
	combout => \tempo~15_combout\);

-- Location: LCCOMB_X59_Y50_N22
\tempo~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~16_combout\ = (\tempo[6]~4_combout\ & (((\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\)) # (!\tempo2~10_combout\))) # (!\tempo[6]~4_combout\ & (\tempo2~10_combout\ & ((\tempo~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[6]~4_combout\,
	datab => \tempo2~10_combout\,
	datac => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datad => \tempo~15_combout\,
	combout => \tempo~16_combout\);

-- Location: LCCOMB_X58_Y50_N22
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (tempo2(8) & ((\Add3~13\) # (GND))) # (!tempo2(8) & (!\Add3~13\))
-- \Add3~15\ = CARRY((tempo2(8)) # (!\Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tempo2(8),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X56_Y50_N14
\Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = ((tempo2(4) $ (\Add3~14_combout\ $ (!\Add5~7\)))) # (GND)
-- \Add5~9\ = CARRY((tempo2(4) & ((\Add3~14_combout\) # (!\Add5~7\))) # (!tempo2(4) & (\Add3~14_combout\ & !\Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(4),
	datab => \Add3~14_combout\,
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X59_Y50_N6
\tempo~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~17_combout\ = (\tempo2~10_combout\ & (((\tempo~16_combout\)))) # (!\tempo2~10_combout\ & ((\tempo~16_combout\ & ((\Add5~8_combout\))) # (!\tempo~16_combout\ & (\Add4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo2~10_combout\,
	datab => \Add4~8_combout\,
	datac => \tempo~16_combout\,
	datad => \Add5~8_combout\,
	combout => \tempo~17_combout\);

-- Location: FF_X59_Y50_N7
\tempo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \tempo~17_combout\,
	ena => \tempo2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo(8));

-- Location: IOIBUF_X60_Y54_N15
\E[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(2),
	o => \E[2]~input_o\);

-- Location: LCCOMB_X59_Y51_N2
\tempo2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo2~4_combout\ = (\tempo2~1_combout\ & (tempo(8))) # (!\tempo2~1_combout\ & ((\E[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tempo(8),
	datac => \tempo2~1_combout\,
	datad => \E[2]~input_o\,
	combout => \tempo2~4_combout\);

-- Location: FF_X59_Y51_N3
\tempo2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \tempo2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo2(5));

-- Location: LCCOMB_X54_Y51_N14
\Mult1|mult_core|romout[1][7]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[1][7]~9_combout\ = (tempo2(7) & ((tempo2(6)) # (tempo2(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tempo2(6),
	datac => tempo2(5),
	datad => tempo2(7),
	combout => \Mult1|mult_core|romout[1][7]~9_combout\);

-- Location: LCCOMB_X59_Y51_N18
\Mult1|mult_core|romout[1][6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[1][6]~combout\ = (tempo2(5) & (tempo2(6) & ((tempo2(4)) # (!tempo2(7))))) # (!tempo2(5) & ((tempo2(6) & (!tempo2(7) & tempo2(4))) # (!tempo2(6) & (tempo2(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(5),
	datab => tempo2(6),
	datac => tempo2(7),
	datad => tempo2(4),
	combout => \Mult1|mult_core|romout[1][6]~combout\);

-- Location: LCCOMB_X55_Y51_N10
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\Mult1|mult_core|romout[1][5]~7_combout\ & (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\Mult1|mult_core|romout[1][5]~7_combout\ & 
-- ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\Mult1|mult_core|romout[1][5]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[1][5]~7_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X55_Y51_N12
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = (\Mult1|mult_core|romout[1][6]~combout\ & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\ $ (GND))) # (!\Mult1|mult_core|romout[1][6]~combout\ & 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\ & VCC))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\Mult1|mult_core|romout[1][6]~combout\ & !\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[1][6]~combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X55_Y51_N14
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = \Mult1|mult_core|romout[1][7]~9_combout\ $ (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|mult_core|romout[1][7]~9_combout\,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\);

-- Location: LCCOMB_X54_Y51_N20
\Mult1|mult_core|romout[2][2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[2][2]~8_combout\ = tempo2(8) $ (tempo2(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempo2(8),
	datad => tempo2(10),
	combout => \Mult1|mult_core|romout[2][2]~8_combout\);

-- Location: LCCOMB_X55_Y51_N18
\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((tempo2(9) & (\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # (!tempo2(9) & 
-- (!\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((tempo2(9) & (!\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!tempo2(9) & 
-- ((\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!tempo2(9) & !\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((!\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (!tempo2(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => tempo2(9),
	datad => VCC,
	cin => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X55_Y51_N20
\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ $ (\Mult1|mult_core|romout[2][2]~8_combout\ $ 
-- (!\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & ((\Mult1|mult_core|romout[2][2]~8_combout\) # 
-- (!\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (\Mult1|mult_core|romout[2][2]~8_combout\ & 
-- !\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datab => \Mult1|mult_core|romout[2][2]~8_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X55_Y51_N22
\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = (\Mult1|mult_core|romout[2][3]~combout\ & ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- (\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (!\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)))) # 
-- (!\Mult1|mult_core|romout[2][3]~combout\ & ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (!\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- ((\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult1|mult_core|romout[2][3]~combout\ & (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- !\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\Mult1|mult_core|romout[2][3]~combout\ & ((!\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[2][3]~combout\,
	datab => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X55_Y51_N24
\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = (\Mult1|mult_core|romout[2][4]~10_combout\ & (!\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ & VCC)) # (!\Mult1|mult_core|romout[2][4]~10_combout\ & 
-- (\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ $ (GND)))
-- \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ = CARRY((!\Mult1|mult_core|romout[2][4]~10_combout\ & !\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[2][4]~10_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\,
	combout => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X55_Y51_N26
\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ = \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ $ (((\Mult1|mult_core|_~4_combout\) # (\Mult1|mult_core|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|_~4_combout\,
	datad => \Mult1|mult_core|_~3_combout\,
	cin => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\,
	combout => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X58_Y50_N24
\Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (tempo2(9) & (!\Add3~15\ & VCC)) # (!tempo2(9) & (\Add3~15\ $ (GND)))
-- \Add3~17\ = CARRY((!tempo2(9) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tempo2(9),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X58_Y50_N26
\Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (tempo2(10) & ((\Add3~17\) # (GND))) # (!tempo2(10) & (!\Add3~17\))
-- \Add3~19\ = CARRY((tempo2(10)) # (!\Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(10),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X58_Y50_N28
\Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = \Add3~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add3~19\,
	combout => \Add3~20_combout\);

-- Location: LCCOMB_X57_Y50_N16
\Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (tempo2(5) & ((\Add3~14_combout\ & (\Add4~9\ & VCC)) # (!\Add3~14_combout\ & (!\Add4~9\)))) # (!tempo2(5) & ((\Add3~14_combout\ & (!\Add4~9\)) # (!\Add3~14_combout\ & ((\Add4~9\) # (GND)))))
-- \Add4~11\ = CARRY((tempo2(5) & (!\Add3~14_combout\ & !\Add4~9\)) # (!tempo2(5) & ((!\Add4~9\) # (!\Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(5),
	datab => \Add3~14_combout\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X57_Y50_N18
\Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = ((\Add3~16_combout\ $ (tempo2(6) $ (!\Add4~11\)))) # (GND)
-- \Add4~13\ = CARRY((\Add3~16_combout\ & ((tempo2(6)) # (!\Add4~11\))) # (!\Add3~16_combout\ & (tempo2(6) & !\Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~16_combout\,
	datab => tempo2(6),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X57_Y50_N20
\Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (tempo2(7) & ((\Add3~18_combout\ & (\Add4~13\ & VCC)) # (!\Add3~18_combout\ & (!\Add4~13\)))) # (!tempo2(7) & ((\Add3~18_combout\ & (!\Add4~13\)) # (!\Add3~18_combout\ & ((\Add4~13\) # (GND)))))
-- \Add4~15\ = CARRY((tempo2(7) & (!\Add3~18_combout\ & !\Add4~13\)) # (!tempo2(7) & ((!\Add4~13\) # (!\Add3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(7),
	datab => \Add3~18_combout\,
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X57_Y50_N22
\Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = ((tempo2(8) $ (\Add3~20_combout\ $ (!\Add4~15\)))) # (GND)
-- \Add4~17\ = CARRY((tempo2(8) & ((\Add3~20_combout\) # (!\Add4~15\))) # (!tempo2(8) & (\Add3~20_combout\ & !\Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(8),
	datab => \Add3~20_combout\,
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X57_Y50_N24
\Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = tempo2(9) $ (\Add4~17\ $ (\Add3~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tempo2(9),
	datad => \Add3~20_combout\,
	cin => \Add4~17\,
	combout => \Add4~18_combout\);

-- Location: LCCOMB_X56_Y50_N16
\Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\Add3~16_combout\ & ((tempo2(5) & (\Add5~9\ & VCC)) # (!tempo2(5) & (!\Add5~9\)))) # (!\Add3~16_combout\ & ((tempo2(5) & (!\Add5~9\)) # (!tempo2(5) & ((\Add5~9\) # (GND)))))
-- \Add5~11\ = CARRY((\Add3~16_combout\ & (!tempo2(5) & !\Add5~9\)) # (!\Add3~16_combout\ & ((!\Add5~9\) # (!tempo2(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~16_combout\,
	datab => tempo2(5),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X56_Y50_N18
\Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = ((\Add3~18_combout\ $ (tempo2(6) $ (!\Add5~11\)))) # (GND)
-- \Add5~13\ = CARRY((\Add3~18_combout\ & ((tempo2(6)) # (!\Add5~11\))) # (!\Add3~18_combout\ & (tempo2(6) & !\Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~18_combout\,
	datab => tempo2(6),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X56_Y50_N20
\Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (\Add3~20_combout\ & ((tempo2(7) & (\Add5~13\ & VCC)) # (!tempo2(7) & (!\Add5~13\)))) # (!\Add3~20_combout\ & ((tempo2(7) & (!\Add5~13\)) # (!tempo2(7) & ((\Add5~13\) # (GND)))))
-- \Add5~15\ = CARRY((\Add3~20_combout\ & (!tempo2(7) & !\Add5~13\)) # (!\Add3~20_combout\ & ((!\Add5~13\) # (!tempo2(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~20_combout\,
	datab => tempo2(7),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X56_Y50_N22
\Add5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = ((\Add3~20_combout\ $ (tempo2(8) $ (!\Add5~15\)))) # (GND)
-- \Add5~17\ = CARRY((\Add3~20_combout\ & ((tempo2(8)) # (!\Add5~15\))) # (!\Add3~20_combout\ & (tempo2(8) & !\Add5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~20_combout\,
	datab => tempo2(8),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X56_Y50_N24
\Add5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = \Add3~20_combout\ $ (\Add5~17\ $ (tempo2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~20_combout\,
	datad => tempo2(9),
	cin => \Add5~17\,
	combout => \Add5~18_combout\);

-- Location: LCCOMB_X56_Y50_N0
\tempo~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~35_combout\ = (\tempo[6]~4_combout\ & (((\tempo2~10_combout\) # (\Add5~18_combout\)))) # (!\tempo[6]~4_combout\ & (\Add4~18_combout\ & (!\tempo2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[6]~4_combout\,
	datab => \Add4~18_combout\,
	datac => \tempo2~10_combout\,
	datad => \Add5~18_combout\,
	combout => \tempo~35_combout\);

-- Location: LCCOMB_X60_Y51_N18
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((tempo2(8) $ (tempo2(6) $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((tempo2(8) & ((tempo2(6)) # (!\Add1~11\))) # (!tempo2(8) & (tempo2(6) & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(8),
	datab => tempo2(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X60_Y51_N20
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (tempo2(9) & ((tempo2(7) & (\Add1~13\ & VCC)) # (!tempo2(7) & (!\Add1~13\)))) # (!tempo2(9) & ((tempo2(7) & (!\Add1~13\)) # (!tempo2(7) & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((tempo2(9) & (!tempo2(7) & !\Add1~13\)) # (!tempo2(9) & ((!\Add1~13\) # (!tempo2(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(9),
	datab => tempo2(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X60_Y51_N22
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((tempo2(8) $ (tempo2(10) $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((tempo2(8) & ((tempo2(10)) # (!\Add1~15\))) # (!tempo2(8) & (tempo2(10) & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(8),
	datab => tempo2(10),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X60_Y51_N24
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (tempo2(9) & (!\Add1~17\)) # (!tempo2(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!tempo2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X60_Y51_N26
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = \Add1~19\ $ (!tempo2(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => tempo2(10),
	cin => \Add1~19\,
	combout => \Add1~20_combout\);

-- Location: LCCOMB_X58_Y49_N20
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((tempo2(6) $ (tempo2(7) $ (!\Add2~11\)))) # (GND)
-- \Add2~13\ = CARRY((tempo2(6) & ((tempo2(7)) # (!\Add2~11\))) # (!tempo2(6) & (tempo2(7) & !\Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(6),
	datab => tempo2(7),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X58_Y49_N22
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (tempo2(8) & ((tempo2(7) & (\Add2~13\ & VCC)) # (!tempo2(7) & (!\Add2~13\)))) # (!tempo2(8) & ((tempo2(7) & (!\Add2~13\)) # (!tempo2(7) & ((\Add2~13\) # (GND)))))
-- \Add2~15\ = CARRY((tempo2(8) & (!tempo2(7) & !\Add2~13\)) # (!tempo2(8) & ((!\Add2~13\) # (!tempo2(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(8),
	datab => tempo2(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X58_Y49_N24
\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = ((tempo2(8) $ (tempo2(9) $ (!\Add2~15\)))) # (GND)
-- \Add2~17\ = CARRY((tempo2(8) & ((tempo2(9)) # (!\Add2~15\))) # (!tempo2(8) & (tempo2(9) & !\Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(8),
	datab => tempo2(9),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X58_Y49_N26
\Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (tempo2(10) & ((tempo2(9) & (\Add2~17\ & VCC)) # (!tempo2(9) & (!\Add2~17\)))) # (!tempo2(10) & ((tempo2(9) & (!\Add2~17\)) # (!tempo2(9) & ((\Add2~17\) # (GND)))))
-- \Add2~19\ = CARRY((tempo2(10) & (!tempo2(9) & !\Add2~17\)) # (!tempo2(10) & ((!\Add2~17\) # (!tempo2(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(10),
	datab => tempo2(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X58_Y49_N28
\Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = tempo2(10) $ (!\Add2~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(10),
	cin => \Add2~19\,
	combout => \Add2~20_combout\);

-- Location: LCCOMB_X55_Y50_N30
\tempo~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~49_combout\ = (\SW[3]~input_o\ & (((\Add2~20_combout\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((\Add2~20_combout\))) # (!\SW[2]~input_o\ & (\Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \Add1~20_combout\,
	datad => \Add2~20_combout\,
	combout => \tempo~49_combout\);

-- Location: LCCOMB_X56_Y51_N22
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((tempo2(6) $ (tempo2(9) $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((tempo2(6) & ((tempo2(9)) # (!\Add0~11\))) # (!tempo2(6) & (tempo2(9) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(6),
	datab => tempo2(9),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X56_Y51_N24
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (tempo2(10) & ((tempo2(7) & (\Add0~13\ & VCC)) # (!tempo2(7) & (!\Add0~13\)))) # (!tempo2(10) & ((tempo2(7) & (!\Add0~13\)) # (!tempo2(7) & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((tempo2(10) & (!tempo2(7) & !\Add0~13\)) # (!tempo2(10) & ((!\Add0~13\) # (!tempo2(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(10),
	datab => tempo2(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X56_Y51_N26
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (tempo2(8) & (\Add0~15\ $ (GND))) # (!tempo2(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((tempo2(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X56_Y51_N28
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (tempo2(9) & (!\Add0~17\)) # (!tempo2(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!tempo2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X56_Y51_N30
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = tempo2(10) $ (!\Add0~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tempo2(10),
	cin => \Add0~19\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X56_Y51_N8
\Mult0|mult_core|romout[2][5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][5]~10_combout\ = (tempo2(10) & ((!tempo2(9)))) # (!tempo2(10) & (tempo2(8) & tempo2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tempo2(10),
	datac => tempo2(8),
	datad => tempo2(9),
	combout => \Mult0|mult_core|romout[2][5]~10_combout\);

-- Location: LCCOMB_X57_Y50_N0
\Mult1|mult_core|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|_~1_combout\ = (!tempo2(10) & (tempo2(9) & !tempo2(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(10),
	datac => tempo2(9),
	datad => tempo2(8),
	combout => \Mult1|mult_core|_~1_combout\);

-- Location: LCCOMB_X58_Y50_N0
\Mult1|mult_core|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|_~2_combout\ = (!tempo2(9) & (tempo2(8) & tempo2(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tempo2(9),
	datac => tempo2(8),
	datad => tempo2(10),
	combout => \Mult1|mult_core|_~2_combout\);

-- Location: LCCOMB_X57_Y51_N8
\Mult0|mult_core|romout[2][3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][3]~combout\ = (tempo2(10) & (tempo2(9) $ (!tempo2(8)))) # (!tempo2(10) & (!tempo2(9) & tempo2(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(10),
	datab => tempo2(9),
	datad => tempo2(8),
	combout => \Mult0|mult_core|romout[2][3]~combout\);

-- Location: LCCOMB_X59_Y51_N28
\Mult0|mult_core|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|_~0_combout\ = (tempo2(7) & tempo2(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempo2(7),
	datad => tempo2(6),
	combout => \Mult0|mult_core|_~0_combout\);

-- Location: LCCOMB_X59_Y51_N0
\Mult0|mult_core|romout[1][6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][6]~9_combout\ = (tempo2(7) & (!tempo2(6))) # (!tempo2(7) & (tempo2(6) & tempo2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(7),
	datab => tempo2(6),
	datad => tempo2(5),
	combout => \Mult0|mult_core|romout[1][6]~9_combout\);

-- Location: LCCOMB_X59_Y51_N12
\Mult0|mult_core|romout[1][5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][5]~7_combout\ = (tempo2(7) & ((tempo2(5) & ((tempo2(4)) # (!tempo2(6)))) # (!tempo2(5) & (!tempo2(6) & tempo2(4))))) # (!tempo2(7) & ((tempo2(5) & (!tempo2(6) & tempo2(4))) # (!tempo2(5) & (tempo2(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(7),
	datab => tempo2(5),
	datac => tempo2(6),
	datad => tempo2(4),
	combout => \Mult0|mult_core|romout[1][5]~7_combout\);

-- Location: LCCOMB_X58_Y51_N12
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\Mult0|mult_core|romout[1][5]~7_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\Mult0|mult_core|romout[1][5]~7_combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\Mult0|mult_core|romout[1][5]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[1][5]~7_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X58_Y51_N14
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = (\Mult0|mult_core|romout[1][6]~9_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ $ (GND))) # (!\Mult0|mult_core|romout[1][6]~9_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\Mult0|mult_core|romout[1][6]~9_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[1][6]~9_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X58_Y51_N16
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ $ (\Mult0|mult_core|_~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|mult_core|_~0_combout\,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\);

-- Location: LCCOMB_X58_Y50_N2
\Mult0|mult_core|romout[2][2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][2]~combout\ = tempo2(10) $ (((!tempo2(8) & tempo2(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(10),
	datab => tempo2(8),
	datad => tempo2(9),
	combout => \Mult0|mult_core|romout[2][2]~combout\);

-- Location: LCCOMB_X57_Y51_N4
\Mult0|mult_core|romout[2][1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][1]~8_combout\ = tempo2(9) $ (tempo2(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tempo2(9),
	datad => tempo2(8),
	combout => \Mult0|mult_core|romout[2][1]~8_combout\);

-- Location: LCCOMB_X58_Y51_N20
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Mult0|mult_core|romout[2][1]~8_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\Mult0|mult_core|romout[2][1]~8_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Mult0|mult_core|romout[2][1]~8_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|romout[2][1]~8_combout\ & 
-- ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\Mult0|mult_core|romout[2][1]~8_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (!\Mult0|mult_core|romout[2][1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \Mult0|mult_core|romout[2][1]~8_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X58_Y51_N22
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\Mult0|mult_core|romout[2][2]~combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult0|mult_core|romout[2][2]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # (!\Mult0|mult_core|romout[2][2]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][2]~combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X58_Y51_N24
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = (\Mult0|mult_core|romout[2][3]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)))) # 
-- (!\Mult0|mult_core|romout[2][3]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult0|mult_core|romout[2][3]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|romout[2][3]~combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][3]~combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X58_Y51_N26
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ & (((\Mult1|mult_core|_~1_combout\) # (\Mult1|mult_core|_~2_combout\)))) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ & ((((\Mult1|mult_core|_~1_combout\) # (\Mult1|mult_core|_~2_combout\)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ = CARRY((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ & ((\Mult1|mult_core|_~1_combout\) # (\Mult1|mult_core|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|_~1_combout\,
	datab => \Mult1|mult_core|_~2_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X58_Y51_N28
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ = \Mult0|mult_core|romout[2][5]~10_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[2][5]~10_combout\,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X55_Y50_N12
\tempo~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~50_combout\ = (\SW[3]~input_o\ & (((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\))) # 
-- (!\SW[2]~input_o\ & (\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \Add0~20_combout\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	combout => \tempo~50_combout\);

-- Location: LCCOMB_X55_Y50_N20
\tempo~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~34_combout\ = (\tempo[6]~5_combout\ & (\tempo~49_combout\)) # (!\tempo[6]~5_combout\ & ((\tempo~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[6]~5_combout\,
	datac => \tempo~49_combout\,
	datad => \tempo~50_combout\,
	combout => \tempo~34_combout\);

-- Location: LCCOMB_X55_Y50_N4
\tempo~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~36_combout\ = (\tempo2~10_combout\ & ((\tempo~35_combout\ & (\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\)) # (!\tempo~35_combout\ & ((\tempo~34_combout\))))) # (!\tempo2~10_combout\ & (((\tempo~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo2~10_combout\,
	datab => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datac => \tempo~35_combout\,
	datad => \tempo~34_combout\,
	combout => \tempo~36_combout\);

-- Location: FF_X55_Y50_N5
\tempo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \tempo~36_combout\,
	ena => \tempo2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo(13));

-- Location: LCCOMB_X55_Y50_N10
\tempo2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo2~9_combout\ = (\tempo2~1_combout\ & ((tempo(13)))) # (!\tempo2~1_combout\ & (\E[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E[7]~input_o\,
	datab => tempo(13),
	datad => \tempo2~1_combout\,
	combout => \tempo2~9_combout\);

-- Location: FF_X57_Y50_N9
\tempo2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	asdata => \tempo2~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo2(10));

-- Location: LCCOMB_X56_Y51_N2
\Mult1|mult_core|romout[2][3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[2][3]~combout\ = tempo2(9) $ (((!tempo2(10) & tempo2(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tempo2(10),
	datac => tempo2(8),
	datad => tempo2(9),
	combout => \Mult1|mult_core|romout[2][3]~combout\);

-- Location: LCCOMB_X57_Y51_N12
\tempo~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~26_combout\ = (\tempo2~11_combout\ & (!\tempo[6]~5_combout\ & (\Add0~16_combout\))) # (!\tempo2~11_combout\ & ((\tempo[6]~5_combout\) # ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo2~11_combout\,
	datab => \tempo[6]~5_combout\,
	datac => \Add0~16_combout\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	combout => \tempo~26_combout\);

-- Location: LCCOMB_X57_Y51_N20
\tempo~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~27_combout\ = (\tempo[6]~5_combout\ & ((\tempo~26_combout\ & (\Add2~16_combout\)) # (!\tempo~26_combout\ & ((\Add1~16_combout\))))) # (!\tempo[6]~5_combout\ & (((\tempo~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[6]~5_combout\,
	datab => \Add2~16_combout\,
	datac => \Add1~16_combout\,
	datad => \tempo~26_combout\,
	combout => \tempo~27_combout\);

-- Location: LCCOMB_X57_Y51_N18
\tempo~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~28_combout\ = (\tempo[6]~4_combout\ & (!\tempo2~10_combout\)) # (!\tempo[6]~4_combout\ & ((\tempo2~10_combout\ & ((\tempo~27_combout\))) # (!\tempo2~10_combout\ & (\Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[6]~4_combout\,
	datab => \tempo2~10_combout\,
	datac => \Add4~14_combout\,
	datad => \tempo~27_combout\,
	combout => \tempo~28_combout\);

-- Location: LCCOMB_X57_Y51_N22
\tempo~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~29_combout\ = (\tempo[6]~4_combout\ & ((\tempo~28_combout\ & ((\Add5~14_combout\))) # (!\tempo~28_combout\ & (\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\)))) # (!\tempo[6]~4_combout\ & (((\tempo~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[6]~4_combout\,
	datab => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datac => \Add5~14_combout\,
	datad => \tempo~28_combout\,
	combout => \tempo~29_combout\);

-- Location: FF_X57_Y51_N23
\tempo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \tempo~29_combout\,
	ena => \tempo2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo(11));

-- Location: IOIBUF_X58_Y54_N22
\E[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(5),
	o => \E[5]~input_o\);

-- Location: LCCOMB_X58_Y50_N4
\tempo2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo2~7_combout\ = (\tempo2~1_combout\ & (tempo(11))) # (!\tempo2~1_combout\ & ((\E[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tempo(11),
	datac => \tempo2~1_combout\,
	datad => \E[5]~input_o\,
	combout => \tempo2~7_combout\);

-- Location: FF_X58_Y50_N5
\tempo2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \tempo2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo2(8));

-- Location: LCCOMB_X57_Y51_N10
\tempo~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~30_combout\ = (\tempo2~11_combout\ & ((\tempo[6]~5_combout\ & (\Add1~18_combout\)) # (!\tempo[6]~5_combout\ & ((\Add0~18_combout\))))) # (!\tempo2~11_combout\ & (\tempo[6]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo2~11_combout\,
	datab => \tempo[6]~5_combout\,
	datac => \Add1~18_combout\,
	datad => \Add0~18_combout\,
	combout => \tempo~30_combout\);

-- Location: LCCOMB_X57_Y51_N30
\tempo~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~31_combout\ = (\tempo~30_combout\ & ((\Add2~18_combout\) # ((\tempo2~11_combout\)))) # (!\tempo~30_combout\ & (((!\tempo2~11_combout\ & \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo~30_combout\,
	datab => \Add2~18_combout\,
	datac => \tempo2~11_combout\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	combout => \tempo~31_combout\);

-- Location: LCCOMB_X56_Y50_N2
\tempo~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~32_combout\ = (\tempo[6]~4_combout\ & (((\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\)) # (!\tempo2~10_combout\))) # (!\tempo[6]~4_combout\ & (\tempo2~10_combout\ & (\tempo~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[6]~4_combout\,
	datab => \tempo2~10_combout\,
	datac => \tempo~31_combout\,
	datad => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	combout => \tempo~32_combout\);

-- Location: LCCOMB_X56_Y50_N30
\tempo~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~33_combout\ = (\tempo2~10_combout\ & (((\tempo~32_combout\)))) # (!\tempo2~10_combout\ & ((\tempo~32_combout\ & ((\Add5~16_combout\))) # (!\tempo~32_combout\ & (\Add4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo2~10_combout\,
	datab => \Add4~16_combout\,
	datac => \Add5~16_combout\,
	datad => \tempo~32_combout\,
	combout => \tempo~33_combout\);

-- Location: FF_X56_Y50_N31
\tempo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \tempo~33_combout\,
	ena => \tempo2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo(12));

-- Location: IOIBUF_X56_Y54_N1
\E[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(6),
	o => \E[6]~input_o\);

-- Location: LCCOMB_X55_Y50_N6
\tempo2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo2~8_combout\ = (\tempo2~1_combout\ & (tempo(12))) # (!\tempo2~1_combout\ & ((\E[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo(12),
	datab => \tempo2~1_combout\,
	datac => \E[6]~input_o\,
	combout => \tempo2~8_combout\);

-- Location: FF_X57_Y50_N1
\tempo2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	asdata => \tempo2~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo2(9));

-- Location: LCCOMB_X57_Y50_N30
\tempo~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~22_combout\ = (\tempo[6]~5_combout\ & (((\Add1~14_combout\)) # (!\tempo2~11_combout\))) # (!\tempo[6]~5_combout\ & (\tempo2~11_combout\ & ((\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[6]~5_combout\,
	datab => \tempo2~11_combout\,
	datac => \Add1~14_combout\,
	datad => \Add0~14_combout\,
	combout => \tempo~22_combout\);

-- Location: LCCOMB_X57_Y50_N4
\tempo~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~23_combout\ = (\tempo~22_combout\ & ((\tempo2~11_combout\) # ((\Add2~14_combout\)))) # (!\tempo~22_combout\ & (!\tempo2~11_combout\ & (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo~22_combout\,
	datab => \tempo2~11_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => \Add2~14_combout\,
	combout => \tempo~23_combout\);

-- Location: LCCOMB_X56_Y50_N28
\tempo~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~24_combout\ = (\tempo[6]~4_combout\ & ((\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\) # ((!\tempo2~10_combout\)))) # (!\tempo[6]~4_combout\ & (((\tempo2~10_combout\ & \tempo~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datab => \tempo[6]~4_combout\,
	datac => \tempo2~10_combout\,
	datad => \tempo~23_combout\,
	combout => \tempo~24_combout\);

-- Location: LCCOMB_X56_Y50_N4
\tempo~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~25_combout\ = (\tempo2~10_combout\ & (((\tempo~24_combout\)))) # (!\tempo2~10_combout\ & ((\tempo~24_combout\ & ((\Add5~12_combout\))) # (!\tempo~24_combout\ & (\Add4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo2~10_combout\,
	datab => \Add4~12_combout\,
	datac => \Add5~12_combout\,
	datad => \tempo~24_combout\,
	combout => \tempo~25_combout\);

-- Location: FF_X56_Y50_N5
\tempo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \tempo~25_combout\,
	ena => \tempo2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo(10));

-- Location: LCCOMB_X59_Y51_N10
\tempo2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo2~6_combout\ = (\tempo2~1_combout\ & ((tempo(10)))) # (!\tempo2~1_combout\ & (\E[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E[4]~input_o\,
	datab => \tempo2~1_combout\,
	datad => tempo(10),
	combout => \tempo2~6_combout\);

-- Location: FF_X59_Y51_N11
\tempo2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \tempo2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo2(7));

-- Location: LCCOMB_X59_Y51_N6
\Mult1|mult_core|romout[1][5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[1][5]~7_combout\ = (tempo2(7) & (tempo2(5) $ (((tempo2(4)) # (!tempo2(6)))))) # (!tempo2(7) & ((tempo2(4) & (tempo2(5) & !tempo2(6))) # (!tempo2(4) & (!tempo2(5) & tempo2(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo2(7),
	datab => tempo2(4),
	datac => tempo2(5),
	datad => tempo2(6),
	combout => \Mult1|mult_core|romout[1][5]~7_combout\);

-- Location: LCCOMB_X59_Y50_N20
\tempo~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~18_combout\ = (\tempo[6]~5_combout\ & (!\tempo2~11_combout\)) # (!\tempo[6]~5_combout\ & ((\tempo2~11_combout\ & (\Add0~12_combout\)) # (!\tempo2~11_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[6]~5_combout\,
	datab => \tempo2~11_combout\,
	datac => \Add0~12_combout\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	combout => \tempo~18_combout\);

-- Location: LCCOMB_X59_Y50_N18
\tempo~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~19_combout\ = (\tempo[6]~5_combout\ & ((\tempo~18_combout\ & (\Add2~12_combout\)) # (!\tempo~18_combout\ & ((\Add1~12_combout\))))) # (!\tempo[6]~5_combout\ & (((\tempo~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[6]~5_combout\,
	datab => \Add2~12_combout\,
	datac => \Add1~12_combout\,
	datad => \tempo~18_combout\,
	combout => \tempo~19_combout\);

-- Location: LCCOMB_X59_Y50_N16
\tempo~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~20_combout\ = (\tempo[6]~4_combout\ & (!\tempo2~10_combout\)) # (!\tempo[6]~4_combout\ & ((\tempo2~10_combout\ & ((\tempo~19_combout\))) # (!\tempo2~10_combout\ & (\Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[6]~4_combout\,
	datab => \tempo2~10_combout\,
	datac => \Add4~10_combout\,
	datad => \tempo~19_combout\,
	combout => \tempo~20_combout\);

-- Location: LCCOMB_X59_Y50_N0
\tempo~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~21_combout\ = (\tempo[6]~4_combout\ & ((\tempo~20_combout\ & ((\Add5~10_combout\))) # (!\tempo~20_combout\ & (\Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\)))) # (!\tempo[6]~4_combout\ & (((\tempo~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[6]~4_combout\,
	datab => \Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datac => \Add5~10_combout\,
	datad => \tempo~20_combout\,
	combout => \tempo~21_combout\);

-- Location: FF_X59_Y50_N1
\tempo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \tempo~21_combout\,
	ena => \tempo2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo(9));

-- Location: IOIBUF_X60_Y54_N29
\E[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(3),
	o => \E[3]~input_o\);

-- Location: LCCOMB_X59_Y51_N8
\tempo2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo2~5_combout\ = (\tempo2~1_combout\ & (tempo(9))) # (!\tempo2~1_combout\ & ((\E[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tempo(9),
	datac => \tempo2~1_combout\,
	datad => \E[3]~input_o\,
	combout => \tempo2~5_combout\);

-- Location: FF_X59_Y51_N9
\tempo2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \tempo2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo2(6));

-- Location: LCCOMB_X59_Y51_N16
\Mult1|mult_core|romout[1][2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[1][2]~0_combout\ = tempo2(6) $ (tempo2(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tempo2(6),
	datad => tempo2(4),
	combout => \Mult1|mult_core|romout[1][2]~0_combout\);

-- Location: LCCOMB_X57_Y51_N0
\tempo~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~6_combout\ = (\tempo2~11_combout\ & ((\tempo[6]~5_combout\ & (\Add1~6_combout\)) # (!\tempo[6]~5_combout\ & ((\Add0~6_combout\))))) # (!\tempo2~11_combout\ & (((\tempo[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo2~11_combout\,
	datab => \Add1~6_combout\,
	datac => \Add0~6_combout\,
	datad => \tempo[6]~5_combout\,
	combout => \tempo~6_combout\);

-- Location: LCCOMB_X57_Y51_N28
\tempo~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~7_combout\ = (\tempo2~11_combout\ & (\tempo~6_combout\)) # (!\tempo2~11_combout\ & ((\tempo~6_combout\ & (\Add2~6_combout\)) # (!\tempo~6_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo2~11_combout\,
	datab => \tempo~6_combout\,
	datac => \Add2~6_combout\,
	datad => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	combout => \tempo~7_combout\);

-- Location: LCCOMB_X56_Y51_N6
\tempo~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~8_combout\ = (\tempo2~10_combout\ & ((\tempo[6]~4_combout\ & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\)) # (!\tempo[6]~4_combout\ & ((\tempo~7_combout\))))) # (!\tempo2~10_combout\ & (((\tempo[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datab => \tempo2~10_combout\,
	datac => \tempo[6]~4_combout\,
	datad => \tempo~7_combout\,
	combout => \tempo~8_combout\);

-- Location: LCCOMB_X56_Y51_N0
\tempo~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo~9_combout\ = (\tempo~8_combout\ & ((\tempo2~10_combout\) # ((\Add5~4_combout\)))) # (!\tempo~8_combout\ & (!\tempo2~10_combout\ & ((\Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo~8_combout\,
	datab => \tempo2~10_combout\,
	datac => \Add5~4_combout\,
	datad => \Add4~4_combout\,
	combout => \tempo~9_combout\);

-- Location: FF_X56_Y51_N1
\tempo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \tempo~9_combout\,
	ena => \tempo2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo(6));

-- Location: IOIBUF_X56_Y54_N22
\E[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(0),
	o => \E[0]~input_o\);

-- Location: LCCOMB_X57_Y52_N20
\tempo2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tempo2~2_combout\ = (\tempo2~1_combout\ & (tempo(6))) # (!\tempo2~1_combout\ & ((\E[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tempo2~1_combout\,
	datac => tempo(6),
	datad => \E[0]~input_o\,
	combout => \tempo2~2_combout\);

-- Location: FF_X57_Y51_N9
\tempo2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	asdata => \tempo2~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempo2(3));

-- Location: FF_X57_Y51_N7
\S[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	asdata => tempo2(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[0]~reg0_q\);

-- Location: LCCOMB_X55_Y50_N24
\S[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S[1]~reg0feeder_combout\ = tempo2(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempo2(4),
	combout => \S[1]~reg0feeder_combout\);

-- Location: FF_X55_Y50_N25
\S[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \S[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[1]~reg0_q\);

-- Location: FF_X55_Y51_N25
\S[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	asdata => tempo2(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[2]~reg0_q\);

-- Location: FF_X59_Y51_N21
\S[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	asdata => tempo2(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[3]~reg0_q\);

-- Location: FF_X59_Y51_N19
\S[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	asdata => tempo2(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[4]~reg0_q\);

-- Location: LCCOMB_X54_Y51_N12
\S[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S[5]~reg0feeder_combout\ = tempo2(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempo2(8),
	combout => \S[5]~reg0feeder_combout\);

-- Location: FF_X54_Y51_N13
\S[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \S[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[5]~reg0_q\);

-- Location: FF_X59_Y51_N17
\S[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	asdata => tempo2(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[6]~reg0_q\);

-- Location: LCCOMB_X54_Y51_N26
\S[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S[7]~reg0feeder_combout\ = tempo2(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempo2(10),
	combout => \S[7]~reg0feeder_combout\);

-- Location: FF_X54_Y51_N27
\S[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \H~inputclkctrl_outclk\,
	d => \S[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[7]~reg0_q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;
END structure;


