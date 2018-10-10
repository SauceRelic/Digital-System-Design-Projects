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

-- DATE "10/09/2018 09:09:45"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vga_char_message_de10 IS
    PORT (
	CLOCK_50 : IN std_logic;
	VGA_HS : BUFFER std_logic;
	VGA_VS : BUFFER std_logic;
	VGA_R : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_B : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_G : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END vga_char_message_de10;

-- Design Ports Information
-- VGA_HS	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vga_char_message_de10 IS
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
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL \IMPLEMENT|PLL|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \IMPLEMENT|PLL|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_count[0]~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_count[7]~25\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_count[8]~26_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|LessThan5~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|LessThan5~1_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_count[8]~27\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_count[9]~28_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|LessThan5~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_count[0]~11\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_count[1]~12_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_count[1]~13\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_count[2]~14_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_count[2]~15\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_count[3]~16_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_count[3]~17\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_count[4]~18_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_count[4]~19\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_count[5]~20_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_count[5]~21\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_count[6]~22_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_count[6]~23\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_count[7]~24_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|process_0~1_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|process_0~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|process_0~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|process_0~3_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add1~7\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add1~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|v_count_next[4]~5_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add1~9\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add1~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|v_count_next[5]~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add1~11\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add1~12_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|v_count_next[6]~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add1~13\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add1~14_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|v_count_next[7]~3_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add1~15\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add1~16_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|v_count[8]~1_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add1~17\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add1~18_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|v_count[9]~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|v_display_on~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|LessThan4~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|LessThan4~1_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add1~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|v_count_next[0]~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add1~1\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add1~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|v_count_next[1]~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add1~3\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add1~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|v_count_next[2]~1_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add1~5\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add1~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|v_count_next[3]~7_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|process_0~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|process_0~5_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|v_display_on~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|LessThan9~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|v_display_on~1_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|v_display_on~3_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|v_display_on~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_display_on~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_display_on~1_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add2~1\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add2~3\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add2~5\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add2~7\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add2~9\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add2~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add2~12_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add2~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add2~13_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add2~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add2~14_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add2~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add2~15_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~123_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~74_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~75_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~124_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~76_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~125_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~126_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~77_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add2~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add2~16_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~9\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~127_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~78_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~79_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~128_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~80_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~129_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~81_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~130_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~131_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~82_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add2~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add2~17_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~9\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~11\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~132_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~83_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~133_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~134_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~85_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~86_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~135_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~136_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~88_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~137_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~9\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~11\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~13\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~138_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~12_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~89_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~139_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~90_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~91_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~140_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~141_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~92_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~142_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~93_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~94_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~143_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~95_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~96_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~9\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~11\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~13\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~14_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~15\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~144_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~97_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~145_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~98_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~99_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~146_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~147_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~100_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~101_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~148_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~102_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~149_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~150_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~103_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~105_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~104_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~1\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~7\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~9\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~11\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~13\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~15\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~17\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~151_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~16_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~106_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~152_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~14_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~108_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~12_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~109_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~153_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~110_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~154_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~111_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~155_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~112_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~156_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~157_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~113_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~114_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~158_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~116_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~115_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~1\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~5\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~7\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~9\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~11\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~13\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~15\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~17\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~19\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[90]~119_combout\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add0~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~1\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~4\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~6\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~8\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~10\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~12\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~14\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~16\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~18\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~19_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~21_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~17_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~22_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~15_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~23_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~69_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~68_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~71_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~72_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~73_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~13_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~74_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~75_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~150_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~151_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~152_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~80_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~79_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~11_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~81_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~82_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~128_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~83_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~129_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~130_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~85_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~131_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~86_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~88_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~9_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~90_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~89_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~132_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~91_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~92_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~133_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~134_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~93_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~94_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~135_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~136_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~95_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~96_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~97_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~7_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~99_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~98_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~139_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~100_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~137_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~101_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~138_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~102_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~140_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~103_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~104_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~141_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~142_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~105_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~106_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~107_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~5_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~109_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~108_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~143_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~110_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~111_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~144_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~145_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~112_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~146_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~113_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~114_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~147_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~115_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~116_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|Add3~3_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~118_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~117_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~148_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~119_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~120_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~149_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[97]~121_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|process_0~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|process_0~1_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[95]~123_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[96]~122_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[94]~125_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~126_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~127_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|process_0~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[93]~124_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|process_0~3_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|process_0~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|process_0~5_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|addr[0]~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add0~1\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add0~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|addr[1]~1_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add0~3\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add0~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|addr[2]~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[18]~69_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[18]~42_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[17]~43_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[17]~70_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[16]~71_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[16]~44_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[15]~45_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[15]~72_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~9_cout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[20]~76_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[23]~46_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[23]~73_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[22]~74_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[21]~48_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[21]~75_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~9_cout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[26]~79_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[25]~80_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[25]~53_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[28]~77_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[27]~78_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~9_cout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[32]~82_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[33]~81_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[33]~54_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[32]~55_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[31]~56_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[31]~83_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[30]~58_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[30]~57_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~9_cout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[38]~84_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[38]~59_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[37]~60_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[37]~85_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[36]~86_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[36]~61_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[35]~62_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~1\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~7\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~9_cout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[43]~64_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[43]~87_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[42]~65_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[42]~88_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[41]~89_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[41]~66_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[40]~67_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[40]~68_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~1_cout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~3_cout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~5_cout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~7_cout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~9_cout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Equal0~3_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Selector4~3_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Equal4~3_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Equal4~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Selector1~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Selector4~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[16]~36_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[16]~37_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[15]~39_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[15]~38_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[18]~33_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[18]~32_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[17]~34_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[17]~35_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[23]~40_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[23]~78_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[22]~41_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[22]~79_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[21]~43_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[21]~42_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[20]~45_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[20]~44_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[28]~46_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[27]~47_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[26]~48_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[26]~49_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[25]~50_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[25]~51_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Equal14~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[32]~73_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[32]~53_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[31]~55_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[31]~54_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[30]~56_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[30]~57_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[33]~52_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[33]~72_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[38]~58_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[38]~74_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[37]~75_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[37]~59_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[36]~61_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[36]~60_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[35]~62_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[43]~76_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[43]~64_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[42]~77_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[42]~65_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[41]~66_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[41]~67_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[40]~69_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[40]~68_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Equal15~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Equal5~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Equal5~3_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Selector4~1_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|WideNor0~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Equal0~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Equal14~1_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Selector4~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Selector4~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add0~5\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add0~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add1~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add1~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add0~7\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add0~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Selector3~1_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|WideNor1~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Selector3~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Equal8~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Selector3~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Selector3~3_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add1~1\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add1~3_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add1~5_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Selector2~1_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Selector2~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Selector2~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Selector2~3_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Selector2~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add0~9\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add0~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add1~4\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add1~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add1~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add0~11\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add0~12_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Selector1~1_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Selector1~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Selector1~3_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Selector1~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add1~7\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add1~9_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add1~11_combout\ : std_logic;
SIGNAL \IMPLEMENT|CUSTOM_GRID|Selector0~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add0~13\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add0~14_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add1~10\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add1~12_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|LINE_SELECT|Add1~14_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~121_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~120_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~7_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~6_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[93]~118_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~9_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[98]~107_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[96]~117_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[97]~159_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~8_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~12_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~2_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~3_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~16_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~14_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~18_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~1_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~4_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~5_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~122_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~11_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~10_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~12_combout\ : std_logic;
SIGNAL \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~13_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|red_out[0]~0_combout\ : std_logic;
SIGNAL \IMPLEMENT|VGA|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \IMPLEMENT|VGA|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \IMPLEMENT|VGA|red\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_R <= ww_VGA_R;
VGA_B <= ww_VGA_B;
VGA_G <= ww_VGA_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\IMPLEMENT|PLL|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk\(0) <= \IMPLEMENT|PLL|altpll_component|auto_generated|pll1_CLK_bus\(0);
\IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk\(1) <= \IMPLEMENT|PLL|altpll_component|auto_generated|pll1_CLK_bus\(1);
\IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk\(2) <= \IMPLEMENT|PLL|altpll_component|auto_generated|pll1_CLK_bus\(2);
\IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk\(3) <= \IMPLEMENT|PLL|altpll_component|auto_generated|pll1_CLK_bus\(3);
\IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk\(4) <= \IMPLEMENT|PLL|altpll_component|auto_generated|pll1_CLK_bus\(4);

\IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\IMPLEMENT|COMPANION|LINE_SELECT|Add1~14_combout\ & \IMPLEMENT|COMPANION|LINE_SELECT|Add1~11_combout\ & \IMPLEMENT|COMPANION|LINE_SELECT|Add1~8_combout\ & 
\IMPLEMENT|COMPANION|LINE_SELECT|Add1~5_combout\ & \IMPLEMENT|COMPANION|LINE_SELECT|Add1~2_combout\ & \IMPLEMENT|COMPANION|LINE_SELECT|addr[2]~2_combout\ & \IMPLEMENT|COMPANION|LINE_SELECT|addr[1]~1_combout\ & 
\IMPLEMENT|COMPANION|LINE_SELECT|addr[0]~0_combout\);

\IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(0) <= \IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(1) <= \IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(2) <= \IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(3) <= \IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(4) <= \IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(5) <= \IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(6) <= \IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(7) <= \IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk\(0));

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

-- Location: LCCOMB_X44_Y42_N12
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

