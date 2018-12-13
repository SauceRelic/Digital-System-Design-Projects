-- Copyright (C) 2018  Intel Corporation. All rights reserved.
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
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "11/01/2018 10:17:16"

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

ENTITY 	practical_hardware_de10 IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(3 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0)
	);
END practical_hardware_de10;

-- Design Ports Information
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practical_hardware_de10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK2HZ|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[7]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLK2HZ|cnt[0]~26_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[0]~27\ : std_logic;
SIGNAL \CLK2HZ|cnt[1]~28_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[1]~29\ : std_logic;
SIGNAL \CLK2HZ|cnt[2]~30_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[2]~31\ : std_logic;
SIGNAL \CLK2HZ|cnt[3]~32_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[3]~33\ : std_logic;
SIGNAL \CLK2HZ|cnt[4]~34_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[4]~35\ : std_logic;
SIGNAL \CLK2HZ|cnt[5]~36_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[5]~37\ : std_logic;
SIGNAL \CLK2HZ|cnt[6]~38_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[6]~39\ : std_logic;
SIGNAL \CLK2HZ|cnt[7]~40_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[7]~41\ : std_logic;
SIGNAL \CLK2HZ|cnt[8]~42_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[8]~43\ : std_logic;
SIGNAL \CLK2HZ|cnt[9]~44_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[9]~45\ : std_logic;
SIGNAL \CLK2HZ|cnt[10]~46_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[10]~47\ : std_logic;
SIGNAL \CLK2HZ|cnt[11]~48_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[11]~49\ : std_logic;
SIGNAL \CLK2HZ|cnt[12]~50_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[12]~51\ : std_logic;
SIGNAL \CLK2HZ|cnt[13]~52_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[13]~53\ : std_logic;
SIGNAL \CLK2HZ|cnt[14]~54_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[14]~55\ : std_logic;
SIGNAL \CLK2HZ|cnt[15]~56_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[15]~57\ : std_logic;
SIGNAL \CLK2HZ|cnt[16]~58_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[16]~59\ : std_logic;
SIGNAL \CLK2HZ|cnt[17]~60_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[17]~61\ : std_logic;
SIGNAL \CLK2HZ|cnt[18]~62_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[18]~63\ : std_logic;
SIGNAL \CLK2HZ|cnt[19]~64_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[19]~65\ : std_logic;
SIGNAL \CLK2HZ|cnt[20]~66_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[20]~67\ : std_logic;
SIGNAL \CLK2HZ|cnt[21]~68_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[21]~69\ : std_logic;
SIGNAL \CLK2HZ|cnt[22]~70_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[22]~71\ : std_logic;
SIGNAL \CLK2HZ|cnt[23]~72_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[23]~73\ : std_logic;
SIGNAL \CLK2HZ|cnt[24]~74_combout\ : std_logic;
SIGNAL \CLK2HZ|cnt[24]~75\ : std_logic;
SIGNAL \CLK2HZ|cnt[25]~76_combout\ : std_logic;
SIGNAL \CLK2HZ|clk_out~0_combout\ : std_logic;
SIGNAL \CLK2HZ|clk_out~q\ : std_logic;
SIGNAL \CLK2HZ|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \STOPWATCH|sec[0]~7_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \STOPWATCH|LessThan0~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \STOPWATCH|nstate~3_combout\ : std_logic;
SIGNAL \STOPWATCH|cstate.LAP~q\ : std_logic;
SIGNAL \STOPWATCH|nstate~6_combout\ : std_logic;
SIGNAL \STOPWATCH|cstate.RESET~feeder_combout\ : std_logic;
SIGNAL \STOPWATCH|cstate.RESET~q\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \STOPWATCH|nstate.STOP~0_combout\ : std_logic;
SIGNAL \STOPWATCH|cstate.STOP~q\ : std_logic;
SIGNAL \STOPWATCH|nstate~4_combout\ : std_logic;
SIGNAL \STOPWATCH|nstate~5_combout\ : std_logic;
SIGNAL \STOPWATCH|cstate.START~q\ : std_logic;
SIGNAL \STOPWATCH|half~0_combout\ : std_logic;
SIGNAL \STOPWATCH|half~q\ : std_logic;
SIGNAL \STOPWATCH|sec[6]~21_combout\ : std_logic;
SIGNAL \STOPWATCH|sec[0]~8\ : std_logic;
SIGNAL \STOPWATCH|sec[1]~9_combout\ : std_logic;
SIGNAL \STOPWATCH|sec[1]~10\ : std_logic;
SIGNAL \STOPWATCH|sec[2]~11_combout\ : std_logic;
SIGNAL \STOPWATCH|sec[2]~12\ : std_logic;
SIGNAL \STOPWATCH|sec[3]~13_combout\ : std_logic;
SIGNAL \STOPWATCH|sec[3]~14\ : std_logic;
SIGNAL \STOPWATCH|sec[4]~15_combout\ : std_logic;
SIGNAL \STOPWATCH|sec[4]~16\ : std_logic;
SIGNAL \STOPWATCH|sec[5]~17_combout\ : std_logic;
SIGNAL \STOPWATCH|sec[5]~18\ : std_logic;
SIGNAL \STOPWATCH|sec[6]~19_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \TEN|Mux6~0_combout\ : std_logic;
SIGNAL \TEN|Mux5~0_combout\ : std_logic;
SIGNAL \TEN|Mux4~0_combout\ : std_logic;
SIGNAL \TEN|Mux3~0_combout\ : std_logic;
SIGNAL \TEN|Mux2~0_combout\ : std_logic;
SIGNAL \TEN|Mux1~0_combout\ : std_logic;
SIGNAL \TEN|Mux0~0_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ : std_logic;
SIGNAL \ONE|Mux6~0_combout\ : std_logic;
SIGNAL \ONE|Mux5~0_combout\ : std_logic;
SIGNAL \ONE|Mux4~0_combout\ : std_logic;
SIGNAL \ONE|Mux3~0_combout\ : std_logic;
SIGNAL \ONE|Mux2~0_combout\ : std_logic;
SIGNAL \ONE|Mux1~0_combout\ : std_logic;
SIGNAL \ONE|Mux0~0_combout\ : std_logic;
SIGNAL \STOPWATCH|half_out~feeder_combout\ : std_logic;
SIGNAL \STOPWATCH|half_out~q\ : std_logic;
SIGNAL \STOPWATCH|sec\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLK2HZ|cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \STOPWATCH|sec_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \STOPWATCH|ALT_INV_cstate.LAP~q\ : std_logic;
SIGNAL \STOPWATCH|ALT_INV_half_out~q\ : std_logic;
SIGNAL \ONE|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \TEN|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\CLK2HZ|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK2HZ|clk_out~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\STOPWATCH|ALT_INV_cstate.LAP~q\ <= NOT \STOPWATCH|cstate.LAP~q\;
\STOPWATCH|ALT_INV_half_out~q\ <= NOT \STOPWATCH|half_out~q\;
\ONE|ALT_INV_Mux0~0_combout\ <= NOT \ONE|Mux0~0_combout\;
\TEN|ALT_INV_Mux0~0_combout\ <= NOT \TEN|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TEN|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TEN|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TEN|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TEN|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TEN|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TEN|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TEN|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ONE|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ONE|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ONE|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ONE|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ONE|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ONE|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ONE|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[7]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \STOPWATCH|half_out~q\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \STOPWATCH|half_out~q\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \STOPWATCH|ALT_INV_half_out~q\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[7]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\CLOCK_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G19
\CLOCK_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X44_Y5_N6
\CLK2HZ|cnt[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[0]~26_combout\ = \CLK2HZ|cnt\(0) $ (VCC)
-- \CLK2HZ|cnt[0]~27\ = CARRY(\CLK2HZ|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK2HZ|cnt\(0),
	datad => VCC,
	combout => \CLK2HZ|cnt[0]~26_combout\,
	cout => \CLK2HZ|cnt[0]~27\);

-- Location: FF_X44_Y5_N7
\CLK2HZ|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[0]~26_combout\,
	asdata => VCC,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(0));

