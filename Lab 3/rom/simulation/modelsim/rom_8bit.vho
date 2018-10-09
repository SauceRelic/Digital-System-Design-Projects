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

-- DATE "10/08/2018 19:16:56"

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

ENTITY 	rom_8bit_de10 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END rom_8bit_de10;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rom_8bit_de10 IS
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
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \COUNTER|CLOCK|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[7]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[0]~26_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[0]~27\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[1]~28_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[1]~29\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[2]~30_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[2]~31\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[3]~32_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[3]~33\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[4]~34_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[4]~35\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[5]~36_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[5]~37\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[6]~38_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[6]~39\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[7]~40_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[7]~41\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[8]~42_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[8]~43\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[9]~44_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[9]~45\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[10]~46_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[10]~47\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[11]~48_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[11]~49\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[12]~50_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[12]~51\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[13]~52_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[13]~53\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[14]~54_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[14]~55\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[15]~56_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[15]~57\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[16]~58_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[16]~59\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[17]~60_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[17]~61\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[18]~62_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[18]~63\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[19]~64_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[19]~65\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[20]~66_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[20]~67\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[21]~68_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[21]~69\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[22]~70_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[22]~71\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[23]~72_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[23]~73\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[24]~74_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[24]~75\ : std_logic;
SIGNAL \COUNTER|CLOCK|cnt[25]~76_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|clk_out~0_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|clk_out~feeder_combout\ : std_logic;
SIGNAL \COUNTER|CLOCK|clk_out~q\ : std_logic;
SIGNAL \COUNTER|CLOCK|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|Add0~1\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|Add0~2_combout\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|Add0~5\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|Add0~6_combout\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|count[3]~5_combout\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|Add0~7\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|Add0~8_combout\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|count[4]~6_combout\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|Add0~9\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|Add0~10_combout\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|count[5]~7_combout\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|Add0~11\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|Add0~12_combout\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|count[6]~8_combout\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|Add0~13\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|Add0~14_combout\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|count[7]~9_combout\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|Equal0~0_combout\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|count[1]~0_combout\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|count[1]~3_combout\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|Add0~3\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|Add0~4_combout\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|count[2]~4_combout\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|Equal0~1_combout\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|count[0]~1_combout\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|Add0~0_combout\ : std_logic;
SIGNAL \COUNTER|G_COUNTER|count[0]~2_combout\ : std_logic;
SIGNAL \SEG0|Mux6~0_combout\ : std_logic;
SIGNAL \SEG0|Mux5~0_combout\ : std_logic;
SIGNAL \SEG0|Mux4~0_combout\ : std_logic;
SIGNAL \SEG0|Mux3~0_combout\ : std_logic;
SIGNAL \SEG0|Mux2~0_combout\ : std_logic;
SIGNAL \SEG0|Mux1~0_combout\ : std_logic;
SIGNAL \SEG0|Mux0~0_combout\ : std_logic;
SIGNAL \SEG1|Mux6~0_combout\ : std_logic;
SIGNAL \SEG1|Mux5~0_combout\ : std_logic;
SIGNAL \SEG1|Mux4~0_combout\ : std_logic;
SIGNAL \SEG1|Mux3~0_combout\ : std_logic;
SIGNAL \SEG1|Mux2~0_combout\ : std_logic;
SIGNAL \SEG1|Mux1~0_combout\ : std_logic;
SIGNAL \SEG1|Mux0~0_combout\ : std_logic;
SIGNAL \ROM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \COUNTER|CLOCK|cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \COUNTER|G_COUNTER|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SEG1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SEG0|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ROM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\COUNTER|G_COUNTER|count\(7) & \COUNTER|G_COUNTER|count\(6) & \COUNTER|G_COUNTER|count\(5) & \COUNTER|G_COUNTER|count\(4) & \COUNTER|G_COUNTER|count\(3) & 
\COUNTER|G_COUNTER|count\(2) & \COUNTER|G_COUNTER|count\(1) & \COUNTER|G_COUNTER|count\(0));

\ROM|altsyncram_component|auto_generated|q_a\(0) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\ROM|altsyncram_component|auto_generated|q_a\(1) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\ROM|altsyncram_component|auto_generated|q_a\(2) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\ROM|altsyncram_component|auto_generated|q_a\(3) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\ROM|altsyncram_component|auto_generated|q_a\(4) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\ROM|altsyncram_component|auto_generated|q_a\(5) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\ROM|altsyncram_component|auto_generated|q_a\(6) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\ROM|altsyncram_component|auto_generated|q_a\(7) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\COUNTER|CLOCK|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \COUNTER|CLOCK|clk_out~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\SEG1|ALT_INV_Mux0~0_combout\ <= NOT \SEG1|Mux0~0_combout\;
\SEG0|ALT_INV_Mux0~0_combout\ <= NOT \SEG0|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X46_Y54_N2
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNTER|G_COUNTER|count\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNTER|G_COUNTER|count\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNTER|G_COUNTER|count\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNTER|G_COUNTER|count\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNTER|G_COUNTER|count\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LEDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNTER|G_COUNTER|count\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LEDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNTER|G_COUNTER|count\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LEDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNTER|G_COUNTER|count\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG0|Mux6~0_combout\,
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
	i => \SEG0|Mux5~0_combout\,
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
	i => \SEG0|Mux4~0_combout\,
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
	i => \SEG0|Mux3~0_combout\,
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
	i => \SEG0|Mux2~0_combout\,
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
	i => \SEG0|Mux1~0_combout\,
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
	i => \SEG0|ALT_INV_Mux0~0_combout\,
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

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG1|Mux6~0_combout\,
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
	i => \SEG1|Mux5~0_combout\,
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
	i => \SEG1|Mux4~0_combout\,
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
	i => \SEG1|Mux3~0_combout\,
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
	i => \SEG1|Mux2~0_combout\,
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
	i => \SEG1|Mux1~0_combout\,
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
	i => \SEG1|ALT_INV_Mux0~0_combout\,
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
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[7]~output_o\);

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

-- Location: LCCOMB_X44_Y52_N6
\COUNTER|CLOCK|cnt[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[0]~26_combout\ = \COUNTER|CLOCK|cnt\(0) $ (VCC)
-- \COUNTER|CLOCK|cnt[0]~27\ = CARRY(\COUNTER|CLOCK|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|CLOCK|cnt\(0),
	datad => VCC,
	combout => \COUNTER|CLOCK|cnt[0]~26_combout\,
	cout => \COUNTER|CLOCK|cnt[0]~27\);

-- Location: FF_X44_Y52_N7
\COUNTER|CLOCK|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[0]~26_combout\,
	asdata => VCC,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(0));