-- Location: IOOBUF_X0_Y18_N2
\VGA_HS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMPLEMENT|VGA|process_0~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X0_Y13_N9
\VGA_VS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMPLEMENT|VGA|process_0~5_combout\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X18_Y0_N30
\VGA_R[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMPLEMENT|VGA|red_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X0_Y12_N9
\VGA_R[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMPLEMENT|VGA|red_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X16_Y0_N16
\VGA_R[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMPLEMENT|VGA|red_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X16_Y0_N23
\VGA_R[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMPLEMENT|VGA|red_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X0_Y13_N2
\VGA_B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMPLEMENT|VGA|red_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X0_Y15_N2
\VGA_B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMPLEMENT|VGA|red_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X0_Y23_N2
\VGA_B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMPLEMENT|VGA|red_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X0_Y18_N9
\VGA_B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMPLEMENT|VGA|red_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X0_Y9_N2
\VGA_G[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMPLEMENT|VGA|red_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X0_Y15_N9
\VGA_G[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMPLEMENT|VGA|red_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X0_Y3_N9
\VGA_G[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMPLEMENT|VGA|red_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X0_Y3_N2
\VGA_G[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IMPLEMENT|VGA|red_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(3));

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

-- Location: PLL_1
\IMPLEMENT|PLL|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \IMPLEMENT|PLL|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y21_N4
\IMPLEMENT|VGA|h_count[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|h_count[0]~10_combout\ = \IMPLEMENT|VGA|h_count\(0) $ (VCC)
-- \IMPLEMENT|VGA|h_count[0]~11\ = CARRY(\IMPLEMENT|VGA|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|h_count\(0),
	datad => VCC,
	combout => \IMPLEMENT|VGA|h_count[0]~10_combout\,
	cout => \IMPLEMENT|VGA|h_count[0]~11\);

-- Location: LCCOMB_X24_Y21_N18
\IMPLEMENT|VGA|h_count[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|h_count[7]~24_combout\ = (\IMPLEMENT|VGA|h_count\(7) & (!\IMPLEMENT|VGA|h_count[6]~23\)) # (!\IMPLEMENT|VGA|h_count\(7) & ((\IMPLEMENT|VGA|h_count[6]~23\) # (GND)))
-- \IMPLEMENT|VGA|h_count[7]~25\ = CARRY((!\IMPLEMENT|VGA|h_count[6]~23\) # (!\IMPLEMENT|VGA|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(7),
	datad => VCC,
	cin => \IMPLEMENT|VGA|h_count[6]~23\,
	combout => \IMPLEMENT|VGA|h_count[7]~24_combout\,
	cout => \IMPLEMENT|VGA|h_count[7]~25\);

-- Location: LCCOMB_X24_Y21_N20
\IMPLEMENT|VGA|h_count[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|h_count[8]~26_combout\ = (\IMPLEMENT|VGA|h_count\(8) & (\IMPLEMENT|VGA|h_count[7]~25\ $ (GND))) # (!\IMPLEMENT|VGA|h_count\(8) & (!\IMPLEMENT|VGA|h_count[7]~25\ & VCC))
-- \IMPLEMENT|VGA|h_count[8]~27\ = CARRY((\IMPLEMENT|VGA|h_count\(8) & !\IMPLEMENT|VGA|h_count[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(8),
	datad => VCC,
	cin => \IMPLEMENT|VGA|h_count[7]~25\,
	combout => \IMPLEMENT|VGA|h_count[8]~26_combout\,
	cout => \IMPLEMENT|VGA|h_count[8]~27\);

-- Location: FF_X24_Y20_N17
\IMPLEMENT|VGA|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \IMPLEMENT|VGA|h_count[8]~26_combout\,
	clrn => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	sclr => \IMPLEMENT|VGA|LessThan5~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IMPLEMENT|VGA|h_count\(8));

-- Location: LCCOMB_X24_Y21_N26
\IMPLEMENT|VGA|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|LessThan5~0_combout\ = (((!\IMPLEMENT|VGA|h_count\(1)) # (!\IMPLEMENT|VGA|h_count\(0))) # (!\IMPLEMENT|VGA|h_count\(2))) # (!\IMPLEMENT|VGA|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(3),
	datab => \IMPLEMENT|VGA|h_count\(2),
	datac => \IMPLEMENT|VGA|h_count\(0),
	datad => \IMPLEMENT|VGA|h_count\(1),
	combout => \IMPLEMENT|VGA|LessThan5~0_combout\);

-- Location: LCCOMB_X24_Y21_N0
\IMPLEMENT|VGA|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|LessThan5~1_combout\ = (\IMPLEMENT|VGA|h_count\(7)) # ((\IMPLEMENT|VGA|h_count\(6)) # ((\IMPLEMENT|VGA|h_count\(4) & !\IMPLEMENT|VGA|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(7),
	datab => \IMPLEMENT|VGA|h_count\(4),
	datac => \IMPLEMENT|VGA|LessThan5~0_combout\,
	datad => \IMPLEMENT|VGA|h_count\(6),
	combout => \IMPLEMENT|VGA|LessThan5~1_combout\);

-- Location: LCCOMB_X24_Y21_N22
\IMPLEMENT|VGA|h_count[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|h_count[9]~28_combout\ = \IMPLEMENT|VGA|h_count\(9) $ (\IMPLEMENT|VGA|h_count[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(9),
	cin => \IMPLEMENT|VGA|h_count[8]~27\,
	combout => \IMPLEMENT|VGA|h_count[9]~28_combout\);

-- Location: FF_X24_Y20_N31
\IMPLEMENT|VGA|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \IMPLEMENT|VGA|h_count[9]~28_combout\,
	clrn => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	sclr => \IMPLEMENT|VGA|LessThan5~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IMPLEMENT|VGA|h_count\(9));

-- Location: LCCOMB_X24_Y21_N30
\IMPLEMENT|VGA|LessThan5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|LessThan5~2_combout\ = (\IMPLEMENT|VGA|h_count\(8) & (\IMPLEMENT|VGA|h_count\(9) & ((\IMPLEMENT|VGA|LessThan5~1_combout\) # (\IMPLEMENT|VGA|h_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(8),
	datab => \IMPLEMENT|VGA|LessThan5~1_combout\,
	datac => \IMPLEMENT|VGA|h_count\(9),
	datad => \IMPLEMENT|VGA|h_count\(5),
	combout => \IMPLEMENT|VGA|LessThan5~2_combout\);

-- Location: FF_X24_Y21_N5
\IMPLEMENT|VGA|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IMPLEMENT|VGA|h_count[0]~10_combout\,
	clrn => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	sclr => \IMPLEMENT|VGA|LessThan5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IMPLEMENT|VGA|h_count\(0));

-- Location: LCCOMB_X24_Y21_N6
\IMPLEMENT|VGA|h_count[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|h_count[1]~12_combout\ = (\IMPLEMENT|VGA|h_count\(1) & (!\IMPLEMENT|VGA|h_count[0]~11\)) # (!\IMPLEMENT|VGA|h_count\(1) & ((\IMPLEMENT|VGA|h_count[0]~11\) # (GND)))
-- \IMPLEMENT|VGA|h_count[1]~13\ = CARRY((!\IMPLEMENT|VGA|h_count[0]~11\) # (!\IMPLEMENT|VGA|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(1),
	datad => VCC,
	cin => \IMPLEMENT|VGA|h_count[0]~11\,
	combout => \IMPLEMENT|VGA|h_count[1]~12_combout\,
	cout => \IMPLEMENT|VGA|h_count[1]~13\);

-- Location: FF_X24_Y21_N7
\IMPLEMENT|VGA|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IMPLEMENT|VGA|h_count[1]~12_combout\,
	clrn => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	sclr => \IMPLEMENT|VGA|LessThan5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IMPLEMENT|VGA|h_count\(1));

-- Location: LCCOMB_X24_Y21_N8
\IMPLEMENT|VGA|h_count[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|h_count[2]~14_combout\ = (\IMPLEMENT|VGA|h_count\(2) & (\IMPLEMENT|VGA|h_count[1]~13\ $ (GND))) # (!\IMPLEMENT|VGA|h_count\(2) & (!\IMPLEMENT|VGA|h_count[1]~13\ & VCC))
-- \IMPLEMENT|VGA|h_count[2]~15\ = CARRY((\IMPLEMENT|VGA|h_count\(2) & !\IMPLEMENT|VGA|h_count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|h_count\(2),
	datad => VCC,
	cin => \IMPLEMENT|VGA|h_count[1]~13\,
	combout => \IMPLEMENT|VGA|h_count[2]~14_combout\,
	cout => \IMPLEMENT|VGA|h_count[2]~15\);

-- Location: FF_X24_Y21_N9
\IMPLEMENT|VGA|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IMPLEMENT|VGA|h_count[2]~14_combout\,
	clrn => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	sclr => \IMPLEMENT|VGA|LessThan5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IMPLEMENT|VGA|h_count\(2));

-- Location: LCCOMB_X24_Y21_N10
\IMPLEMENT|VGA|h_count[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|h_count[3]~16_combout\ = (\IMPLEMENT|VGA|h_count\(3) & (!\IMPLEMENT|VGA|h_count[2]~15\)) # (!\IMPLEMENT|VGA|h_count\(3) & ((\IMPLEMENT|VGA|h_count[2]~15\) # (GND)))
-- \IMPLEMENT|VGA|h_count[3]~17\ = CARRY((!\IMPLEMENT|VGA|h_count[2]~15\) # (!\IMPLEMENT|VGA|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(3),
	datad => VCC,
	cin => \IMPLEMENT|VGA|h_count[2]~15\,
	combout => \IMPLEMENT|VGA|h_count[3]~16_combout\,
	cout => \IMPLEMENT|VGA|h_count[3]~17\);

-- Location: FF_X24_Y21_N11
\IMPLEMENT|VGA|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IMPLEMENT|VGA|h_count[3]~16_combout\,
	clrn => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	sclr => \IMPLEMENT|VGA|LessThan5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IMPLEMENT|VGA|h_count\(3));

-- Location: LCCOMB_X24_Y21_N12
\IMPLEMENT|VGA|h_count[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|h_count[4]~18_combout\ = (\IMPLEMENT|VGA|h_count\(4) & (\IMPLEMENT|VGA|h_count[3]~17\ $ (GND))) # (!\IMPLEMENT|VGA|h_count\(4) & (!\IMPLEMENT|VGA|h_count[3]~17\ & VCC))
-- \IMPLEMENT|VGA|h_count[4]~19\ = CARRY((\IMPLEMENT|VGA|h_count\(4) & !\IMPLEMENT|VGA|h_count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|h_count\(4),
	datad => VCC,
	cin => \IMPLEMENT|VGA|h_count[3]~17\,
	combout => \IMPLEMENT|VGA|h_count[4]~18_combout\,
	cout => \IMPLEMENT|VGA|h_count[4]~19\);

-- Location: FF_X24_Y20_N27
\IMPLEMENT|VGA|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \IMPLEMENT|VGA|h_count[4]~18_combout\,
	clrn => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	sclr => \IMPLEMENT|VGA|LessThan5~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IMPLEMENT|VGA|h_count\(4));

-- Location: LCCOMB_X24_Y21_N14
\IMPLEMENT|VGA|h_count[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|h_count[5]~20_combout\ = (\IMPLEMENT|VGA|h_count\(5) & (!\IMPLEMENT|VGA|h_count[4]~19\)) # (!\IMPLEMENT|VGA|h_count\(5) & ((\IMPLEMENT|VGA|h_count[4]~19\) # (GND)))
-- \IMPLEMENT|VGA|h_count[5]~21\ = CARRY((!\IMPLEMENT|VGA|h_count[4]~19\) # (!\IMPLEMENT|VGA|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|h_count\(5),
	datad => VCC,
	cin => \IMPLEMENT|VGA|h_count[4]~19\,
	combout => \IMPLEMENT|VGA|h_count[5]~20_combout\,
	cout => \IMPLEMENT|VGA|h_count[5]~21\);

-- Location: FF_X24_Y20_N21
\IMPLEMENT|VGA|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \IMPLEMENT|VGA|h_count[5]~20_combout\,
	clrn => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	sclr => \IMPLEMENT|VGA|LessThan5~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IMPLEMENT|VGA|h_count\(5));

-- Location: LCCOMB_X24_Y21_N16
\IMPLEMENT|VGA|h_count[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|h_count[6]~22_combout\ = (\IMPLEMENT|VGA|h_count\(6) & (\IMPLEMENT|VGA|h_count[5]~21\ $ (GND))) # (!\IMPLEMENT|VGA|h_count\(6) & (!\IMPLEMENT|VGA|h_count[5]~21\ & VCC))
-- \IMPLEMENT|VGA|h_count[6]~23\ = CARRY((\IMPLEMENT|VGA|h_count\(6) & !\IMPLEMENT|VGA|h_count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(6),
	datad => VCC,
	cin => \IMPLEMENT|VGA|h_count[5]~21\,
	combout => \IMPLEMENT|VGA|h_count[6]~22_combout\,
	cout => \IMPLEMENT|VGA|h_count[6]~23\);

-- Location: FF_X24_Y20_N13
\IMPLEMENT|VGA|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \IMPLEMENT|VGA|h_count[6]~22_combout\,
	clrn => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	sclr => \IMPLEMENT|VGA|LessThan5~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IMPLEMENT|VGA|h_count\(6));

-- Location: FF_X24_Y20_N19
\IMPLEMENT|VGA|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \IMPLEMENT|VGA|h_count[7]~24_combout\,
	clrn => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	sclr => \IMPLEMENT|VGA|LessThan5~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IMPLEMENT|VGA|h_count\(7));

-- Location: LCCOMB_X24_Y21_N2
\IMPLEMENT|VGA|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|process_0~1_combout\ = (\IMPLEMENT|VGA|h_count\(3)) # ((\IMPLEMENT|VGA|h_count\(2)) # ((\IMPLEMENT|VGA|h_count\(0)) # (\IMPLEMENT|VGA|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(3),
	datab => \IMPLEMENT|VGA|h_count\(2),
	datac => \IMPLEMENT|VGA|h_count\(0),
	datad => \IMPLEMENT|VGA|h_count\(1),
	combout => \IMPLEMENT|VGA|process_0~1_combout\);

-- Location: LCCOMB_X24_Y21_N28
\IMPLEMENT|VGA|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|process_0~2_combout\ = ((\IMPLEMENT|VGA|h_count\(5) & ((\IMPLEMENT|VGA|h_count\(4)) # (\IMPLEMENT|VGA|process_0~1_combout\)))) # (!\IMPLEMENT|VGA|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(8),
	datab => \IMPLEMENT|VGA|h_count\(4),
	datac => \IMPLEMENT|VGA|h_count\(5),
	datad => \IMPLEMENT|VGA|process_0~1_combout\,
	combout => \IMPLEMENT|VGA|process_0~2_combout\);

-- Location: LCCOMB_X24_Y21_N24
\IMPLEMENT|VGA|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|process_0~0_combout\ = ((\IMPLEMENT|VGA|h_count\(6) & (\IMPLEMENT|VGA|h_count\(8))) # (!\IMPLEMENT|VGA|h_count\(6) & ((\IMPLEMENT|VGA|h_count\(7))))) # (!\IMPLEMENT|VGA|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(8),
	datab => \IMPLEMENT|VGA|h_count\(7),
	datac => \IMPLEMENT|VGA|h_count\(9),
	datad => \IMPLEMENT|VGA|h_count\(6),
	combout => \IMPLEMENT|VGA|process_0~0_combout\);

-- Location: LCCOMB_X23_Y21_N0
\IMPLEMENT|VGA|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|process_0~3_combout\ = (\IMPLEMENT|VGA|process_0~0_combout\) # ((!\IMPLEMENT|VGA|h_count\(7) & \IMPLEMENT|VGA|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(7),
	datab => \IMPLEMENT|VGA|process_0~2_combout\,
	datad => \IMPLEMENT|VGA|process_0~0_combout\,
	combout => \IMPLEMENT|VGA|process_0~3_combout\);

-- Location: LCCOMB_X34_Y25_N12
\IMPLEMENT|VGA|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add1~6_combout\ = (\IMPLEMENT|VGA|v_count\(3) & (!\IMPLEMENT|VGA|Add1~5\)) # (!\IMPLEMENT|VGA|v_count\(3) & ((\IMPLEMENT|VGA|Add1~5\) # (GND)))
-- \IMPLEMENT|VGA|Add1~7\ = CARRY((!\IMPLEMENT|VGA|Add1~5\) # (!\IMPLEMENT|VGA|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|v_count\(3),
	datad => VCC,
	cin => \IMPLEMENT|VGA|Add1~5\,
	combout => \IMPLEMENT|VGA|Add1~6_combout\,
	cout => \IMPLEMENT|VGA|Add1~7\);

-- Location: LCCOMB_X34_Y25_N14
\IMPLEMENT|VGA|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add1~8_combout\ = (\IMPLEMENT|VGA|v_count\(4) & (\IMPLEMENT|VGA|Add1~7\ $ (GND))) # (!\IMPLEMENT|VGA|v_count\(4) & (!\IMPLEMENT|VGA|Add1~7\ & VCC))
-- \IMPLEMENT|VGA|Add1~9\ = CARRY((\IMPLEMENT|VGA|v_count\(4) & !\IMPLEMENT|VGA|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_count\(4),
	datad => VCC,
	cin => \IMPLEMENT|VGA|Add1~7\,
	combout => \IMPLEMENT|VGA|Add1~8_combout\,
	cout => \IMPLEMENT|VGA|Add1~9\);

-- Location: LCCOMB_X34_Y25_N2
\IMPLEMENT|VGA|v_count_next[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|v_count_next[4]~5_combout\ = (\IMPLEMENT|VGA|Add1~8_combout\ & ((\IMPLEMENT|VGA|LessThan4~1_combout\) # (!\IMPLEMENT|VGA|LessThan5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|LessThan4~1_combout\,
	datab => \IMPLEMENT|VGA|LessThan5~2_combout\,
	datac => \IMPLEMENT|VGA|Add1~8_combout\,
	combout => \IMPLEMENT|VGA|v_count_next[4]~5_combout\);

-- Location: FF_X31_Y25_N3
\IMPLEMENT|VGA|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \IMPLEMENT|VGA|v_count_next[4]~5_combout\,
	clrn => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	sload => VCC,
	ena => \IMPLEMENT|VGA|LessThan5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IMPLEMENT|VGA|v_count\(4));

-- Location: LCCOMB_X34_Y25_N16
\IMPLEMENT|VGA|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add1~10_combout\ = (\IMPLEMENT|VGA|v_count\(5) & (!\IMPLEMENT|VGA|Add1~9\)) # (!\IMPLEMENT|VGA|v_count\(5) & ((\IMPLEMENT|VGA|Add1~9\) # (GND)))
-- \IMPLEMENT|VGA|Add1~11\ = CARRY((!\IMPLEMENT|VGA|Add1~9\) # (!\IMPLEMENT|VGA|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_count\(5),
	datad => VCC,
	cin => \IMPLEMENT|VGA|Add1~9\,
	combout => \IMPLEMENT|VGA|Add1~10_combout\,
	cout => \IMPLEMENT|VGA|Add1~11\);

-- Location: LCCOMB_X30_Y25_N0
\IMPLEMENT|VGA|v_count_next[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|v_count_next[5]~6_combout\ = (\IMPLEMENT|VGA|Add1~10_combout\ & ((\IMPLEMENT|VGA|LessThan4~1_combout\) # (!\IMPLEMENT|VGA|LessThan5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|LessThan5~2_combout\,
	datac => \IMPLEMENT|VGA|Add1~10_combout\,
	datad => \IMPLEMENT|VGA|LessThan4~1_combout\,
	combout => \IMPLEMENT|VGA|v_count_next[5]~6_combout\);

-- Location: FF_X31_Y25_N25
\IMPLEMENT|VGA|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \IMPLEMENT|VGA|v_count_next[5]~6_combout\,
	clrn => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	sload => VCC,
	ena => \IMPLEMENT|VGA|LessThan5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IMPLEMENT|VGA|v_count\(5));

-- Location: LCCOMB_X34_Y25_N18
\IMPLEMENT|VGA|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add1~12_combout\ = (\IMPLEMENT|VGA|v_count\(6) & (\IMPLEMENT|VGA|Add1~11\ $ (GND))) # (!\IMPLEMENT|VGA|v_count\(6) & (!\IMPLEMENT|VGA|Add1~11\ & VCC))
-- \IMPLEMENT|VGA|Add1~13\ = CARRY((\IMPLEMENT|VGA|v_count\(6) & !\IMPLEMENT|VGA|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_count\(6),
	datad => VCC,
	cin => \IMPLEMENT|VGA|Add1~11\,
	combout => \IMPLEMENT|VGA|Add1~12_combout\,
	cout => \IMPLEMENT|VGA|Add1~13\);

-- Location: LCCOMB_X30_Y25_N26
\IMPLEMENT|VGA|v_count_next[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|v_count_next[6]~4_combout\ = (\IMPLEMENT|VGA|Add1~12_combout\ & ((\IMPLEMENT|VGA|LessThan4~1_combout\) # (!\IMPLEMENT|VGA|LessThan5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|LessThan5~2_combout\,
	datac => \IMPLEMENT|VGA|Add1~12_combout\,
	datad => \IMPLEMENT|VGA|LessThan4~1_combout\,
	combout => \IMPLEMENT|VGA|v_count_next[6]~4_combout\);

-- Location: FF_X31_Y25_N17
\IMPLEMENT|VGA|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \IMPLEMENT|VGA|v_count_next[6]~4_combout\,
	clrn => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	sload => VCC,
	ena => \IMPLEMENT|VGA|LessThan5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IMPLEMENT|VGA|v_count\(6));

-- Location: LCCOMB_X34_Y25_N20
\IMPLEMENT|VGA|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add1~14_combout\ = (\IMPLEMENT|VGA|v_count\(7) & (!\IMPLEMENT|VGA|Add1~13\)) # (!\IMPLEMENT|VGA|v_count\(7) & ((\IMPLEMENT|VGA|Add1~13\) # (GND)))
-- \IMPLEMENT|VGA|Add1~15\ = CARRY((!\IMPLEMENT|VGA|Add1~13\) # (!\IMPLEMENT|VGA|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_count\(7),
	datad => VCC,
	cin => \IMPLEMENT|VGA|Add1~13\,
	combout => \IMPLEMENT|VGA|Add1~14_combout\,
	cout => \IMPLEMENT|VGA|Add1~15\);

-- Location: LCCOMB_X30_Y25_N12
\IMPLEMENT|VGA|v_count_next[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|v_count_next[7]~3_combout\ = (\IMPLEMENT|VGA|Add1~14_combout\ & ((\IMPLEMENT|VGA|LessThan4~1_combout\) # (!\IMPLEMENT|VGA|LessThan5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|LessThan5~2_combout\,
	datac => \IMPLEMENT|VGA|Add1~14_combout\,
	datad => \IMPLEMENT|VGA|LessThan4~1_combout\,
	combout => \IMPLEMENT|VGA|v_count_next[7]~3_combout\);

-- Location: FF_X31_Y25_N19
\IMPLEMENT|VGA|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \IMPLEMENT|VGA|v_count_next[7]~3_combout\,
	clrn => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	sload => VCC,
	ena => \IMPLEMENT|VGA|LessThan5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IMPLEMENT|VGA|v_count\(7));

-- Location: LCCOMB_X34_Y25_N22
\IMPLEMENT|VGA|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add1~16_combout\ = (\IMPLEMENT|VGA|v_count\(8) & (\IMPLEMENT|VGA|Add1~15\ $ (GND))) # (!\IMPLEMENT|VGA|v_count\(8) & (!\IMPLEMENT|VGA|Add1~15\ & VCC))
-- \IMPLEMENT|VGA|Add1~17\ = CARRY((\IMPLEMENT|VGA|v_count\(8) & !\IMPLEMENT|VGA|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|v_count\(8),
	datad => VCC,
	cin => \IMPLEMENT|VGA|Add1~15\,
	combout => \IMPLEMENT|VGA|Add1~16_combout\,
	cout => \IMPLEMENT|VGA|Add1~17\);

-- Location: LCCOMB_X30_Y25_N22
\IMPLEMENT|VGA|v_count[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|v_count[8]~1_combout\ = (\IMPLEMENT|VGA|LessThan5~2_combout\ & (\IMPLEMENT|VGA|Add1~16_combout\ & ((\IMPLEMENT|VGA|LessThan4~1_combout\)))) # (!\IMPLEMENT|VGA|LessThan5~2_combout\ & (((\IMPLEMENT|VGA|v_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|LessThan5~2_combout\,
	datab => \IMPLEMENT|VGA|Add1~16_combout\,
	datac => \IMPLEMENT|VGA|v_count\(8),
	datad => \IMPLEMENT|VGA|LessThan4~1_combout\,
	combout => \IMPLEMENT|VGA|v_count[8]~1_combout\);

-- Location: FF_X30_Y25_N23
\IMPLEMENT|VGA|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IMPLEMENT|VGA|v_count[8]~1_combout\,
	clrn => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IMPLEMENT|VGA|v_count\(8));

-- Location: LCCOMB_X34_Y25_N24
\IMPLEMENT|VGA|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add1~18_combout\ = \IMPLEMENT|VGA|Add1~17\ $ (\IMPLEMENT|VGA|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \IMPLEMENT|VGA|v_count\(9),
	cin => \IMPLEMENT|VGA|Add1~17\,
	combout => \IMPLEMENT|VGA|Add1~18_combout\);

-- Location: LCCOMB_X30_Y25_N8
\IMPLEMENT|VGA|v_count[9]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|v_count[9]~0_combout\ = (\IMPLEMENT|VGA|LessThan5~2_combout\ & (\IMPLEMENT|VGA|Add1~18_combout\ & (\IMPLEMENT|VGA|LessThan4~1_combout\))) # (!\IMPLEMENT|VGA|LessThan5~2_combout\ & (((\IMPLEMENT|VGA|v_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add1~18_combout\,
	datab => \IMPLEMENT|VGA|LessThan4~1_combout\,
	datac => \IMPLEMENT|VGA|v_count\(9),
	datad => \IMPLEMENT|VGA|LessThan5~2_combout\,
	combout => \IMPLEMENT|VGA|v_count[9]~0_combout\);

-- Location: FF_X30_Y25_N9
\IMPLEMENT|VGA|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IMPLEMENT|VGA|v_count[9]~0_combout\,
	clrn => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IMPLEMENT|VGA|v_count\(9));

-- Location: LCCOMB_X30_Y25_N24
\IMPLEMENT|VGA|v_display_on~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|v_display_on~0_combout\ = (!\IMPLEMENT|VGA|v_count\(7) & (!\IMPLEMENT|VGA|v_count\(8) & !\IMPLEMENT|VGA|v_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|v_count\(7),
	datac => \IMPLEMENT|VGA|v_count\(8),
	datad => \IMPLEMENT|VGA|v_count\(6),
	combout => \IMPLEMENT|VGA|v_display_on~0_combout\);

-- Location: LCCOMB_X39_Y25_N12
\IMPLEMENT|VGA|LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|LessThan4~0_combout\ = (!\IMPLEMENT|VGA|v_count\(4) & (\IMPLEMENT|VGA|v_display_on~0_combout\ & !\IMPLEMENT|VGA|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_count\(4),
	datac => \IMPLEMENT|VGA|v_display_on~0_combout\,
	datad => \IMPLEMENT|VGA|v_count\(5),
	combout => \IMPLEMENT|VGA|LessThan4~0_combout\);

-- Location: LCCOMB_X39_Y25_N30
\IMPLEMENT|VGA|LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|LessThan4~1_combout\ = ((\IMPLEMENT|VGA|LessThan4~0_combout\ & ((!\IMPLEMENT|VGA|v_count\(2)) # (!\IMPLEMENT|VGA|v_count\(3))))) # (!\IMPLEMENT|VGA|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_count\(9),
	datab => \IMPLEMENT|VGA|v_count\(3),
	datac => \IMPLEMENT|VGA|v_count\(2),
	datad => \IMPLEMENT|VGA|LessThan4~0_combout\,
	combout => \IMPLEMENT|VGA|LessThan4~1_combout\);

-- Location: LCCOMB_X34_Y25_N6
\IMPLEMENT|VGA|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add1~0_combout\ = \IMPLEMENT|VGA|v_count\(0) $ (VCC)
-- \IMPLEMENT|VGA|Add1~1\ = CARRY(\IMPLEMENT|VGA|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_count\(0),
	datad => VCC,
	combout => \IMPLEMENT|VGA|Add1~0_combout\,
	cout => \IMPLEMENT|VGA|Add1~1\);

-- Location: LCCOMB_X30_Y25_N30
\IMPLEMENT|VGA|v_count_next[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|v_count_next[0]~2_combout\ = (\IMPLEMENT|VGA|Add1~0_combout\ & ((\IMPLEMENT|VGA|LessThan4~1_combout\) # (!\IMPLEMENT|VGA|LessThan5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|LessThan5~2_combout\,
	datab => \IMPLEMENT|VGA|LessThan4~1_combout\,
	datad => \IMPLEMENT|VGA|Add1~0_combout\,
	combout => \IMPLEMENT|VGA|v_count_next[0]~2_combout\);

-- Location: FF_X31_Y25_N5
\IMPLEMENT|VGA|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \IMPLEMENT|VGA|v_count_next[0]~2_combout\,
	clrn => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	sload => VCC,
	ena => \IMPLEMENT|VGA|LessThan5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IMPLEMENT|VGA|v_count\(0));

-- Location: LCCOMB_X34_Y25_N8
\IMPLEMENT|VGA|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add1~2_combout\ = (\IMPLEMENT|VGA|v_count\(1) & (!\IMPLEMENT|VGA|Add1~1\)) # (!\IMPLEMENT|VGA|v_count\(1) & ((\IMPLEMENT|VGA|Add1~1\) # (GND)))
-- \IMPLEMENT|VGA|Add1~3\ = CARRY((!\IMPLEMENT|VGA|Add1~1\) # (!\IMPLEMENT|VGA|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|v_count\(1),
	datad => VCC,
	cin => \IMPLEMENT|VGA|Add1~1\,
	combout => \IMPLEMENT|VGA|Add1~2_combout\,
	cout => \IMPLEMENT|VGA|Add1~3\);

-- Location: LCCOMB_X30_Y25_N6
\IMPLEMENT|VGA|v_count_next[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|v_count_next[1]~0_combout\ = (\IMPLEMENT|VGA|Add1~2_combout\ & ((\IMPLEMENT|VGA|LessThan4~1_combout\) # (!\IMPLEMENT|VGA|LessThan5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|LessThan5~2_combout\,
	datab => \IMPLEMENT|VGA|Add1~2_combout\,
	datad => \IMPLEMENT|VGA|LessThan4~1_combout\,
	combout => \IMPLEMENT|VGA|v_count_next[1]~0_combout\);

-- Location: FF_X31_Y25_N7
\IMPLEMENT|VGA|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \IMPLEMENT|VGA|v_count_next[1]~0_combout\,
	clrn => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	sload => VCC,
	ena => \IMPLEMENT|VGA|LessThan5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IMPLEMENT|VGA|v_count\(1));

-- Location: LCCOMB_X34_Y25_N10
\IMPLEMENT|VGA|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add1~4_combout\ = (\IMPLEMENT|VGA|v_count\(2) & (\IMPLEMENT|VGA|Add1~3\ $ (GND))) # (!\IMPLEMENT|VGA|v_count\(2) & (!\IMPLEMENT|VGA|Add1~3\ & VCC))
-- \IMPLEMENT|VGA|Add1~5\ = CARRY((\IMPLEMENT|VGA|v_count\(2) & !\IMPLEMENT|VGA|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|v_count\(2),
	datad => VCC,
	cin => \IMPLEMENT|VGA|Add1~3\,
	combout => \IMPLEMENT|VGA|Add1~4_combout\,
	cout => \IMPLEMENT|VGA|Add1~5\);

-- Location: LCCOMB_X30_Y25_N16
\IMPLEMENT|VGA|v_count_next[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|v_count_next[2]~1_combout\ = (\IMPLEMENT|VGA|Add1~4_combout\ & ((\IMPLEMENT|VGA|LessThan4~1_combout\) # (!\IMPLEMENT|VGA|LessThan5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|LessThan5~2_combout\,
	datac => \IMPLEMENT|VGA|Add1~4_combout\,
	datad => \IMPLEMENT|VGA|LessThan4~1_combout\,
	combout => \IMPLEMENT|VGA|v_count_next[2]~1_combout\);

-- Location: FF_X31_Y25_N29
\IMPLEMENT|VGA|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \IMPLEMENT|VGA|v_count_next[2]~1_combout\,
	clrn => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	sload => VCC,
	ena => \IMPLEMENT|VGA|LessThan5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IMPLEMENT|VGA|v_count\(2));

-- Location: LCCOMB_X30_Y25_N14
\IMPLEMENT|VGA|v_count_next[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|v_count_next[3]~7_combout\ = (\IMPLEMENT|VGA|Add1~6_combout\ & ((\IMPLEMENT|VGA|LessThan4~1_combout\) # (!\IMPLEMENT|VGA|LessThan5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|LessThan5~2_combout\,
	datac => \IMPLEMENT|VGA|Add1~6_combout\,
	datad => \IMPLEMENT|VGA|LessThan4~1_combout\,
	combout => \IMPLEMENT|VGA|v_count_next[3]~7_combout\);

-- Location: FF_X31_Y25_N11
\IMPLEMENT|VGA|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \IMPLEMENT|VGA|v_count_next[3]~7_combout\,
	clrn => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	sload => VCC,
	ena => \IMPLEMENT|VGA|LessThan5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IMPLEMENT|VGA|v_count\(3));

-- Location: LCCOMB_X34_Y25_N4
\IMPLEMENT|VGA|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|process_0~4_combout\ = ((\IMPLEMENT|VGA|v_count\(2) & ((\IMPLEMENT|VGA|v_count\(1)))) # (!\IMPLEMENT|VGA|v_count\(2) & ((!\IMPLEMENT|VGA|v_count\(1)) # (!\IMPLEMENT|VGA|v_count\(0))))) # (!\IMPLEMENT|VGA|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_count\(0),
	datab => \IMPLEMENT|VGA|v_count\(2),
	datac => \IMPLEMENT|VGA|v_count\(1),
	datad => \IMPLEMENT|VGA|v_count\(9),
	combout => \IMPLEMENT|VGA|process_0~4_combout\);

-- Location: LCCOMB_X27_Y21_N8
\IMPLEMENT|VGA|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|process_0~5_combout\ = ((\IMPLEMENT|VGA|process_0~4_combout\) # (!\IMPLEMENT|VGA|LessThan4~0_combout\)) # (!\IMPLEMENT|VGA|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|v_count\(3),
	datac => \IMPLEMENT|VGA|LessThan4~0_combout\,
	datad => \IMPLEMENT|VGA|process_0~4_combout\,
	combout => \IMPLEMENT|VGA|process_0~5_combout\);

-- Location: LCCOMB_X31_Y25_N28
\IMPLEMENT|VGA|v_display_on~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|v_display_on~2_combout\ = (!\IMPLEMENT|VGA|v_count\(3) & (!\IMPLEMENT|VGA|v_count\(0) & (!\IMPLEMENT|VGA|v_count\(2) & !\IMPLEMENT|VGA|v_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_count\(3),
	datab => \IMPLEMENT|VGA|v_count\(0),
	datac => \IMPLEMENT|VGA|v_count\(2),
	datad => \IMPLEMENT|VGA|v_count\(1),
	combout => \IMPLEMENT|VGA|v_display_on~2_combout\);

-- Location: LCCOMB_X31_Y25_N2
\IMPLEMENT|VGA|LessThan9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|LessThan9~0_combout\ = (\IMPLEMENT|VGA|v_count\(5)) # (((\IMPLEMENT|VGA|v_count\(4)) # (!\IMPLEMENT|VGA|v_display_on~0_combout\)) # (!\IMPLEMENT|VGA|v_display_on~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_count\(5),
	datab => \IMPLEMENT|VGA|v_display_on~2_combout\,
	datac => \IMPLEMENT|VGA|v_count\(4),
	datad => \IMPLEMENT|VGA|v_display_on~0_combout\,
	combout => \IMPLEMENT|VGA|LessThan9~0_combout\);

-- Location: LCCOMB_X30_Y25_N18
\IMPLEMENT|VGA|v_display_on~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|v_display_on~1_combout\ = (!\IMPLEMENT|VGA|v_count\(8) & (!\IMPLEMENT|VGA|v_count\(7) & (!\IMPLEMENT|VGA|v_count\(9) & !\IMPLEMENT|VGA|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_count\(8),
	datab => \IMPLEMENT|VGA|v_count\(7),
	datac => \IMPLEMENT|VGA|v_count\(9),
	datad => \IMPLEMENT|VGA|v_count\(6),
	combout => \IMPLEMENT|VGA|v_display_on~1_combout\);

-- Location: LCCOMB_X31_Y25_N24
\IMPLEMENT|VGA|v_display_on~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|v_display_on~3_combout\ = (\IMPLEMENT|VGA|v_display_on~1_combout\ & (((!\IMPLEMENT|VGA|v_count\(4) & \IMPLEMENT|VGA|v_display_on~2_combout\)) # (!\IMPLEMENT|VGA|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_count\(4),
	datab => \IMPLEMENT|VGA|v_display_on~2_combout\,
	datac => \IMPLEMENT|VGA|v_count\(5),
	datad => \IMPLEMENT|VGA|v_display_on~1_combout\,
	combout => \IMPLEMENT|VGA|v_display_on~3_combout\);

-- Location: LCCOMB_X30_Y25_N4
\IMPLEMENT|VGA|v_display_on~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|v_display_on~4_combout\ = (\IMPLEMENT|VGA|v_display_on~3_combout\) # ((\IMPLEMENT|VGA|LessThan9~0_combout\ & \IMPLEMENT|VGA|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|LessThan9~0_combout\,
	datab => \IMPLEMENT|VGA|v_count\(9),
	datac => \IMPLEMENT|VGA|v_display_on~3_combout\,
	combout => \IMPLEMENT|VGA|v_display_on~4_combout\);

-- Location: LCCOMB_X24_Y20_N18
\IMPLEMENT|VGA|h_display_on~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|h_display_on~0_combout\ = (\IMPLEMENT|VGA|h_count\(6)) # ((\IMPLEMENT|VGA|h_count\(5) & \IMPLEMENT|VGA|h_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(6),
	datab => \IMPLEMENT|VGA|h_count\(5),
	datad => \IMPLEMENT|VGA|h_count\(4),
	combout => \IMPLEMENT|VGA|h_display_on~0_combout\);

-- Location: LCCOMB_X24_Y20_N14
\IMPLEMENT|VGA|h_display_on~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|h_display_on~1_combout\ = (\IMPLEMENT|VGA|h_count\(8) & (((\IMPLEMENT|VGA|h_count\(9))))) # (!\IMPLEMENT|VGA|h_count\(8) & ((\IMPLEMENT|VGA|h_count\(7) & (\IMPLEMENT|VGA|h_display_on~0_combout\ & \IMPLEMENT|VGA|h_count\(9))) # 
-- (!\IMPLEMENT|VGA|h_count\(7) & (!\IMPLEMENT|VGA|h_display_on~0_combout\ & !\IMPLEMENT|VGA|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(7),
	datab => \IMPLEMENT|VGA|h_display_on~0_combout\,
	datac => \IMPLEMENT|VGA|h_count\(8),
	datad => \IMPLEMENT|VGA|h_count\(9),
	combout => \IMPLEMENT|VGA|h_display_on~1_combout\);

-- Location: LCCOMB_X30_Y22_N4
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~0_combout\ = (((\IMPLEMENT|VGA|h_count\(0) & !\IMPLEMENT|VGA|h_display_on~1_combout\)))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~1\ = CARRY((\IMPLEMENT|VGA|h_count\(0) & !\IMPLEMENT|VGA|h_display_on~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(0),
	datab => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datad => VCC,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~0_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~1\);

-- Location: LCCOMB_X24_Y20_N0
\IMPLEMENT|VGA|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add2~0_combout\ = \IMPLEMENT|VGA|h_count\(4) $ (VCC)
-- \IMPLEMENT|VGA|Add2~1\ = CARRY(\IMPLEMENT|VGA|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|h_count\(4),
	datad => VCC,
	combout => \IMPLEMENT|VGA|Add2~0_combout\,
	cout => \IMPLEMENT|VGA|Add2~1\);

-- Location: LCCOMB_X24_Y20_N2
\IMPLEMENT|VGA|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add2~2_combout\ = (\IMPLEMENT|VGA|h_count\(5) & (!\IMPLEMENT|VGA|Add2~1\)) # (!\IMPLEMENT|VGA|h_count\(5) & ((\IMPLEMENT|VGA|Add2~1\) # (GND)))
-- \IMPLEMENT|VGA|Add2~3\ = CARRY((!\IMPLEMENT|VGA|Add2~1\) # (!\IMPLEMENT|VGA|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|h_count\(5),
	datad => VCC,
	cin => \IMPLEMENT|VGA|Add2~1\,
	combout => \IMPLEMENT|VGA|Add2~2_combout\,
	cout => \IMPLEMENT|VGA|Add2~3\);

-- Location: LCCOMB_X24_Y20_N4
\IMPLEMENT|VGA|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add2~4_combout\ = (\IMPLEMENT|VGA|h_count\(6) & ((GND) # (!\IMPLEMENT|VGA|Add2~3\))) # (!\IMPLEMENT|VGA|h_count\(6) & (\IMPLEMENT|VGA|Add2~3\ $ (GND)))
-- \IMPLEMENT|VGA|Add2~5\ = CARRY((\IMPLEMENT|VGA|h_count\(6)) # (!\IMPLEMENT|VGA|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|h_count\(6),
	datad => VCC,
	cin => \IMPLEMENT|VGA|Add2~3\,
	combout => \IMPLEMENT|VGA|Add2~4_combout\,
	cout => \IMPLEMENT|VGA|Add2~5\);

-- Location: LCCOMB_X24_Y20_N6
\IMPLEMENT|VGA|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add2~6_combout\ = (\IMPLEMENT|VGA|h_count\(7) & (\IMPLEMENT|VGA|Add2~5\ & VCC)) # (!\IMPLEMENT|VGA|h_count\(7) & (!\IMPLEMENT|VGA|Add2~5\))
-- \IMPLEMENT|VGA|Add2~7\ = CARRY((!\IMPLEMENT|VGA|h_count\(7) & !\IMPLEMENT|VGA|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(7),
	datad => VCC,
	cin => \IMPLEMENT|VGA|Add2~5\,
	combout => \IMPLEMENT|VGA|Add2~6_combout\,
	cout => \IMPLEMENT|VGA|Add2~7\);

-- Location: LCCOMB_X24_Y20_N8
\IMPLEMENT|VGA|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add2~8_combout\ = (\IMPLEMENT|VGA|h_count\(8) & ((GND) # (!\IMPLEMENT|VGA|Add2~7\))) # (!\IMPLEMENT|VGA|h_count\(8) & (\IMPLEMENT|VGA|Add2~7\ $ (GND)))
-- \IMPLEMENT|VGA|Add2~9\ = CARRY((\IMPLEMENT|VGA|h_count\(8)) # (!\IMPLEMENT|VGA|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(8),
	datad => VCC,
	cin => \IMPLEMENT|VGA|Add2~7\,
	combout => \IMPLEMENT|VGA|Add2~8_combout\,
	cout => \IMPLEMENT|VGA|Add2~9\);

-- Location: LCCOMB_X24_Y20_N10
\IMPLEMENT|VGA|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add2~10_combout\ = \IMPLEMENT|VGA|Add2~9\ $ (!\IMPLEMENT|VGA|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \IMPLEMENT|VGA|h_count\(9),
	cin => \IMPLEMENT|VGA|Add2~9\,
	combout => \IMPLEMENT|VGA|Add2~10_combout\);

-- Location: LCCOMB_X24_Y20_N26
\IMPLEMENT|VGA|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add2~12_combout\ = (\IMPLEMENT|VGA|Add2~10_combout\) # (\IMPLEMENT|VGA|h_display_on~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add2~10_combout\,
	datab => \IMPLEMENT|VGA|h_display_on~1_combout\,
	combout => \IMPLEMENT|VGA|Add2~12_combout\);

-- Location: LCCOMB_X24_Y20_N20
\IMPLEMENT|VGA|Add2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add2~13_combout\ = (!\IMPLEMENT|VGA|h_display_on~1_combout\ & \IMPLEMENT|VGA|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datad => \IMPLEMENT|VGA|Add2~8_combout\,
	combout => \IMPLEMENT|VGA|Add2~13_combout\);

-- Location: LCCOMB_X24_Y20_N28
\IMPLEMENT|VGA|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add2~14_combout\ = (\IMPLEMENT|VGA|Add2~6_combout\) # (\IMPLEMENT|VGA|h_display_on~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add2~6_combout\,
	datad => \IMPLEMENT|VGA|h_display_on~1_combout\,
	combout => \IMPLEMENT|VGA|Add2~14_combout\);

-- Location: LCCOMB_X24_Y20_N30
\IMPLEMENT|VGA|Add2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add2~15_combout\ = (\IMPLEMENT|VGA|Add2~4_combout\ & !\IMPLEMENT|VGA|h_display_on~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|Add2~4_combout\,
	datad => \IMPLEMENT|VGA|h_display_on~1_combout\,
	combout => \IMPLEMENT|VGA|Add2~15_combout\);

-- Location: LCCOMB_X24_Y23_N20
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~0_combout\ = \IMPLEMENT|VGA|Add2~15_combout\ $ (VCC)
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~1\ = CARRY(\IMPLEMENT|VGA|Add2~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add2~15_combout\,
	datad => VCC,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~0_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X24_Y23_N22
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~2_combout\ = (\IMPLEMENT|VGA|Add2~14_combout\ & (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~1\ & VCC)) # (!\IMPLEMENT|VGA|Add2~14_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~1\))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~3\ = CARRY((!\IMPLEMENT|VGA|Add2~14_combout\ & !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add2~14_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~1\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~2_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X24_Y23_N24
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~4_combout\ = (\IMPLEMENT|VGA|Add2~13_combout\ & ((GND) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~3\))) # (!\IMPLEMENT|VGA|Add2~13_combout\ & 
-- (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~3\ $ (GND)))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~5\ = CARRY((\IMPLEMENT|VGA|Add2~13_combout\) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|Add2~13_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~3\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~4_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X24_Y23_N26
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~6_combout\ = (\IMPLEMENT|VGA|Add2~12_combout\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~5\)) # (!\IMPLEMENT|VGA|Add2~12_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~5\) # (GND)))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~7\ = CARRY((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~5\) # (!\IMPLEMENT|VGA|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add2~12_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~5\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~6_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X24_Y23_N28
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\ = \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~7\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\);

-- Location: LCCOMB_X25_Y23_N26
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~123_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\ & ((\IMPLEMENT|VGA|Add2~10_combout\) # 
-- (\IMPLEMENT|VGA|h_display_on~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add2~10_combout\,
	datab => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~123_combout\);

-- Location: LCCOMB_X25_Y23_N8
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~74_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~6_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~6_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~74_combout\);

-- Location: LCCOMB_X25_Y23_N30
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~75_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~4_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~4_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~75_combout\);

-- Location: LCCOMB_X25_Y23_N0
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~124_combout\ = (!\IMPLEMENT|VGA|h_display_on~1_combout\ & (\IMPLEMENT|VGA|Add2~8_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datac => \IMPLEMENT|VGA|Add2~8_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~124_combout\);

-- Location: LCCOMB_X24_Y23_N16
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~76_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~2_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~2_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~76_combout\);

-- Location: LCCOMB_X25_Y23_N10
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~125_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\ & ((\IMPLEMENT|VGA|Add2~6_combout\) # 
-- (\IMPLEMENT|VGA|h_display_on~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add2~6_combout\,
	datab => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~125_combout\);

-- Location: LCCOMB_X25_Y23_N12
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~126_combout\ = (!\IMPLEMENT|VGA|h_display_on~1_combout\ & (\IMPLEMENT|VGA|Add2~4_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datac => \IMPLEMENT|VGA|Add2~4_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~126_combout\);

-- Location: LCCOMB_X25_Y23_N4
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~77_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~0_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~0_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~77_combout\);

-- Location: LCCOMB_X24_Y20_N16
\IMPLEMENT|VGA|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add2~16_combout\ = (\IMPLEMENT|VGA|Add2~2_combout\ & !\IMPLEMENT|VGA|h_display_on~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|Add2~2_combout\,
	datad => \IMPLEMENT|VGA|h_display_on~1_combout\,
	combout => \IMPLEMENT|VGA|Add2~16_combout\);

-- Location: LCCOMB_X25_Y23_N14
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~0_combout\ = \IMPLEMENT|VGA|Add2~16_combout\ $ (VCC)
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~1\ = CARRY(\IMPLEMENT|VGA|Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add2~16_combout\,
	datad => VCC,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~0_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X25_Y23_N16
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~2_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~1\ & 
-- (((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~126_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~77_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~1\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~126_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~77_combout\)))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~3\ = CARRY((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~126_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~77_combout\ & !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~126_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~77_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~1\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~2_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X25_Y23_N18
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~4_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~3\ & 
-- ((((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~76_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~125_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~3\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~76_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~125_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~5\ = CARRY((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~76_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~125_combout\) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~76_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~125_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~3\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~4_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X25_Y23_N20
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~6_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~75_combout\ & 
-- (((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~5\)))) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~75_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~124_combout\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~5\)) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~124_combout\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~5\) # (GND)))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~7\ = CARRY(((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~75_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~124_combout\)) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~75_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~124_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~5\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~6_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X25_Y23_N22
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~8_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~7\ & 
-- ((((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~123_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~74_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~7\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~123_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~74_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~9\ = CARRY((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~123_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~74_combout\) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~123_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~74_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~7\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~8_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~9\);

-- Location: LCCOMB_X25_Y23_N24
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\ = !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~9\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\);

-- Location: LCCOMB_X25_Y23_N2
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~127_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~123_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~6_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~6_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~123_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~127_combout\);

-- Location: LCCOMB_X29_Y23_N24
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~78_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~8_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~8_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~78_combout\);

-- Location: LCCOMB_X29_Y23_N26
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~79_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~6_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~6_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~79_combout\);

-- Location: LCCOMB_X25_Y23_N28
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~128_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~124_combout\) # ((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~124_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~4_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~128_combout\);

-- Location: LCCOMB_X24_Y23_N2
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~80_combout\ = (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~4_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~80_combout\);

-- Location: LCCOMB_X24_Y23_N0
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~129_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~125_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~2_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~2_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~125_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~129_combout\);

-- Location: LCCOMB_X29_Y23_N28
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~81_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~2_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~2_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~81_combout\);

-- Location: LCCOMB_X25_Y23_N6
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~130_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~126_combout\) # ((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~126_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_2~0_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~130_combout\);

-- Location: LCCOMB_X29_Y23_N22
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~131_combout\ = (!\IMPLEMENT|VGA|h_display_on~1_combout\ & (\IMPLEMENT|VGA|Add2~2_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datac => \IMPLEMENT|VGA|Add2~2_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~131_combout\);

-- Location: LCCOMB_X29_Y23_N2
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~82_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~0_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~0_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~82_combout\);

-- Location: LCCOMB_X24_Y20_N12
\IMPLEMENT|VGA|Add2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add2~17_combout\ = (!\IMPLEMENT|VGA|h_display_on~1_combout\ & \IMPLEMENT|VGA|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datab => \IMPLEMENT|VGA|Add2~0_combout\,
	combout => \IMPLEMENT|VGA|Add2~17_combout\);

-- Location: LCCOMB_X29_Y23_N8
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~0_combout\ = \IMPLEMENT|VGA|Add2~17_combout\ $ (VCC)
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~1\ = CARRY(\IMPLEMENT|VGA|Add2~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|Add2~17_combout\,
	datad => VCC,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~0_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X29_Y23_N10
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~2_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~1\ & 
-- (((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~131_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~82_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~1\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~131_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~82_combout\)))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~3\ = CARRY((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~131_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~82_combout\ & !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~131_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~82_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~1\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~2_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X29_Y23_N12
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~4_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~3\ & 
-- ((((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~81_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~130_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~3\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~81_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~130_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~5\ = CARRY((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~81_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~130_combout\) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~81_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~130_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~3\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~4_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X29_Y23_N14
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~6_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~80_combout\ & 
-- (((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~5\)))) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~80_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~129_combout\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~5\)) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~129_combout\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~5\) # (GND)))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~7\ = CARRY(((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~80_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~129_combout\)) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~80_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~129_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~5\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~6_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X29_Y23_N16
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~8_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~7\ & 
-- ((((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~79_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~128_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~7\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~79_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~128_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~9\ = CARRY((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~79_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~128_combout\) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~79_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~128_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~7\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~8_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~9\);

-- Location: LCCOMB_X29_Y23_N18
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~10_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~9\ & 
-- (((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~127_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~78_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~9\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~127_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~78_combout\)))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~11\ = CARRY((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~127_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~78_combout\ & !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~127_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~78_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~9\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~10_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~11\);

-- Location: LCCOMB_X29_Y23_N20
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\ = \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~11\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\);

-- Location: LCCOMB_X29_Y23_N4
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~132_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~127_combout\) # ((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~127_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~8_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~132_combout\);

-- Location: LCCOMB_X29_Y20_N0
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~83_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~10_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~10_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~83_combout\);

-- Location: LCCOMB_X29_Y20_N30
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~8_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~8_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\);

-- Location: LCCOMB_X29_Y23_N6
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~133_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~128_combout\) # ((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~128_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~6_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~133_combout\);

-- Location: LCCOMB_X26_Y23_N28
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~134_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~129_combout\) # ((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~129_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~4_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~134_combout\);

-- Location: LCCOMB_X29_Y21_N20
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~85_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~6_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~6_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~85_combout\);

-- Location: LCCOMB_X29_Y20_N8
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~86_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~4_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~4_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~86_combout\);

-- Location: LCCOMB_X29_Y23_N0
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~135_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~130_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~2_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~2_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~130_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~135_combout\);

-- Location: LCCOMB_X29_Y23_N30
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~136_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~131_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~0_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~0_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~131_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~136_combout\);

-- Location: LCCOMB_X29_Y19_N0
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~2_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~2_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\);

-- Location: LCCOMB_X30_Y20_N20
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~88_combout\ = (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~0_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~88_combout\);

-- Location: LCCOMB_X27_Y19_N22
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~137_combout\ = (\IMPLEMENT|VGA|Add2~0_combout\ & (!\IMPLEMENT|VGA|h_display_on~1_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add2~0_combout\,
	datab => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~137_combout\);

-- Location: LCCOMB_X29_Y20_N12
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~0_combout\ = (((!\IMPLEMENT|VGA|h_display_on~1_combout\ & \IMPLEMENT|VGA|h_count\(3))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~1\ = CARRY((!\IMPLEMENT|VGA|h_display_on~1_combout\ & \IMPLEMENT|VGA|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datab => \IMPLEMENT|VGA|h_count\(3),
	datad => VCC,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~0_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X29_Y20_N14
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~2_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~1\ & 
-- (((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~88_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~137_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~1\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~88_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~137_combout\)))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~3\ = CARRY((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~88_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~137_combout\ & !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~88_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~137_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~1\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~2_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X29_Y20_N16
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~4_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~3\ & 
-- ((((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~136_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~3\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~136_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~5\ = CARRY((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~136_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~136_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~3\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~4_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X29_Y20_N18
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~6_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~86_combout\ & 
-- (((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~5\)))) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~86_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~135_combout\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~5\)) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~135_combout\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~5\) # (GND)))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~7\ = CARRY(((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~86_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~135_combout\)) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~86_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~135_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~5\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~6_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X29_Y20_N20
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~8_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~7\ & 
-- ((((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~134_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~85_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~7\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~134_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~85_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~9\ = CARRY((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~134_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~85_combout\) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~134_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~85_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~7\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~8_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~9\);

-- Location: LCCOMB_X29_Y20_N22
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~10_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~9\ & 
-- (((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~133_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~9\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~133_combout\)))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~11\ = CARRY((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~133_combout\ & !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~133_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~9\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~10_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~11\);

-- Location: LCCOMB_X29_Y20_N24
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~12_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~11\ & 
-- ((((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~132_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~83_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~11\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~132_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~83_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~13\ = CARRY((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~132_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~83_combout\) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~132_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~83_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~11\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~12_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~13\);

-- Location: LCCOMB_X29_Y20_N26
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\ = !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~13\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\);

-- Location: LCCOMB_X29_Y20_N28
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~138_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~132_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~10_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~132_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~10_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~138_combout\);

-- Location: LCCOMB_X29_Y20_N10
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~89_combout\ = (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~12_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~89_combout\);

-- Location: LCCOMB_X29_Y20_N6
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~139_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~133_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~8_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~8_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~133_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~139_combout\);

-- Location: LCCOMB_X27_Y20_N28
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~90_combout\ = (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~90_combout\);

-- Location: LCCOMB_X30_Y20_N26
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~91_combout\ = (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~8_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~91_combout\);

-- Location: LCCOMB_X29_Y20_N4
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~140_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~134_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~6_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~134_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~6_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~140_combout\);

-- Location: LCCOMB_X29_Y20_N2
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~141_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~135_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~4_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~4_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~135_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~141_combout\);

-- Location: LCCOMB_X27_Y20_N2
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~92_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~6_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~6_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~92_combout\);

-- Location: LCCOMB_X29_Y19_N14
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~142_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~136_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~2_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~2_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~136_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~142_combout\);

-- Location: LCCOMB_X27_Y20_N4
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~93_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~4_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~4_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~93_combout\);

-- Location: LCCOMB_X30_Y20_N28
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~94_combout\ = (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~2_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~94_combout\);

-- Location: LCCOMB_X27_Y19_N24
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~143_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~137_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~0_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~0_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~137_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~143_combout\);

-- Location: LCCOMB_X27_Y19_N4
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~95_combout\ = (\IMPLEMENT|VGA|h_count\(3) & (!\IMPLEMENT|VGA|h_display_on~1_combout\ & \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(3),
	datab => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~95_combout\);

-- Location: LCCOMB_X27_Y19_N2
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~96_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~0_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~0_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~96_combout\);

-- Location: LCCOMB_X27_Y20_N8
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~0_combout\ = (((!\IMPLEMENT|VGA|h_display_on~1_combout\ & \IMPLEMENT|VGA|h_count\(2))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~1\ = CARRY((!\IMPLEMENT|VGA|h_display_on~1_combout\ & \IMPLEMENT|VGA|h_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datab => \IMPLEMENT|VGA|h_count\(2),
	datad => VCC,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~1\);

-- Location: LCCOMB_X27_Y20_N10
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~2_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~1\ & 
-- (((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~95_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~96_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~1\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~95_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~96_combout\)))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~3\ = CARRY((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~95_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~96_combout\ & !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~95_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~96_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~1\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X27_Y20_N12
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~4_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~3\ & 
-- ((((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~94_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~143_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~3\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~94_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~143_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~5\ = CARRY((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~94_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~143_combout\) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~94_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~143_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~3\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~4_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X27_Y20_N14
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~6_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~142_combout\ & 
-- (((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~5\)))) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~142_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~93_combout\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~5\)) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~93_combout\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~5\) # (GND)))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~7\ = CARRY(((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~142_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~93_combout\)) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~142_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~93_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~5\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~6_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X27_Y20_N16
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~8_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~7\ & 
-- ((((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~141_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~92_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~7\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~141_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~92_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~9\ = CARRY((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~141_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~92_combout\) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~141_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~92_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~7\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~8_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~9\);

-- Location: LCCOMB_X27_Y20_N18
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~10_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~9\ & 
-- (((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~91_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~140_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~9\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~91_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~140_combout\)))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~11\ = CARRY((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~91_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~140_combout\ & !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~91_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~140_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~9\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~10_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~11\);

-- Location: LCCOMB_X27_Y20_N20
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~12_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~11\ & 
-- ((((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~139_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~90_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~11\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~139_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~90_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~13\ = CARRY((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~139_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~90_combout\) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~139_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~90_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~11\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~13\);

-- Location: LCCOMB_X27_Y20_N22
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~14_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~13\ & 
-- (((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~138_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~89_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~13\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~138_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~89_combout\)))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~15\ = CARRY((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~138_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~89_combout\ & !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~138_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~89_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~13\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~14_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~15\);

-- Location: LCCOMB_X27_Y20_N24
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\ = \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~15\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\);

-- Location: LCCOMB_X30_Y20_N4
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~144_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~138_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~12_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~12_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~138_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~144_combout\);

-- Location: LCCOMB_X30_Y20_N22
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~97_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~14_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~14_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~97_combout\);

-- Location: LCCOMB_X30_Y20_N2
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~145_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~139_combout\) # ((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~10_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~139_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~145_combout\);

-- Location: LCCOMB_X30_Y20_N0
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~98_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~12_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~98_combout\);

-- Location: LCCOMB_X30_Y20_N10
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~99_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~10_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~10_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~99_combout\);

-- Location: LCCOMB_X30_Y20_N16
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~146_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~140_combout\) # ((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~8_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~140_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~146_combout\);

-- Location: LCCOMB_X27_Y20_N6
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~147_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~141_combout\) # ((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~141_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~6_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~147_combout\);

-- Location: LCCOMB_X27_Y20_N30
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~100_combout\ = (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~8_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~100_combout\);

-- Location: LCCOMB_X27_Y20_N26
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~101_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~6_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~6_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~101_combout\);

-- Location: LCCOMB_X27_Y19_N6
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~148_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~142_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~4_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~4_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~142_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~148_combout\);

-- Location: LCCOMB_X27_Y19_N20
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~102_combout\ = (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~4_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~102_combout\);

-- Location: LCCOMB_X27_Y19_N12
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~149_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~143_combout\) # ((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~143_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~2_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~149_combout\);

-- Location: LCCOMB_X27_Y19_N10
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~150_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~95_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~0_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~0_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~95_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~150_combout\);

-- Location: LCCOMB_X31_Y20_N16
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~103_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~2_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~103_combout\);

-- Location: LCCOMB_X30_Y20_N18
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~105_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~0_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~105_combout\);

-- Location: LCCOMB_X30_Y20_N24
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~104_combout\ = (\IMPLEMENT|VGA|h_count\(2) & (!\IMPLEMENT|VGA|h_display_on~1_combout\ & \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(2),
	datac => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~104_combout\);

-- Location: LCCOMB_X30_Y23_N0
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~0_combout\ = (((\IMPLEMENT|VGA|h_count\(1) & !\IMPLEMENT|VGA|h_display_on~1_combout\)))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~1\ = CARRY((\IMPLEMENT|VGA|h_count\(1) & !\IMPLEMENT|VGA|h_display_on~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(1),
	datab => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datad => VCC,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~0_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~1\);

-- Location: LCCOMB_X30_Y23_N2
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~2_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~1\ & 
-- (((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~105_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~104_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~1\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~105_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~104_combout\)))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~3\ = CARRY((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~105_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~104_combout\ & !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~105_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~104_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~1\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~2_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X30_Y23_N4
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~4_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~3\ & 
-- ((((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~150_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~103_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~3\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~150_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~103_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~5\ = CARRY((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~150_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~103_combout\) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~150_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~103_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~3\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~4_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X30_Y23_N6
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~6_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~102_combout\ & 
-- (((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~5\)))) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~102_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~149_combout\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~5\)) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~149_combout\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~5\) # (GND)))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~7\ = CARRY(((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~102_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~149_combout\)) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~102_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~149_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~5\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~6_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~7\);

-- Location: LCCOMB_X30_Y23_N8
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~8_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~7\ & 
-- ((((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~101_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~148_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~7\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~101_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~148_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~9\ = CARRY((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~101_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~148_combout\) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~101_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~148_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~7\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~8_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~9\);

-- Location: LCCOMB_X30_Y23_N10
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~10_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~9\ & 
-- (((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~147_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~100_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~9\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~147_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~100_combout\)))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~11\ = CARRY((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~147_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~100_combout\ & !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~147_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~100_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~9\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~10_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~11\);

-- Location: LCCOMB_X30_Y23_N12
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~12_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~11\ & 
-- ((((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~99_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~146_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~11\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~99_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~146_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~13\ = CARRY((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~99_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~146_combout\) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~99_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~146_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~11\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~12_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~13\);

-- Location: LCCOMB_X30_Y23_N14
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~14_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~13\ & 
-- (((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~145_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~98_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~13\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~145_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~98_combout\)))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~15\ = CARRY((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~145_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~98_combout\ & !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~145_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~98_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~13\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~15\);

-- Location: LCCOMB_X30_Y23_N16
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~16_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~15\ & 
-- ((((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~144_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~97_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~15\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~144_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~97_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~17\ = CARRY((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~144_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~97_combout\) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~144_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~97_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~15\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~16_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~17\);

-- Location: LCCOMB_X30_Y23_N18
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\ = !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~17\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\);

-- Location: LCCOMB_X30_Y20_N6
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~151_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~144_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~14_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~14_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~144_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~151_combout\);

-- Location: LCCOMB_X30_Y23_N24
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~106_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~16_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~16_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~106_combout\);

-- Location: LCCOMB_X30_Y20_N8
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~152_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~145_combout\) # ((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~145_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~152_combout\);

-- Location: LCCOMB_X30_Y23_N28
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~108_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~14_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~108_combout\);

-- Location: LCCOMB_X31_Y23_N0
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~109_combout\ = (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~12_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~109_combout\);

-- Location: LCCOMB_X30_Y20_N30
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~153_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~146_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~10_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~10_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~146_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~153_combout\);

-- Location: LCCOMB_X30_Y23_N22
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~110_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~10_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~10_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~110_combout\);

-- Location: LCCOMB_X31_Y20_N10
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~154_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~147_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~8_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~8_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~147_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~154_combout\);

-- Location: LCCOMB_X30_Y23_N20
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~111_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~8_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~8_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~111_combout\);

-- Location: LCCOMB_X27_Y19_N16
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~155\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~155_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~148_combout\) # ((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~148_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~6_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~155_combout\);

-- Location: LCCOMB_X29_Y22_N16
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~112_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~6_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~6_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~112_combout\);

-- Location: LCCOMB_X27_Y19_N26
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~156_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~149_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~4_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~149_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~4_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~156_combout\);

-- Location: LCCOMB_X30_Y19_N8
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~157\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~157_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~150_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~2_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~150_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~157_combout\);

-- Location: LCCOMB_X31_Y22_N12
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~113_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~4_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~4_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~113_combout\);

-- Location: LCCOMB_X31_Y22_N30
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~114_combout\ = (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~2_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~114_combout\);

-- Location: LCCOMB_X30_Y20_N12
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~158_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~104_combout\) # ((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~104_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~158_combout\);

-- Location: LCCOMB_X31_Y22_N2
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~116_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~0_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~0_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~116_combout\);

-- Location: LCCOMB_X31_Y22_N16
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~115_combout\ = (\IMPLEMENT|VGA|h_count\(1) & (!\IMPLEMENT|VGA|h_display_on~1_combout\ & \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|h_count\(1),
	datac => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~115_combout\);

-- Location: LCCOMB_X30_Y22_N6
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~2_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~1\ & 
-- (((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~116_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~115_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~1\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~116_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~115_combout\)))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~3\ = CARRY((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~116_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~115_combout\ & !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~116_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~115_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~1\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~2_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X30_Y22_N8
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~4_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~3\ & 
-- ((((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~114_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~158_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~3\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~114_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~158_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~5\ = CARRY((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~114_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~158_combout\) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~114_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~158_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~3\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~4_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~5\);

-- Location: LCCOMB_X30_Y22_N10
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~6_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~157_combout\ & 
-- (((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~5\)))) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~157_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~113_combout\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~5\)) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~113_combout\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~5\) # (GND)))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~7\ = CARRY(((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~157_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~113_combout\)) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~157_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~113_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~5\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~6_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~7\);

-- Location: LCCOMB_X30_Y22_N12
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~8_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~7\ & 
-- ((((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~112_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~156_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~7\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~112_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~156_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~9\ = CARRY((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~112_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~156_combout\) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~112_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~156_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~7\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~8_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~9\);

-- Location: LCCOMB_X30_Y22_N14
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~10_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~9\ & 
-- (((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~111_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~155_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~9\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~111_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~155_combout\)))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~11\ = CARRY((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~111_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~155_combout\ & !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~111_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~155_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~9\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~10_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~11\);

-- Location: LCCOMB_X30_Y22_N16
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~12_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~11\ & 
-- ((((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~110_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~154_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~11\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~110_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~154_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~13\ = CARRY((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~110_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~154_combout\) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~110_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~154_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~11\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~12_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~13\);

-- Location: LCCOMB_X30_Y22_N18
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~14_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~13\ & 
-- (((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~109_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~153_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~13\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~109_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~153_combout\)))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~15\ = CARRY((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~109_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~153_combout\ & !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~109_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~153_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~13\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~14_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~15\);

-- Location: LCCOMB_X30_Y22_N20
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~16_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~15\ & 
-- ((((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~152_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~108_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~15\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~152_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~108_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~17\ = CARRY((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~152_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~108_combout\) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~152_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~108_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~15\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~17\);

-- Location: LCCOMB_X30_Y22_N22
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~18_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~17\ & 
-- (((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~151_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~106_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~17\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~151_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~106_combout\)))
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~19\ = CARRY((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~151_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~106_combout\ & !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~151_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~106_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~17\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~18_combout\,
	cout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~19\);

-- Location: LCCOMB_X30_Y22_N24
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\ = \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~19\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\);

-- Location: LCCOMB_X31_Y22_N10
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[90]~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[90]~119_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\ & (\IMPLEMENT|VGA|h_count\(0) & 
-- (!\IMPLEMENT|VGA|h_display_on~1_combout\))) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\ & (((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(0),
	datab => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~0_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[90]~119_combout\);

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

-- Location: LCCOMB_X31_Y25_N4
\IMPLEMENT|VGA|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add3~0_combout\ = \IMPLEMENT|VGA|v_count\(0) $ (VCC)
-- \IMPLEMENT|VGA|Add3~1\ = CARRY(\IMPLEMENT|VGA|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|v_count\(0),
	datad => VCC,
	combout => \IMPLEMENT|VGA|Add3~0_combout\,
	cout => \IMPLEMENT|VGA|Add3~1\);

-- Location: LCCOMB_X30_Y25_N28
\IMPLEMENT|VGA|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add3~2_combout\ = (\IMPLEMENT|VGA|Add3~0_combout\ & (!\IMPLEMENT|VGA|v_display_on~3_combout\ & ((!\IMPLEMENT|VGA|LessThan9~0_combout\) # (!\IMPLEMENT|VGA|v_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~0_combout\,
	datab => \IMPLEMENT|VGA|v_display_on~3_combout\,
	datac => \IMPLEMENT|VGA|v_count\(9),
	datad => \IMPLEMENT|VGA|LessThan9~0_combout\,
	combout => \IMPLEMENT|VGA|Add3~2_combout\);

-- Location: LCCOMB_X34_Y22_N14
\IMPLEMENT|COMPANION|LINE_SELECT|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add0~0_combout\ = \IMPLEMENT|VGA|Add3~2_combout\ $ (VCC)
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add0~1\ = CARRY(\IMPLEMENT|VGA|Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|Add3~2_combout\,
	datad => VCC,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~0_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~1\);

-- Location: LCCOMB_X31_Y25_N6
\IMPLEMENT|VGA|Add3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add3~3_combout\ = (\IMPLEMENT|VGA|v_count\(1) & (\IMPLEMENT|VGA|Add3~1\ & VCC)) # (!\IMPLEMENT|VGA|v_count\(1) & (!\IMPLEMENT|VGA|Add3~1\))
-- \IMPLEMENT|VGA|Add3~4\ = CARRY((!\IMPLEMENT|VGA|v_count\(1) & !\IMPLEMENT|VGA|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_count\(1),
	datad => VCC,
	cin => \IMPLEMENT|VGA|Add3~1\,
	combout => \IMPLEMENT|VGA|Add3~3_combout\,
	cout => \IMPLEMENT|VGA|Add3~4\);

-- Location: LCCOMB_X31_Y25_N8
\IMPLEMENT|VGA|Add3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add3~5_combout\ = (\IMPLEMENT|VGA|v_count\(2) & ((GND) # (!\IMPLEMENT|VGA|Add3~4\))) # (!\IMPLEMENT|VGA|v_count\(2) & (\IMPLEMENT|VGA|Add3~4\ $ (GND)))
-- \IMPLEMENT|VGA|Add3~6\ = CARRY((\IMPLEMENT|VGA|v_count\(2)) # (!\IMPLEMENT|VGA|Add3~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_count\(2),
	datad => VCC,
	cin => \IMPLEMENT|VGA|Add3~4\,
	combout => \IMPLEMENT|VGA|Add3~5_combout\,
	cout => \IMPLEMENT|VGA|Add3~6\);

-- Location: LCCOMB_X31_Y25_N10
\IMPLEMENT|VGA|Add3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add3~7_combout\ = (\IMPLEMENT|VGA|v_count\(3) & (\IMPLEMENT|VGA|Add3~6\ & VCC)) # (!\IMPLEMENT|VGA|v_count\(3) & (!\IMPLEMENT|VGA|Add3~6\))
-- \IMPLEMENT|VGA|Add3~8\ = CARRY((!\IMPLEMENT|VGA|v_count\(3) & !\IMPLEMENT|VGA|Add3~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_count\(3),
	datad => VCC,
	cin => \IMPLEMENT|VGA|Add3~6\,
	combout => \IMPLEMENT|VGA|Add3~7_combout\,
	cout => \IMPLEMENT|VGA|Add3~8\);

-- Location: LCCOMB_X31_Y25_N12
\IMPLEMENT|VGA|Add3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add3~9_combout\ = (\IMPLEMENT|VGA|v_count\(4) & ((GND) # (!\IMPLEMENT|VGA|Add3~8\))) # (!\IMPLEMENT|VGA|v_count\(4) & (\IMPLEMENT|VGA|Add3~8\ $ (GND)))
-- \IMPLEMENT|VGA|Add3~10\ = CARRY((\IMPLEMENT|VGA|v_count\(4)) # (!\IMPLEMENT|VGA|Add3~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|v_count\(4),
	datad => VCC,
	cin => \IMPLEMENT|VGA|Add3~8\,
	combout => \IMPLEMENT|VGA|Add3~9_combout\,
	cout => \IMPLEMENT|VGA|Add3~10\);

-- Location: LCCOMB_X31_Y25_N14
\IMPLEMENT|VGA|Add3~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add3~11_combout\ = (\IMPLEMENT|VGA|v_count\(5) & (!\IMPLEMENT|VGA|Add3~10\)) # (!\IMPLEMENT|VGA|v_count\(5) & ((\IMPLEMENT|VGA|Add3~10\) # (GND)))
-- \IMPLEMENT|VGA|Add3~12\ = CARRY((!\IMPLEMENT|VGA|Add3~10\) # (!\IMPLEMENT|VGA|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_count\(5),
	datad => VCC,
	cin => \IMPLEMENT|VGA|Add3~10\,
	combout => \IMPLEMENT|VGA|Add3~11_combout\,
	cout => \IMPLEMENT|VGA|Add3~12\);

-- Location: LCCOMB_X31_Y25_N16
\IMPLEMENT|VGA|Add3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add3~13_combout\ = (\IMPLEMENT|VGA|v_count\(6) & ((GND) # (!\IMPLEMENT|VGA|Add3~12\))) # (!\IMPLEMENT|VGA|v_count\(6) & (\IMPLEMENT|VGA|Add3~12\ $ (GND)))
-- \IMPLEMENT|VGA|Add3~14\ = CARRY((\IMPLEMENT|VGA|v_count\(6)) # (!\IMPLEMENT|VGA|Add3~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|v_count\(6),
	datad => VCC,
	cin => \IMPLEMENT|VGA|Add3~12\,
	combout => \IMPLEMENT|VGA|Add3~13_combout\,
	cout => \IMPLEMENT|VGA|Add3~14\);

-- Location: LCCOMB_X31_Y25_N18
\IMPLEMENT|VGA|Add3~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add3~15_combout\ = (\IMPLEMENT|VGA|v_count\(7) & (\IMPLEMENT|VGA|Add3~14\ & VCC)) # (!\IMPLEMENT|VGA|v_count\(7) & (!\IMPLEMENT|VGA|Add3~14\))
-- \IMPLEMENT|VGA|Add3~16\ = CARRY((!\IMPLEMENT|VGA|v_count\(7) & !\IMPLEMENT|VGA|Add3~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_count\(7),
	datad => VCC,
	cin => \IMPLEMENT|VGA|Add3~14\,
	combout => \IMPLEMENT|VGA|Add3~15_combout\,
	cout => \IMPLEMENT|VGA|Add3~16\);

-- Location: LCCOMB_X31_Y25_N20
\IMPLEMENT|VGA|Add3~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add3~17_combout\ = (\IMPLEMENT|VGA|v_count\(8) & ((GND) # (!\IMPLEMENT|VGA|Add3~16\))) # (!\IMPLEMENT|VGA|v_count\(8) & (\IMPLEMENT|VGA|Add3~16\ $ (GND)))
-- \IMPLEMENT|VGA|Add3~18\ = CARRY((\IMPLEMENT|VGA|v_count\(8)) # (!\IMPLEMENT|VGA|Add3~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|v_count\(8),
	datad => VCC,
	cin => \IMPLEMENT|VGA|Add3~16\,
	combout => \IMPLEMENT|VGA|Add3~17_combout\,
	cout => \IMPLEMENT|VGA|Add3~18\);

-- Location: LCCOMB_X31_Y25_N22
\IMPLEMENT|VGA|Add3~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add3~19_combout\ = \IMPLEMENT|VGA|Add3~18\ $ (!\IMPLEMENT|VGA|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \IMPLEMENT|VGA|v_count\(9),
	cin => \IMPLEMENT|VGA|Add3~18\,
	combout => \IMPLEMENT|VGA|Add3~19_combout\);

-- Location: LCCOMB_X31_Y25_N30
\IMPLEMENT|VGA|Add3~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add3~21_combout\ = (\IMPLEMENT|VGA|Add3~19_combout\ & (!\IMPLEMENT|VGA|v_display_on~3_combout\ & ((!\IMPLEMENT|VGA|LessThan9~0_combout\) # (!\IMPLEMENT|VGA|v_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_count\(9),
	datab => \IMPLEMENT|VGA|LessThan9~0_combout\,
	datac => \IMPLEMENT|VGA|Add3~19_combout\,
	datad => \IMPLEMENT|VGA|v_display_on~3_combout\,
	combout => \IMPLEMENT|VGA|Add3~21_combout\);

-- Location: LCCOMB_X31_Y25_N0
\IMPLEMENT|VGA|Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add3~22_combout\ = (\IMPLEMENT|VGA|v_display_on~3_combout\) # ((\IMPLEMENT|VGA|Add3~17_combout\) # ((\IMPLEMENT|VGA|v_count\(9) & \IMPLEMENT|VGA|LessThan9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_count\(9),
	datab => \IMPLEMENT|VGA|v_display_on~3_combout\,
	datac => \IMPLEMENT|VGA|LessThan9~0_combout\,
	datad => \IMPLEMENT|VGA|Add3~17_combout\,
	combout => \IMPLEMENT|VGA|Add3~22_combout\);

-- Location: LCCOMB_X31_Y25_N26
\IMPLEMENT|VGA|Add3~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|Add3~23_combout\ = (\IMPLEMENT|VGA|v_display_on~3_combout\) # ((\IMPLEMENT|VGA|Add3~15_combout\) # ((\IMPLEMENT|VGA|v_count\(9) & \IMPLEMENT|VGA|LessThan9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_count\(9),
	datab => \IMPLEMENT|VGA|v_display_on~3_combout\,
	datac => \IMPLEMENT|VGA|LessThan9~0_combout\,
	datad => \IMPLEMENT|VGA|Add3~15_combout\,
	combout => \IMPLEMENT|VGA|Add3~23_combout\);

-- Location: LCCOMB_X36_Y25_N20
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \IMPLEMENT|VGA|Add3~23_combout\ $ (VCC)
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\IMPLEMENT|VGA|Add3~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~23_combout\,
	datad => VCC,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X36_Y25_N22
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\IMPLEMENT|VGA|Add3~22_combout\ & (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\IMPLEMENT|VGA|Add3~22_combout\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\IMPLEMENT|VGA|Add3~22_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|Add3~22_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X36_Y25_N24
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\IMPLEMENT|VGA|Add3~21_combout\ & (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\IMPLEMENT|VGA|Add3~21_combout\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\IMPLEMENT|VGA|Add3~21_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~21_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X36_Y25_N26
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X36_Y25_N18
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~69_combout\ = (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~69_combout\);

-- Location: LCCOMB_X36_Y25_N28
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~68_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \IMPLEMENT|VGA|Add3~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \IMPLEMENT|VGA|Add3~21_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~68_combout\);

-- Location: LCCOMB_X36_Y25_N6
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~71_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~71_combout\);

-- Location: LCCOMB_X36_Y25_N4
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \IMPLEMENT|VGA|Add3~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \IMPLEMENT|VGA|Add3~22_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\);

-- Location: LCCOMB_X36_Y25_N30
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~72_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \IMPLEMENT|VGA|Add3~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \IMPLEMENT|VGA|Add3~23_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~72_combout\);

-- Location: LCCOMB_X36_Y25_N0
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~73_combout\ = (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~73_combout\);

-- Location: LCCOMB_X35_Y25_N16
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~74_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\IMPLEMENT|VGA|Add3~13_combout\) # 
-- (\IMPLEMENT|VGA|v_display_on~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|Add3~13_combout\,
	datac => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~74_combout\);

-- Location: LCCOMB_X35_Y25_N6
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~75_combout\ = (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\IMPLEMENT|VGA|Add3~13_combout\) # 
-- (\IMPLEMENT|VGA|v_display_on~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|Add3~13_combout\,
	datac => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~75_combout\);

-- Location: LCCOMB_X36_Y25_N8
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~74_combout\) # 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~75_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~74_combout\) # 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~74_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[30]~75_combout\,
	datad => VCC,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X36_Y25_N10
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~72_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~73_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~72_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~73_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~72_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~73_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~72_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[31]~73_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X36_Y25_N12
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~71_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~71_combout\) # 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\)))))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~71_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~71_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X36_Y25_N14
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~69_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~68_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~69_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~68_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~69_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~68_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~69_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[33]~68_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X36_Y25_N16
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X36_Y25_N2
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~150_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\IMPLEMENT|VGA|Add3~21_combout\)) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~21_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~150_combout\);

-- Location: LCCOMB_X37_Y25_N28
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\ = (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\);

-- Location: LCCOMB_X37_Y25_N22
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\ = (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\);

-- Location: LCCOMB_X37_Y25_N24
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~151_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\IMPLEMENT|VGA|Add3~22_combout\)) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \IMPLEMENT|VGA|Add3~22_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~151_combout\);

-- Location: LCCOMB_X37_Y25_N26
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~152_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\IMPLEMENT|VGA|Add3~23_combout\))) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \IMPLEMENT|VGA|Add3~23_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~152_combout\);

-- Location: LCCOMB_X37_Y25_N20
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\ = (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\);

-- Location: LCCOMB_X38_Y25_N4
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~80_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~80_combout\);

-- Location: LCCOMB_X35_Y25_N28
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~79_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\IMPLEMENT|VGA|Add3~13_combout\) # 
-- (\IMPLEMENT|VGA|v_display_on~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~13_combout\,
	datab => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~79_combout\);

-- Location: LCCOMB_X37_Y25_N30
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~81_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\IMPLEMENT|VGA|Add3~11_combout\) # 
-- (\IMPLEMENT|VGA|v_display_on~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~11_combout\,
	datab => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~81_combout\);

-- Location: LCCOMB_X37_Y25_N4
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~82_combout\ = (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\IMPLEMENT|VGA|Add3~11_combout\) # 
-- (\IMPLEMENT|VGA|v_display_on~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~11_combout\,
	datab => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~82_combout\);

-- Location: LCCOMB_X37_Y25_N6
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~81_combout\) # 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~82_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~81_combout\) # 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~81_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[40]~82_combout\,
	datad => VCC,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X37_Y25_N8
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~80_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~79_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~80_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~79_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~80_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~79_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~80_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~79_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X37_Y25_N10
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~152_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~152_combout\) # 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\)))))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~152_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~152_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X37_Y25_N12
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~151_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~151_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~151_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~151_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X37_Y25_N14
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & 
-- ((((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~150_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~150_combout\) # 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~150_combout\) # 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~150_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X37_Y25_N16
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X37_Y26_N2
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~128_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~150_combout\) # ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[44]~150_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~128_combout\);

-- Location: LCCOMB_X37_Y26_N20
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~83_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~83_combout\);

-- Location: LCCOMB_X37_Y26_N22
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\ = (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\);

-- Location: LCCOMB_X37_Y26_N28
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~129_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~151_combout\) # ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[43]~151_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~129_combout\);

-- Location: LCCOMB_X37_Y26_N30
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~130_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~152_combout\) # ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[42]~152_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~130_combout\);

-- Location: LCCOMB_X37_Y25_N2
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~85_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~85_combout\);

-- Location: LCCOMB_X35_Y25_N22
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~131_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~79_combout\) # ((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[41]~79_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~131_combout\);

-- Location: LCCOMB_X37_Y25_N0
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~86_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~86_combout\);

-- Location: LCCOMB_X35_Y26_N24
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\IMPLEMENT|VGA|Add3~11_combout\) # 
-- (\IMPLEMENT|VGA|v_display_on~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~11_combout\,
	datac => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\);

-- Location: LCCOMB_X38_Y26_N24
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~88_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~88_combout\);

-- Location: LCCOMB_X37_Y25_N18
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~90_combout\ = (!\IMPLEMENT|VGA|v_display_on~4_combout\ & (\IMPLEMENT|VGA|Add3~9_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datac => \IMPLEMENT|VGA|Add3~9_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~90_combout\);

-- Location: LCCOMB_X38_Y26_N14
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~89_combout\ = (\IMPLEMENT|VGA|Add3~9_combout\ & (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- !\IMPLEMENT|VGA|v_display_on~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~9_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \IMPLEMENT|VGA|v_display_on~4_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~89_combout\);

-- Location: LCCOMB_X37_Y26_N4
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~90_combout\) # 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~89_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~90_combout\) # 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~90_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[50]~89_combout\,
	datad => VCC,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X37_Y26_N6
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~88_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~88_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~88_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~88_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X37_Y26_N8
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~131_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~86_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~131_combout\) # 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~86_combout\)))))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~131_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~131_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~86_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X37_Y26_N10
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~130_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~85_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~130_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~85_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~130_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~85_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~130_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~85_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X37_Y26_N12
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & 
-- ((((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~129_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\) # 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~129_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\) # 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~129_combout\) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~129_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X37_Y26_N14
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~128_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~83_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~128_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~83_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~128_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~83_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~128_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~83_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X37_Y26_N16
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X36_Y26_N18
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~132_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~128_combout\) # ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[55]~128_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~132_combout\);

-- Location: LCCOMB_X36_Y26_N16
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~91_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~91_combout\);

-- Location: LCCOMB_X36_Y26_N22
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~92_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~92_combout\);

-- Location: LCCOMB_X36_Y26_N24
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~133_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~129_combout\) # ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[54]~129_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~133_combout\);

-- Location: LCCOMB_X35_Y26_N14
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~134_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~130_combout\) # ((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[53]~130_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~134_combout\);

-- Location: LCCOMB_X37_Y26_N18
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~93_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~93_combout\);

-- Location: LCCOMB_X37_Y26_N24
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~94_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~94_combout\);

-- Location: LCCOMB_X35_Y25_N0
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~135_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~131_combout\) # ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[52]~131_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~135_combout\);

-- Location: LCCOMB_X35_Y26_N16
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~136_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\) # ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~136_combout\);

-- Location: LCCOMB_X37_Y26_N26
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~95_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~95_combout\);

-- Location: LCCOMB_X35_Y26_N10
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~96_combout\ = (!\IMPLEMENT|VGA|v_display_on~4_combout\ & (\IMPLEMENT|VGA|Add3~9_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datab => \IMPLEMENT|VGA|Add3~9_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~96_combout\);

-- Location: LCCOMB_X37_Y26_N0
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~97_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~97_combout\);

-- Location: LCCOMB_X35_Y26_N26
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~99_combout\ = (!\IMPLEMENT|VGA|v_display_on~4_combout\ & (\IMPLEMENT|VGA|Add3~7_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datab => \IMPLEMENT|VGA|Add3~7_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~99_combout\);

-- Location: LCCOMB_X35_Y26_N28
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~98_combout\ = (!\IMPLEMENT|VGA|v_display_on~4_combout\ & (\IMPLEMENT|VGA|Add3~7_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datab => \IMPLEMENT|VGA|Add3~7_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~98_combout\);

-- Location: LCCOMB_X36_Y26_N0
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~99_combout\) # 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~98_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~99_combout\) # 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~99_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[60]~98_combout\,
	datad => VCC,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X36_Y26_N2
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~96_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~97_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~96_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~97_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~96_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~97_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~96_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~97_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X36_Y26_N4
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~136_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~95_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~136_combout\) # 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~95_combout\)))))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~136_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~136_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~95_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X36_Y26_N6
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~94_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~135_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~94_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~135_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~94_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~135_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~94_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~135_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X36_Y26_N8
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & 
-- ((((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~134_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~93_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~134_combout\) # 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~93_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~134_combout\) # 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~93_combout\) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~134_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~93_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X36_Y26_N10
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~92_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~133_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~92_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~133_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~92_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~133_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~92_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~133_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LCCOMB_X36_Y26_N12
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & 
-- ((((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~132_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~91_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~132_combout\) # 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~91_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ = CARRY((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~132_combout\) # 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~91_combout\) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~132_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~91_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\);

-- Location: LCCOMB_X36_Y26_N14
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X35_Y26_N30
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~139_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~134_combout\) # ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[64]~134_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~139_combout\);

-- Location: LCCOMB_X35_Y23_N12
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~100_combout\ = (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~100_combout\);

-- Location: LCCOMB_X35_Y23_N4
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~137_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~132_combout\) # ((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[66]~132_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~137_combout\);

-- Location: LCCOMB_X36_Y26_N28
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~101_combout\ = (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~101_combout\);

-- Location: LCCOMB_X36_Y26_N30
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~138_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~133_combout\) # ((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[65]~133_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~138_combout\);

-- Location: LCCOMB_X36_Y26_N26
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~102_combout\ = (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~102_combout\);

-- Location: LCCOMB_X35_Y25_N26
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~140_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~135_combout\) # ((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[63]~135_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~140_combout\);

-- Location: LCCOMB_X36_Y26_N20
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~103_combout\ = (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~103_combout\);

-- Location: LCCOMB_X36_Y23_N4
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~104_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~104_combout\);

-- Location: LCCOMB_X35_Y26_N8
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~141_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~136_combout\) # ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[62]~136_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~141_combout\);

-- Location: LCCOMB_X35_Y26_N18
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~142_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~96_combout\) # ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[61]~96_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~142_combout\);

-- Location: LCCOMB_X35_Y26_N20
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~105_combout\ = (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~105_combout\);

-- Location: LCCOMB_X34_Y23_N12
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~106_combout\ = (\IMPLEMENT|VGA|Add3~7_combout\ & (!\IMPLEMENT|VGA|v_display_on~4_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~7_combout\,
	datab => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~106_combout\);

-- Location: LCCOMB_X36_Y23_N22
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~107_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~107_combout\);

-- Location: LCCOMB_X36_Y23_N6
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~109_combout\ = (!\IMPLEMENT|VGA|v_display_on~4_combout\ & (\IMPLEMENT|VGA|Add3~5_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datab => \IMPLEMENT|VGA|Add3~5_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~109_combout\);

-- Location: LCCOMB_X36_Y23_N12
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~108_combout\ = (!\IMPLEMENT|VGA|v_display_on~4_combout\ & (\IMPLEMENT|VGA|Add3~5_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datab => \IMPLEMENT|VGA|Add3~5_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~108_combout\);

-- Location: LCCOMB_X35_Y23_N14
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~109_combout\) # 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~108_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~109_combout\) # 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~109_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[70]~108_combout\,
	datad => VCC,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X35_Y23_N16
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~106_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~107_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~106_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~107_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~106_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~107_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~106_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~107_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X35_Y23_N18
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~142_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~105_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~142_combout\) # 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~105_combout\)))))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~142_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~142_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~105_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X35_Y23_N20
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~104_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~141_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~104_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~141_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~104_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~141_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~104_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~141_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\);

-- Location: LCCOMB_X35_Y23_N22
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & 
-- ((((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~140_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~103_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~140_combout\) # 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~103_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ = CARRY((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~140_combout\) # 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~103_combout\) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~140_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~103_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\);

-- Location: LCCOMB_X35_Y23_N24
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~139_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~102_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~139_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~102_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~139_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~102_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~139_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~102_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\);

-- Location: LCCOMB_X35_Y23_N26
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ & 
-- ((((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~101_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~138_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ & ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~101_combout\) # 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~138_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ = CARRY((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~101_combout\) # 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~138_combout\) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~101_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~138_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\);

-- Location: LCCOMB_X35_Y23_N28
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~100_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~137_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~100_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~137_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~100_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~137_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~100_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~137_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\);

-- Location: LCCOMB_X35_Y23_N30
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ = \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\);

-- Location: LCCOMB_X36_Y22_N4
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~143_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~139_combout\) # ((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[75]~139_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~143_combout\);

-- Location: LCCOMB_X35_Y23_N10
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~110_combout\ = (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~110_combout\);

-- Location: LCCOMB_X35_Y23_N0
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~111_combout\ = (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~111_combout\);

-- Location: LCCOMB_X35_Y25_N8
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~144_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~140_combout\) # ((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~140_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~144_combout\);

-- Location: LCCOMB_X35_Y26_N12
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~145_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~141_combout\) # ((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[73]~141_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~145_combout\);

-- Location: LCCOMB_X35_Y23_N6
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~112_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~112_combout\);

-- Location: LCCOMB_X35_Y26_N6
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~146_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~142_combout\) # ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[72]~142_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~146_combout\);

-- Location: LCCOMB_X36_Y22_N16
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~113_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~113_combout\);

-- Location: LCCOMB_X34_Y23_N6
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~114_combout\ = (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~114_combout\);

-- Location: LCCOMB_X34_Y23_N24
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~147_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~106_combout\) # ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[71]~106_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~147_combout\);

-- Location: LCCOMB_X34_Y23_N16
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~115_combout\ = (\IMPLEMENT|VGA|Add3~5_combout\ & (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- !\IMPLEMENT|VGA|v_display_on~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~5_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \IMPLEMENT|VGA|v_display_on~4_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~115_combout\);

-- Location: LCCOMB_X34_Y23_N26
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~116_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~116_combout\);

-- Location: LCCOMB_X34_Y23_N18
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~118_combout\ = (!\IMPLEMENT|VGA|v_display_on~4_combout\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- \IMPLEMENT|VGA|Add3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \IMPLEMENT|VGA|Add3~3_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~118_combout\);

-- Location: LCCOMB_X34_Y23_N4
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~117_combout\ = (!\IMPLEMENT|VGA|v_display_on~4_combout\ & (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- \IMPLEMENT|VGA|Add3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \IMPLEMENT|VGA|Add3~3_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~117_combout\);

-- Location: LCCOMB_X35_Y22_N4
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~118_combout\) # 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~117_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~118_combout\) # 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~118_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[80]~117_combout\,
	datad => VCC,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X35_Y22_N6
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~115_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~116_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~115_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~116_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~115_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~116_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~115_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~116_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X35_Y22_N8
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~114_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~147_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~114_combout\) # 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~147_combout\)))))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~114_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~114_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~147_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X35_Y22_N10
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~146_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~113_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~146_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~113_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~146_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~113_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~146_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~113_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\);

-- Location: LCCOMB_X35_Y22_N12
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ & 
-- ((((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~145_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~112_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ & ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~145_combout\) # 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~112_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ = CARRY((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~145_combout\) # 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~112_combout\) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~145_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~112_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\);

-- Location: LCCOMB_X35_Y22_N14
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~111_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~144_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~111_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~144_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~111_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~144_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~111_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~144_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\);

-- Location: LCCOMB_X35_Y22_N16
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ & 
-- ((((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~143_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~110_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ & ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~143_combout\) # 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~110_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ = CARRY((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~143_combout\) # 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~110_combout\) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~143_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~110_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\);

-- Location: LCCOMB_X36_Y22_N22
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~148_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~137_combout\) # ((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[77]~137_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~148_combout\);

-- Location: LCCOMB_X35_Y23_N8
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~119_combout\ = (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~119_combout\);

-- Location: LCCOMB_X35_Y23_N2
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~120_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ & 
-- !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~120_combout\);

-- Location: LCCOMB_X36_Y22_N12
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~149_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~138_combout\) # ((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~138_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~149_combout\);

-- Location: LCCOMB_X35_Y22_N18
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~120_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~149_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~120_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~149_combout\)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~120_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~149_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~120_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~149_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\);

-- Location: LCCOMB_X35_Y22_N20
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ & 
-- ((((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~148_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~119_combout\))))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ & ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~148_combout\) # 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~119_combout\) # (GND))))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\ = CARRY((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~148_combout\) # 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~119_combout\) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~148_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~119_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\);

-- Location: LCCOMB_X35_Y22_N22
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ = !\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\);

-- Location: LCCOMB_X36_Y22_N30
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[97]~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[97]~121_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~143_combout\) # ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~110_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~143_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~110_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[97]~121_combout\);

-- Location: LCCOMB_X36_Y22_N28
\IMPLEMENT|COMPANION|LINE_SELECT|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|process_0~0_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~119_combout\) # ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~149_combout\) # 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~120_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~148_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~119_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~149_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[87]~120_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~148_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|process_0~0_combout\);

-- Location: LCCOMB_X36_Y22_N2
\IMPLEMENT|COMPANION|LINE_SELECT|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|process_0~1_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[97]~121_combout\) # 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & \IMPLEMENT|COMPANION|LINE_SELECT|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[97]~121_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|process_0~0_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|process_0~1_combout\);

-- Location: LCCOMB_X35_Y22_N30
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[95]~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[95]~123_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~112_combout\) # ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~145_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~112_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~145_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[95]~123_combout\);

-- Location: LCCOMB_X35_Y22_N24
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[96]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[96]~122_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~111_combout\) # ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~144_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~111_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[85]~144_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[96]~122_combout\);

-- Location: LCCOMB_X35_Y22_N0
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[94]~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[94]~125_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~146_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~113_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~146_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~113_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[94]~125_combout\);

-- Location: LCCOMB_X34_Y23_N30
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~126_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (!\IMPLEMENT|VGA|v_display_on~4_combout\ & 
-- (\IMPLEMENT|VGA|Add3~3_combout\))) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & 
-- (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datab => \IMPLEMENT|VGA|Add3~3_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~126_combout\);

-- Location: LCCOMB_X34_Y23_N20
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~127_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~115_combout\) # ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~116_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~115_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~116_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~127_combout\);

-- Location: LCCOMB_X34_Y23_N14
\IMPLEMENT|COMPANION|LINE_SELECT|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|process_0~2_combout\ = (\IMPLEMENT|VGA|Add3~2_combout\) # ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~126_combout\) # 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|Add3~2_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~126_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~127_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|process_0~2_combout\);

-- Location: LCCOMB_X34_Y23_N28
\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[93]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[93]~124_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~114_combout\) # ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~147_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~114_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~147_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[93]~124_combout\);

-- Location: LCCOMB_X35_Y22_N2
\IMPLEMENT|COMPANION|LINE_SELECT|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|process_0~3_combout\ = (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[94]~125_combout\ & (\IMPLEMENT|COMPANION|LINE_SELECT|process_0~2_combout\ $ 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[93]~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[94]~125_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|process_0~2_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[93]~124_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|process_0~3_combout\);

-- Location: LCCOMB_X35_Y22_N28
\IMPLEMENT|COMPANION|LINE_SELECT|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|process_0~4_combout\ = ((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|process_0~3_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|process_0~4_combout\);

-- Location: LCCOMB_X35_Y22_N26
\IMPLEMENT|COMPANION|LINE_SELECT|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|process_0~5_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|process_0~1_combout\) # ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[95]~123_combout\) # 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[96]~122_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|process_0~1_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[95]~123_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[96]~122_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|process_0~4_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|process_0~5_combout\);

-- Location: LCCOMB_X32_Y22_N4
\IMPLEMENT|COMPANION|LINE_SELECT|addr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|addr[0]~0_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Add0~0_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|process_0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~0_combout\,
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|process_0~5_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|addr[0]~0_combout\);

-- Location: LCCOMB_X34_Y22_N16
\IMPLEMENT|COMPANION|LINE_SELECT|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add0~2_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~126_combout\ & (\IMPLEMENT|COMPANION|LINE_SELECT|Add0~1\ & VCC)) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~126_combout\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Add0~1\))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add0~3\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~126_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~126_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~1\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~2_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~3\);

-- Location: LCCOMB_X32_Y22_N2
\IMPLEMENT|COMPANION|LINE_SELECT|addr[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|addr[1]~1_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Add0~2_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|process_0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~2_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|process_0~5_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|addr[1]~1_combout\);

-- Location: LCCOMB_X34_Y22_N18
\IMPLEMENT|COMPANION|LINE_SELECT|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add0~4_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~127_combout\ & ((GND) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Add0~3\))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~127_combout\ & (\IMPLEMENT|COMPANION|LINE_SELECT|Add0~3\ $ (GND)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add0~5\ = CARRY((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~127_combout\) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~127_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~3\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~4_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~5\);

-- Location: LCCOMB_X32_Y22_N28
\IMPLEMENT|COMPANION|LINE_SELECT|addr[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|addr[2]~2_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Add0~4_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|process_0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~4_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|process_0~5_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|addr[2]~2_combout\);

-- Location: LCCOMB_X25_Y20_N18
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~0_combout\ = \IMPLEMENT|VGA|Add2~15_combout\ $ (VCC)
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~1\ = CARRY(\IMPLEMENT|VGA|Add2~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|Add2~15_combout\,
	datad => VCC,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~0_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X25_Y20_N20
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~2_combout\ = (\IMPLEMENT|VGA|Add2~14_combout\ & (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~1\ & VCC)) # (!\IMPLEMENT|VGA|Add2~14_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~1\))
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~3\ = CARRY((!\IMPLEMENT|VGA|Add2~14_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add2~14_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~1\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~2_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X25_Y20_N22
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~4_combout\ = (\IMPLEMENT|VGA|Add2~13_combout\ & ((GND) # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~3\))) # (!\IMPLEMENT|VGA|Add2~13_combout\ & 
-- (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~3\ $ (GND)))
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~5\ = CARRY((\IMPLEMENT|VGA|Add2~13_combout\) # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|Add2~13_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~3\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~4_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X25_Y20_N24
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~6_combout\ = (\IMPLEMENT|VGA|Add2~12_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~5\)) # (!\IMPLEMENT|VGA|Add2~12_combout\ & 
-- ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~5\) # (GND)))
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~7\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~5\) # (!\IMPLEMENT|VGA|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add2~12_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~5\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~6_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X25_Y20_N26
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\ = \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~7\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\);

-- Location: LCCOMB_X25_Y20_N16
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[18]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[18]~69_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\ & ((\IMPLEMENT|VGA|h_display_on~1_combout\) # (\IMPLEMENT|VGA|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datab => \IMPLEMENT|VGA|Add2~10_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[18]~69_combout\);

-- Location: LCCOMB_X25_Y20_N0
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[18]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[18]~42_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~6_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~6_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[18]~42_combout\);

-- Location: LCCOMB_X25_Y20_N30
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[17]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[17]~43_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~4_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~4_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[17]~43_combout\);

-- Location: LCCOMB_X25_Y20_N14
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[17]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[17]~70_combout\ = (!\IMPLEMENT|VGA|h_display_on~1_combout\ & (\IMPLEMENT|VGA|Add2~8_combout\ & \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datab => \IMPLEMENT|VGA|Add2~8_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[17]~70_combout\);

-- Location: LCCOMB_X26_Y20_N6
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[16]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[16]~71_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\ & ((\IMPLEMENT|VGA|h_display_on~1_combout\) # (\IMPLEMENT|VGA|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \IMPLEMENT|VGA|Add2~6_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[16]~71_combout\);

-- Location: LCCOMB_X25_Y20_N28
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[16]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[16]~44_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~2_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~2_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[16]~44_combout\);

-- Location: LCCOMB_X26_Y20_N20
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[15]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[15]~45_combout\ = (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\ & \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~0_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[15]~45_combout\);

-- Location: LCCOMB_X26_Y20_N0
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[15]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[15]~72_combout\ = (\IMPLEMENT|VGA|Add2~4_combout\ & (!\IMPLEMENT|VGA|h_display_on~1_combout\ & \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add2~4_combout\,
	datab => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[15]~72_combout\);

-- Location: LCCOMB_X25_Y20_N2
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~0_combout\ = \IMPLEMENT|VGA|Add2~16_combout\ $ (VCC)
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~1\ = CARRY(\IMPLEMENT|VGA|Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add2~16_combout\,
	datad => VCC,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~0_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X25_Y20_N4
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~2_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~1\ & (((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[15]~45_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[15]~72_combout\)))) # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~1\ & (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[15]~45_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[15]~72_combout\)))
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~3\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[15]~45_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[15]~72_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[15]~45_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[15]~72_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~1\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~2_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X25_Y20_N6
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~4_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~3\ & ((((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[16]~71_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[16]~44_combout\))))) # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~3\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[16]~71_combout\) # 
-- ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[16]~44_combout\) # (GND))))
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~5\ = CARRY((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[16]~71_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[16]~44_combout\) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[16]~71_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[16]~44_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~3\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~4_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X25_Y20_N8
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~6_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[17]~43_combout\ & (((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~5\)))) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[17]~43_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[17]~70_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~5\)) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[17]~70_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~5\) # (GND)))))
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~7\ = CARRY(((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[17]~43_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[17]~70_combout\)) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[17]~43_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[17]~70_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~5\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~6_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X25_Y20_N10
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~9_cout\ = CARRY((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[18]~69_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[18]~42_combout\) 
-- # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[18]~69_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[18]~42_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~7\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~9_cout\);

-- Location: LCCOMB_X25_Y20_N12
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\ = !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~9_cout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\);

-- Location: LCCOMB_X26_Y22_N28
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[20]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[20]~76_combout\ = (!\IMPLEMENT|VGA|h_display_on~1_combout\ & (\IMPLEMENT|VGA|Add2~2_combout\ & \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datac => \IMPLEMENT|VGA|Add2~2_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[20]~76_combout\);

-- Location: LCCOMB_X26_Y20_N2
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[23]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[23]~46_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~6_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~6_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[23]~46_combout\);

-- Location: LCCOMB_X26_Y20_N30
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[23]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[23]~73_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[17]~70_combout\) # 
-- ((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\ & \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~4_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[17]~70_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[23]~73_combout\);

-- Location: LCCOMB_X26_Y20_N24
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[22]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[22]~74_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[16]~71_combout\) # 
-- ((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\ & \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~2_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[16]~71_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[22]~74_combout\);

-- Location: LCCOMB_X27_Y20_N0
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[22]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~4_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~4_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\);

-- Location: LCCOMB_X26_Y20_N4
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[21]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[21]~48_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~2_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~2_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[21]~48_combout\);

-- Location: LCCOMB_X26_Y20_N26
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[21]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[21]~75_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[15]~72_combout\) # 
-- ((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\ & \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~0_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[15]~72_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[21]~75_combout\);

-- Location: LCCOMB_X25_Y21_N20
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[20]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~0_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~0_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X26_Y20_N8
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~0_combout\ = \IMPLEMENT|VGA|Add2~17_combout\ $ (VCC)
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~1\ = CARRY(\IMPLEMENT|VGA|Add2~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|Add2~17_combout\,
	datad => VCC,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~0_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X26_Y20_N10
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~2_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~1\ & (((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[20]~76_combout\)))) # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~1\ & (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[20]~76_combout\)))
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~3\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[20]~76_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[20]~76_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~1\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~2_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X26_Y20_N12
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~4_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~3\ & ((((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[21]~48_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[21]~75_combout\))))) # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~3\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[21]~48_combout\) # 
-- ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[21]~75_combout\) # (GND))))
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~5\ = CARRY((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[21]~48_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[21]~75_combout\) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[21]~48_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[21]~75_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~3\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~4_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X26_Y20_N14
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~6_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[22]~74_combout\ & (((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~5\)))) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[22]~74_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~5\)) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~5\) # (GND)))))
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~7\ = CARRY(((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[22]~74_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\)) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[22]~74_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[22]~47_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~5\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~6_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X26_Y20_N16
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~9_cout\ = CARRY((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[23]~46_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[23]~73_combout\) 
-- # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[23]~46_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[23]~73_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~7\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~9_cout\);

-- Location: LCCOMB_X26_Y20_N18
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\ = !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~9_cout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\);

-- Location: LCCOMB_X25_Y22_N10
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[26]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[26]~79_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[20]~76_combout\) # 
-- ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~0_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[20]~76_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~0_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[26]~79_combout\);

-- Location: LCCOMB_X25_Y22_N28
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[26]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ = (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\ & \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~2_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X25_Y22_N8
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[25]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[25]~80_combout\ = (\IMPLEMENT|VGA|Add2~0_combout\ & (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\ & !\IMPLEMENT|VGA|h_display_on~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add2~0_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\,
	datad => \IMPLEMENT|VGA|h_display_on~1_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[25]~80_combout\);

-- Location: LCCOMB_X25_Y22_N2
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[25]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[25]~53_combout\ = (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\ & \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~0_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[25]~53_combout\);

-- Location: LCCOMB_X25_Y22_N16
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~0_combout\ = (((\IMPLEMENT|VGA|h_count\(3) & !\IMPLEMENT|VGA|h_display_on~1_combout\)))
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~1\ = CARRY((\IMPLEMENT|VGA|h_count\(3) & !\IMPLEMENT|VGA|h_display_on~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(3),
	datab => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datad => VCC,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~0_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X25_Y22_N18
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~2_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~1\ & (((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[25]~80_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[25]~53_combout\)))) # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~1\ & (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[25]~80_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[25]~53_combout\)))
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~3\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[25]~80_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[25]~53_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[25]~80_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[25]~53_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~1\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~2_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X25_Y22_N20
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~4_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~3\ & ((((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[26]~79_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\))))) # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~3\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[26]~79_combout\) # 
-- ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\) # (GND))))
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~5\ = CARRY((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[26]~79_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[26]~79_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~3\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~4_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X25_Y22_N30
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[28]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[28]~77_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[22]~74_combout\) # 
-- ((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\ & \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~4_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[22]~74_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[28]~77_combout\);

-- Location: LCCOMB_X26_Y20_N22
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[28]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~6_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~6_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X25_Y22_N12
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[27]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[27]~78_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[21]~75_combout\) # 
-- ((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\ & \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~2_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[21]~75_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[27]~78_combout\);

-- Location: LCCOMB_X26_Y20_N28
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[27]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~4_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~4_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X25_Y22_N22
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~6_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[27]~78_combout\ & (((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~5\)))) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[27]~78_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~5\)) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~5\) # (GND)))))
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~7\ = CARRY(((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[27]~78_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\)) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[27]~78_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~5\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~6_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X25_Y22_N24
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~9_cout\ = CARRY((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[28]~77_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\) 
-- # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[28]~77_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~7\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~9_cout\);

-- Location: LCCOMB_X25_Y22_N26
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\ = !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~9_cout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\);

-- Location: LCCOMB_X25_Y22_N0
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[32]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[32]~82_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[26]~79_combout\) # 
-- ((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\ & \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[26]~79_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~2_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[32]~82_combout\);

-- Location: LCCOMB_X25_Y22_N6
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[33]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[33]~81_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[27]~78_combout\) # 
-- ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~4_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~4_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[27]~78_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[33]~81_combout\);

-- Location: LCCOMB_X24_Y22_N4
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[33]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[33]~54_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~6_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~6_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[33]~54_combout\);

-- Location: LCCOMB_X24_Y22_N10
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[32]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[32]~55_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~4_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~4_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[32]~55_combout\);

-- Location: LCCOMB_X25_Y22_N4
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[31]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[31]~56_combout\ = (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\ & \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~2_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[31]~56_combout\);

-- Location: LCCOMB_X25_Y22_N14
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[31]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[31]~83_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[25]~80_combout\) # 
-- ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~0_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~0_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[25]~80_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[31]~83_combout\);

-- Location: LCCOMB_X24_Y22_N30
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[30]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[30]~58_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~0_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~0_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[30]~58_combout\);

-- Location: LCCOMB_X24_Y22_N12
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[30]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[30]~57_combout\ = (\IMPLEMENT|VGA|h_count\(3) & (!\IMPLEMENT|VGA|h_display_on~1_combout\ & \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|h_count\(3),
	datac => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[30]~57_combout\);

-- Location: LCCOMB_X24_Y22_N18
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~0_combout\ = (((!\IMPLEMENT|VGA|h_display_on~1_combout\ & \IMPLEMENT|VGA|h_count\(2))))
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~1\ = CARRY((!\IMPLEMENT|VGA|h_display_on~1_combout\ & \IMPLEMENT|VGA|h_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datab => \IMPLEMENT|VGA|h_count\(2),
	datad => VCC,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~0_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~1\);

-- Location: LCCOMB_X24_Y22_N20
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~2_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~1\ & (((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[30]~58_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[30]~57_combout\)))) # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~1\ & (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[30]~58_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[30]~57_combout\)))
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~3\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[30]~58_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[30]~57_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[30]~58_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[30]~57_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~1\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~2_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X24_Y22_N22
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~4_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~3\ & ((((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[31]~56_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[31]~83_combout\))))) # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~3\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[31]~56_combout\) # 
-- ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[31]~83_combout\) # (GND))))
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~5\ = CARRY((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[31]~56_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[31]~83_combout\) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[31]~56_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[31]~83_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~3\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~4_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X24_Y22_N24
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~6_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[32]~55_combout\ & (((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~5\)))) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[32]~55_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[32]~82_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~5\)) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[32]~82_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~5\) # (GND)))))
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~7\ = CARRY(((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[32]~55_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[32]~82_combout\)) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[32]~55_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[32]~82_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~5\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~6_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X24_Y22_N26
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~9_cout\ = CARRY((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[33]~81_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[33]~54_combout\) 
-- # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[33]~81_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[33]~54_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~7\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~9_cout\);

-- Location: LCCOMB_X24_Y22_N28
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\ = !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~9_cout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\);

-- Location: LCCOMB_X23_Y22_N10
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[38]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[38]~84_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[32]~82_combout\) # 
-- ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~4_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~4_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[32]~82_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[38]~84_combout\);