-- Location: LCCOMB_X44_Y5_N8
\CLK2HZ|cnt[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[1]~28_combout\ = (\CLK2HZ|cnt\(1) & (\CLK2HZ|cnt[0]~27\ & VCC)) # (!\CLK2HZ|cnt\(1) & (!\CLK2HZ|cnt[0]~27\))
-- \CLK2HZ|cnt[1]~29\ = CARRY((!\CLK2HZ|cnt\(1) & !\CLK2HZ|cnt[0]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK2HZ|cnt\(1),
	datad => VCC,
	cin => \CLK2HZ|cnt[0]~27\,
	combout => \CLK2HZ|cnt[1]~28_combout\,
	cout => \CLK2HZ|cnt[1]~29\);

-- Location: FF_X44_Y5_N9
\CLK2HZ|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[1]~28_combout\,
	asdata => VCC,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(1));

-- Location: LCCOMB_X44_Y5_N10
\CLK2HZ|cnt[2]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[2]~30_combout\ = (\CLK2HZ|cnt\(2) & ((GND) # (!\CLK2HZ|cnt[1]~29\))) # (!\CLK2HZ|cnt\(2) & (\CLK2HZ|cnt[1]~29\ $ (GND)))
-- \CLK2HZ|cnt[2]~31\ = CARRY((\CLK2HZ|cnt\(2)) # (!\CLK2HZ|cnt[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK2HZ|cnt\(2),
	datad => VCC,
	cin => \CLK2HZ|cnt[1]~29\,
	combout => \CLK2HZ|cnt[2]~30_combout\,
	cout => \CLK2HZ|cnt[2]~31\);

-- Location: FF_X44_Y5_N11
\CLK2HZ|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[2]~30_combout\,
	asdata => VCC,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(2));

-- Location: LCCOMB_X44_Y5_N12
\CLK2HZ|cnt[3]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[3]~32_combout\ = (\CLK2HZ|cnt\(3) & (\CLK2HZ|cnt[2]~31\ & VCC)) # (!\CLK2HZ|cnt\(3) & (!\CLK2HZ|cnt[2]~31\))
-- \CLK2HZ|cnt[3]~33\ = CARRY((!\CLK2HZ|cnt\(3) & !\CLK2HZ|cnt[2]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK2HZ|cnt\(3),
	datad => VCC,
	cin => \CLK2HZ|cnt[2]~31\,
	combout => \CLK2HZ|cnt[3]~32_combout\,
	cout => \CLK2HZ|cnt[3]~33\);

-- Location: FF_X44_Y5_N13
\CLK2HZ|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[3]~32_combout\,
	asdata => VCC,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(3));

-- Location: LCCOMB_X44_Y5_N14
\CLK2HZ|cnt[4]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[4]~34_combout\ = (\CLK2HZ|cnt\(4) & ((GND) # (!\CLK2HZ|cnt[3]~33\))) # (!\CLK2HZ|cnt\(4) & (\CLK2HZ|cnt[3]~33\ $ (GND)))
-- \CLK2HZ|cnt[4]~35\ = CARRY((\CLK2HZ|cnt\(4)) # (!\CLK2HZ|cnt[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK2HZ|cnt\(4),
	datad => VCC,
	cin => \CLK2HZ|cnt[3]~33\,
	combout => \CLK2HZ|cnt[4]~34_combout\,
	cout => \CLK2HZ|cnt[4]~35\);

-- Location: FF_X44_Y5_N15
\CLK2HZ|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[4]~34_combout\,
	asdata => VCC,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(4));

-- Location: LCCOMB_X44_Y5_N16
\CLK2HZ|cnt[5]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[5]~36_combout\ = (\CLK2HZ|cnt\(5) & (\CLK2HZ|cnt[4]~35\ & VCC)) # (!\CLK2HZ|cnt\(5) & (!\CLK2HZ|cnt[4]~35\))
-- \CLK2HZ|cnt[5]~37\ = CARRY((!\CLK2HZ|cnt\(5) & !\CLK2HZ|cnt[4]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK2HZ|cnt\(5),
	datad => VCC,
	cin => \CLK2HZ|cnt[4]~35\,
	combout => \CLK2HZ|cnt[5]~36_combout\,
	cout => \CLK2HZ|cnt[5]~37\);

-- Location: LCCOMB_X44_Y4_N26
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X44_Y5_N17
\CLK2HZ|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[5]~36_combout\,
	asdata => \~GND~combout\,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(5));

-- Location: LCCOMB_X44_Y5_N18
\CLK2HZ|cnt[6]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[6]~38_combout\ = (\CLK2HZ|cnt\(6) & ((GND) # (!\CLK2HZ|cnt[5]~37\))) # (!\CLK2HZ|cnt\(6) & (\CLK2HZ|cnt[5]~37\ $ (GND)))
-- \CLK2HZ|cnt[6]~39\ = CARRY((\CLK2HZ|cnt\(6)) # (!\CLK2HZ|cnt[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK2HZ|cnt\(6),
	datad => VCC,
	cin => \CLK2HZ|cnt[5]~37\,
	combout => \CLK2HZ|cnt[6]~38_combout\,
	cout => \CLK2HZ|cnt[6]~39\);

-- Location: FF_X44_Y5_N19
\CLK2HZ|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[6]~38_combout\,
	asdata => \~GND~combout\,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(6));

-- Location: LCCOMB_X44_Y5_N20
\CLK2HZ|cnt[7]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[7]~40_combout\ = (\CLK2HZ|cnt\(7) & (\CLK2HZ|cnt[6]~39\ & VCC)) # (!\CLK2HZ|cnt\(7) & (!\CLK2HZ|cnt[6]~39\))
-- \CLK2HZ|cnt[7]~41\ = CARRY((!\CLK2HZ|cnt\(7) & !\CLK2HZ|cnt[6]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK2HZ|cnt\(7),
	datad => VCC,
	cin => \CLK2HZ|cnt[6]~39\,
	combout => \CLK2HZ|cnt[7]~40_combout\,
	cout => \CLK2HZ|cnt[7]~41\);

-- Location: FF_X44_Y5_N21
\CLK2HZ|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[7]~40_combout\,
	asdata => \~GND~combout\,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(7));

-- Location: LCCOMB_X44_Y5_N22
\CLK2HZ|cnt[8]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[8]~42_combout\ = (\CLK2HZ|cnt\(8) & ((GND) # (!\CLK2HZ|cnt[7]~41\))) # (!\CLK2HZ|cnt\(8) & (\CLK2HZ|cnt[7]~41\ $ (GND)))
-- \CLK2HZ|cnt[8]~43\ = CARRY((\CLK2HZ|cnt\(8)) # (!\CLK2HZ|cnt[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK2HZ|cnt\(8),
	datad => VCC,
	cin => \CLK2HZ|cnt[7]~41\,
	combout => \CLK2HZ|cnt[8]~42_combout\,
	cout => \CLK2HZ|cnt[8]~43\);

-- Location: FF_X44_Y5_N23
\CLK2HZ|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[8]~42_combout\,
	asdata => \~GND~combout\,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(8));

-- Location: LCCOMB_X44_Y5_N24
\CLK2HZ|cnt[9]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[9]~44_combout\ = (\CLK2HZ|cnt\(9) & (\CLK2HZ|cnt[8]~43\ & VCC)) # (!\CLK2HZ|cnt\(9) & (!\CLK2HZ|cnt[8]~43\))
-- \CLK2HZ|cnt[9]~45\ = CARRY((!\CLK2HZ|cnt\(9) & !\CLK2HZ|cnt[8]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK2HZ|cnt\(9),
	datad => VCC,
	cin => \CLK2HZ|cnt[8]~43\,
	combout => \CLK2HZ|cnt[9]~44_combout\,
	cout => \CLK2HZ|cnt[9]~45\);

-- Location: FF_X44_Y5_N25
\CLK2HZ|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[9]~44_combout\,
	asdata => \~GND~combout\,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(9));

-- Location: LCCOMB_X44_Y5_N26
\CLK2HZ|cnt[10]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[10]~46_combout\ = (\CLK2HZ|cnt\(10) & ((GND) # (!\CLK2HZ|cnt[9]~45\))) # (!\CLK2HZ|cnt\(10) & (\CLK2HZ|cnt[9]~45\ $ (GND)))
-- \CLK2HZ|cnt[10]~47\ = CARRY((\CLK2HZ|cnt\(10)) # (!\CLK2HZ|cnt[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK2HZ|cnt\(10),
	datad => VCC,
	cin => \CLK2HZ|cnt[9]~45\,
	combout => \CLK2HZ|cnt[10]~46_combout\,
	cout => \CLK2HZ|cnt[10]~47\);

-- Location: FF_X44_Y5_N27
\CLK2HZ|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[10]~46_combout\,
	asdata => VCC,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(10));

-- Location: LCCOMB_X44_Y5_N28
\CLK2HZ|cnt[11]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[11]~48_combout\ = (\CLK2HZ|cnt\(11) & (\CLK2HZ|cnt[10]~47\ & VCC)) # (!\CLK2HZ|cnt\(11) & (!\CLK2HZ|cnt[10]~47\))
-- \CLK2HZ|cnt[11]~49\ = CARRY((!\CLK2HZ|cnt\(11) & !\CLK2HZ|cnt[10]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK2HZ|cnt\(11),
	datad => VCC,
	cin => \CLK2HZ|cnt[10]~47\,
	combout => \CLK2HZ|cnt[11]~48_combout\,
	cout => \CLK2HZ|cnt[11]~49\);

-- Location: FF_X44_Y5_N29
\CLK2HZ|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[11]~48_combout\,
	asdata => VCC,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(11));

-- Location: LCCOMB_X44_Y5_N30
\CLK2HZ|cnt[12]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[12]~50_combout\ = (\CLK2HZ|cnt\(12) & ((GND) # (!\CLK2HZ|cnt[11]~49\))) # (!\CLK2HZ|cnt\(12) & (\CLK2HZ|cnt[11]~49\ $ (GND)))
-- \CLK2HZ|cnt[12]~51\ = CARRY((\CLK2HZ|cnt\(12)) # (!\CLK2HZ|cnt[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK2HZ|cnt\(12),
	datad => VCC,
	cin => \CLK2HZ|cnt[11]~49\,
	combout => \CLK2HZ|cnt[12]~50_combout\,
	cout => \CLK2HZ|cnt[12]~51\);

-- Location: FF_X44_Y5_N31
\CLK2HZ|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[12]~50_combout\,
	asdata => VCC,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(12));

-- Location: LCCOMB_X44_Y4_N0
\CLK2HZ|cnt[13]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[13]~52_combout\ = (\CLK2HZ|cnt\(13) & (\CLK2HZ|cnt[12]~51\ & VCC)) # (!\CLK2HZ|cnt\(13) & (!\CLK2HZ|cnt[12]~51\))
-- \CLK2HZ|cnt[13]~53\ = CARRY((!\CLK2HZ|cnt\(13) & !\CLK2HZ|cnt[12]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK2HZ|cnt\(13),
	datad => VCC,
	cin => \CLK2HZ|cnt[12]~51\,
	combout => \CLK2HZ|cnt[13]~52_combout\,
	cout => \CLK2HZ|cnt[13]~53\);

-- Location: FF_X44_Y4_N1
\CLK2HZ|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[13]~52_combout\,
	asdata => VCC,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(13));

-- Location: LCCOMB_X44_Y4_N2
\CLK2HZ|cnt[14]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[14]~54_combout\ = (\CLK2HZ|cnt\(14) & ((GND) # (!\CLK2HZ|cnt[13]~53\))) # (!\CLK2HZ|cnt\(14) & (\CLK2HZ|cnt[13]~53\ $ (GND)))
-- \CLK2HZ|cnt[14]~55\ = CARRY((\CLK2HZ|cnt\(14)) # (!\CLK2HZ|cnt[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK2HZ|cnt\(14),
	datad => VCC,
	cin => \CLK2HZ|cnt[13]~53\,
	combout => \CLK2HZ|cnt[14]~54_combout\,
	cout => \CLK2HZ|cnt[14]~55\);

-- Location: FF_X44_Y4_N3
\CLK2HZ|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[14]~54_combout\,
	asdata => \~GND~combout\,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(14));

-- Location: LCCOMB_X44_Y4_N4
\CLK2HZ|cnt[15]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[15]~56_combout\ = (\CLK2HZ|cnt\(15) & (\CLK2HZ|cnt[14]~55\ & VCC)) # (!\CLK2HZ|cnt\(15) & (!\CLK2HZ|cnt[14]~55\))
-- \CLK2HZ|cnt[15]~57\ = CARRY((!\CLK2HZ|cnt\(15) & !\CLK2HZ|cnt[14]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK2HZ|cnt\(15),
	datad => VCC,
	cin => \CLK2HZ|cnt[14]~55\,
	combout => \CLK2HZ|cnt[15]~56_combout\,
	cout => \CLK2HZ|cnt[15]~57\);

-- Location: FF_X44_Y4_N5
\CLK2HZ|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[15]~56_combout\,
	asdata => VCC,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(15));

-- Location: LCCOMB_X44_Y4_N6
\CLK2HZ|cnt[16]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[16]~58_combout\ = (\CLK2HZ|cnt\(16) & ((GND) # (!\CLK2HZ|cnt[15]~57\))) # (!\CLK2HZ|cnt\(16) & (\CLK2HZ|cnt[15]~57\ $ (GND)))
-- \CLK2HZ|cnt[16]~59\ = CARRY((\CLK2HZ|cnt\(16)) # (!\CLK2HZ|cnt[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK2HZ|cnt\(16),
	datad => VCC,
	cin => \CLK2HZ|cnt[15]~57\,
	combout => \CLK2HZ|cnt[16]~58_combout\,
	cout => \CLK2HZ|cnt[16]~59\);

-- Location: FF_X44_Y4_N7
\CLK2HZ|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[16]~58_combout\,
	asdata => \~GND~combout\,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(16));

-- Location: LCCOMB_X44_Y4_N8
\CLK2HZ|cnt[17]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[17]~60_combout\ = (\CLK2HZ|cnt\(17) & (\CLK2HZ|cnt[16]~59\ & VCC)) # (!\CLK2HZ|cnt\(17) & (!\CLK2HZ|cnt[16]~59\))
-- \CLK2HZ|cnt[17]~61\ = CARRY((!\CLK2HZ|cnt\(17) & !\CLK2HZ|cnt[16]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK2HZ|cnt\(17),
	datad => VCC,
	cin => \CLK2HZ|cnt[16]~59\,
	combout => \CLK2HZ|cnt[17]~60_combout\,
	cout => \CLK2HZ|cnt[17]~61\);

-- Location: FF_X44_Y4_N9
\CLK2HZ|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[17]~60_combout\,
	asdata => VCC,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(17));

-- Location: LCCOMB_X44_Y4_N10
\CLK2HZ|cnt[18]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[18]~62_combout\ = (\CLK2HZ|cnt\(18) & ((GND) # (!\CLK2HZ|cnt[17]~61\))) # (!\CLK2HZ|cnt\(18) & (\CLK2HZ|cnt[17]~61\ $ (GND)))
-- \CLK2HZ|cnt[18]~63\ = CARRY((\CLK2HZ|cnt\(18)) # (!\CLK2HZ|cnt[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK2HZ|cnt\(18),
	datad => VCC,
	cin => \CLK2HZ|cnt[17]~61\,
	combout => \CLK2HZ|cnt[18]~62_combout\,
	cout => \CLK2HZ|cnt[18]~63\);

-- Location: FF_X44_Y4_N11
\CLK2HZ|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[18]~62_combout\,
	asdata => VCC,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(18));

-- Location: LCCOMB_X44_Y4_N12
\CLK2HZ|cnt[19]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[19]~64_combout\ = (\CLK2HZ|cnt\(19) & (\CLK2HZ|cnt[18]~63\ & VCC)) # (!\CLK2HZ|cnt\(19) & (!\CLK2HZ|cnt[18]~63\))
-- \CLK2HZ|cnt[19]~65\ = CARRY((!\CLK2HZ|cnt\(19) & !\CLK2HZ|cnt[18]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK2HZ|cnt\(19),
	datad => VCC,
	cin => \CLK2HZ|cnt[18]~63\,
	combout => \CLK2HZ|cnt[19]~64_combout\,
	cout => \CLK2HZ|cnt[19]~65\);

-- Location: FF_X44_Y4_N13
\CLK2HZ|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[19]~64_combout\,
	asdata => VCC,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(19));

-- Location: LCCOMB_X44_Y4_N14
\CLK2HZ|cnt[20]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[20]~66_combout\ = (\CLK2HZ|cnt\(20) & ((GND) # (!\CLK2HZ|cnt[19]~65\))) # (!\CLK2HZ|cnt\(20) & (\CLK2HZ|cnt[19]~65\ $ (GND)))
-- \CLK2HZ|cnt[20]~67\ = CARRY((\CLK2HZ|cnt\(20)) # (!\CLK2HZ|cnt[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK2HZ|cnt\(20),
	datad => VCC,
	cin => \CLK2HZ|cnt[19]~65\,
	combout => \CLK2HZ|cnt[20]~66_combout\,
	cout => \CLK2HZ|cnt[20]~67\);

-- Location: FF_X44_Y4_N15
\CLK2HZ|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[20]~66_combout\,
	asdata => VCC,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(20));

-- Location: LCCOMB_X44_Y4_N16
\CLK2HZ|cnt[21]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[21]~68_combout\ = (\CLK2HZ|cnt\(21) & (\CLK2HZ|cnt[20]~67\ & VCC)) # (!\CLK2HZ|cnt\(21) & (!\CLK2HZ|cnt[20]~67\))
-- \CLK2HZ|cnt[21]~69\ = CARRY((!\CLK2HZ|cnt\(21) & !\CLK2HZ|cnt[20]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK2HZ|cnt\(21),
	datad => VCC,
	cin => \CLK2HZ|cnt[20]~67\,
	combout => \CLK2HZ|cnt[21]~68_combout\,
	cout => \CLK2HZ|cnt[21]~69\);

-- Location: FF_X44_Y4_N17
\CLK2HZ|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[21]~68_combout\,
	asdata => VCC,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(21));

-- Location: LCCOMB_X44_Y4_N18
\CLK2HZ|cnt[22]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[22]~70_combout\ = (\CLK2HZ|cnt\(22) & ((GND) # (!\CLK2HZ|cnt[21]~69\))) # (!\CLK2HZ|cnt\(22) & (\CLK2HZ|cnt[21]~69\ $ (GND)))
-- \CLK2HZ|cnt[22]~71\ = CARRY((\CLK2HZ|cnt\(22)) # (!\CLK2HZ|cnt[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK2HZ|cnt\(22),
	datad => VCC,
	cin => \CLK2HZ|cnt[21]~69\,
	combout => \CLK2HZ|cnt[22]~70_combout\,
	cout => \CLK2HZ|cnt[22]~71\);

-- Location: FF_X44_Y4_N19
\CLK2HZ|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[22]~70_combout\,
	asdata => \~GND~combout\,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(22));

-- Location: LCCOMB_X44_Y4_N20
\CLK2HZ|cnt[23]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[23]~72_combout\ = (\CLK2HZ|cnt\(23) & (\CLK2HZ|cnt[22]~71\ & VCC)) # (!\CLK2HZ|cnt\(23) & (!\CLK2HZ|cnt[22]~71\))
-- \CLK2HZ|cnt[23]~73\ = CARRY((!\CLK2HZ|cnt\(23) & !\CLK2HZ|cnt[22]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK2HZ|cnt\(23),
	datad => VCC,
	cin => \CLK2HZ|cnt[22]~71\,
	combout => \CLK2HZ|cnt[23]~72_combout\,
	cout => \CLK2HZ|cnt[23]~73\);

-- Location: FF_X44_Y4_N21
\CLK2HZ|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[23]~72_combout\,
	asdata => VCC,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(23));

-- Location: LCCOMB_X44_Y4_N22
\CLK2HZ|cnt[24]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[24]~74_combout\ = (\CLK2HZ|cnt\(24) & ((GND) # (!\CLK2HZ|cnt[23]~73\))) # (!\CLK2HZ|cnt\(24) & (\CLK2HZ|cnt[23]~73\ $ (GND)))
-- \CLK2HZ|cnt[24]~75\ = CARRY((\CLK2HZ|cnt\(24)) # (!\CLK2HZ|cnt[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK2HZ|cnt\(24),
	datad => VCC,
	cin => \CLK2HZ|cnt[23]~73\,
	combout => \CLK2HZ|cnt[24]~74_combout\,
	cout => \CLK2HZ|cnt[24]~75\);

-- Location: FF_X44_Y4_N23
\CLK2HZ|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[24]~74_combout\,
	asdata => \~GND~combout\,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(24));

-- Location: LCCOMB_X44_Y4_N24
\CLK2HZ|cnt[25]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|cnt[25]~76_combout\ = \CLK2HZ|cnt[24]~75\ $ (!\CLK2HZ|cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CLK2HZ|cnt\(25),
	cin => \CLK2HZ|cnt[24]~75\,
	combout => \CLK2HZ|cnt[25]~76_combout\);

-- Location: FF_X44_Y4_N25
\CLK2HZ|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK2HZ|cnt[25]~76_combout\,
	asdata => \~GND~combout\,
	sload => \CLK2HZ|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|cnt\(25));

-- Location: LCCOMB_X44_Y4_N30
\CLK2HZ|clk_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK2HZ|clk_out~0_combout\ = \CLK2HZ|clk_out~q\ $ (\CLK2HZ|cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK2HZ|clk_out~q\,
	datad => \CLK2HZ|cnt\(25),
	combout => \CLK2HZ|clk_out~0_combout\);

-- Location: FF_X44_Y4_N31
\CLK2HZ|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CLK2HZ|clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK2HZ|clk_out~q\);

-- Location: CLKCTRL_G16
\CLK2HZ|clk_out~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK2HZ|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK2HZ|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X54_Y50_N8
\STOPWATCH|sec[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STOPWATCH|sec[0]~7_combout\ = \STOPWATCH|sec\(0) $ (VCC)
-- \STOPWATCH|sec[0]~8\ = CARRY(\STOPWATCH|sec\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STOPWATCH|sec\(0),
	datad => VCC,
	combout => \STOPWATCH|sec[0]~7_combout\,
	cout => \STOPWATCH|sec[0]~8\);

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

-- Location: LCCOMB_X54_Y50_N24
\STOPWATCH|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STOPWATCH|LessThan0~0_combout\ = (\STOPWATCH|sec\(6) & ((\STOPWATCH|sec\(4)) # (\STOPWATCH|sec\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STOPWATCH|sec\(6),
	datac => \STOPWATCH|sec\(4),
	datad => \STOPWATCH|sec\(5),
	combout => \STOPWATCH|LessThan0~0_combout\);

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

-- Location: LCCOMB_X51_Y50_N2
\STOPWATCH|nstate~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STOPWATCH|nstate~3_combout\ = (!\SW[1]~input_o\ & (\SW[3]~input_o\ & ((\STOPWATCH|cstate.START~q\) # (\STOPWATCH|cstate.LAP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STOPWATCH|cstate.START~q\,
	datab => \SW[1]~input_o\,
	datac => \STOPWATCH|cstate.LAP~q\,
	datad => \SW[3]~input_o\,
	combout => \STOPWATCH|nstate~3_combout\);

-- Location: FF_X51_Y50_N3
\STOPWATCH|cstate.LAP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2HZ|clk_out~clkctrl_outclk\,
	d => \STOPWATCH|nstate~3_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STOPWATCH|cstate.LAP~q\);

-- Location: LCCOMB_X51_Y50_N6
\STOPWATCH|nstate~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STOPWATCH|nstate~6_combout\ = (!\STOPWATCH|cstate.STOP~q\ & (\SW[1]~input_o\ & ((\STOPWATCH|cstate.LAP~q\) # (\STOPWATCH|cstate.START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STOPWATCH|cstate.STOP~q\,
	datab => \STOPWATCH|cstate.LAP~q\,
	datac => \STOPWATCH|cstate.START~q\,
	datad => \SW[1]~input_o\,
	combout => \STOPWATCH|nstate~6_combout\);

-- Location: LCCOMB_X51_Y50_N24
\STOPWATCH|cstate.RESET~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STOPWATCH|cstate.RESET~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \STOPWATCH|cstate.RESET~feeder_combout\);

-- Location: FF_X51_Y50_N25
\STOPWATCH|cstate.RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2HZ|clk_out~clkctrl_outclk\,
	d => \STOPWATCH|cstate.RESET~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STOPWATCH|cstate.RESET~q\);

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

-- Location: LCCOMB_X51_Y50_N10
\STOPWATCH|nstate.STOP~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STOPWATCH|nstate.STOP~0_combout\ = (\STOPWATCH|nstate~6_combout\) # (((\STOPWATCH|cstate.STOP~q\ & !\SW[2]~input_o\)) # (!\STOPWATCH|cstate.RESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STOPWATCH|nstate~6_combout\,
	datab => \STOPWATCH|cstate.RESET~q\,
	datac => \STOPWATCH|cstate.STOP~q\,
	datad => \SW[2]~input_o\,
	combout => \STOPWATCH|nstate.STOP~0_combout\);

-- Location: FF_X51_Y50_N11
\STOPWATCH|cstate.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2HZ|clk_out~clkctrl_outclk\,
	d => \STOPWATCH|nstate.STOP~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STOPWATCH|cstate.STOP~q\);

-- Location: LCCOMB_X51_Y50_N12
\STOPWATCH|nstate~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STOPWATCH|nstate~4_combout\ = (!\STOPWATCH|cstate.STOP~q\ & (!\SW[1]~input_o\ & ((\STOPWATCH|cstate.LAP~q\) # (\STOPWATCH|cstate.START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STOPWATCH|cstate.STOP~q\,
	datab => \STOPWATCH|cstate.LAP~q\,
	datac => \STOPWATCH|cstate.START~q\,
	datad => \SW[1]~input_o\,
	combout => \STOPWATCH|nstate~4_combout\);

-- Location: LCCOMB_X51_Y50_N22
\STOPWATCH|nstate~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STOPWATCH|nstate~5_combout\ = (\STOPWATCH|cstate.STOP~q\ & ((\SW[2]~input_o\) # ((\STOPWATCH|nstate~4_combout\ & !\SW[3]~input_o\)))) # (!\STOPWATCH|cstate.STOP~q\ & (((\STOPWATCH|nstate~4_combout\ & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STOPWATCH|cstate.STOP~q\,
	datab => \SW[2]~input_o\,
	datac => \STOPWATCH|nstate~4_combout\,
	datad => \SW[3]~input_o\,
	combout => \STOPWATCH|nstate~5_combout\);

-- Location: FF_X51_Y50_N23
\STOPWATCH|cstate.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2HZ|clk_out~clkctrl_outclk\,
	d => \STOPWATCH|nstate~5_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STOPWATCH|cstate.START~q\);

-- Location: LCCOMB_X51_Y50_N28
\STOPWATCH|half~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STOPWATCH|half~0_combout\ = \STOPWATCH|half~q\ $ (((\STOPWATCH|cstate.START~q\) # (\STOPWATCH|cstate.LAP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STOPWATCH|cstate.START~q\,
	datac => \STOPWATCH|half~q\,
	datad => \STOPWATCH|cstate.LAP~q\,
	combout => \STOPWATCH|half~0_combout\);

-- Location: FF_X51_Y50_N29
\STOPWATCH|half\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2HZ|clk_out~clkctrl_outclk\,
	d => \STOPWATCH|half~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STOPWATCH|half~q\);

-- Location: LCCOMB_X51_Y50_N0
\STOPWATCH|sec[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STOPWATCH|sec[6]~21_combout\ = (\STOPWATCH|half~q\ & ((\STOPWATCH|cstate.START~q\) # (\STOPWATCH|cstate.LAP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STOPWATCH|half~q\,
	datac => \STOPWATCH|cstate.START~q\,
	datad => \STOPWATCH|cstate.LAP~q\,
	combout => \STOPWATCH|sec[6]~21_combout\);

-- Location: FF_X54_Y50_N9
\STOPWATCH|sec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2HZ|clk_out~clkctrl_outclk\,
	d => \STOPWATCH|sec[0]~7_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \STOPWATCH|LessThan0~0_combout\,
	ena => \STOPWATCH|sec[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STOPWATCH|sec\(0));

-- Location: LCCOMB_X54_Y50_N10
\STOPWATCH|sec[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STOPWATCH|sec[1]~9_combout\ = (\STOPWATCH|sec\(1) & (!\STOPWATCH|sec[0]~8\)) # (!\STOPWATCH|sec\(1) & ((\STOPWATCH|sec[0]~8\) # (GND)))
-- \STOPWATCH|sec[1]~10\ = CARRY((!\STOPWATCH|sec[0]~8\) # (!\STOPWATCH|sec\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STOPWATCH|sec\(1),
	datad => VCC,
	cin => \STOPWATCH|sec[0]~8\,
	combout => \STOPWATCH|sec[1]~9_combout\,
	cout => \STOPWATCH|sec[1]~10\);

-- Location: FF_X54_Y50_N11
\STOPWATCH|sec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2HZ|clk_out~clkctrl_outclk\,
	d => \STOPWATCH|sec[1]~9_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \STOPWATCH|LessThan0~0_combout\,
	ena => \STOPWATCH|sec[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STOPWATCH|sec\(1));

-- Location: LCCOMB_X54_Y50_N12
\STOPWATCH|sec[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STOPWATCH|sec[2]~11_combout\ = (\STOPWATCH|sec\(2) & (\STOPWATCH|sec[1]~10\ $ (GND))) # (!\STOPWATCH|sec\(2) & (!\STOPWATCH|sec[1]~10\ & VCC))
-- \STOPWATCH|sec[2]~12\ = CARRY((\STOPWATCH|sec\(2) & !\STOPWATCH|sec[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STOPWATCH|sec\(2),
	datad => VCC,
	cin => \STOPWATCH|sec[1]~10\,
	combout => \STOPWATCH|sec[2]~11_combout\,
	cout => \STOPWATCH|sec[2]~12\);

-- Location: FF_X54_Y50_N13
\STOPWATCH|sec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2HZ|clk_out~clkctrl_outclk\,
	d => \STOPWATCH|sec[2]~11_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \STOPWATCH|LessThan0~0_combout\,
	ena => \STOPWATCH|sec[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STOPWATCH|sec\(2));

-- Location: LCCOMB_X54_Y50_N14
\STOPWATCH|sec[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STOPWATCH|sec[3]~13_combout\ = (\STOPWATCH|sec\(3) & (!\STOPWATCH|sec[2]~12\)) # (!\STOPWATCH|sec\(3) & ((\STOPWATCH|sec[2]~12\) # (GND)))
-- \STOPWATCH|sec[3]~14\ = CARRY((!\STOPWATCH|sec[2]~12\) # (!\STOPWATCH|sec\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \STOPWATCH|sec\(3),
	datad => VCC,
	cin => \STOPWATCH|sec[2]~12\,
	combout => \STOPWATCH|sec[3]~13_combout\,
	cout => \STOPWATCH|sec[3]~14\);

-- Location: FF_X54_Y50_N15
\STOPWATCH|sec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2HZ|clk_out~clkctrl_outclk\,
	d => \STOPWATCH|sec[3]~13_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \STOPWATCH|LessThan0~0_combout\,
	ena => \STOPWATCH|sec[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STOPWATCH|sec\(3));

-- Location: LCCOMB_X54_Y50_N16
\STOPWATCH|sec[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STOPWATCH|sec[4]~15_combout\ = (\STOPWATCH|sec\(4) & (\STOPWATCH|sec[3]~14\ $ (GND))) # (!\STOPWATCH|sec\(4) & (!\STOPWATCH|sec[3]~14\ & VCC))
-- \STOPWATCH|sec[4]~16\ = CARRY((\STOPWATCH|sec\(4) & !\STOPWATCH|sec[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STOPWATCH|sec\(4),
	datad => VCC,
	cin => \STOPWATCH|sec[3]~14\,
	combout => \STOPWATCH|sec[4]~15_combout\,
	cout => \STOPWATCH|sec[4]~16\);

-- Location: FF_X54_Y50_N17
\STOPWATCH|sec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2HZ|clk_out~clkctrl_outclk\,
	d => \STOPWATCH|sec[4]~15_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \STOPWATCH|LessThan0~0_combout\,
	ena => \STOPWATCH|sec[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STOPWATCH|sec\(4));

-- Location: LCCOMB_X54_Y50_N18
\STOPWATCH|sec[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STOPWATCH|sec[5]~17_combout\ = (\STOPWATCH|sec\(5) & (!\STOPWATCH|sec[4]~16\)) # (!\STOPWATCH|sec\(5) & ((\STOPWATCH|sec[4]~16\) # (GND)))
-- \STOPWATCH|sec[5]~18\ = CARRY((!\STOPWATCH|sec[4]~16\) # (!\STOPWATCH|sec\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \STOPWATCH|sec\(5),
	datad => VCC,
	cin => \STOPWATCH|sec[4]~16\,
	combout => \STOPWATCH|sec[5]~17_combout\,
	cout => \STOPWATCH|sec[5]~18\);

-- Location: FF_X54_Y50_N19
\STOPWATCH|sec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2HZ|clk_out~clkctrl_outclk\,
	d => \STOPWATCH|sec[5]~17_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \STOPWATCH|LessThan0~0_combout\,
	ena => \STOPWATCH|sec[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STOPWATCH|sec\(5));

-- Location: LCCOMB_X54_Y50_N20
\STOPWATCH|sec[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STOPWATCH|sec[6]~19_combout\ = \STOPWATCH|sec[5]~18\ $ (!\STOPWATCH|sec\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \STOPWATCH|sec\(6),
	cin => \STOPWATCH|sec[5]~18\,
	combout => \STOPWATCH|sec[6]~19_combout\);

-- Location: FF_X54_Y50_N21
\STOPWATCH|sec[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2HZ|clk_out~clkctrl_outclk\,
	d => \STOPWATCH|sec[6]~19_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \STOPWATCH|LessThan0~0_combout\,
	ena => \STOPWATCH|sec[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STOPWATCH|sec\(6));

-- Location: FF_X56_Y50_N1
\STOPWATCH|sec_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2HZ|clk_out~clkctrl_outclk\,
	asdata => \STOPWATCH|sec\(6),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \STOPWATCH|ALT_INV_cstate.LAP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STOPWATCH|sec_out\(6));

-- Location: FF_X56_Y50_N29
\STOPWATCH|sec_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2HZ|clk_out~clkctrl_outclk\,
	asdata => \STOPWATCH|sec\(5),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \STOPWATCH|ALT_INV_cstate.LAP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STOPWATCH|sec_out\(5));

-- Location: FF_X56_Y50_N23
\STOPWATCH|sec_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2HZ|clk_out~clkctrl_outclk\,
	asdata => \STOPWATCH|sec\(4),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \STOPWATCH|ALT_INV_cstate.LAP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STOPWATCH|sec_out\(4));

-- Location: LCCOMB_X64_Y50_N10
\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \STOPWATCH|sec_out\(4) $ (VCC)
-- \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\STOPWATCH|sec_out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STOPWATCH|sec_out\(4),
	datad => VCC,
	combout => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X64_Y50_N12
\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\STOPWATCH|sec_out\(5) & (\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\STOPWATCH|sec_out\(5) & 
-- (!\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\STOPWATCH|sec_out\(5) & !\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STOPWATCH|sec_out\(5),
	datad => VCC,
	cin => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X64_Y50_N14
\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\STOPWATCH|sec_out\(6) & (\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\STOPWATCH|sec_out\(6) & 
-- (!\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\STOPWATCH|sec_out\(6) & !\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \STOPWATCH|sec_out\(6),
	datad => VCC,
	cin => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X64_Y50_N16
\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X63_Y50_N16
\B2D|Div0|auto_generated|divider|divider|StageOut[18]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\);

-- Location: LCCOMB_X64_Y50_N0
\B2D|Div0|auto_generated|divider|divider|StageOut[18]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ = (\STOPWATCH|sec_out\(6) & \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \STOPWATCH|sec_out\(6),
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\);

-- Location: LCCOMB_X64_Y50_N18
\B2D|Div0|auto_generated|divider|divider|StageOut[17]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ = (\STOPWATCH|sec_out\(5) & \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \STOPWATCH|sec_out\(5),
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\);

-- Location: LCCOMB_X64_Y50_N20
\B2D|Div0|auto_generated|divider|divider|StageOut[17]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\);

-- Location: LCCOMB_X64_Y50_N6
\B2D|Div0|auto_generated|divider|divider|StageOut[16]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ = (\STOPWATCH|sec_out\(4) & \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STOPWATCH|sec_out\(4),
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\);

-- Location: LCCOMB_X64_Y50_N8
\B2D|Div0|auto_generated|divider|divider|StageOut[16]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\);

-- Location: FF_X58_Y50_N1
\STOPWATCH|sec_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2HZ|clk_out~clkctrl_outclk\,
	asdata => \STOPWATCH|sec\(3),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \STOPWATCH|ALT_INV_cstate.LAP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STOPWATCH|sec_out\(3));

-- Location: LCCOMB_X63_Y50_N12
\B2D|Div0|auto_generated|divider|divider|StageOut[15]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ = (\STOPWATCH|sec_out\(3) & !\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STOPWATCH|sec_out\(3),
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\);

-- Location: LCCOMB_X63_Y50_N2
\B2D|Div0|auto_generated|divider|divider|StageOut[15]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ = (\STOPWATCH|sec_out\(3) & \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STOPWATCH|sec_out\(3),
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\);

-- Location: LCCOMB_X64_Y50_N22
\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\B2D|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\) # (\B2D|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\)))
-- \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\B2D|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\) # (\B2D|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\,
	datab => \B2D|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\,
	datad => VCC,
	combout => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X64_Y50_N24
\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\B2D|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\) # 
-- (\B2D|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\)))) # (!\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\B2D|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ & 
-- (!\B2D|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\)))
-- \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\B2D|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ & (!\B2D|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ & 
-- !\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\,
	datab => \B2D|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\,
	datad => VCC,
	cin => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X64_Y50_N26
\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\B2D|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\) # 
-- (\B2D|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\)))) # (!\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\B2D|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\) # 
-- (\B2D|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\)))))
-- \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\B2D|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\) # 
-- (\B2D|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\,
	datab => \B2D|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\,
	datad => VCC,
	cin => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X64_Y50_N28
\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\B2D|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ & (!\B2D|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ & 
-- !\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\,
	datab => \B2D|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\,
	datad => VCC,
	cin => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X64_Y50_N30
\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X64_Y50_N2
\B2D|Div0|auto_generated|divider|divider|StageOut[23]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\STOPWATCH|sec_out\(5))) # 
-- (!\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STOPWATCH|sec_out\(5),
	datab => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\);

-- Location: LCCOMB_X65_Y50_N18
\B2D|Div0|auto_generated|divider|divider|StageOut[23]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\);

-- Location: LCCOMB_X65_Y50_N12
\B2D|Div0|auto_generated|divider|divider|StageOut[22]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\);

-- Location: LCCOMB_X64_Y50_N4
\B2D|Div0|auto_generated|divider|divider|StageOut[22]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\STOPWATCH|sec_out\(4)))) 
-- # (!\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \STOPWATCH|sec_out\(4),
	datac => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\);

-- Location: LCCOMB_X65_Y50_N30
\B2D|Div0|auto_generated|divider|divider|StageOut[21]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ = (\STOPWATCH|sec_out\(3) & \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \STOPWATCH|sec_out\(3),
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\);

-- Location: LCCOMB_X65_Y50_N24
\B2D|Div0|auto_generated|divider|divider|StageOut[21]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\);

-- Location: FF_X58_Y50_N11
\STOPWATCH|sec_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2HZ|clk_out~clkctrl_outclk\,
	asdata => \STOPWATCH|sec\(2),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \STOPWATCH|ALT_INV_cstate.LAP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STOPWATCH|sec_out\(2));