-- Location: LCCOMB_X44_Y52_N8
\COUNTER|CLOCK|cnt[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[1]~28_combout\ = (\COUNTER|CLOCK|cnt\(1) & (\COUNTER|CLOCK|cnt[0]~27\ & VCC)) # (!\COUNTER|CLOCK|cnt\(1) & (!\COUNTER|CLOCK|cnt[0]~27\))
-- \COUNTER|CLOCK|cnt[1]~29\ = CARRY((!\COUNTER|CLOCK|cnt\(1) & !\COUNTER|CLOCK|cnt[0]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|CLOCK|cnt\(1),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[0]~27\,
	combout => \COUNTER|CLOCK|cnt[1]~28_combout\,
	cout => \COUNTER|CLOCK|cnt[1]~29\);

-- Location: FF_X44_Y52_N9
\COUNTER|CLOCK|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[1]~28_combout\,
	asdata => VCC,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(1));

-- Location: LCCOMB_X44_Y52_N10
\COUNTER|CLOCK|cnt[2]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[2]~30_combout\ = (\COUNTER|CLOCK|cnt\(2) & ((GND) # (!\COUNTER|CLOCK|cnt[1]~29\))) # (!\COUNTER|CLOCK|cnt\(2) & (\COUNTER|CLOCK|cnt[1]~29\ $ (GND)))
-- \COUNTER|CLOCK|cnt[2]~31\ = CARRY((\COUNTER|CLOCK|cnt\(2)) # (!\COUNTER|CLOCK|cnt[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|CLOCK|cnt\(2),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[1]~29\,
	combout => \COUNTER|CLOCK|cnt[2]~30_combout\,
	cout => \COUNTER|CLOCK|cnt[2]~31\);

-- Location: FF_X44_Y52_N11
\COUNTER|CLOCK|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[2]~30_combout\,
	asdata => VCC,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(2));

-- Location: LCCOMB_X44_Y52_N12
\COUNTER|CLOCK|cnt[3]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[3]~32_combout\ = (\COUNTER|CLOCK|cnt\(3) & (\COUNTER|CLOCK|cnt[2]~31\ & VCC)) # (!\COUNTER|CLOCK|cnt\(3) & (!\COUNTER|CLOCK|cnt[2]~31\))
-- \COUNTER|CLOCK|cnt[3]~33\ = CARRY((!\COUNTER|CLOCK|cnt\(3) & !\COUNTER|CLOCK|cnt[2]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|CLOCK|cnt\(3),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[2]~31\,
	combout => \COUNTER|CLOCK|cnt[3]~32_combout\,
	cout => \COUNTER|CLOCK|cnt[3]~33\);

-- Location: FF_X44_Y52_N13
\COUNTER|CLOCK|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[3]~32_combout\,
	asdata => VCC,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(3));

-- Location: LCCOMB_X44_Y52_N14
\COUNTER|CLOCK|cnt[4]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[4]~34_combout\ = (\COUNTER|CLOCK|cnt\(4) & ((GND) # (!\COUNTER|CLOCK|cnt[3]~33\))) # (!\COUNTER|CLOCK|cnt\(4) & (\COUNTER|CLOCK|cnt[3]~33\ $ (GND)))
-- \COUNTER|CLOCK|cnt[4]~35\ = CARRY((\COUNTER|CLOCK|cnt\(4)) # (!\COUNTER|CLOCK|cnt[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|CLOCK|cnt\(4),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[3]~33\,
	combout => \COUNTER|CLOCK|cnt[4]~34_combout\,
	cout => \COUNTER|CLOCK|cnt[4]~35\);

-- Location: FF_X44_Y52_N15
\COUNTER|CLOCK|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[4]~34_combout\,
	asdata => VCC,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(4));

-- Location: LCCOMB_X44_Y52_N16
\COUNTER|CLOCK|cnt[5]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[5]~36_combout\ = (\COUNTER|CLOCK|cnt\(5) & (\COUNTER|CLOCK|cnt[4]~35\ & VCC)) # (!\COUNTER|CLOCK|cnt\(5) & (!\COUNTER|CLOCK|cnt[4]~35\))
-- \COUNTER|CLOCK|cnt[5]~37\ = CARRY((!\COUNTER|CLOCK|cnt\(5) & !\COUNTER|CLOCK|cnt[4]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|CLOCK|cnt\(5),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[4]~35\,
	combout => \COUNTER|CLOCK|cnt[5]~36_combout\,
	cout => \COUNTER|CLOCK|cnt[5]~37\);

-- Location: FF_X44_Y52_N17
\COUNTER|CLOCK|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[5]~36_combout\,
	asdata => VCC,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(5));

-- Location: LCCOMB_X44_Y52_N18
\COUNTER|CLOCK|cnt[6]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[6]~38_combout\ = (\COUNTER|CLOCK|cnt\(6) & ((GND) # (!\COUNTER|CLOCK|cnt[5]~37\))) # (!\COUNTER|CLOCK|cnt\(6) & (\COUNTER|CLOCK|cnt[5]~37\ $ (GND)))
-- \COUNTER|CLOCK|cnt[6]~39\ = CARRY((\COUNTER|CLOCK|cnt\(6)) # (!\COUNTER|CLOCK|cnt[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|CLOCK|cnt\(6),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[5]~37\,
	combout => \COUNTER|CLOCK|cnt[6]~38_combout\,
	cout => \COUNTER|CLOCK|cnt[6]~39\);

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: FF_X44_Y52_N19
\COUNTER|CLOCK|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[6]~38_combout\,
	asdata => \~GND~combout\,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(6));

-- Location: LCCOMB_X44_Y52_N20
\COUNTER|CLOCK|cnt[7]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[7]~40_combout\ = (\COUNTER|CLOCK|cnt\(7) & (\COUNTER|CLOCK|cnt[6]~39\ & VCC)) # (!\COUNTER|CLOCK|cnt\(7) & (!\COUNTER|CLOCK|cnt[6]~39\))
-- \COUNTER|CLOCK|cnt[7]~41\ = CARRY((!\COUNTER|CLOCK|cnt\(7) & !\COUNTER|CLOCK|cnt[6]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|CLOCK|cnt\(7),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[6]~39\,
	combout => \COUNTER|CLOCK|cnt[7]~40_combout\,
	cout => \COUNTER|CLOCK|cnt[7]~41\);

-- Location: FF_X44_Y52_N21
\COUNTER|CLOCK|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[7]~40_combout\,
	asdata => \~GND~combout\,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(7));

-- Location: LCCOMB_X44_Y52_N22
\COUNTER|CLOCK|cnt[8]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[8]~42_combout\ = (\COUNTER|CLOCK|cnt\(8) & ((GND) # (!\COUNTER|CLOCK|cnt[7]~41\))) # (!\COUNTER|CLOCK|cnt\(8) & (\COUNTER|CLOCK|cnt[7]~41\ $ (GND)))
-- \COUNTER|CLOCK|cnt[8]~43\ = CARRY((\COUNTER|CLOCK|cnt\(8)) # (!\COUNTER|CLOCK|cnt[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|CLOCK|cnt\(8),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[7]~41\,
	combout => \COUNTER|CLOCK|cnt[8]~42_combout\,
	cout => \COUNTER|CLOCK|cnt[8]~43\);

-- Location: FF_X44_Y52_N23
\COUNTER|CLOCK|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[8]~42_combout\,
	asdata => \~GND~combout\,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(8));

-- Location: LCCOMB_X44_Y52_N24
\COUNTER|CLOCK|cnt[9]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[9]~44_combout\ = (\COUNTER|CLOCK|cnt\(9) & (\COUNTER|CLOCK|cnt[8]~43\ & VCC)) # (!\COUNTER|CLOCK|cnt\(9) & (!\COUNTER|CLOCK|cnt[8]~43\))
-- \COUNTER|CLOCK|cnt[9]~45\ = CARRY((!\COUNTER|CLOCK|cnt\(9) & !\COUNTER|CLOCK|cnt[8]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|CLOCK|cnt\(9),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[8]~43\,
	combout => \COUNTER|CLOCK|cnt[9]~44_combout\,
	cout => \COUNTER|CLOCK|cnt[9]~45\);

-- Location: FF_X44_Y52_N25
\COUNTER|CLOCK|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[9]~44_combout\,
	asdata => \~GND~combout\,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(9));

-- Location: LCCOMB_X44_Y52_N26
\COUNTER|CLOCK|cnt[10]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[10]~46_combout\ = (\COUNTER|CLOCK|cnt\(10) & ((GND) # (!\COUNTER|CLOCK|cnt[9]~45\))) # (!\COUNTER|CLOCK|cnt\(10) & (\COUNTER|CLOCK|cnt[9]~45\ $ (GND)))
-- \COUNTER|CLOCK|cnt[10]~47\ = CARRY((\COUNTER|CLOCK|cnt\(10)) # (!\COUNTER|CLOCK|cnt[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|CLOCK|cnt\(10),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[9]~45\,
	combout => \COUNTER|CLOCK|cnt[10]~46_combout\,
	cout => \COUNTER|CLOCK|cnt[10]~47\);

-- Location: FF_X44_Y52_N27
\COUNTER|CLOCK|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[10]~46_combout\,
	asdata => \~GND~combout\,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(10));

-- Location: LCCOMB_X44_Y52_N28
\COUNTER|CLOCK|cnt[11]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[11]~48_combout\ = (\COUNTER|CLOCK|cnt\(11) & (\COUNTER|CLOCK|cnt[10]~47\ & VCC)) # (!\COUNTER|CLOCK|cnt\(11) & (!\COUNTER|CLOCK|cnt[10]~47\))
-- \COUNTER|CLOCK|cnt[11]~49\ = CARRY((!\COUNTER|CLOCK|cnt\(11) & !\COUNTER|CLOCK|cnt[10]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|CLOCK|cnt\(11),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[10]~47\,
	combout => \COUNTER|CLOCK|cnt[11]~48_combout\,
	cout => \COUNTER|CLOCK|cnt[11]~49\);

-- Location: FF_X44_Y52_N29
\COUNTER|CLOCK|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[11]~48_combout\,
	asdata => VCC,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(11));

-- Location: LCCOMB_X44_Y52_N30
\COUNTER|CLOCK|cnt[12]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[12]~50_combout\ = (\COUNTER|CLOCK|cnt\(12) & ((GND) # (!\COUNTER|CLOCK|cnt[11]~49\))) # (!\COUNTER|CLOCK|cnt\(12) & (\COUNTER|CLOCK|cnt[11]~49\ $ (GND)))
-- \COUNTER|CLOCK|cnt[12]~51\ = CARRY((\COUNTER|CLOCK|cnt\(12)) # (!\COUNTER|CLOCK|cnt[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|CLOCK|cnt\(12),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[11]~49\,
	combout => \COUNTER|CLOCK|cnt[12]~50_combout\,
	cout => \COUNTER|CLOCK|cnt[12]~51\);

-- Location: FF_X44_Y52_N31
\COUNTER|CLOCK|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[12]~50_combout\,
	asdata => VCC,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(12));

-- Location: LCCOMB_X44_Y51_N0
\COUNTER|CLOCK|cnt[13]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[13]~52_combout\ = (\COUNTER|CLOCK|cnt\(13) & (\COUNTER|CLOCK|cnt[12]~51\ & VCC)) # (!\COUNTER|CLOCK|cnt\(13) & (!\COUNTER|CLOCK|cnt[12]~51\))
-- \COUNTER|CLOCK|cnt[13]~53\ = CARRY((!\COUNTER|CLOCK|cnt\(13) & !\COUNTER|CLOCK|cnt[12]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|CLOCK|cnt\(13),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[12]~51\,
	combout => \COUNTER|CLOCK|cnt[13]~52_combout\,
	cout => \COUNTER|CLOCK|cnt[13]~53\);

-- Location: FF_X44_Y51_N1
\COUNTER|CLOCK|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[13]~52_combout\,
	asdata => VCC,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(13));

-- Location: LCCOMB_X44_Y51_N2
\COUNTER|CLOCK|cnt[14]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[14]~54_combout\ = (\COUNTER|CLOCK|cnt\(14) & ((GND) # (!\COUNTER|CLOCK|cnt[13]~53\))) # (!\COUNTER|CLOCK|cnt\(14) & (\COUNTER|CLOCK|cnt[13]~53\ $ (GND)))
-- \COUNTER|CLOCK|cnt[14]~55\ = CARRY((\COUNTER|CLOCK|cnt\(14)) # (!\COUNTER|CLOCK|cnt[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|CLOCK|cnt\(14),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[13]~53\,
	combout => \COUNTER|CLOCK|cnt[14]~54_combout\,
	cout => \COUNTER|CLOCK|cnt[14]~55\);

-- Location: FF_X44_Y51_N3
\COUNTER|CLOCK|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[14]~54_combout\,
	asdata => VCC,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(14));

-- Location: LCCOMB_X44_Y51_N4
\COUNTER|CLOCK|cnt[15]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[15]~56_combout\ = (\COUNTER|CLOCK|cnt\(15) & (\COUNTER|CLOCK|cnt[14]~55\ & VCC)) # (!\COUNTER|CLOCK|cnt\(15) & (!\COUNTER|CLOCK|cnt[14]~55\))
-- \COUNTER|CLOCK|cnt[15]~57\ = CARRY((!\COUNTER|CLOCK|cnt\(15) & !\COUNTER|CLOCK|cnt[14]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|CLOCK|cnt\(15),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[14]~55\,
	combout => \COUNTER|CLOCK|cnt[15]~56_combout\,
	cout => \COUNTER|CLOCK|cnt[15]~57\);

-- Location: FF_X44_Y51_N5
\COUNTER|CLOCK|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[15]~56_combout\,
	asdata => \~GND~combout\,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(15));

-- Location: LCCOMB_X44_Y51_N6
\COUNTER|CLOCK|cnt[16]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[16]~58_combout\ = (\COUNTER|CLOCK|cnt\(16) & ((GND) # (!\COUNTER|CLOCK|cnt[15]~57\))) # (!\COUNTER|CLOCK|cnt\(16) & (\COUNTER|CLOCK|cnt[15]~57\ $ (GND)))
-- \COUNTER|CLOCK|cnt[16]~59\ = CARRY((\COUNTER|CLOCK|cnt\(16)) # (!\COUNTER|CLOCK|cnt[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|CLOCK|cnt\(16),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[15]~57\,
	combout => \COUNTER|CLOCK|cnt[16]~58_combout\,
	cout => \COUNTER|CLOCK|cnt[16]~59\);

-- Location: FF_X44_Y51_N7
\COUNTER|CLOCK|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[16]~58_combout\,
	asdata => VCC,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(16));

-- Location: LCCOMB_X44_Y51_N8
\COUNTER|CLOCK|cnt[17]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[17]~60_combout\ = (\COUNTER|CLOCK|cnt\(17) & (\COUNTER|CLOCK|cnt[16]~59\ & VCC)) # (!\COUNTER|CLOCK|cnt\(17) & (!\COUNTER|CLOCK|cnt[16]~59\))
-- \COUNTER|CLOCK|cnt[17]~61\ = CARRY((!\COUNTER|CLOCK|cnt\(17) & !\COUNTER|CLOCK|cnt[16]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|CLOCK|cnt\(17),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[16]~59\,
	combout => \COUNTER|CLOCK|cnt[17]~60_combout\,
	cout => \COUNTER|CLOCK|cnt[17]~61\);

-- Location: FF_X44_Y51_N9
\COUNTER|CLOCK|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[17]~60_combout\,
	asdata => \~GND~combout\,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(17));

-- Location: LCCOMB_X44_Y51_N10
\COUNTER|CLOCK|cnt[18]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[18]~62_combout\ = (\COUNTER|CLOCK|cnt\(18) & ((GND) # (!\COUNTER|CLOCK|cnt[17]~61\))) # (!\COUNTER|CLOCK|cnt\(18) & (\COUNTER|CLOCK|cnt[17]~61\ $ (GND)))
-- \COUNTER|CLOCK|cnt[18]~63\ = CARRY((\COUNTER|CLOCK|cnt\(18)) # (!\COUNTER|CLOCK|cnt[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|CLOCK|cnt\(18),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[17]~61\,
	combout => \COUNTER|CLOCK|cnt[18]~62_combout\,
	cout => \COUNTER|CLOCK|cnt[18]~63\);

-- Location: FF_X44_Y51_N11
\COUNTER|CLOCK|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[18]~62_combout\,
	asdata => VCC,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(18));

-- Location: LCCOMB_X44_Y51_N12
\COUNTER|CLOCK|cnt[19]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[19]~64_combout\ = (\COUNTER|CLOCK|cnt\(19) & (\COUNTER|CLOCK|cnt[18]~63\ & VCC)) # (!\COUNTER|CLOCK|cnt\(19) & (!\COUNTER|CLOCK|cnt[18]~63\))
-- \COUNTER|CLOCK|cnt[19]~65\ = CARRY((!\COUNTER|CLOCK|cnt\(19) & !\COUNTER|CLOCK|cnt[18]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|CLOCK|cnt\(19),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[18]~63\,
	combout => \COUNTER|CLOCK|cnt[19]~64_combout\,
	cout => \COUNTER|CLOCK|cnt[19]~65\);

-- Location: FF_X44_Y51_N13
\COUNTER|CLOCK|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[19]~64_combout\,
	asdata => VCC,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(19));

-- Location: LCCOMB_X44_Y51_N14
\COUNTER|CLOCK|cnt[20]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[20]~66_combout\ = (\COUNTER|CLOCK|cnt\(20) & ((GND) # (!\COUNTER|CLOCK|cnt[19]~65\))) # (!\COUNTER|CLOCK|cnt\(20) & (\COUNTER|CLOCK|cnt[19]~65\ $ (GND)))
-- \COUNTER|CLOCK|cnt[20]~67\ = CARRY((\COUNTER|CLOCK|cnt\(20)) # (!\COUNTER|CLOCK|cnt[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|CLOCK|cnt\(20),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[19]~65\,
	combout => \COUNTER|CLOCK|cnt[20]~66_combout\,
	cout => \COUNTER|CLOCK|cnt[20]~67\);

-- Location: FF_X44_Y51_N15
\COUNTER|CLOCK|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[20]~66_combout\,
	asdata => VCC,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(20));

-- Location: LCCOMB_X44_Y51_N16
\COUNTER|CLOCK|cnt[21]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[21]~68_combout\ = (\COUNTER|CLOCK|cnt\(21) & (\COUNTER|CLOCK|cnt[20]~67\ & VCC)) # (!\COUNTER|CLOCK|cnt\(21) & (!\COUNTER|CLOCK|cnt[20]~67\))
-- \COUNTER|CLOCK|cnt[21]~69\ = CARRY((!\COUNTER|CLOCK|cnt\(21) & !\COUNTER|CLOCK|cnt[20]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|CLOCK|cnt\(21),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[20]~67\,
	combout => \COUNTER|CLOCK|cnt[21]~68_combout\,
	cout => \COUNTER|CLOCK|cnt[21]~69\);

-- Location: FF_X44_Y51_N17
\COUNTER|CLOCK|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[21]~68_combout\,
	asdata => VCC,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(21));

-- Location: LCCOMB_X44_Y51_N18
\COUNTER|CLOCK|cnt[22]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[22]~70_combout\ = (\COUNTER|CLOCK|cnt\(22) & ((GND) # (!\COUNTER|CLOCK|cnt[21]~69\))) # (!\COUNTER|CLOCK|cnt\(22) & (\COUNTER|CLOCK|cnt[21]~69\ $ (GND)))
-- \COUNTER|CLOCK|cnt[22]~71\ = CARRY((\COUNTER|CLOCK|cnt\(22)) # (!\COUNTER|CLOCK|cnt[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|CLOCK|cnt\(22),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[21]~69\,
	combout => \COUNTER|CLOCK|cnt[22]~70_combout\,
	cout => \COUNTER|CLOCK|cnt[22]~71\);

-- Location: FF_X44_Y51_N19
\COUNTER|CLOCK|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[22]~70_combout\,
	asdata => VCC,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(22));

-- Location: LCCOMB_X44_Y51_N20
\COUNTER|CLOCK|cnt[23]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[23]~72_combout\ = (\COUNTER|CLOCK|cnt\(23) & (\COUNTER|CLOCK|cnt[22]~71\ & VCC)) # (!\COUNTER|CLOCK|cnt\(23) & (!\COUNTER|CLOCK|cnt[22]~71\))
-- \COUNTER|CLOCK|cnt[23]~73\ = CARRY((!\COUNTER|CLOCK|cnt\(23) & !\COUNTER|CLOCK|cnt[22]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|CLOCK|cnt\(23),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[22]~71\,
	combout => \COUNTER|CLOCK|cnt[23]~72_combout\,
	cout => \COUNTER|CLOCK|cnt[23]~73\);

-- Location: FF_X44_Y51_N21
\COUNTER|CLOCK|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[23]~72_combout\,
	asdata => \~GND~combout\,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(23));

-- Location: LCCOMB_X44_Y51_N22
\COUNTER|CLOCK|cnt[24]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[24]~74_combout\ = (\COUNTER|CLOCK|cnt\(24) & ((GND) # (!\COUNTER|CLOCK|cnt[23]~73\))) # (!\COUNTER|CLOCK|cnt\(24) & (\COUNTER|CLOCK|cnt[23]~73\ $ (GND)))
-- \COUNTER|CLOCK|cnt[24]~75\ = CARRY((\COUNTER|CLOCK|cnt\(24)) # (!\COUNTER|CLOCK|cnt[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|CLOCK|cnt\(24),
	datad => VCC,
	cin => \COUNTER|CLOCK|cnt[23]~73\,
	combout => \COUNTER|CLOCK|cnt[24]~74_combout\,
	cout => \COUNTER|CLOCK|cnt[24]~75\);

-- Location: FF_X44_Y51_N23
\COUNTER|CLOCK|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[24]~74_combout\,
	asdata => VCC,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(24));

-- Location: LCCOMB_X44_Y51_N24
\COUNTER|CLOCK|cnt[25]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|cnt[25]~76_combout\ = \COUNTER|CLOCK|cnt[24]~75\ $ (!\COUNTER|CLOCK|cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \COUNTER|CLOCK|cnt\(25),
	cin => \COUNTER|CLOCK|cnt[24]~75\,
	combout => \COUNTER|CLOCK|cnt[25]~76_combout\);

-- Location: FF_X44_Y51_N25
\COUNTER|CLOCK|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|cnt[25]~76_combout\,
	asdata => \~GND~combout\,
	sload => \COUNTER|CLOCK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|cnt\(25));

-- Location: LCCOMB_X44_Y51_N30
\COUNTER|CLOCK|clk_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|clk_out~0_combout\ = \COUNTER|CLOCK|clk_out~q\ $ (\COUNTER|CLOCK|cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|CLOCK|clk_out~q\,
	datad => \COUNTER|CLOCK|cnt\(25),
	combout => \COUNTER|CLOCK|clk_out~0_combout\);

-- Location: LCCOMB_X44_Y51_N28
\COUNTER|CLOCK|clk_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|CLOCK|clk_out~feeder_combout\ = \COUNTER|CLOCK|clk_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|CLOCK|clk_out~0_combout\,
	combout => \COUNTER|CLOCK|clk_out~feeder_combout\);

-- Location: FF_X44_Y51_N29
\COUNTER|CLOCK|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \COUNTER|CLOCK|clk_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|CLOCK|clk_out~q\);

-- Location: CLKCTRL_G11
\COUNTER|CLOCK|clk_out~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \COUNTER|CLOCK|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \COUNTER|CLOCK|clk_out~clkctrl_outclk\);

-- Location: IOIBUF_X46_Y54_N29
\KEY[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X54_Y51_N8
\COUNTER|G_COUNTER|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|G_COUNTER|Add0~0_combout\ = \COUNTER|G_COUNTER|count\(0) $ (VCC)
-- \COUNTER|G_COUNTER|Add0~1\ = CARRY(\COUNTER|G_COUNTER|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|G_COUNTER|count\(0),
	datad => VCC,
	combout => \COUNTER|G_COUNTER|Add0~0_combout\,
	cout => \COUNTER|G_COUNTER|Add0~1\);

-- Location: LCCOMB_X54_Y51_N10
\COUNTER|G_COUNTER|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|G_COUNTER|Add0~2_combout\ = (\COUNTER|G_COUNTER|count\(1) & (!\COUNTER|G_COUNTER|Add0~1\)) # (!\COUNTER|G_COUNTER|count\(1) & ((\COUNTER|G_COUNTER|Add0~1\) # (GND)))
-- \COUNTER|G_COUNTER|Add0~3\ = CARRY((!\COUNTER|G_COUNTER|Add0~1\) # (!\COUNTER|G_COUNTER|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|G_COUNTER|count\(1),
	datad => VCC,
	cin => \COUNTER|G_COUNTER|Add0~1\,
	combout => \COUNTER|G_COUNTER|Add0~2_combout\,
	cout => \COUNTER|G_COUNTER|Add0~3\);

-- Location: LCCOMB_X54_Y51_N12
\COUNTER|G_COUNTER|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|G_COUNTER|Add0~4_combout\ = (\COUNTER|G_COUNTER|count\(2) & (\COUNTER|G_COUNTER|Add0~3\ $ (GND))) # (!\COUNTER|G_COUNTER|count\(2) & (!\COUNTER|G_COUNTER|Add0~3\ & VCC))
-- \COUNTER|G_COUNTER|Add0~5\ = CARRY((\COUNTER|G_COUNTER|count\(2) & !\COUNTER|G_COUNTER|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|G_COUNTER|count\(2),
	datad => VCC,
	cin => \COUNTER|G_COUNTER|Add0~3\,
	combout => \COUNTER|G_COUNTER|Add0~4_combout\,
	cout => \COUNTER|G_COUNTER|Add0~5\);

-- Location: LCCOMB_X54_Y51_N14
\COUNTER|G_COUNTER|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|G_COUNTER|Add0~6_combout\ = (\COUNTER|G_COUNTER|count\(3) & (!\COUNTER|G_COUNTER|Add0~5\)) # (!\COUNTER|G_COUNTER|count\(3) & ((\COUNTER|G_COUNTER|Add0~5\) # (GND)))
-- \COUNTER|G_COUNTER|Add0~7\ = CARRY((!\COUNTER|G_COUNTER|Add0~5\) # (!\COUNTER|G_COUNTER|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|G_COUNTER|count\(3),
	datad => VCC,
	cin => \COUNTER|G_COUNTER|Add0~5\,
	combout => \COUNTER|G_COUNTER|Add0~6_combout\,
	cout => \COUNTER|G_COUNTER|Add0~7\);

-- Location: LCCOMB_X54_Y51_N30
\COUNTER|G_COUNTER|count[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|G_COUNTER|count[3]~5_combout\ = (\COUNTER|G_COUNTER|count[0]~1_combout\ & (((\COUNTER|G_COUNTER|count\(3) & !\COUNTER|G_COUNTER|count[1]~0_combout\)))) # (!\COUNTER|G_COUNTER|count[0]~1_combout\ & ((\COUNTER|G_COUNTER|Add0~6_combout\) # 
-- ((\COUNTER|G_COUNTER|count\(3) & !\COUNTER|G_COUNTER|count[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|G_COUNTER|count[0]~1_combout\,
	datab => \COUNTER|G_COUNTER|Add0~6_combout\,
	datac => \COUNTER|G_COUNTER|count\(3),
	datad => \COUNTER|G_COUNTER|count[1]~0_combout\,
	combout => \COUNTER|G_COUNTER|count[3]~5_combout\);

-- Location: FF_X54_Y51_N31
\COUNTER|G_COUNTER|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COUNTER|CLOCK|clk_out~clkctrl_outclk\,
	d => \COUNTER|G_COUNTER|count[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|G_COUNTER|count\(3));

-- Location: LCCOMB_X54_Y51_N16
\COUNTER|G_COUNTER|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|G_COUNTER|Add0~8_combout\ = (\COUNTER|G_COUNTER|count\(4) & (\COUNTER|G_COUNTER|Add0~7\ $ (GND))) # (!\COUNTER|G_COUNTER|count\(4) & (!\COUNTER|G_COUNTER|Add0~7\ & VCC))
-- \COUNTER|G_COUNTER|Add0~9\ = CARRY((\COUNTER|G_COUNTER|count\(4) & !\COUNTER|G_COUNTER|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|G_COUNTER|count\(4),
	datad => VCC,
	cin => \COUNTER|G_COUNTER|Add0~7\,
	combout => \COUNTER|G_COUNTER|Add0~8_combout\,
	cout => \COUNTER|G_COUNTER|Add0~9\);

-- Location: LCCOMB_X54_Y51_N24
\COUNTER|G_COUNTER|count[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|G_COUNTER|count[4]~6_combout\ = (\COUNTER|G_COUNTER|count[0]~1_combout\ & (!\COUNTER|G_COUNTER|count[1]~0_combout\ & (\COUNTER|G_COUNTER|count\(4)))) # (!\COUNTER|G_COUNTER|count[0]~1_combout\ & ((\COUNTER|G_COUNTER|Add0~8_combout\) # 
-- ((!\COUNTER|G_COUNTER|count[1]~0_combout\ & \COUNTER|G_COUNTER|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|G_COUNTER|count[0]~1_combout\,
	datab => \COUNTER|G_COUNTER|count[1]~0_combout\,
	datac => \COUNTER|G_COUNTER|count\(4),
	datad => \COUNTER|G_COUNTER|Add0~8_combout\,
	combout => \COUNTER|G_COUNTER|count[4]~6_combout\);

-- Location: FF_X54_Y51_N25
\COUNTER|G_COUNTER|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COUNTER|CLOCK|clk_out~clkctrl_outclk\,
	d => \COUNTER|G_COUNTER|count[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|G_COUNTER|count\(4));

-- Location: LCCOMB_X54_Y51_N18
\COUNTER|G_COUNTER|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|G_COUNTER|Add0~10_combout\ = (\COUNTER|G_COUNTER|count\(5) & (!\COUNTER|G_COUNTER|Add0~9\)) # (!\COUNTER|G_COUNTER|count\(5) & ((\COUNTER|G_COUNTER|Add0~9\) # (GND)))
-- \COUNTER|G_COUNTER|Add0~11\ = CARRY((!\COUNTER|G_COUNTER|Add0~9\) # (!\COUNTER|G_COUNTER|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|G_COUNTER|count\(5),
	datad => VCC,
	cin => \COUNTER|G_COUNTER|Add0~9\,
	combout => \COUNTER|G_COUNTER|Add0~10_combout\,
	cout => \COUNTER|G_COUNTER|Add0~11\);

-- Location: LCCOMB_X54_Y51_N6
\COUNTER|G_COUNTER|count[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|G_COUNTER|count[5]~7_combout\ = (\COUNTER|G_COUNTER|count[0]~1_combout\ & (!\COUNTER|G_COUNTER|count[1]~0_combout\ & (\COUNTER|G_COUNTER|count\(5)))) # (!\COUNTER|G_COUNTER|count[0]~1_combout\ & ((\COUNTER|G_COUNTER|Add0~10_combout\) # 
-- ((!\COUNTER|G_COUNTER|count[1]~0_combout\ & \COUNTER|G_COUNTER|count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|G_COUNTER|count[0]~1_combout\,
	datab => \COUNTER|G_COUNTER|count[1]~0_combout\,
	datac => \COUNTER|G_COUNTER|count\(5),
	datad => \COUNTER|G_COUNTER|Add0~10_combout\,
	combout => \COUNTER|G_COUNTER|count[5]~7_combout\);

-- Location: FF_X54_Y51_N7
\COUNTER|G_COUNTER|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COUNTER|CLOCK|clk_out~clkctrl_outclk\,
	d => \COUNTER|G_COUNTER|count[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|G_COUNTER|count\(5));

-- Location: LCCOMB_X54_Y51_N20
\COUNTER|G_COUNTER|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|G_COUNTER|Add0~12_combout\ = (\COUNTER|G_COUNTER|count\(6) & (\COUNTER|G_COUNTER|Add0~11\ $ (GND))) # (!\COUNTER|G_COUNTER|count\(6) & (!\COUNTER|G_COUNTER|Add0~11\ & VCC))
-- \COUNTER|G_COUNTER|Add0~13\ = CARRY((\COUNTER|G_COUNTER|count\(6) & !\COUNTER|G_COUNTER|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \COUNTER|G_COUNTER|count\(6),
	datad => VCC,
	cin => \COUNTER|G_COUNTER|Add0~11\,
	combout => \COUNTER|G_COUNTER|Add0~12_combout\,
	cout => \COUNTER|G_COUNTER|Add0~13\);

-- Location: LCCOMB_X54_Y51_N28
\COUNTER|G_COUNTER|count[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|G_COUNTER|count[6]~8_combout\ = (\COUNTER|G_COUNTER|count[0]~1_combout\ & (!\COUNTER|G_COUNTER|count[1]~0_combout\ & (\COUNTER|G_COUNTER|count\(6)))) # (!\COUNTER|G_COUNTER|count[0]~1_combout\ & ((\COUNTER|G_COUNTER|Add0~12_combout\) # 
-- ((!\COUNTER|G_COUNTER|count[1]~0_combout\ & \COUNTER|G_COUNTER|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|G_COUNTER|count[0]~1_combout\,
	datab => \COUNTER|G_COUNTER|count[1]~0_combout\,
	datac => \COUNTER|G_COUNTER|count\(6),
	datad => \COUNTER|G_COUNTER|Add0~12_combout\,
	combout => \COUNTER|G_COUNTER|count[6]~8_combout\);

-- Location: FF_X54_Y51_N29
\COUNTER|G_COUNTER|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COUNTER|CLOCK|clk_out~clkctrl_outclk\,
	d => \COUNTER|G_COUNTER|count[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|G_COUNTER|count\(6));

-- Location: LCCOMB_X54_Y51_N22
\COUNTER|G_COUNTER|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|G_COUNTER|Add0~14_combout\ = \COUNTER|G_COUNTER|Add0~13\ $ (\COUNTER|G_COUNTER|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \COUNTER|G_COUNTER|count\(7),
	cin => \COUNTER|G_COUNTER|Add0~13\,
	combout => \COUNTER|G_COUNTER|Add0~14_combout\);

-- Location: LCCOMB_X54_Y51_N2
\COUNTER|G_COUNTER|count[7]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|G_COUNTER|count[7]~9_combout\ = (\COUNTER|G_COUNTER|count[0]~1_combout\ & (!\COUNTER|G_COUNTER|count[1]~0_combout\ & (\COUNTER|G_COUNTER|count\(7)))) # (!\COUNTER|G_COUNTER|count[0]~1_combout\ & ((\COUNTER|G_COUNTER|Add0~14_combout\) # 
-- ((!\COUNTER|G_COUNTER|count[1]~0_combout\ & \COUNTER|G_COUNTER|count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|G_COUNTER|count[0]~1_combout\,
	datab => \COUNTER|G_COUNTER|count[1]~0_combout\,
	datac => \COUNTER|G_COUNTER|count\(7),
	datad => \COUNTER|G_COUNTER|Add0~14_combout\,
	combout => \COUNTER|G_COUNTER|count[7]~9_combout\);

-- Location: FF_X54_Y51_N3
\COUNTER|G_COUNTER|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COUNTER|CLOCK|clk_out~clkctrl_outclk\,
	d => \COUNTER|G_COUNTER|count[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|G_COUNTER|count\(7));

-- Location: LCCOMB_X55_Y51_N28
\COUNTER|G_COUNTER|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|G_COUNTER|Equal0~0_combout\ = (\COUNTER|G_COUNTER|count\(7) & (\COUNTER|G_COUNTER|count\(4) & (\COUNTER|G_COUNTER|count\(5) & \COUNTER|G_COUNTER|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|G_COUNTER|count\(7),
	datab => \COUNTER|G_COUNTER|count\(4),
	datac => \COUNTER|G_COUNTER|count\(5),
	datad => \COUNTER|G_COUNTER|count\(6),
	combout => \COUNTER|G_COUNTER|Equal0~0_combout\);

-- Location: LCCOMB_X55_Y51_N24
\COUNTER|G_COUNTER|count[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|G_COUNTER|count[1]~0_combout\ = (\KEY[0]~input_o\) # ((\COUNTER|G_COUNTER|Equal0~1_combout\ & \COUNTER|G_COUNTER|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \COUNTER|G_COUNTER|Equal0~1_combout\,
	datad => \COUNTER|G_COUNTER|Equal0~0_combout\,
	combout => \COUNTER|G_COUNTER|count[1]~0_combout\);

-- Location: LCCOMB_X54_Y51_N26
\COUNTER|G_COUNTER|count[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|G_COUNTER|count[1]~3_combout\ = (\COUNTER|G_COUNTER|count[0]~1_combout\ & (((\COUNTER|G_COUNTER|count\(1) & !\COUNTER|G_COUNTER|count[1]~0_combout\)))) # (!\COUNTER|G_COUNTER|count[0]~1_combout\ & ((\COUNTER|G_COUNTER|Add0~2_combout\) # 
-- ((\COUNTER|G_COUNTER|count\(1) & !\COUNTER|G_COUNTER|count[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|G_COUNTER|count[0]~1_combout\,
	datab => \COUNTER|G_COUNTER|Add0~2_combout\,
	datac => \COUNTER|G_COUNTER|count\(1),
	datad => \COUNTER|G_COUNTER|count[1]~0_combout\,
	combout => \COUNTER|G_COUNTER|count[1]~3_combout\);

-- Location: FF_X54_Y51_N27
\COUNTER|G_COUNTER|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COUNTER|CLOCK|clk_out~clkctrl_outclk\,
	d => \COUNTER|G_COUNTER|count[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|G_COUNTER|count\(1));

-- Location: LCCOMB_X54_Y51_N4
\COUNTER|G_COUNTER|count[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|G_COUNTER|count[2]~4_combout\ = (\COUNTER|G_COUNTER|count[0]~1_combout\ & (((\COUNTER|G_COUNTER|count\(2) & !\COUNTER|G_COUNTER|count[1]~0_combout\)))) # (!\COUNTER|G_COUNTER|count[0]~1_combout\ & ((\COUNTER|G_COUNTER|Add0~4_combout\) # 
-- ((\COUNTER|G_COUNTER|count\(2) & !\COUNTER|G_COUNTER|count[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|G_COUNTER|count[0]~1_combout\,
	datab => \COUNTER|G_COUNTER|Add0~4_combout\,
	datac => \COUNTER|G_COUNTER|count\(2),
	datad => \COUNTER|G_COUNTER|count[1]~0_combout\,
	combout => \COUNTER|G_COUNTER|count[2]~4_combout\);

-- Location: FF_X54_Y51_N5
\COUNTER|G_COUNTER|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COUNTER|CLOCK|clk_out~clkctrl_outclk\,
	d => \COUNTER|G_COUNTER|count[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|G_COUNTER|count\(2));

-- Location: LCCOMB_X55_Y51_N26
\COUNTER|G_COUNTER|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|G_COUNTER|Equal0~1_combout\ = (\COUNTER|G_COUNTER|count\(0) & (\COUNTER|G_COUNTER|count\(2) & (\COUNTER|G_COUNTER|count\(1) & \COUNTER|G_COUNTER|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|G_COUNTER|count\(0),
	datab => \COUNTER|G_COUNTER|count\(2),
	datac => \COUNTER|G_COUNTER|count\(1),
	datad => \COUNTER|G_COUNTER|count\(3),
	combout => \COUNTER|G_COUNTER|Equal0~1_combout\);

-- Location: LCCOMB_X55_Y51_N30
\COUNTER|G_COUNTER|count[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|G_COUNTER|count[0]~1_combout\ = ((\COUNTER|G_COUNTER|Equal0~1_combout\ & \COUNTER|G_COUNTER|Equal0~0_combout\)) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \COUNTER|G_COUNTER|Equal0~1_combout\,
	datad => \COUNTER|G_COUNTER|Equal0~0_combout\,
	combout => \COUNTER|G_COUNTER|count[0]~1_combout\);

-- Location: LCCOMB_X54_Y51_N0
\COUNTER|G_COUNTER|count[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \COUNTER|G_COUNTER|count[0]~2_combout\ = (\COUNTER|G_COUNTER|count[0]~1_combout\ & (((\COUNTER|G_COUNTER|count\(0) & !\COUNTER|G_COUNTER|count[1]~0_combout\)))) # (!\COUNTER|G_COUNTER|count[0]~1_combout\ & ((\COUNTER|G_COUNTER|Add0~0_combout\) # 
-- ((\COUNTER|G_COUNTER|count\(0) & !\COUNTER|G_COUNTER|count[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNTER|G_COUNTER|count[0]~1_combout\,
	datab => \COUNTER|G_COUNTER|Add0~0_combout\,
	datac => \COUNTER|G_COUNTER|count\(0),
	datad => \COUNTER|G_COUNTER|count[1]~0_combout\,
	combout => \COUNTER|G_COUNTER|count[0]~2_combout\);

-- Location: FF_X54_Y51_N1
\COUNTER|G_COUNTER|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \COUNTER|CLOCK|clk_out~clkctrl_outclk\,
	d => \COUNTER|G_COUNTER|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTER|G_COUNTER|count\(0));

-- Location: M9K_X53_Y51_N0
\ROM|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000C00000000C000600030000CC001E00000000C00000000C000600030000CC001E00000000C00000000C000600030000CC001E00000000C00000000C00",
	mem_init1 => X"0600030000CC001E00000000C00000000C000600030000CC001E00000000000000000000000000000000000000000007F00198004C0006000310018C007F00000001E00030000C000780033000CC0033000000063000D8001C0007000360018C0063000000063001DC007F001AC00630018C006300000000C000780033000CC0033000CC003300000003F000CC0033000CC0033000CC003300000001E00030000C00030000C000B4003F00000001E000CC0038000380007000CC001E000000067001980036000F8006600198003F00000003800078003B000CC0033000CC001E00000000F000180006000F8006600198003F00000001C000D800630018C00630",
	mem_init0 => X"00D8001C0000000630018C0073001EC006F0019C00630000000630018C006B001FC007F001DC006300000007F00198004600018000600018000F00000006700198003600078003600198006700000001E000CC0033000C00030000C0007800000001E00030000C00030000C00030001E000000033000CC0033000FC0033000CC003300000007C0019800730000C000300198003C00000000F00018001600078001600118007F00000007F00118001600078001600118007F00000001F000D80066001980066000D8001F00000003C0019800030000C000300198003C00000003F001980066000F8006600198003F000000033000CC003F000CC003300078000C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Alpha1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom_8bit:ROM|altsyncram:altsyncram_component|altsyncram_0fq3:auto_generated|ALTSYNCRAM",
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
	portaaddr => \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X61_Y51_N24
\SEG0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG0|Mux6~0_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(2) & (!\ROM|altsyncram_component|auto_generated|q_a\(1) & ((\ROM|altsyncram_component|auto_generated|q_a\(3)) # (!\ROM|altsyncram_component|auto_generated|q_a\(0))))) # 
-- (!\ROM|altsyncram_component|auto_generated|q_a\(2) & (\ROM|altsyncram_component|auto_generated|q_a\(0) & (\ROM|altsyncram_component|auto_generated|q_a\(1) $ (!\ROM|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|altsyncram_component|auto_generated|q_a\(2),
	datab => \ROM|altsyncram_component|auto_generated|q_a\(1),
	datac => \ROM|altsyncram_component|auto_generated|q_a\(3),
	datad => \ROM|altsyncram_component|auto_generated|q_a\(0),
	combout => \SEG0|Mux6~0_combout\);

-- Location: LCCOMB_X61_Y51_N14
\SEG0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG0|Mux5~0_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(1) & ((\ROM|altsyncram_component|auto_generated|q_a\(0) & ((\ROM|altsyncram_component|auto_generated|q_a\(3)))) # (!\ROM|altsyncram_component|auto_generated|q_a\(0) & 
-- (\ROM|altsyncram_component|auto_generated|q_a\(2))))) # (!\ROM|altsyncram_component|auto_generated|q_a\(1) & (\ROM|altsyncram_component|auto_generated|q_a\(2) & (\ROM|altsyncram_component|auto_generated|q_a\(3) $ 
-- (\ROM|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|altsyncram_component|auto_generated|q_a\(2),
	datab => \ROM|altsyncram_component|auto_generated|q_a\(1),
	datac => \ROM|altsyncram_component|auto_generated|q_a\(3),
	datad => \ROM|altsyncram_component|auto_generated|q_a\(0),
	combout => \SEG0|Mux5~0_combout\);

-- Location: LCCOMB_X61_Y51_N4
\SEG0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG0|Mux4~0_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(2) & (\ROM|altsyncram_component|auto_generated|q_a\(3) & ((\ROM|altsyncram_component|auto_generated|q_a\(1)) # (!\ROM|altsyncram_component|auto_generated|q_a\(0))))) # 
-- (!\ROM|altsyncram_component|auto_generated|q_a\(2) & (\ROM|altsyncram_component|auto_generated|q_a\(1) & (!\ROM|altsyncram_component|auto_generated|q_a\(3) & !\ROM|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|altsyncram_component|auto_generated|q_a\(2),
	datab => \ROM|altsyncram_component|auto_generated|q_a\(1),
	datac => \ROM|altsyncram_component|auto_generated|q_a\(3),
	datad => \ROM|altsyncram_component|auto_generated|q_a\(0),
	combout => \SEG0|Mux4~0_combout\);

-- Location: LCCOMB_X61_Y51_N2
\SEG0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG0|Mux3~0_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(0) & (\ROM|altsyncram_component|auto_generated|q_a\(2) $ ((!\ROM|altsyncram_component|auto_generated|q_a\(1))))) # (!\ROM|altsyncram_component|auto_generated|q_a\(0) & 
-- ((\ROM|altsyncram_component|auto_generated|q_a\(2) & (!\ROM|altsyncram_component|auto_generated|q_a\(1) & !\ROM|altsyncram_component|auto_generated|q_a\(3))) # (!\ROM|altsyncram_component|auto_generated|q_a\(2) & 
-- (\ROM|altsyncram_component|auto_generated|q_a\(1) & \ROM|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|altsyncram_component|auto_generated|q_a\(2),
	datab => \ROM|altsyncram_component|auto_generated|q_a\(1),
	datac => \ROM|altsyncram_component|auto_generated|q_a\(3),
	datad => \ROM|altsyncram_component|auto_generated|q_a\(0),
	combout => \SEG0|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y51_N12
\SEG0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG0|Mux2~0_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(1) & (((!\ROM|altsyncram_component|auto_generated|q_a\(3) & \ROM|altsyncram_component|auto_generated|q_a\(0))))) # (!\ROM|altsyncram_component|auto_generated|q_a\(1) & 
-- ((\ROM|altsyncram_component|auto_generated|q_a\(2) & (!\ROM|altsyncram_component|auto_generated|q_a\(3))) # (!\ROM|altsyncram_component|auto_generated|q_a\(2) & ((\ROM|altsyncram_component|auto_generated|q_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|altsyncram_component|auto_generated|q_a\(2),
	datab => \ROM|altsyncram_component|auto_generated|q_a\(1),
	datac => \ROM|altsyncram_component|auto_generated|q_a\(3),
	datad => \ROM|altsyncram_component|auto_generated|q_a\(0),
	combout => \SEG0|Mux2~0_combout\);

-- Location: LCCOMB_X61_Y51_N26
\SEG0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG0|Mux1~0_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(2) & ((\ROM|altsyncram_component|auto_generated|q_a\(1) & (!\ROM|altsyncram_component|auto_generated|q_a\(3) & \ROM|altsyncram_component|auto_generated|q_a\(0))) # 
-- (!\ROM|altsyncram_component|auto_generated|q_a\(1) & (\ROM|altsyncram_component|auto_generated|q_a\(3))))) # (!\ROM|altsyncram_component|auto_generated|q_a\(2) & (!\ROM|altsyncram_component|auto_generated|q_a\(3) & 
-- ((\ROM|altsyncram_component|auto_generated|q_a\(1)) # (\ROM|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|altsyncram_component|auto_generated|q_a\(2),
	datab => \ROM|altsyncram_component|auto_generated|q_a\(1),
	datac => \ROM|altsyncram_component|auto_generated|q_a\(3),
	datad => \ROM|altsyncram_component|auto_generated|q_a\(0),
	combout => \SEG0|Mux1~0_combout\);

-- Location: LCCOMB_X61_Y51_N16
\SEG0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG0|Mux0~0_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(3)) # ((\ROM|altsyncram_component|auto_generated|q_a\(2) & ((!\ROM|altsyncram_component|auto_generated|q_a\(0)) # (!\ROM|altsyncram_component|auto_generated|q_a\(1)))) # 
-- (!\ROM|altsyncram_component|auto_generated|q_a\(2) & (\ROM|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|altsyncram_component|auto_generated|q_a\(2),
	datab => \ROM|altsyncram_component|auto_generated|q_a\(1),
	datac => \ROM|altsyncram_component|auto_generated|q_a\(3),
	datad => \ROM|altsyncram_component|auto_generated|q_a\(0),
	combout => \SEG0|Mux0~0_combout\);

-- Location: LCCOMB_X65_Y51_N4
\SEG1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG1|Mux6~0_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(6) & (!\ROM|altsyncram_component|auto_generated|q_a\(5) & ((\ROM|altsyncram_component|auto_generated|q_a\(7)) # (!\ROM|altsyncram_component|auto_generated|q_a\(4))))) # 
-- (!\ROM|altsyncram_component|auto_generated|q_a\(6) & (\ROM|altsyncram_component|auto_generated|q_a\(4) & (\ROM|altsyncram_component|auto_generated|q_a\(7) $ (!\ROM|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|altsyncram_component|auto_generated|q_a\(6),
	datab => \ROM|altsyncram_component|auto_generated|q_a\(7),
	datac => \ROM|altsyncram_component|auto_generated|q_a\(4),
	datad => \ROM|altsyncram_component|auto_generated|q_a\(5),
	combout => \SEG1|Mux6~0_combout\);

-- Location: LCCOMB_X65_Y51_N6
\SEG1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG1|Mux5~0_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(7) & ((\ROM|altsyncram_component|auto_generated|q_a\(4) & ((\ROM|altsyncram_component|auto_generated|q_a\(5)))) # (!\ROM|altsyncram_component|auto_generated|q_a\(4) & 
-- (\ROM|altsyncram_component|auto_generated|q_a\(6))))) # (!\ROM|altsyncram_component|auto_generated|q_a\(7) & (\ROM|altsyncram_component|auto_generated|q_a\(6) & (\ROM|altsyncram_component|auto_generated|q_a\(4) $ 
-- (\ROM|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|altsyncram_component|auto_generated|q_a\(6),
	datab => \ROM|altsyncram_component|auto_generated|q_a\(7),
	datac => \ROM|altsyncram_component|auto_generated|q_a\(4),
	datad => \ROM|altsyncram_component|auto_generated|q_a\(5),
	combout => \SEG1|Mux5~0_combout\);

-- Location: LCCOMB_X65_Y51_N8
\SEG1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG1|Mux4~0_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(6) & (\ROM|altsyncram_component|auto_generated|q_a\(7) & ((\ROM|altsyncram_component|auto_generated|q_a\(5)) # (!\ROM|altsyncram_component|auto_generated|q_a\(4))))) # 
-- (!\ROM|altsyncram_component|auto_generated|q_a\(6) & (!\ROM|altsyncram_component|auto_generated|q_a\(7) & (!\ROM|altsyncram_component|auto_generated|q_a\(4) & \ROM|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|altsyncram_component|auto_generated|q_a\(6),
	datab => \ROM|altsyncram_component|auto_generated|q_a\(7),
	datac => \ROM|altsyncram_component|auto_generated|q_a\(4),
	datad => \ROM|altsyncram_component|auto_generated|q_a\(5),
	combout => \SEG1|Mux4~0_combout\);

-- Location: LCCOMB_X65_Y51_N2
\SEG1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG1|Mux3~0_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(4) & (\ROM|altsyncram_component|auto_generated|q_a\(6) $ (((!\ROM|altsyncram_component|auto_generated|q_a\(5)))))) # (!\ROM|altsyncram_component|auto_generated|q_a\(4) & 
-- ((\ROM|altsyncram_component|auto_generated|q_a\(6) & (!\ROM|altsyncram_component|auto_generated|q_a\(7) & !\ROM|altsyncram_component|auto_generated|q_a\(5))) # (!\ROM|altsyncram_component|auto_generated|q_a\(6) & 
-- (\ROM|altsyncram_component|auto_generated|q_a\(7) & \ROM|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|altsyncram_component|auto_generated|q_a\(6),
	datab => \ROM|altsyncram_component|auto_generated|q_a\(7),
	datac => \ROM|altsyncram_component|auto_generated|q_a\(4),
	datad => \ROM|altsyncram_component|auto_generated|q_a\(5),
	combout => \SEG1|Mux3~0_combout\);

-- Location: LCCOMB_X65_Y51_N12
\SEG1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG1|Mux2~0_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(5) & (((!\ROM|altsyncram_component|auto_generated|q_a\(7) & \ROM|altsyncram_component|auto_generated|q_a\(4))))) # (!\ROM|altsyncram_component|auto_generated|q_a\(5) & 
-- ((\ROM|altsyncram_component|auto_generated|q_a\(6) & (!\ROM|altsyncram_component|auto_generated|q_a\(7))) # (!\ROM|altsyncram_component|auto_generated|q_a\(6) & ((\ROM|altsyncram_component|auto_generated|q_a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|altsyncram_component|auto_generated|q_a\(6),
	datab => \ROM|altsyncram_component|auto_generated|q_a\(7),
	datac => \ROM|altsyncram_component|auto_generated|q_a\(4),
	datad => \ROM|altsyncram_component|auto_generated|q_a\(5),
	combout => \SEG1|Mux2~0_combout\);

-- Location: LCCOMB_X65_Y51_N26
\SEG1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG1|Mux1~0_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(6) & ((\ROM|altsyncram_component|auto_generated|q_a\(7) & ((!\ROM|altsyncram_component|auto_generated|q_a\(5)))) # (!\ROM|altsyncram_component|auto_generated|q_a\(7) & 
-- (\ROM|altsyncram_component|auto_generated|q_a\(4) & \ROM|altsyncram_component|auto_generated|q_a\(5))))) # (!\ROM|altsyncram_component|auto_generated|q_a\(6) & (!\ROM|altsyncram_component|auto_generated|q_a\(7) & 
-- ((\ROM|altsyncram_component|auto_generated|q_a\(4)) # (\ROM|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|altsyncram_component|auto_generated|q_a\(6),
	datab => \ROM|altsyncram_component|auto_generated|q_a\(7),
	datac => \ROM|altsyncram_component|auto_generated|q_a\(4),
	datad => \ROM|altsyncram_component|auto_generated|q_a\(5),
	combout => \SEG1|Mux1~0_combout\);

-- Location: LCCOMB_X65_Y51_N16
\SEG1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG1|Mux0~0_combout\ = (\ROM|altsyncram_component|auto_generated|q_a\(7)) # ((\ROM|altsyncram_component|auto_generated|q_a\(6) & ((!\ROM|altsyncram_component|auto_generated|q_a\(5)) # (!\ROM|altsyncram_component|auto_generated|q_a\(4)))) # 
-- (!\ROM|altsyncram_component|auto_generated|q_a\(6) & ((\ROM|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|altsyncram_component|auto_generated|q_a\(6),
	datab => \ROM|altsyncram_component|auto_generated|q_a\(7),
	datac => \ROM|altsyncram_component|auto_generated|q_a\(4),
	datad => \ROM|altsyncram_component|auto_generated|q_a\(5),
	combout => \SEG1|Mux0~0_combout\);

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

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(7) <= \HEX0[7]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(7) <= \HEX1[7]~output_o\;
END structure;