-- Location: LCCOMB_X24_Y22_N8
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[38]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[38]~59_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~6_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~6_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[38]~59_combout\);

-- Location: LCCOMB_X23_Y22_N12
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[37]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[37]~60_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~4_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~4_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[37]~60_combout\);

-- Location: LCCOMB_X24_Y22_N16
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[37]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[37]~85_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[31]~83_combout\) # 
-- ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~2_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~2_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[31]~83_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[37]~85_combout\);

-- Location: LCCOMB_X24_Y22_N2
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[36]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[36]~86_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[30]~57_combout\) # 
-- ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~0_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~0_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[30]~57_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[36]~86_combout\);

-- Location: LCCOMB_X23_Y22_N2
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[36]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[36]~61_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~2_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~2_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[36]~61_combout\);

-- Location: LCCOMB_X24_Y22_N14
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[35]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[35]~62_combout\ = (\IMPLEMENT|VGA|h_count\(2) & (!\IMPLEMENT|VGA|h_display_on~1_combout\ & \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|h_count\(2),
	datac => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[35]~62_combout\);

-- Location: LCCOMB_X23_Y22_N0
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[35]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[35]~63_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~0_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~0_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X23_Y22_N18
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~0_combout\ = (((\IMPLEMENT|VGA|h_count\(1) & !\IMPLEMENT|VGA|h_display_on~1_combout\)))
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~1\ = CARRY((\IMPLEMENT|VGA|h_count\(1) & !\IMPLEMENT|VGA|h_display_on~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(1),
	datab => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datad => VCC,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~0_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~1\);

-- Location: LCCOMB_X23_Y22_N20
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~2_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~1\ & (((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[35]~62_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[35]~63_combout\)))) # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~1\ & (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[35]~62_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[35]~63_combout\)))
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~3\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[35]~62_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[35]~62_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~1\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~2_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X23_Y22_N22
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~4_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~3\ & ((((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[36]~86_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[36]~61_combout\))))) # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~3\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[36]~86_combout\) # 
-- ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[36]~61_combout\) # (GND))))
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~5\ = CARRY((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[36]~86_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[36]~61_combout\) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[36]~86_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[36]~61_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~3\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~4_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X23_Y22_N24
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~6_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[37]~60_combout\ & (((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~5\)))) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[37]~60_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[37]~85_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~5\)) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[37]~85_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~5\) # (GND)))))
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~7\ = CARRY(((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[37]~60_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[37]~85_combout\)) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[37]~60_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[37]~85_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~5\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~6_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~7\);