-- Location: LCCOMB_X65_Y50_N26
\B2D|Div0|auto_generated|divider|divider|StageOut[20]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ = (\STOPWATCH|sec_out\(2) & \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STOPWATCH|sec_out\(2),
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\);

-- Location: LCCOMB_X65_Y50_N28
\B2D|Div0|auto_generated|divider|divider|StageOut[20]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ = (\STOPWATCH|sec_out\(2) & !\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STOPWATCH|sec_out\(2),
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\);

-- Location: LCCOMB_X65_Y50_N0
\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\B2D|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\) # (\B2D|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\)))
-- \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\B2D|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\) # (\B2D|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\,
	datab => \B2D|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\,
	datad => VCC,
	combout => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X65_Y50_N2
\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\B2D|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\) # 
-- (\B2D|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\)))) # (!\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\B2D|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ & 
-- (!\B2D|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\)))
-- \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\B2D|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ & (!\B2D|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ & 
-- !\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\,
	datab => \B2D|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\,
	datad => VCC,
	cin => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X65_Y50_N4
\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\B2D|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\) # 
-- (\B2D|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\)))) # (!\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\B2D|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\) # 
-- (\B2D|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\)))))
-- \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\B2D|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\) # 
-- (\B2D|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\,
	datab => \B2D|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datad => VCC,
	cin => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X65_Y50_N6
\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\B2D|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ & (!\B2D|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ & 
-- !\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\,
	datab => \B2D|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\,
	datad => VCC,
	cin => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X65_Y50_N8
\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X65_Y50_N16
\B2D|Div0|auto_generated|divider|divider|StageOut[28]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\B2D|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- ((\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \B2D|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datac => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\);

-- Location: LCCOMB_X65_Y50_N22
\B2D|Div0|auto_generated|divider|divider|StageOut[28]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\);

-- Location: LCCOMB_X65_Y50_N10
\B2D|Div0|auto_generated|divider|divider|StageOut[27]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\STOPWATCH|sec_out\(3)))) 
-- # (!\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \STOPWATCH|sec_out\(3),
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\);

-- Location: LCCOMB_X66_Y50_N24
\B2D|Div0|auto_generated|divider|divider|StageOut[27]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ = (!\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\);

-- Location: LCCOMB_X66_Y50_N26
\B2D|Div0|auto_generated|divider|divider|StageOut[26]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\);

-- Location: LCCOMB_X67_Y49_N0
\B2D|Div0|auto_generated|divider|divider|StageOut[26]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ = (\STOPWATCH|sec_out\(2) & \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STOPWATCH|sec_out\(2),
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: FF_X58_Y50_N13
\STOPWATCH|sec_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2HZ|clk_out~clkctrl_outclk\,
	asdata => \STOPWATCH|sec\(1),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \STOPWATCH|ALT_INV_cstate.LAP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STOPWATCH|sec_out\(1));

-- Location: LCCOMB_X67_Y49_N2
\B2D|Div0|auto_generated|divider|divider|StageOut[25]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ = (\STOPWATCH|sec_out\(1) & \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \STOPWATCH|sec_out\(1),
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\);

-- Location: LCCOMB_X67_Y49_N4
\B2D|Div0|auto_generated|divider|divider|StageOut[25]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\ = (\STOPWATCH|sec_out\(1) & !\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \STOPWATCH|sec_out\(1),
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \B2D|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\);