-- Location: LCCOMB_X23_Y22_N26
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~9_cout\ = CARRY((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[38]~84_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[38]~59_combout\) 
-- # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[38]~84_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[38]~59_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~7\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~9_cout\);

-- Location: LCCOMB_X23_Y22_N28
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\ = !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~9_cout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\);

-- Location: LCCOMB_X23_Y22_N14
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[43]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[43]~64_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~6_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~6_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[43]~64_combout\);

-- Location: LCCOMB_X23_Y22_N8
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[43]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[43]~87_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[37]~85_combout\) # 
-- ((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\ & \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[37]~85_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~4_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[43]~87_combout\);

-- Location: LCCOMB_X23_Y22_N4
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[42]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[42]~65_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~4_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~4_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[42]~65_combout\);

-- Location: LCCOMB_X27_Y22_N4
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[42]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[42]~88_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[36]~86_combout\) # 
-- ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~2_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~2_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[36]~86_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[42]~88_combout\);

-- Location: LCCOMB_X27_Y22_N18
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[41]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[41]~89_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[35]~62_combout\) # 
-- ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~0_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[35]~62_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~0_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[41]~89_combout\);

-- Location: LCCOMB_X23_Y22_N6
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[41]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[41]~66_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~2_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~2_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[41]~66_combout\);