-- Location: LCCOMB_X66_Y50_N6
\B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ = CARRY((\B2D|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\) # (\B2D|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\,
	datab => \B2D|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\,
	datad => VCC,
	cout => \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\);

-- Location: LCCOMB_X66_Y50_N8
\B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ = CARRY((!\B2D|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ & (!\B2D|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ & 
-- !\B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datab => \B2D|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datad => VCC,
	cin => \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\,
	cout => \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\);

-- Location: LCCOMB_X66_Y50_N10
\B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ = CARRY((!\B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ & ((\B2D|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\) # 
-- (\B2D|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\,
	datab => \B2D|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\,
	datad => VCC,
	cin => \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\,
	cout => \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\);

-- Location: LCCOMB_X66_Y50_N12
\B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\B2D|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ & (!\B2D|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ & 
-- !\B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\,
	datab => \B2D|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\,
	datad => VCC,
	cin => \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\,
	cout => \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X66_Y50_N14
\B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X67_Y49_N30
\TEN|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEN|Mux6~0_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (!\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))) # (!\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \TEN|Mux6~0_combout\);

-- Location: LCCOMB_X67_Y49_N24
\TEN|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEN|Mux5~0_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ $ (\B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # (!\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((!\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \TEN|Mux5~0_combout\);

-- Location: LCCOMB_X67_Y49_N26
\TEN|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEN|Mux4~0_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \TEN|Mux4~0_combout\);

-- Location: LCCOMB_X67_Y49_N28
\TEN|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEN|Mux3~0_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # (!\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))) # (!\B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ ((!\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \TEN|Mux3~0_combout\);

-- Location: LCCOMB_X67_Y49_N14
\TEN|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEN|Mux2~0_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))) # 
-- (!\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (((\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \TEN|Mux2~0_combout\);

-- Location: LCCOMB_X67_Y49_N8
\TEN|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEN|Mux1~0_combout\ = (\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((!\B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # (!\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # (!\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \TEN|Mux1~0_combout\);

-- Location: LCCOMB_X67_Y49_N10
\TEN|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEN|Mux0~0_combout\ = ((\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # 
-- (!\B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # (\B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # 
-- (!\B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \B2D|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \B2D|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \B2D|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \TEN|Mux0~0_combout\);

-- Location: LCCOMB_X56_Y50_N14
\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \STOPWATCH|sec_out\(4) $ (VCC)
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\STOPWATCH|sec_out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STOPWATCH|sec_out\(4),
	datad => VCC,
	combout => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X56_Y50_N16
\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\STOPWATCH|sec_out\(5) & (\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\STOPWATCH|sec_out\(5) & 
-- (!\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\STOPWATCH|sec_out\(5) & !\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \STOPWATCH|sec_out\(5),
	datad => VCC,
	cin => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X56_Y50_N18
\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\STOPWATCH|sec_out\(6) & (\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\STOPWATCH|sec_out\(6) & 
-- (!\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\STOPWATCH|sec_out\(6) & !\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \STOPWATCH|sec_out\(6),
	datad => VCC,
	cin => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X56_Y50_N20
\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X56_Y50_N26
\B2D|Mod0|auto_generated|divider|divider|StageOut[24]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\);

-- Location: LCCOMB_X56_Y50_N24
\B2D|Mod0|auto_generated|divider|divider|StageOut[24]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \STOPWATCH|sec_out\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \STOPWATCH|sec_out\(6),
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X56_Y50_N12
\B2D|Mod0|auto_generated|divider|divider|StageOut[23]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \STOPWATCH|sec_out\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \STOPWATCH|sec_out\(5),
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\);

-- Location: LCCOMB_X56_Y50_N30
\B2D|Mod0|auto_generated|divider|divider|StageOut[23]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\);

-- Location: LCCOMB_X55_Y50_N16
\B2D|Mod0|auto_generated|divider|divider|StageOut[22]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \STOPWATCH|sec_out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \STOPWATCH|sec_out\(4),
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\);

-- Location: LCCOMB_X55_Y50_N2
\B2D|Mod0|auto_generated|divider|divider|StageOut[22]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ = (!\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\);

-- Location: LCCOMB_X55_Y50_N12
\B2D|Mod0|auto_generated|divider|divider|StageOut[21]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \STOPWATCH|sec_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \STOPWATCH|sec_out\(3),
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\);

-- Location: LCCOMB_X55_Y50_N6
\B2D|Mod0|auto_generated|divider|divider|StageOut[21]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ = (!\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \STOPWATCH|sec_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \STOPWATCH|sec_out\(3),
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\);

-- Location: LCCOMB_X56_Y50_N2
\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\B2D|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\) # (\B2D|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\)))
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\B2D|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\) # (\B2D|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\,
	datad => VCC,
	combout => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X56_Y50_N4
\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\B2D|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\) # 
-- (\B2D|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\)))) # (!\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\B2D|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ & 
-- (!\B2D|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\)))
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\B2D|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ & (!\B2D|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ & 
-- !\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\,
	datad => VCC,
	cin => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X56_Y50_N6
\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\B2D|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\B2D|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\)))) # (!\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\B2D|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\B2D|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\)))))
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\B2D|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\B2D|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\,
	datad => VCC,
	cin => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X56_Y50_N8
\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\B2D|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\) # 
-- (\B2D|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\)))) # (!\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\B2D|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ & 
-- (!\B2D|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\)))
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\B2D|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ & (!\B2D|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ & 
-- !\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datad => VCC,
	cin => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X56_Y50_N10
\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X57_Y50_N8
\B2D|Mod0|auto_generated|divider|divider|StageOut[32]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ = (!\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\);

-- Location: LCCOMB_X56_Y50_N0
\B2D|Mod0|auto_generated|divider|divider|StageOut[32]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\STOPWATCH|sec_out\(6)))) 
-- # (!\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \STOPWATCH|sec_out\(6),
	datad => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X57_Y50_N10
\B2D|Mod0|auto_generated|divider|divider|StageOut[31]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\);

-- Location: LCCOMB_X56_Y50_N28
\B2D|Mod0|auto_generated|divider|divider|StageOut[31]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\STOPWATCH|sec_out\(5)))) 
-- # (!\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \STOPWATCH|sec_out\(5),
	datad => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\);

-- Location: LCCOMB_X57_Y50_N4
\B2D|Mod0|auto_generated|divider|divider|StageOut[30]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\);

-- Location: LCCOMB_X56_Y50_N22
\B2D|Mod0|auto_generated|divider|divider|StageOut[30]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\STOPWATCH|sec_out\(4))) # 
-- (!\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \STOPWATCH|sec_out\(4),
	datad => \B2D|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\);