-- Location: LCCOMB_X23_Y22_N16
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[40]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[40]~67_combout\ = (!\IMPLEMENT|VGA|h_display_on~1_combout\ & (\IMPLEMENT|VGA|h_count\(1) & \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datac => \IMPLEMENT|VGA|h_count\(1),
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[40]~67_combout\);

-- Location: LCCOMB_X27_Y22_N28
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[40]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[40]~68_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~0_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~0_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[40]~68_combout\);

-- Location: LCCOMB_X27_Y22_N6
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~1_cout\ = CARRY((\IMPLEMENT|VGA|h_count\(0) & !\IMPLEMENT|VGA|h_display_on~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(0),
	datab => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datad => VCC,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~1_cout\);

-- Location: LCCOMB_X27_Y22_N8
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~3_cout\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[40]~67_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[40]~68_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[40]~67_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[40]~68_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~1_cout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~3_cout\);

-- Location: LCCOMB_X27_Y22_N10
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~5_cout\ = CARRY((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[41]~89_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[41]~66_combout\) 
-- # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[41]~89_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[41]~66_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~3_cout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~5_cout\);

-- Location: LCCOMB_X27_Y22_N12
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~7_cout\ = CARRY(((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[42]~65_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[42]~88_combout\)) 
-- # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[42]~65_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[42]~88_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~5_cout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~7_cout\);

-- Location: LCCOMB_X27_Y22_N14
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~9_cout\ = CARRY((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[43]~64_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[43]~87_combout\) 
-- # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[43]~64_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|StageOut[43]~87_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~7_cout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~9_cout\);

-- Location: LCCOMB_X27_Y22_N16
\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\ = !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~9_cout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\);

-- Location: LCCOMB_X26_Y22_N4
\IMPLEMENT|CUSTOM_GRID|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Equal0~3_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\ & (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\ & 
-- (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\ & \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y22_N0
\IMPLEMENT|CUSTOM_GRID|Selector4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Selector4~3_combout\ = ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\))) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\ & ((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\) # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\)))) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Equal0~3_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Selector4~3_combout\);

-- Location: LCCOMB_X29_Y22_N20
\IMPLEMENT|CUSTOM_GRID|Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Equal4~3_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\ & (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\ & 
-- (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\ & \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Equal4~3_combout\);

-- Location: LCCOMB_X29_Y22_N30
\IMPLEMENT|CUSTOM_GRID|Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Equal4~2_combout\ = (\IMPLEMENT|CUSTOM_GRID|Equal4~3_combout\ & (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\ & (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Equal4~3_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Equal4~2_combout\);

-- Location: LCCOMB_X27_Y22_N30
\IMPLEMENT|CUSTOM_GRID|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Selector1~0_combout\ = ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\) # (!\IMPLEMENT|CUSTOM_GRID|Equal4~3_combout\)) # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Equal4~3_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Selector1~0_combout\);

-- Location: LCCOMB_X27_Y22_N24
\IMPLEMENT|CUSTOM_GRID|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Selector4~0_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\) # ((!\IMPLEMENT|CUSTOM_GRID|Equal0~3_combout\) # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Equal0~3_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Selector4~0_combout\);

-- Location: LCCOMB_X32_Y25_N0
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \IMPLEMENT|VGA|Add3~23_combout\ $ (VCC)
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\IMPLEMENT|VGA|Add3~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~23_combout\,
	datad => VCC,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X32_Y25_N2
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\IMPLEMENT|VGA|Add3~22_combout\ & (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\IMPLEMENT|VGA|Add3~22_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\IMPLEMENT|VGA|Add3~22_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~22_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X32_Y25_N4
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\IMPLEMENT|VGA|Add3~21_combout\ & (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\IMPLEMENT|VGA|Add3~21_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\IMPLEMENT|VGA|Add3~21_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~21_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X32_Y25_N6
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X32_Y25_N30
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[16]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[16]~36_combout\ = (\IMPLEMENT|VGA|Add3~23_combout\ & \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|VGA|Add3~23_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[16]~36_combout\);

-- Location: LCCOMB_X32_Y25_N20
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[16]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[16]~37_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[16]~37_combout\);

-- Location: LCCOMB_X30_Y25_N20
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[15]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[15]~39_combout\ = (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\IMPLEMENT|VGA|Add3~13_combout\) # 
-- (\IMPLEMENT|VGA|v_display_on~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~13_combout\,
	datac => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[15]~39_combout\);

-- Location: LCCOMB_X30_Y25_N10
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[15]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[15]~38_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\IMPLEMENT|VGA|Add3~13_combout\) # 
-- (\IMPLEMENT|VGA|v_display_on~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~13_combout\,
	datab => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[15]~38_combout\);

-- Location: LCCOMB_X32_Y25_N8
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[15]~39_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[15]~38_combout\)))
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[15]~39_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[15]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[15]~39_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[15]~38_combout\,
	datad => VCC,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X32_Y25_N10
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[16]~36_combout\) # (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[16]~37_combout\)))) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[16]~36_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[16]~37_combout\)))
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[16]~36_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[16]~37_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[16]~36_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[16]~37_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X32_Y25_N24
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[18]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[18]~33_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[18]~33_combout\);