-- Location: LCCOMB_X57_Y50_N30
\B2D|Mod0|auto_generated|divider|divider|StageOut[29]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ = (!\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\);

-- Location: LCCOMB_X55_Y50_N24
\B2D|Mod0|auto_generated|divider|divider|StageOut[29]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \STOPWATCH|sec_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \STOPWATCH|sec_out\(3),
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\);

-- Location: LCCOMB_X58_Y49_N0
\B2D|Mod0|auto_generated|divider|divider|StageOut[28]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \STOPWATCH|sec_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \STOPWATCH|sec_out\(2),
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\);

-- Location: LCCOMB_X57_Y50_N16
\B2D|Mod0|auto_generated|divider|divider|StageOut[28]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ = (!\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \STOPWATCH|sec_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \STOPWATCH|sec_out\(2),
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X57_Y50_N18
\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\B2D|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\) # (\B2D|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\)))
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\B2D|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\) # (\B2D|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datad => VCC,
	combout => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X57_Y50_N20
\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\B2D|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\) # 
-- (\B2D|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\)))) # (!\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\B2D|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ & 
-- (!\B2D|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\)))
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\B2D|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ & (!\B2D|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ & 
-- !\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\,
	datad => VCC,
	cin => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X57_Y50_N22
\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\B2D|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\) # 
-- (\B2D|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\)))) # (!\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\B2D|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\) # 
-- (\B2D|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\)))))
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\B2D|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\) # 
-- (\B2D|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datad => VCC,
	cin => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X57_Y50_N24
\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\B2D|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\) # 
-- (\B2D|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\)))) # (!\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\B2D|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ & 
-- (!\B2D|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\)))
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\B2D|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ & (!\B2D|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ & 
-- !\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datad => VCC,
	cin => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X57_Y50_N26
\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\B2D|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # 
-- (\B2D|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\))))) # (!\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\B2D|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # 
-- ((\B2D|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # (GND))))
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\B2D|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # ((\B2D|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- (!\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X57_Y50_N28
\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X58_Y50_N30
\B2D|Mod0|auto_generated|divider|divider|StageOut[40]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\);

-- Location: LCCOMB_X57_Y50_N12
\B2D|Mod0|auto_generated|divider|divider|StageOut[40]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\B2D|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- ((!\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datac => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\);

-- Location: LCCOMB_X57_Y50_N14
\B2D|Mod0|auto_generated|divider|divider|StageOut[39]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\B2D|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\) # 
-- ((!\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \B2D|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\);

-- Location: LCCOMB_X58_Y49_N2
\B2D|Mod0|auto_generated|divider|divider|StageOut[39]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\);

-- Location: LCCOMB_X57_Y50_N2
\B2D|Mod0|auto_generated|divider|divider|StageOut[38]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\);