-- Location: LCCOMB_X32_Y25_N26
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[18]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[18]~32_combout\ = (\IMPLEMENT|VGA|Add3~21_combout\ & \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|VGA|Add3~21_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[18]~32_combout\);

-- Location: LCCOMB_X32_Y25_N18
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[17]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[17]~34_combout\ = (\IMPLEMENT|VGA|Add3~22_combout\ & \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~22_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[17]~34_combout\);

-- Location: LCCOMB_X32_Y25_N28
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[17]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[17]~35_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[17]~35_combout\);

-- Location: LCCOMB_X32_Y25_N12
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[17]~34_combout\) # (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[17]~35_combout\)))) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[17]~34_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[17]~35_combout\)))))
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[17]~34_combout\) # (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[17]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[17]~34_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[17]~35_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X32_Y25_N14
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[18]~33_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[18]~32_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[18]~33_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[18]~32_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X32_Y25_N16
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X32_Y25_N22
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[23]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[23]~40_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[23]~40_combout\);

-- Location: LCCOMB_X32_Y26_N14
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[23]~78_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\IMPLEMENT|VGA|Add3~22_combout\)) # (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~22_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[23]~78_combout\);

-- Location: LCCOMB_X32_Y26_N22
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[22]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[22]~41_combout\ = (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[22]~41_combout\);

-- Location: LCCOMB_X32_Y26_N24
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[22]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[22]~79_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\IMPLEMENT|VGA|Add3~23_combout\)) # (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~23_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[22]~79_combout\);

-- Location: LCCOMB_X32_Y26_N26
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[21]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[21]~43_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[21]~43_combout\);

-- Location: LCCOMB_X32_Y26_N16
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[21]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[21]~42_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\IMPLEMENT|VGA|Add3~13_combout\) # 
-- (\IMPLEMENT|VGA|v_display_on~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~13_combout\,
	datab => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[21]~42_combout\);

-- Location: LCCOMB_X32_Y26_N10
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[20]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[20]~45_combout\ = (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\IMPLEMENT|VGA|Add3~11_combout\) # 
-- (\IMPLEMENT|VGA|v_display_on~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~11_combout\,
	datac => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[20]~45_combout\);

-- Location: LCCOMB_X32_Y26_N28
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[20]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[20]~44_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\IMPLEMENT|VGA|v_display_on~4_combout\) # 
-- (\IMPLEMENT|VGA|Add3~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \IMPLEMENT|VGA|Add3~11_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[20]~44_combout\);

-- Location: LCCOMB_X32_Y26_N0
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[20]~45_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[20]~44_combout\)))
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[20]~45_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[20]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[20]~45_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[20]~44_combout\,
	datad => VCC,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X32_Y26_N2
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[21]~43_combout\) # (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[21]~42_combout\)))) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[21]~43_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[21]~42_combout\)))
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[21]~43_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[21]~42_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[21]~43_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[21]~42_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X32_Y26_N4
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[22]~41_combout\) # (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[22]~79_combout\)))) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[22]~41_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[22]~79_combout\)))))
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[22]~41_combout\) # (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[22]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[22]~41_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[22]~79_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X32_Y26_N6
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[23]~40_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[23]~78_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[23]~40_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[23]~78_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X32_Y26_N8
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X31_Y26_N26
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[28]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[22]~79_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[22]~79_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\);

-- Location: LCCOMB_X31_Y26_N24
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[28]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[28]~46_combout\ = (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[28]~46_combout\);

-- Location: LCCOMB_X32_Y26_N20
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[27]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[27]~47_combout\ = (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[27]~47_combout\);

-- Location: LCCOMB_X32_Y26_N12
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[27]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[21]~42_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[21]~42_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\);

-- Location: LCCOMB_X31_Y26_N10
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[26]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[26]~48_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\IMPLEMENT|VGA|v_display_on~4_combout\) # 
-- (\IMPLEMENT|VGA|Add3~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datab => \IMPLEMENT|VGA|Add3~11_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[26]~48_combout\);

-- Location: LCCOMB_X32_Y26_N18
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[26]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[26]~49_combout\ = (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[26]~49_combout\);

-- Location: LCCOMB_X31_Y26_N28
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[25]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[25]~50_combout\ = (!\IMPLEMENT|VGA|v_display_on~4_combout\ & (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \IMPLEMENT|VGA|Add3~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \IMPLEMENT|VGA|Add3~9_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[25]~50_combout\);

-- Location: LCCOMB_X31_Y26_N2
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[25]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[25]~51_combout\ = (!\IMPLEMENT|VGA|v_display_on~4_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \IMPLEMENT|VGA|Add3~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \IMPLEMENT|VGA|Add3~9_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[25]~51_combout\);

-- Location: LCCOMB_X31_Y26_N12
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[25]~50_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[25]~51_combout\)))
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[25]~50_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[25]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[25]~50_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[25]~51_combout\,
	datad => VCC,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X31_Y26_N14
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[26]~48_combout\) # (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[26]~49_combout\)))) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[26]~48_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[26]~49_combout\)))
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[26]~48_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[26]~49_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[26]~48_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[26]~49_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X31_Y26_N16
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[27]~47_combout\) # (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\)))) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[27]~47_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\)))))
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[27]~47_combout\) # (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[27]~47_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X31_Y26_N18
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[28]~46_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[28]~46_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X31_Y26_N20
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X31_Y26_N8
\IMPLEMENT|CUSTOM_GRID|Equal14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Equal14~0_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Equal14~0_combout\);

-- Location: LCCOMB_X31_Y26_N30
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[32]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[32]~73_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[26]~48_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[26]~48_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[32]~73_combout\);

-- Location: LCCOMB_X31_Y26_N22
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[32]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[32]~53_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[32]~53_combout\);

-- Location: LCCOMB_X30_Y26_N12
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[31]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[31]~55_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[31]~55_combout\);

-- Location: LCCOMB_X30_Y26_N10
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[31]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[31]~54_combout\ = (\IMPLEMENT|VGA|Add3~9_combout\ & (!\IMPLEMENT|VGA|v_display_on~4_combout\ & 
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|Add3~9_combout\,
	datac => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[31]~54_combout\);

-- Location: LCCOMB_X30_Y26_N18
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[30]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[30]~56_combout\ = (!\IMPLEMENT|VGA|v_display_on~4_combout\ & (\IMPLEMENT|VGA|Add3~7_combout\ & 
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datac => \IMPLEMENT|VGA|Add3~7_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[30]~56_combout\);

-- Location: LCCOMB_X31_Y26_N6
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[30]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[30]~57_combout\ = (!\IMPLEMENT|VGA|v_display_on~4_combout\ & (\IMPLEMENT|VGA|Add3~7_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datac => \IMPLEMENT|VGA|Add3~7_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[30]~57_combout\);

-- Location: LCCOMB_X30_Y26_N0
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[30]~56_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[30]~57_combout\)))
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[30]~56_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[30]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[30]~56_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[30]~57_combout\,
	datad => VCC,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X30_Y26_N2
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[31]~55_combout\) # (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[31]~54_combout\)))) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[31]~55_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[31]~54_combout\)))
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[31]~55_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[31]~54_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[31]~55_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[31]~54_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X30_Y26_N4
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- (((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[32]~73_combout\) # (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[32]~53_combout\)))) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[32]~73_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[32]~53_combout\)))))
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[32]~73_combout\) # (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[32]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[32]~73_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[32]~53_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X31_Y26_N4
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[33]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[33]~52_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[33]~52_combout\);

-- Location: LCCOMB_X31_Y26_N0
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[33]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[33]~72_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[33]~72_combout\);

-- Location: LCCOMB_X30_Y26_N6
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[33]~52_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[33]~72_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[33]~52_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[33]~72_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X30_Y26_N8
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X30_Y26_N20
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[38]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[38]~58_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[38]~58_combout\);

-- Location: LCCOMB_X30_Y26_N16
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[38]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[38]~74_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[32]~73_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[32]~73_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[38]~74_combout\);

-- Location: LCCOMB_X30_Y26_N22
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[37]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[37]~75_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[31]~54_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[31]~54_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[37]~75_combout\);

-- Location: LCCOMB_X30_Y26_N26
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[37]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[37]~59_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[37]~59_combout\);

-- Location: LCCOMB_X30_Y26_N30
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[36]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[36]~61_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[36]~61_combout\);

-- Location: LCCOMB_X30_Y26_N24
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[36]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[36]~60_combout\ = (\IMPLEMENT|VGA|Add3~7_combout\ & (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- !\IMPLEMENT|VGA|v_display_on~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|Add3~7_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \IMPLEMENT|VGA|v_display_on~4_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[36]~60_combout\);

-- Location: LCCOMB_X27_Y26_N4
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[35]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[35]~62_combout\ = (!\IMPLEMENT|VGA|v_display_on~4_combout\ & (\IMPLEMENT|VGA|Add3~5_combout\ & 
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datac => \IMPLEMENT|VGA|Add3~5_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[35]~62_combout\);

-- Location: LCCOMB_X27_Y26_N14
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[35]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[35]~63_combout\ = (!\IMPLEMENT|VGA|v_display_on~4_combout\ & (\IMPLEMENT|VGA|Add3~5_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datac => \IMPLEMENT|VGA|Add3~5_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X29_Y26_N0
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[35]~62_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[35]~63_combout\)))
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[35]~62_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[35]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[35]~62_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datad => VCC,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X29_Y26_N2
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & 
-- (((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[36]~61_combout\) # (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[36]~60_combout\)))) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[36]~61_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[36]~60_combout\)))
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[36]~61_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[36]~60_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[36]~61_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X29_Y26_N4
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & 
-- (((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[37]~75_combout\) # (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[37]~59_combout\)))) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[37]~75_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[37]~59_combout\)))))
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & 
-- ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[37]~75_combout\) # (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[37]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[37]~75_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[37]~59_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X29_Y26_N6
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[38]~58_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[38]~74_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[38]~58_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[38]~74_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X29_Y26_N8
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X30_Y26_N28
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[43]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[43]~76_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[37]~75_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[37]~75_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[43]~76_combout\);

-- Location: LCCOMB_X29_Y26_N18
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[43]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[43]~64_combout\ = (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[43]~64_combout\);

-- Location: LCCOMB_X30_Y26_N14
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[42]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[42]~77_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[36]~60_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[42]~77_combout\);

-- Location: LCCOMB_X29_Y26_N12
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[42]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[42]~65_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[42]~65_combout\);

-- Location: LCCOMB_X27_Y26_N8
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[41]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[41]~66_combout\ = (!\IMPLEMENT|VGA|v_display_on~4_combout\ & (\IMPLEMENT|VGA|Add3~5_combout\ & 
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datac => \IMPLEMENT|VGA|Add3~5_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[41]~66_combout\);

-- Location: LCCOMB_X29_Y26_N14
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[41]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[41]~67_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[41]~67_combout\);

-- Location: LCCOMB_X29_Y26_N16
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[40]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[40]~69_combout\ = (\IMPLEMENT|VGA|Add3~3_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- !\IMPLEMENT|VGA|v_display_on~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|Add3~3_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \IMPLEMENT|VGA|v_display_on~4_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[40]~69_combout\);

-- Location: LCCOMB_X27_Y26_N30
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[40]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[40]~68_combout\ = (!\IMPLEMENT|VGA|v_display_on~4_combout\ & (\IMPLEMENT|VGA|Add3~3_combout\ & 
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datac => \IMPLEMENT|VGA|Add3~3_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[40]~68_combout\);

-- Location: LCCOMB_X29_Y26_N20
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ = CARRY((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[40]~69_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[40]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[40]~69_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[40]~68_combout\,
	datad => VCC,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\);

-- Location: LCCOMB_X29_Y26_N22
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[41]~66_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[41]~67_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[41]~66_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[41]~67_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\);

-- Location: LCCOMB_X29_Y26_N24
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ & 
-- ((\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[42]~77_combout\) # (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[42]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[42]~77_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[42]~65_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\);

-- Location: LCCOMB_X29_Y26_N26
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[43]~76_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[43]~64_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[43]~76_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|StageOut[43]~64_combout\,
	datad => VCC,
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\,
	cout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X29_Y26_N28
\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X29_Y26_N30
\IMPLEMENT|CUSTOM_GRID|Equal15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Equal15~0_combout\ = (\IMPLEMENT|CUSTOM_GRID|Equal14~0_combout\ & (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- (!\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Equal14~0_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Equal15~0_combout\);

-- Location: LCCOMB_X26_Y22_N14
\IMPLEMENT|CUSTOM_GRID|Equal5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Equal5~2_combout\ = (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\ & 
-- (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\ & \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Equal5~2_combout\);

-- Location: LCCOMB_X26_Y22_N2
\IMPLEMENT|CUSTOM_GRID|Equal5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Equal5~3_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\ & (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\ & (\IMPLEMENT|CUSTOM_GRID|Equal5~2_combout\ & 
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Equal5~2_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Equal5~3_combout\);

-- Location: LCCOMB_X27_Y22_N22
\IMPLEMENT|CUSTOM_GRID|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Selector4~1_combout\ = (\IMPLEMENT|CUSTOM_GRID|Equal15~0_combout\ & (((\IMPLEMENT|CUSTOM_GRID|Equal5~3_combout\) # (!\IMPLEMENT|CUSTOM_GRID|Selector4~0_combout\)) # (!\IMPLEMENT|CUSTOM_GRID|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Selector1~0_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Selector4~0_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Equal15~0_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Equal5~3_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Selector4~1_combout\);

-- Location: LCCOMB_X27_Y22_N20
\IMPLEMENT|CUSTOM_GRID|WideNor0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|WideNor0~0_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\ & (((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\) # 
-- (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\)))) # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\ & 
-- ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\))) # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\ & (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|WideNor0~0_combout\);

-- Location: LCCOMB_X26_Y22_N20
\IMPLEMENT|CUSTOM_GRID|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Equal0~2_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\ & (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\ & 
-- \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_3~10_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_4~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y26_N10
\IMPLEMENT|CUSTOM_GRID|Equal14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Equal14~1_combout\ = (\IMPLEMENT|CUSTOM_GRID|Equal14~0_combout\ & (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Equal14~0_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Equal14~1_combout\);

-- Location: LCCOMB_X27_Y22_N26
\IMPLEMENT|CUSTOM_GRID|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Selector4~2_combout\ = (\IMPLEMENT|CUSTOM_GRID|WideNor0~0_combout\ & (\IMPLEMENT|CUSTOM_GRID|Equal0~2_combout\ & \IMPLEMENT|CUSTOM_GRID|Equal14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|CUSTOM_GRID|WideNor0~0_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Equal0~2_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Equal14~1_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Selector4~2_combout\);

-- Location: LCCOMB_X27_Y22_N2
\IMPLEMENT|CUSTOM_GRID|Selector4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Selector4~4_combout\ = (\IMPLEMENT|CUSTOM_GRID|Selector4~1_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Selector4~3_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Equal4~2_combout\ & \IMPLEMENT|CUSTOM_GRID|Selector4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Selector4~3_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Equal4~2_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Selector4~1_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Selector4~2_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Selector4~4_combout\);

-- Location: LCCOMB_X34_Y22_N20
\IMPLEMENT|COMPANION|LINE_SELECT|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add0~6_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[93]~124_combout\ & (\IMPLEMENT|COMPANION|LINE_SELECT|Add0~5\ & VCC)) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[93]~124_combout\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Add0~5\))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add0~7\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[93]~124_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[93]~124_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~5\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~6_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~7\);

-- Location: LCCOMB_X34_Y22_N2
\IMPLEMENT|COMPANION|LINE_SELECT|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add1~0_combout\ = (\IMPLEMENT|CUSTOM_GRID|Selector4~4_combout\ & (\IMPLEMENT|COMPANION|LINE_SELECT|Add0~6_combout\ $ (VCC))) # (!\IMPLEMENT|CUSTOM_GRID|Selector4~4_combout\ & 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Add0~6_combout\ & VCC))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add1~1\ = CARRY((\IMPLEMENT|CUSTOM_GRID|Selector4~4_combout\ & \IMPLEMENT|COMPANION|LINE_SELECT|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Selector4~4_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~6_combout\,
	datad => VCC,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~0_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~1\);

-- Location: LCCOMB_X32_Y22_N30
\IMPLEMENT|COMPANION|LINE_SELECT|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add1~2_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Add1~0_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|process_0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~0_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|process_0~5_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~2_combout\);

-- Location: LCCOMB_X34_Y22_N22
\IMPLEMENT|COMPANION|LINE_SELECT|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add0~8_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[94]~125_combout\ & ((GND) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Add0~7\))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[94]~125_combout\ & (\IMPLEMENT|COMPANION|LINE_SELECT|Add0~7\ $ (GND)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add0~9\ = CARRY((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[94]~125_combout\) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[94]~125_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~7\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~8_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~9\);

-- Location: LCCOMB_X26_Y22_N24
\IMPLEMENT|CUSTOM_GRID|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Selector3~1_combout\ = (\IMPLEMENT|CUSTOM_GRID|Equal0~3_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\))) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\ & !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Equal0~3_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Selector3~1_combout\);