-- Location: LCCOMB_X57_Y50_N0
\B2D|Mod0|auto_generated|divider|divider|StageOut[38]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\B2D|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\) # 
-- ((!\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datac => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\);

-- Location: LCCOMB_X58_Y49_N4
\B2D|Mod0|auto_generated|divider|divider|StageOut[37]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\ = (!\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\);

-- Location: LCCOMB_X58_Y50_N0
\B2D|Mod0|auto_generated|divider|divider|StageOut[37]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\STOPWATCH|sec_out\(3)))) 
-- # (!\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \STOPWATCH|sec_out\(3),
	datad => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\);

-- Location: LCCOMB_X58_Y50_N10
\B2D|Mod0|auto_generated|divider|divider|StageOut[36]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\ = (\STOPWATCH|sec_out\(2) & \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \STOPWATCH|sec_out\(2),
	datad => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\);

-- Location: LCCOMB_X58_Y50_N28
\B2D|Mod0|auto_generated|divider|divider|StageOut[36]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\);

-- Location: LCCOMB_X58_Y50_N8
\B2D|Mod0|auto_generated|divider|divider|StageOut[35]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \STOPWATCH|sec_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \STOPWATCH|sec_out\(1),
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\);

-- Location: LCCOMB_X58_Y50_N2
\B2D|Mod0|auto_generated|divider|divider|StageOut[35]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\ = (!\B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \STOPWATCH|sec_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B2D|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \STOPWATCH|sec_out\(1),
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\);

-- Location: LCCOMB_X58_Y50_N14
\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\B2D|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\) # (\B2D|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\)))
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\B2D|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\) # (\B2D|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\,
	datad => VCC,
	combout => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X58_Y50_N16
\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\B2D|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\) # 
-- (\B2D|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\)))) # (!\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\B2D|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\ & 
-- (!\B2D|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\)))
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\B2D|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\ & (!\B2D|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ & 
-- !\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datad => VCC,
	cin => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X58_Y50_N18
\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\B2D|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\) # 
-- (\B2D|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\)))) # (!\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\B2D|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\) # 
-- (\B2D|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\)))))
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\B2D|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\) # 
-- (\B2D|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\,
	datad => VCC,
	cin => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X58_Y50_N20
\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\B2D|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\ & (!\B2D|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\ & 
-- !\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\,
	datad => VCC,
	cin => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X58_Y50_N22
\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\B2D|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\) # ((\B2D|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\) # 
-- (!\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\,
	datad => VCC,
	cin => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	cout => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X58_Y50_N24
\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ = CARRY((!\B2D|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\ & (!\B2D|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\ & 
-- !\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\,
	datad => VCC,
	cin => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	cout => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\);

-- Location: LCCOMB_X58_Y50_N26
\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X58_Y50_N12
\B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\STOPWATCH|sec_out\(1)))) # 
-- (!\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \STOPWATCH|sec_out\(1),
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\);

-- Location: LCCOMB_X58_Y50_N6
\B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\B2D|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\) # 
-- ((\B2D|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\)))) # (!\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \B2D|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\);

-- Location: LCCOMB_X58_Y50_N4
\B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ = (\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\B2D|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\) # 
-- ((\B2D|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\)))) # (!\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datac => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \B2D|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\);

-- Location: FF_X58_Y50_N31
\STOPWATCH|sec_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2HZ|clk_out~clkctrl_outclk\,
	asdata => \STOPWATCH|sec\(0),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \STOPWATCH|ALT_INV_cstate.LAP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STOPWATCH|sec_out\(0));

-- Location: LCCOMB_X59_Y50_N8
\ONE|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ONE|Mux6~0_combout\ = (\B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & (\B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & (!\B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & 
-- \STOPWATCH|sec_out\(0)))) # (!\B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & (\B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ $ (((!\B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & 
-- \STOPWATCH|sec_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datac => \B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datad => \STOPWATCH|sec_out\(0),
	combout => \ONE|Mux6~0_combout\);

-- Location: LCCOMB_X59_Y50_N10
\ONE|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ONE|Mux5~0_combout\ = (\B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & ((\STOPWATCH|sec_out\(0) & (\B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\)) # (!\STOPWATCH|sec_out\(0) & 
-- ((\B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\))))) # (!\B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & (\B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & 
-- (\B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ $ (\STOPWATCH|sec_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datac => \B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datad => \STOPWATCH|sec_out\(0),
	combout => \ONE|Mux5~0_combout\);

-- Location: LCCOMB_X59_Y50_N12
\ONE|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ONE|Mux4~0_combout\ = (\B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & (\B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & ((\B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\) # 
-- (!\STOPWATCH|sec_out\(0))))) # (!\B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & (\B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & (!\B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & 
-- !\STOPWATCH|sec_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datac => \B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datad => \STOPWATCH|sec_out\(0),
	combout => \ONE|Mux4~0_combout\);

-- Location: LCCOMB_X59_Y50_N6
\ONE|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ONE|Mux3~0_combout\ = (\STOPWATCH|sec_out\(0) & (\B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ $ (((!\B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\))))) # (!\STOPWATCH|sec_out\(0) & 
-- ((\B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & (\B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & !\B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\)) # 
-- (!\B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & (!\B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & \B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datac => \B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datad => \STOPWATCH|sec_out\(0),
	combout => \ONE|Mux3~0_combout\);

-- Location: LCCOMB_X59_Y50_N24
\ONE|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ONE|Mux2~0_combout\ = (\B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & (!\B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & ((\STOPWATCH|sec_out\(0))))) # 
-- (!\B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & ((\B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & (!\B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\)) # 
-- (!\B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & ((\STOPWATCH|sec_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datac => \B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datad => \STOPWATCH|sec_out\(0),
	combout => \ONE|Mux2~0_combout\);

-- Location: LCCOMB_X59_Y50_N26
\ONE|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ONE|Mux1~0_combout\ = (\B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & (!\B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & ((\STOPWATCH|sec_out\(0)) # 
-- (!\B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\)))) # (!\B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & ((\B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & 
-- (\B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\)) # (!\B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & (!\B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & \STOPWATCH|sec_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datac => \B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datad => \STOPWATCH|sec_out\(0),
	combout => \ONE|Mux1~0_combout\);

-- Location: LCCOMB_X59_Y50_N4
\ONE|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ONE|Mux0~0_combout\ = (\B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\) # ((\B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & ((!\STOPWATCH|sec_out\(0)) # 
-- (!\B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\))) # (!\B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & (\B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2D|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datab => \B2D|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datac => \B2D|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datad => \STOPWATCH|sec_out\(0),
	combout => \ONE|Mux0~0_combout\);

-- Location: LCCOMB_X51_Y50_N8
\STOPWATCH|half_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \STOPWATCH|half_out~feeder_combout\ = \STOPWATCH|half~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STOPWATCH|half~q\,
	combout => \STOPWATCH|half_out~feeder_combout\);

-- Location: FF_X51_Y50_N9
\STOPWATCH|half_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK2HZ|clk_out~clkctrl_outclk\,
	d => \STOPWATCH|half_out~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	ena => \STOPWATCH|ALT_INV_cstate.LAP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STOPWATCH|half_out~q\);

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
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(7) <= \HEX2[7]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(7) <= \HEX1[7]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(7) <= \HEX0[7]~output_o\;
END structure;