-- Location: LCCOMB_X26_Y22_N6
\IMPLEMENT|CUSTOM_GRID|WideNor1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|WideNor1~0_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\) # 
-- ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\ & \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|WideNor1~0_combout\);

-- Location: LCCOMB_X26_Y22_N16
\IMPLEMENT|CUSTOM_GRID|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Selector3~2_combout\ = (\IMPLEMENT|CUSTOM_GRID|WideNor1~0_combout\ & (\IMPLEMENT|CUSTOM_GRID|Equal0~2_combout\ & \IMPLEMENT|CUSTOM_GRID|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|WideNor1~0_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Equal0~2_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Equal15~0_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Selector3~2_combout\);

-- Location: LCCOMB_X26_Y22_N12
\IMPLEMENT|CUSTOM_GRID|Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Equal8~0_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\ & (\IMPLEMENT|CUSTOM_GRID|Equal0~3_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Equal0~3_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Equal8~0_combout\);

-- Location: LCCOMB_X26_Y22_N26
\IMPLEMENT|CUSTOM_GRID|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Selector3~0_combout\ = ((!\IMPLEMENT|CUSTOM_GRID|Equal8~0_combout\ & \IMPLEMENT|CUSTOM_GRID|Selector4~3_combout\)) # (!\IMPLEMENT|CUSTOM_GRID|Equal14~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Equal8~0_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Selector4~3_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Equal14~1_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Selector3~0_combout\);

-- Location: LCCOMB_X26_Y22_N18
\IMPLEMENT|CUSTOM_GRID|Selector3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Selector3~3_combout\ = (\IMPLEMENT|CUSTOM_GRID|Selector3~0_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Selector3~1_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Equal5~3_combout\) # (!\IMPLEMENT|CUSTOM_GRID|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Selector3~1_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Selector3~2_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Equal5~3_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Selector3~0_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Selector3~3_combout\);

-- Location: LCCOMB_X34_Y22_N4
\IMPLEMENT|COMPANION|LINE_SELECT|Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add1~3_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Add0~8_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Selector3~3_combout\ & (\IMPLEMENT|COMPANION|LINE_SELECT|Add1~1\ & VCC)) # (!\IMPLEMENT|CUSTOM_GRID|Selector3~3_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Add1~1\)))) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Add0~8_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Selector3~3_combout\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Add1~1\)) # (!\IMPLEMENT|CUSTOM_GRID|Selector3~3_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Add1~1\) # (GND)))))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add1~4\ = CARRY((\IMPLEMENT|COMPANION|LINE_SELECT|Add0~8_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Selector3~3_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Add1~1\)) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Add0~8_combout\ & 
-- ((!\IMPLEMENT|COMPANION|LINE_SELECT|Add1~1\) # (!\IMPLEMENT|CUSTOM_GRID|Selector3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~8_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Selector3~3_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~1\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~3_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~4\);

-- Location: LCCOMB_X32_Y22_N8
\IMPLEMENT|COMPANION|LINE_SELECT|Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add1~5_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|process_0~5_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Add1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|process_0~5_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~3_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~5_combout\);

-- Location: LCCOMB_X29_Y22_N8
\IMPLEMENT|CUSTOM_GRID|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Selector2~1_combout\ = ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\) # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\)) # (!\IMPLEMENT|CUSTOM_GRID|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Equal0~3_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Selector2~1_combout\);

-- Location: LCCOMB_X29_Y22_N22
\IMPLEMENT|CUSTOM_GRID|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Selector2~2_combout\ = (\IMPLEMENT|CUSTOM_GRID|Selector2~1_combout\ & (\IMPLEMENT|CUSTOM_GRID|Equal14~1_combout\ & (\IMPLEMENT|CUSTOM_GRID|WideNor0~0_combout\ & \IMPLEMENT|CUSTOM_GRID|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Selector2~1_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Equal14~1_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|WideNor0~0_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Equal0~2_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Selector2~2_combout\);

-- Location: LCCOMB_X26_Y22_N8
\IMPLEMENT|CUSTOM_GRID|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Selector2~0_combout\ = (!\IMPLEMENT|CUSTOM_GRID|Equal8~0_combout\ & ((!\IMPLEMENT|CUSTOM_GRID|Equal0~2_combout\) # (!\IMPLEMENT|CUSTOM_GRID|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Equal8~0_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Equal5~2_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Equal0~2_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Selector2~0_combout\);

-- Location: LCCOMB_X29_Y22_N28
\IMPLEMENT|CUSTOM_GRID|Selector2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Selector2~3_combout\ = (\IMPLEMENT|CUSTOM_GRID|Equal0~3_combout\ & (((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\) # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\)) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Equal0~3_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Selector2~3_combout\);

-- Location: LCCOMB_X29_Y22_N26
\IMPLEMENT|CUSTOM_GRID|Selector2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Selector2~4_combout\ = (\IMPLEMENT|CUSTOM_GRID|Selector2~2_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Selector2~0_combout\) # ((\IMPLEMENT|CUSTOM_GRID|Equal15~0_combout\ & \IMPLEMENT|CUSTOM_GRID|Selector2~3_combout\)))) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Selector2~2_combout\ & (\IMPLEMENT|CUSTOM_GRID|Equal15~0_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Selector2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Selector2~2_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Equal15~0_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Selector2~0_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Selector2~3_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Selector2~4_combout\);

-- Location: LCCOMB_X34_Y22_N24
\IMPLEMENT|COMPANION|LINE_SELECT|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add0~10_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[95]~123_combout\ & (\IMPLEMENT|COMPANION|LINE_SELECT|Add0~9\ & VCC)) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[95]~123_combout\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Add0~9\))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add0~11\ = CARRY((!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[95]~123_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[95]~123_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~9\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~10_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~11\);

-- Location: LCCOMB_X34_Y22_N6
\IMPLEMENT|COMPANION|LINE_SELECT|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add1~6_combout\ = ((\IMPLEMENT|CUSTOM_GRID|Selector2~4_combout\ $ (\IMPLEMENT|COMPANION|LINE_SELECT|Add0~10_combout\ $ (!\IMPLEMENT|COMPANION|LINE_SELECT|Add1~4\)))) # (GND)
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add1~7\ = CARRY((\IMPLEMENT|CUSTOM_GRID|Selector2~4_combout\ & ((\IMPLEMENT|COMPANION|LINE_SELECT|Add0~10_combout\) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Add1~4\))) # (!\IMPLEMENT|CUSTOM_GRID|Selector2~4_combout\ & 
-- (\IMPLEMENT|COMPANION|LINE_SELECT|Add0~10_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Add1~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Selector2~4_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~10_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~4\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~6_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~7\);

-- Location: LCCOMB_X34_Y22_N0
\IMPLEMENT|COMPANION|LINE_SELECT|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add1~8_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Add1~6_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|process_0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~6_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|process_0~5_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~8_combout\);

-- Location: LCCOMB_X34_Y22_N26
\IMPLEMENT|COMPANION|LINE_SELECT|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add0~12_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[96]~122_combout\ & ((GND) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Add0~11\))) # 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[96]~122_combout\ & (\IMPLEMENT|COMPANION|LINE_SELECT|Add0~11\ $ (GND)))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add0~13\ = CARRY((\IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[96]~122_combout\) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[96]~122_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~11\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~12_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~13\);

-- Location: LCCOMB_X29_Y22_N24
\IMPLEMENT|CUSTOM_GRID|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Selector1~1_combout\ = ((\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\ & ((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\))) # (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\))) # (!\IMPLEMENT|CUSTOM_GRID|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Equal0~3_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_7~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Selector1~1_combout\);

-- Location: LCCOMB_X29_Y22_N2
\IMPLEMENT|CUSTOM_GRID|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Selector1~2_combout\ = (\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\) # (((!\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\ & 
-- !\IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\)) # (!\IMPLEMENT|CUSTOM_GRID|Equal4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_6~10_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Equal4~3_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_8~10_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Div0|auto_generated|divider|divider|op_5~10_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Selector1~2_combout\);

-- Location: LCCOMB_X29_Y22_N12
\IMPLEMENT|CUSTOM_GRID|Selector1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Selector1~3_combout\ = ((\IMPLEMENT|CUSTOM_GRID|Selector1~1_combout\ & \IMPLEMENT|CUSTOM_GRID|Selector1~2_combout\)) # (!\IMPLEMENT|CUSTOM_GRID|Equal15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|CUSTOM_GRID|Selector1~1_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Selector1~2_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Equal15~0_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Selector1~3_combout\);

-- Location: LCCOMB_X29_Y22_N18
\IMPLEMENT|CUSTOM_GRID|Selector1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Selector1~4_combout\ = (\IMPLEMENT|CUSTOM_GRID|Selector1~3_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Equal4~2_combout\) # (!\IMPLEMENT|CUSTOM_GRID|Selector2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Selector2~2_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Equal4~2_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Selector1~3_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Selector1~4_combout\);

-- Location: LCCOMB_X34_Y22_N8
\IMPLEMENT|COMPANION|LINE_SELECT|Add1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add1~9_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Add0~12_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Selector1~4_combout\ & (\IMPLEMENT|COMPANION|LINE_SELECT|Add1~7\ & VCC)) # (!\IMPLEMENT|CUSTOM_GRID|Selector1~4_combout\ & 
-- (!\IMPLEMENT|COMPANION|LINE_SELECT|Add1~7\)))) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Add0~12_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Selector1~4_combout\ & (!\IMPLEMENT|COMPANION|LINE_SELECT|Add1~7\)) # (!\IMPLEMENT|CUSTOM_GRID|Selector1~4_combout\ & 
-- ((\IMPLEMENT|COMPANION|LINE_SELECT|Add1~7\) # (GND)))))
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add1~10\ = CARRY((\IMPLEMENT|COMPANION|LINE_SELECT|Add0~12_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Selector1~4_combout\ & !\IMPLEMENT|COMPANION|LINE_SELECT|Add1~7\)) # (!\IMPLEMENT|COMPANION|LINE_SELECT|Add0~12_combout\ & 
-- ((!\IMPLEMENT|COMPANION|LINE_SELECT|Add1~7\) # (!\IMPLEMENT|CUSTOM_GRID|Selector1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~12_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Selector1~4_combout\,
	datad => VCC,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~7\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~9_combout\,
	cout => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~10\);

-- Location: LCCOMB_X34_Y22_N12
\IMPLEMENT|COMPANION|LINE_SELECT|Add1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add1~11_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|Add1~9_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|process_0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~9_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|process_0~5_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~11_combout\);

-- Location: LCCOMB_X26_Y22_N10
\IMPLEMENT|CUSTOM_GRID|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|CUSTOM_GRID|Selector0~0_combout\ = (\IMPLEMENT|CUSTOM_GRID|Selector4~2_combout\ & (!\IMPLEMENT|CUSTOM_GRID|Selector2~0_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Equal4~2_combout\) # (!\IMPLEMENT|CUSTOM_GRID|Selector3~2_combout\)))) # 
-- (!\IMPLEMENT|CUSTOM_GRID|Selector4~2_combout\ & ((\IMPLEMENT|CUSTOM_GRID|Equal4~2_combout\) # ((!\IMPLEMENT|CUSTOM_GRID|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Selector4~2_combout\,
	datab => \IMPLEMENT|CUSTOM_GRID|Equal4~2_combout\,
	datac => \IMPLEMENT|CUSTOM_GRID|Selector3~2_combout\,
	datad => \IMPLEMENT|CUSTOM_GRID|Selector2~0_combout\,
	combout => \IMPLEMENT|CUSTOM_GRID|Selector0~0_combout\);

-- Location: LCCOMB_X34_Y22_N28
\IMPLEMENT|COMPANION|LINE_SELECT|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add0~14_combout\ = \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[97]~121_combout\ $ (!\IMPLEMENT|COMPANION|LINE_SELECT|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Mod0|auto_generated|divider|divider|StageOut[97]~121_combout\,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~13\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~14_combout\);

-- Location: LCCOMB_X34_Y22_N10
\IMPLEMENT|COMPANION|LINE_SELECT|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add1~12_combout\ = \IMPLEMENT|CUSTOM_GRID|Selector0~0_combout\ $ (\IMPLEMENT|COMPANION|LINE_SELECT|Add0~14_combout\ $ (!\IMPLEMENT|COMPANION|LINE_SELECT|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|CUSTOM_GRID|Selector0~0_combout\,
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|Add0~14_combout\,
	cin => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~10\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~12_combout\);

-- Location: LCCOMB_X34_Y22_N30
\IMPLEMENT|COMPANION|LINE_SELECT|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|LINE_SELECT|Add1~14_combout\ = (\IMPLEMENT|COMPANION|LINE_SELECT|process_0~5_combout\) # (\IMPLEMENT|COMPANION|LINE_SELECT|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IMPLEMENT|COMPANION|LINE_SELECT|process_0~5_combout\,
	datad => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~12_combout\,
	combout => \IMPLEMENT|COMPANION|LINE_SELECT|Add1~14_combout\);

-- Location: M9K_X33_Y22_N0
\IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000C00000000C000600030000CC001E00000000C00000000C000600030000CC001E00000000C00000000C000600030000CC001E00000000C00000000C00",
	mem_init1 => X"0600030000CC001E00000000C00000000C000600030000CC001E00000000000000000000000000000000000000000007F00198004C0006000310018C007F00000001E00030000C000780033000CC0033000000063000D8001C0007000360018C0063000000063001DC007F001AC00630018C006300000000C000780033000CC0033000CC003300000003F000CC0033000CC0033000CC003300000001E00030000C00030000C000B4003F00000001E000CC0038000380007000CC001E000000067001980036000F8006600198003F00000003800078003B000CC0033000CC001E00000000F000180006000F8006600198003F00000001C000D800630018C00630",
	mem_init0 => X"00D8001C0000000630018C0073001EC006F0019C00630000000630018C006B001FC007F001DC006300000007F00198004600018000600018000F00000006700198003600078003600198006700000001E000CC0033000C00030000C0007800000001E00030000C00030000C00030001E000000033000CC0033000FC0033000CC003300000007C0019800730000C000300198003C00000000F00018001600078001600118007F00000007F00118001600078001600118007F00000001F000D80066001980066000D8001F00000003C0019800030000C000300198003C00000003F001980066000F8006600198003F000000033000CC003F000CC003300078000C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Alpha1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_char_message:IMPLEMENT|vga_char_companion:COMPANION|rom_8bit:CHAR_ROM|altsyncram:altsyncram_component|altsyncram_0fq3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	portaaddr => \IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X31_Y22_N26
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~121_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\ & (\IMPLEMENT|VGA|h_count\(1) & 
-- ((!\IMPLEMENT|VGA|h_display_on~1_combout\)))) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\ & (((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|h_count\(1),
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~0_combout\,
	datac => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~121_combout\);

-- Location: LCCOMB_X31_Y22_N24
\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~6_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\ & (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~121_combout\)) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~121_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~2_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~6_combout\);

-- Location: LCCOMB_X31_Y22_N28
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~120_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~114_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~158_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\ & (((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~114_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[81]~158_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~4_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~120_combout\);

-- Location: LCCOMB_X31_Y22_N22
\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~7_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~6_combout\ & ((\IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(5)) # 
-- ((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~120_combout\)))) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~6_combout\ & (((\IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(3) & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(5),
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~6_combout\,
	datac => \IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(3),
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~120_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~7_combout\);

-- Location: LCCOMB_X31_Y22_N20
\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~8_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~7_combout\ & (((\IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(1)) # 
-- (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~120_combout\)))) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~7_combout\ & (\IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(7) & 
-- ((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(7),
	datab => \IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(1),
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~7_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~120_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~8_combout\);

-- Location: LCCOMB_X31_Y22_N0
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[93]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[93]~118_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\ & 
-- (((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~157_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~113_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\ & (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~6_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~157_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[82]~113_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[93]~118_combout\);

-- Location: LCCOMB_X31_Y22_N18
\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~9_combout\ = (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[90]~119_combout\ & (\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~8_combout\ & 
-- (\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~7_combout\ $ (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[93]~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[90]~119_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~8_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~7_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[93]~118_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~9_combout\);

-- Location: LCCOMB_X30_Y23_N30
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[98]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[98]~107_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~145_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~98_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\ & (((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~145_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[76]~98_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[98]~107_combout\);

-- Location: LCCOMB_X30_Y22_N28
\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~0_combout\ = ((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~151_combout\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~106_combout\ & 
-- !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[98]~107_combout\))) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~151_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[88]~106_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[98]~107_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~0_combout\);

-- Location: LCCOMB_X30_Y23_N26
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[96]~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[96]~117_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~100_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~147_combout\)))) # 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\ & (((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~100_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[74]~147_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~10_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[96]~117_combout\);

-- Location: LCCOMB_X30_Y20_N14
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[97]~159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[97]~159_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~153_combout\) # ((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\ & 
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~18_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_7~12_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[86]~153_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[97]~159_combout\);

-- Location: LCCOMB_X30_Y22_N26
\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~2_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\) # ((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~8_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~12_combout\ & !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~8_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~12_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~10_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~2_combout\);

-- Location: LCCOMB_X30_Y22_N0
\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~3_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~111_combout\) # ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~155_combout\) # 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~112_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~156_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~111_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[84]~155_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~112_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[83]~156_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~3_combout\);

-- Location: LCCOMB_X30_Y22_N30
\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~1_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\) # ((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~16_combout\ & 
-- (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~14_combout\ & !\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~14_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~18_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~1_combout\);

-- Location: LCCOMB_X30_Y22_N2
\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~4_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~2_combout\ & (\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~1_combout\ & ((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\) 
-- # (!\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~2_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~3_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~1_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~4_combout\);

-- Location: LCCOMB_X24_Y20_N22
\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~5_combout\ = (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[97]~159_combout\ & (\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~4_combout\ & 
-- ((!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[96]~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[96]~117_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[97]~159_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~4_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~5_combout\);

-- Location: LCCOMB_X31_Y22_N4
\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~122_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\ & 
-- (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~121_combout\)) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~121_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~2_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|op_8~20_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~122_combout\);

-- Location: LCCOMB_X31_Y22_N8
\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~11_combout\ = (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~120_combout\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~122_combout\ & 
-- ((\IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(2)))) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~122_combout\ & 
-- (\IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(0),
	datab => \IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(2),
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~122_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~120_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~11_combout\);

-- Location: LCCOMB_X31_Y22_N14
\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~10_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~120_combout\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~122_combout\ & 
-- (\IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(6))) # (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~122_combout\ & 
-- ((\IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(6),
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[91]~122_combout\,
	datac => \IMPLEMENT|COMPANION|CHAR_ROM|altsyncram_component|auto_generated|q_a\(4),
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[92]~120_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~10_combout\);

-- Location: LCCOMB_X31_Y22_N6
\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~12_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[90]~119_combout\ & (!\IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[93]~118_combout\ & 
-- ((\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~11_combout\) # (\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[90]~119_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~11_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~10_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Mod0|auto_generated|divider|divider|StageOut[93]~118_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~12_combout\);

-- Location: LCCOMB_X24_Y20_N24
\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~13_combout\ = (\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~0_combout\ & (\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~5_combout\ & ((\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~9_combout\) # 
-- (\IMPLEMENT|COMPANION|BIT_SELECT|Selector0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~9_combout\,
	datab => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~0_combout\,
	datac => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~5_combout\,
	datad => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~12_combout\,
	combout => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~13_combout\);

-- Location: FF_X24_Y20_N25
\IMPLEMENT|VGA|red[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \IMPLEMENT|COMPANION|BIT_SELECT|Selector0~13_combout\,
	clrn => \IMPLEMENT|PLL|altpll_component|auto_generated|wire_pll1_locked\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IMPLEMENT|VGA|red\(3));

-- Location: LCCOMB_X29_Y14_N16
\IMPLEMENT|VGA|red_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IMPLEMENT|VGA|red_out[0]~0_combout\ = (!\IMPLEMENT|VGA|v_display_on~4_combout\ & (!\IMPLEMENT|VGA|h_display_on~1_combout\ & \IMPLEMENT|VGA|red\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IMPLEMENT|VGA|v_display_on~4_combout\,
	datac => \IMPLEMENT|VGA|h_display_on~1_combout\,
	datad => \IMPLEMENT|VGA|red\(3),
	combout => \IMPLEMENT|VGA|red_out[0]~0_combout\);

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
END structure;


