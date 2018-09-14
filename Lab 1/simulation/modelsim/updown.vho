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

-- DATE "09/13/2018 09:45:52"

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

ENTITY 	counter_updn_n_bit_de10 IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END counter_updn_n_bit_de10;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter_updn_n_bit_de10 IS
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
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CK|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \CK|cnt[0]~25_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \CK|cnt[0]~26\ : std_logic;
SIGNAL \CK|cnt[1]~27_combout\ : std_logic;
SIGNAL \CK|cnt[1]~28\ : std_logic;
SIGNAL \CK|cnt[2]~29_combout\ : std_logic;
SIGNAL \CK|cnt[2]~30\ : std_logic;
SIGNAL \CK|cnt[3]~31_combout\ : std_logic;
SIGNAL \CK|cnt[3]~32\ : std_logic;
SIGNAL \CK|cnt[4]~33_combout\ : std_logic;
SIGNAL \CK|cnt[4]~34\ : std_logic;
SIGNAL \CK|cnt[5]~35_combout\ : std_logic;
SIGNAL \CK|cnt[5]~36\ : std_logic;
SIGNAL \CK|cnt[6]~37_combout\ : std_logic;
SIGNAL \CK|cnt[6]~38\ : std_logic;
SIGNAL \CK|cnt[7]~39_combout\ : std_logic;
SIGNAL \CK|cnt[7]~40\ : std_logic;
SIGNAL \CK|cnt[8]~41_combout\ : std_logic;
SIGNAL \CK|cnt[8]~42\ : std_logic;
SIGNAL \CK|cnt[9]~43_combout\ : std_logic;
SIGNAL \CK|cnt[9]~44\ : std_logic;
SIGNAL \CK|cnt[10]~45_combout\ : std_logic;
SIGNAL \CK|cnt[10]~46\ : std_logic;
SIGNAL \CK|cnt[11]~47_combout\ : std_logic;
SIGNAL \CK|cnt[11]~48\ : std_logic;
SIGNAL \CK|cnt[12]~49_combout\ : std_logic;
SIGNAL \CK|cnt[12]~50\ : std_logic;
SIGNAL \CK|cnt[13]~51_combout\ : std_logic;
SIGNAL \CK|cnt[13]~52\ : std_logic;
SIGNAL \CK|cnt[14]~53_combout\ : std_logic;
SIGNAL \CK|cnt[14]~54\ : std_logic;
SIGNAL \CK|cnt[15]~55_combout\ : std_logic;
SIGNAL \CK|cnt[15]~56\ : std_logic;
SIGNAL \CK|cnt[16]~57_combout\ : std_logic;
SIGNAL \CK|cnt[16]~58\ : std_logic;
SIGNAL \CK|cnt[17]~59_combout\ : std_logic;
SIGNAL \CK|cnt[17]~60\ : std_logic;
SIGNAL \CK|cnt[18]~61_combout\ : std_logic;
SIGNAL \CK|cnt[18]~62\ : std_logic;
SIGNAL \CK|cnt[19]~63_combout\ : std_logic;
SIGNAL \CK|cnt[19]~64\ : std_logic;
SIGNAL \CK|cnt[20]~65_combout\ : std_logic;
SIGNAL \CK|cnt[20]~66\ : std_logic;
SIGNAL \CK|cnt[21]~67_combout\ : std_logic;
SIGNAL \CK|cnt[21]~68\ : std_logic;
SIGNAL \CK|cnt[22]~69_combout\ : std_logic;
SIGNAL \CK|cnt[22]~70\ : std_logic;
SIGNAL \CK|cnt[23]~71_combout\ : std_logic;
SIGNAL \CK|cnt[23]~72\ : std_logic;
SIGNAL \CK|cnt[24]~73_combout\ : std_logic;
SIGNAL \CK|clk_out~0_combout\ : std_logic;
SIGNAL \CK|clk_out~q\ : std_logic;
SIGNAL \CK|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \DUT|bout_sig[0]~8_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \DUT|bout_sig[0]~9\ : std_logic;
SIGNAL \DUT|bout_sig[1]~10_combout\ : std_logic;
SIGNAL \DUT|bout_sig[1]~11\ : std_logic;
SIGNAL \DUT|bout_sig[2]~12_combout\ : std_logic;
SIGNAL \DUT|bout_sig[2]~13\ : std_logic;
SIGNAL \DUT|bout_sig[3]~14_combout\ : std_logic;
SIGNAL \DUT|bout_sig[3]~15\ : std_logic;
SIGNAL \DUT|bout_sig[4]~16_combout\ : std_logic;
SIGNAL \DUT|bout_sig[4]~17\ : std_logic;
SIGNAL \DUT|bout_sig[5]~18_combout\ : std_logic;
SIGNAL \DUT|bout_sig[5]~19\ : std_logic;
SIGNAL \DUT|bout_sig[6]~20_combout\ : std_logic;
SIGNAL \DUT|bout_sig[6]~21\ : std_logic;
SIGNAL \DUT|bout_sig[7]~22_combout\ : std_logic;
SIGNAL \DUT|bout_sig\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CK|cnt\ : std_logic_vector(24 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\CK|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CK|clk_out~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
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
	i => \DUT|bout_sig\(0),
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
	i => \DUT|bout_sig\(1),
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
	i => \DUT|bout_sig\(2),
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
	i => \DUT|bout_sig\(3),
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
	i => \DUT|bout_sig\(4),
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
	i => \DUT|bout_sig\(5),
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
	i => \DUT|bout_sig\(6),
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
	i => \DUT|bout_sig\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

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

-- Location: LCCOMB_X46_Y5_N8
\CK|cnt[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[0]~25_combout\ = \CK|cnt\(0) $ (VCC)
-- \CK|cnt[0]~26\ = CARRY(\CK|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(0),
	datad => VCC,
	combout => \CK|cnt[0]~25_combout\,
	cout => \CK|cnt[0]~26\);

-- Location: LCCOMB_X46_Y4_N26
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

-- Location: FF_X46_Y5_N9
\CK|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[0]~25_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(0));

-- Location: LCCOMB_X46_Y5_N10
\CK|cnt[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[1]~27_combout\ = (\CK|cnt\(1) & (\CK|cnt[0]~26\ & VCC)) # (!\CK|cnt\(1) & (!\CK|cnt[0]~26\))
-- \CK|cnt[1]~28\ = CARRY((!\CK|cnt\(1) & !\CK|cnt[0]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CK|cnt\(1),
	datad => VCC,
	cin => \CK|cnt[0]~26\,
	combout => \CK|cnt[1]~27_combout\,
	cout => \CK|cnt[1]~28\);

-- Location: FF_X46_Y5_N11
\CK|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[1]~27_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(1));

-- Location: LCCOMB_X46_Y5_N12
\CK|cnt[2]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[2]~29_combout\ = (\CK|cnt\(2) & (!\CK|cnt[1]~28\)) # (!\CK|cnt\(2) & ((\CK|cnt[1]~28\) # (GND)))
-- \CK|cnt[2]~30\ = CARRY((!\CK|cnt[1]~28\) # (!\CK|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CK|cnt\(2),
	datad => VCC,
	cin => \CK|cnt[1]~28\,
	combout => \CK|cnt[2]~29_combout\,
	cout => \CK|cnt[2]~30\);

-- Location: FF_X46_Y5_N13
\CK|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[2]~29_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(2));

-- Location: LCCOMB_X46_Y5_N14
\CK|cnt[3]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[3]~31_combout\ = (\CK|cnt\(3) & (\CK|cnt[2]~30\ & VCC)) # (!\CK|cnt\(3) & (!\CK|cnt[2]~30\))
-- \CK|cnt[3]~32\ = CARRY((!\CK|cnt\(3) & !\CK|cnt[2]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(3),
	datad => VCC,
	cin => \CK|cnt[2]~30\,
	combout => \CK|cnt[3]~31_combout\,
	cout => \CK|cnt[3]~32\);

-- Location: FF_X46_Y5_N15
\CK|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[3]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(3));

-- Location: LCCOMB_X46_Y5_N16
\CK|cnt[4]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[4]~33_combout\ = (\CK|cnt\(4) & (!\CK|cnt[3]~32\)) # (!\CK|cnt\(4) & ((\CK|cnt[3]~32\) # (GND)))
-- \CK|cnt[4]~34\ = CARRY((!\CK|cnt[3]~32\) # (!\CK|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(4),
	datad => VCC,
	cin => \CK|cnt[3]~32\,
	combout => \CK|cnt[4]~33_combout\,
	cout => \CK|cnt[4]~34\);

-- Location: FF_X46_Y5_N17
\CK|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[4]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(4));

-- Location: LCCOMB_X46_Y5_N18
\CK|cnt[5]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[5]~35_combout\ = (\CK|cnt\(5) & (\CK|cnt[4]~34\ & VCC)) # (!\CK|cnt\(5) & (!\CK|cnt[4]~34\))
-- \CK|cnt[5]~36\ = CARRY((!\CK|cnt\(5) & !\CK|cnt[4]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(5),
	datad => VCC,
	cin => \CK|cnt[4]~34\,
	combout => \CK|cnt[5]~35_combout\,
	cout => \CK|cnt[5]~36\);

-- Location: FF_X46_Y5_N19
\CK|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[5]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(5));

-- Location: LCCOMB_X46_Y5_N20
\CK|cnt[6]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[6]~37_combout\ = (\CK|cnt\(6) & ((GND) # (!\CK|cnt[5]~36\))) # (!\CK|cnt\(6) & (\CK|cnt[5]~36\ $ (GND)))
-- \CK|cnt[6]~38\ = CARRY((\CK|cnt\(6)) # (!\CK|cnt[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(6),
	datad => VCC,
	cin => \CK|cnt[5]~36\,
	combout => \CK|cnt[6]~37_combout\,
	cout => \CK|cnt[6]~38\);

-- Location: FF_X46_Y5_N21
\CK|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[6]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(6));

-- Location: LCCOMB_X46_Y5_N22
\CK|cnt[7]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[7]~39_combout\ = (\CK|cnt\(7) & (\CK|cnt[6]~38\ & VCC)) # (!\CK|cnt\(7) & (!\CK|cnt[6]~38\))
-- \CK|cnt[7]~40\ = CARRY((!\CK|cnt\(7) & !\CK|cnt[6]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CK|cnt\(7),
	datad => VCC,
	cin => \CK|cnt[6]~38\,
	combout => \CK|cnt[7]~39_combout\,
	cout => \CK|cnt[7]~40\);

-- Location: FF_X46_Y5_N23
\CK|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[7]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(7));

-- Location: LCCOMB_X46_Y5_N24
\CK|cnt[8]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[8]~41_combout\ = (\CK|cnt\(8) & ((GND) # (!\CK|cnt[7]~40\))) # (!\CK|cnt\(8) & (\CK|cnt[7]~40\ $ (GND)))
-- \CK|cnt[8]~42\ = CARRY((\CK|cnt\(8)) # (!\CK|cnt[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(8),
	datad => VCC,
	cin => \CK|cnt[7]~40\,
	combout => \CK|cnt[8]~41_combout\,
	cout => \CK|cnt[8]~42\);

-- Location: FF_X46_Y5_N25
\CK|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[8]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(8));

-- Location: LCCOMB_X46_Y5_N26
\CK|cnt[9]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[9]~43_combout\ = (\CK|cnt\(9) & (\CK|cnt[8]~42\ & VCC)) # (!\CK|cnt\(9) & (!\CK|cnt[8]~42\))
-- \CK|cnt[9]~44\ = CARRY((!\CK|cnt\(9) & !\CK|cnt[8]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CK|cnt\(9),
	datad => VCC,
	cin => \CK|cnt[8]~42\,
	combout => \CK|cnt[9]~43_combout\,
	cout => \CK|cnt[9]~44\);

-- Location: FF_X46_Y5_N27
\CK|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[9]~43_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(9));

-- Location: LCCOMB_X46_Y5_N28
\CK|cnt[10]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[10]~45_combout\ = (\CK|cnt\(10) & ((GND) # (!\CK|cnt[9]~44\))) # (!\CK|cnt\(10) & (\CK|cnt[9]~44\ $ (GND)))
-- \CK|cnt[10]~46\ = CARRY((\CK|cnt\(10)) # (!\CK|cnt[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(10),
	datad => VCC,
	cin => \CK|cnt[9]~44\,
	combout => \CK|cnt[10]~45_combout\,
	cout => \CK|cnt[10]~46\);

-- Location: FF_X46_Y5_N29
\CK|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[10]~45_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(10));

-- Location: LCCOMB_X46_Y5_N30
\CK|cnt[11]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[11]~47_combout\ = (\CK|cnt\(11) & (\CK|cnt[10]~46\ $ (GND))) # (!\CK|cnt\(11) & (!\CK|cnt[10]~46\ & VCC))
-- \CK|cnt[11]~48\ = CARRY((\CK|cnt\(11) & !\CK|cnt[10]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CK|cnt\(11),
	datad => VCC,
	cin => \CK|cnt[10]~46\,
	combout => \CK|cnt[11]~47_combout\,
	cout => \CK|cnt[11]~48\);

-- Location: FF_X46_Y5_N31
\CK|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[11]~47_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(11));

-- Location: LCCOMB_X46_Y4_N0
\CK|cnt[12]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[12]~49_combout\ = (\CK|cnt\(12) & ((GND) # (!\CK|cnt[11]~48\))) # (!\CK|cnt\(12) & (\CK|cnt[11]~48\ $ (GND)))
-- \CK|cnt[12]~50\ = CARRY((\CK|cnt\(12)) # (!\CK|cnt[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(12),
	datad => VCC,
	cin => \CK|cnt[11]~48\,
	combout => \CK|cnt[12]~49_combout\,
	cout => \CK|cnt[12]~50\);

-- Location: FF_X46_Y4_N1
\CK|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[12]~49_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(12));

-- Location: LCCOMB_X46_Y4_N2
\CK|cnt[13]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[13]~51_combout\ = (\CK|cnt\(13) & (\CK|cnt[12]~50\ $ (GND))) # (!\CK|cnt\(13) & (!\CK|cnt[12]~50\ & VCC))
-- \CK|cnt[13]~52\ = CARRY((\CK|cnt\(13) & !\CK|cnt[12]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(13),
	datad => VCC,
	cin => \CK|cnt[12]~50\,
	combout => \CK|cnt[13]~51_combout\,
	cout => \CK|cnt[13]~52\);

-- Location: FF_X46_Y4_N3
\CK|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[13]~51_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(13));

-- Location: LCCOMB_X46_Y4_N4
\CK|cnt[14]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[14]~53_combout\ = (\CK|cnt\(14) & ((GND) # (!\CK|cnt[13]~52\))) # (!\CK|cnt\(14) & (\CK|cnt[13]~52\ $ (GND)))
-- \CK|cnt[14]~54\ = CARRY((\CK|cnt\(14)) # (!\CK|cnt[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(14),
	datad => VCC,
	cin => \CK|cnt[13]~52\,
	combout => \CK|cnt[14]~53_combout\,
	cout => \CK|cnt[14]~54\);

-- Location: FF_X46_Y4_N5
\CK|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[14]~53_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(14));

-- Location: LCCOMB_X46_Y4_N6
\CK|cnt[15]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[15]~55_combout\ = (\CK|cnt\(15) & (\CK|cnt[14]~54\ & VCC)) # (!\CK|cnt\(15) & (!\CK|cnt[14]~54\))
-- \CK|cnt[15]~56\ = CARRY((!\CK|cnt\(15) & !\CK|cnt[14]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CK|cnt\(15),
	datad => VCC,
	cin => \CK|cnt[14]~54\,
	combout => \CK|cnt[15]~55_combout\,
	cout => \CK|cnt[15]~56\);

-- Location: FF_X46_Y4_N7
\CK|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[15]~55_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(15));

-- Location: LCCOMB_X46_Y4_N8
\CK|cnt[16]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[16]~57_combout\ = (\CK|cnt\(16) & (!\CK|cnt[15]~56\)) # (!\CK|cnt\(16) & ((\CK|cnt[15]~56\) # (GND)))
-- \CK|cnt[16]~58\ = CARRY((!\CK|cnt[15]~56\) # (!\CK|cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(16),
	datad => VCC,
	cin => \CK|cnt[15]~56\,
	combout => \CK|cnt[16]~57_combout\,
	cout => \CK|cnt[16]~58\);

-- Location: FF_X46_Y4_N9
\CK|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[16]~57_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(16));

-- Location: LCCOMB_X46_Y4_N10
\CK|cnt[17]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[17]~59_combout\ = (\CK|cnt\(17) & (\CK|cnt[16]~58\ $ (GND))) # (!\CK|cnt\(17) & (!\CK|cnt[16]~58\ & VCC))
-- \CK|cnt[17]~60\ = CARRY((\CK|cnt\(17) & !\CK|cnt[16]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CK|cnt\(17),
	datad => VCC,
	cin => \CK|cnt[16]~58\,
	combout => \CK|cnt[17]~59_combout\,
	cout => \CK|cnt[17]~60\);

-- Location: FF_X46_Y4_N11
\CK|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[17]~59_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(17));

-- Location: LCCOMB_X46_Y4_N12
\CK|cnt[18]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[18]~61_combout\ = (\CK|cnt\(18) & (!\CK|cnt[17]~60\)) # (!\CK|cnt\(18) & ((\CK|cnt[17]~60\) # (GND)))
-- \CK|cnt[18]~62\ = CARRY((!\CK|cnt[17]~60\) # (!\CK|cnt\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CK|cnt\(18),
	datad => VCC,
	cin => \CK|cnt[17]~60\,
	combout => \CK|cnt[18]~61_combout\,
	cout => \CK|cnt[18]~62\);

-- Location: FF_X46_Y4_N13
\CK|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[18]~61_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(18));

-- Location: LCCOMB_X46_Y4_N14
\CK|cnt[19]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[19]~63_combout\ = (\CK|cnt\(19) & (\CK|cnt[18]~62\ $ (GND))) # (!\CK|cnt\(19) & (!\CK|cnt[18]~62\ & VCC))
-- \CK|cnt[19]~64\ = CARRY((\CK|cnt\(19) & !\CK|cnt[18]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(19),
	datad => VCC,
	cin => \CK|cnt[18]~62\,
	combout => \CK|cnt[19]~63_combout\,
	cout => \CK|cnt[19]~64\);

-- Location: FF_X46_Y4_N15
\CK|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[19]~63_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(19));

-- Location: LCCOMB_X46_Y4_N16
\CK|cnt[20]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[20]~65_combout\ = (\CK|cnt\(20) & (!\CK|cnt[19]~64\)) # (!\CK|cnt\(20) & ((\CK|cnt[19]~64\) # (GND)))
-- \CK|cnt[20]~66\ = CARRY((!\CK|cnt[19]~64\) # (!\CK|cnt\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(20),
	datad => VCC,
	cin => \CK|cnt[19]~64\,
	combout => \CK|cnt[20]~65_combout\,
	cout => \CK|cnt[20]~66\);

-- Location: FF_X46_Y4_N17
\CK|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[20]~65_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(20));

-- Location: LCCOMB_X46_Y4_N18
\CK|cnt[21]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[21]~67_combout\ = (\CK|cnt\(21) & (\CK|cnt[20]~66\ $ (GND))) # (!\CK|cnt\(21) & (!\CK|cnt[20]~66\ & VCC))
-- \CK|cnt[21]~68\ = CARRY((\CK|cnt\(21) & !\CK|cnt[20]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(21),
	datad => VCC,
	cin => \CK|cnt[20]~66\,
	combout => \CK|cnt[21]~67_combout\,
	cout => \CK|cnt[21]~68\);

-- Location: FF_X46_Y4_N19
\CK|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[21]~67_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(21));

-- Location: LCCOMB_X46_Y4_N20
\CK|cnt[22]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[22]~69_combout\ = (\CK|cnt\(22) & (!\CK|cnt[21]~68\)) # (!\CK|cnt\(22) & ((\CK|cnt[21]~68\) # (GND)))
-- \CK|cnt[22]~70\ = CARRY((!\CK|cnt[21]~68\) # (!\CK|cnt\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(22),
	datad => VCC,
	cin => \CK|cnt[21]~68\,
	combout => \CK|cnt[22]~69_combout\,
	cout => \CK|cnt[22]~70\);

-- Location: FF_X46_Y4_N21
\CK|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[22]~69_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(22));

-- Location: LCCOMB_X46_Y4_N22
\CK|cnt[23]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[23]~71_combout\ = (\CK|cnt\(23) & (\CK|cnt[22]~70\ & VCC)) # (!\CK|cnt\(23) & (!\CK|cnt[22]~70\))
-- \CK|cnt[23]~72\ = CARRY((!\CK|cnt\(23) & !\CK|cnt[22]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CK|cnt\(23),
	datad => VCC,
	cin => \CK|cnt[22]~70\,
	combout => \CK|cnt[23]~71_combout\,
	cout => \CK|cnt[23]~72\);

-- Location: FF_X46_Y4_N23
\CK|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[23]~71_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(23));

-- Location: LCCOMB_X46_Y4_N24
\CK|cnt[24]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[24]~73_combout\ = \CK|cnt[23]~72\ $ (\CK|cnt\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CK|cnt\(24),
	cin => \CK|cnt[23]~72\,
	combout => \CK|cnt[24]~73_combout\);

-- Location: FF_X46_Y4_N25
\CK|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[24]~73_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(24));

-- Location: LCCOMB_X45_Y1_N0
\CK|clk_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|clk_out~0_combout\ = \CK|clk_out~q\ $ (\CK|cnt\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CK|clk_out~q\,
	datad => \CK|cnt\(24),
	combout => \CK|clk_out~0_combout\);

-- Location: FF_X45_Y1_N1
\CK|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CK|clk_out~0_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|clk_out~q\);

-- Location: CLKCTRL_G18
\CK|clk_out~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CK|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CK|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X51_Y53_N8
\DUT|bout_sig[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|bout_sig[0]~8_combout\ = \DUT|bout_sig\(0) $ (VCC)
-- \DUT|bout_sig[0]~9\ = CARRY(\DUT|bout_sig\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|bout_sig\(0),
	datad => VCC,
	combout => \DUT|bout_sig[0]~8_combout\,
	cout => \DUT|bout_sig[0]~9\);

-- Location: FF_X51_Y53_N9
\DUT|bout_sig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_out~clkctrl_outclk\,
	d => \DUT|bout_sig[0]~8_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|bout_sig\(0));

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

-- Location: LCCOMB_X51_Y53_N10
\DUT|bout_sig[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|bout_sig[1]~10_combout\ = (\DUT|bout_sig\(1) & ((\SW[1]~input_o\ & (\DUT|bout_sig[0]~9\ & VCC)) # (!\SW[1]~input_o\ & (!\DUT|bout_sig[0]~9\)))) # (!\DUT|bout_sig\(1) & ((\SW[1]~input_o\ & (!\DUT|bout_sig[0]~9\)) # (!\SW[1]~input_o\ & 
-- ((\DUT|bout_sig[0]~9\) # (GND)))))
-- \DUT|bout_sig[1]~11\ = CARRY((\DUT|bout_sig\(1) & (!\SW[1]~input_o\ & !\DUT|bout_sig[0]~9\)) # (!\DUT|bout_sig\(1) & ((!\DUT|bout_sig[0]~9\) # (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|bout_sig\(1),
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \DUT|bout_sig[0]~9\,
	combout => \DUT|bout_sig[1]~10_combout\,
	cout => \DUT|bout_sig[1]~11\);

-- Location: FF_X51_Y53_N11
\DUT|bout_sig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_out~clkctrl_outclk\,
	d => \DUT|bout_sig[1]~10_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|bout_sig\(1));

-- Location: LCCOMB_X51_Y53_N12
\DUT|bout_sig[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|bout_sig[2]~12_combout\ = ((\DUT|bout_sig\(2) $ (\SW[1]~input_o\ $ (!\DUT|bout_sig[1]~11\)))) # (GND)
-- \DUT|bout_sig[2]~13\ = CARRY((\DUT|bout_sig\(2) & ((\SW[1]~input_o\) # (!\DUT|bout_sig[1]~11\))) # (!\DUT|bout_sig\(2) & (\SW[1]~input_o\ & !\DUT|bout_sig[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|bout_sig\(2),
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \DUT|bout_sig[1]~11\,
	combout => \DUT|bout_sig[2]~12_combout\,
	cout => \DUT|bout_sig[2]~13\);

-- Location: FF_X51_Y53_N13
\DUT|bout_sig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_out~clkctrl_outclk\,
	d => \DUT|bout_sig[2]~12_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|bout_sig\(2));

-- Location: LCCOMB_X51_Y53_N14
\DUT|bout_sig[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|bout_sig[3]~14_combout\ = (\DUT|bout_sig\(3) & ((\SW[1]~input_o\ & (\DUT|bout_sig[2]~13\ & VCC)) # (!\SW[1]~input_o\ & (!\DUT|bout_sig[2]~13\)))) # (!\DUT|bout_sig\(3) & ((\SW[1]~input_o\ & (!\DUT|bout_sig[2]~13\)) # (!\SW[1]~input_o\ & 
-- ((\DUT|bout_sig[2]~13\) # (GND)))))
-- \DUT|bout_sig[3]~15\ = CARRY((\DUT|bout_sig\(3) & (!\SW[1]~input_o\ & !\DUT|bout_sig[2]~13\)) # (!\DUT|bout_sig\(3) & ((!\DUT|bout_sig[2]~13\) # (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|bout_sig\(3),
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \DUT|bout_sig[2]~13\,
	combout => \DUT|bout_sig[3]~14_combout\,
	cout => \DUT|bout_sig[3]~15\);

-- Location: FF_X51_Y53_N15
\DUT|bout_sig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_out~clkctrl_outclk\,
	d => \DUT|bout_sig[3]~14_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|bout_sig\(3));

-- Location: LCCOMB_X51_Y53_N16
\DUT|bout_sig[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|bout_sig[4]~16_combout\ = ((\DUT|bout_sig\(4) $ (\SW[1]~input_o\ $ (!\DUT|bout_sig[3]~15\)))) # (GND)
-- \DUT|bout_sig[4]~17\ = CARRY((\DUT|bout_sig\(4) & ((\SW[1]~input_o\) # (!\DUT|bout_sig[3]~15\))) # (!\DUT|bout_sig\(4) & (\SW[1]~input_o\ & !\DUT|bout_sig[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|bout_sig\(4),
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \DUT|bout_sig[3]~15\,
	combout => \DUT|bout_sig[4]~16_combout\,
	cout => \DUT|bout_sig[4]~17\);

-- Location: FF_X51_Y53_N17
\DUT|bout_sig[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_out~clkctrl_outclk\,
	d => \DUT|bout_sig[4]~16_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|bout_sig\(4));

-- Location: LCCOMB_X51_Y53_N18
\DUT|bout_sig[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|bout_sig[5]~18_combout\ = (\DUT|bout_sig\(5) & ((\SW[1]~input_o\ & (\DUT|bout_sig[4]~17\ & VCC)) # (!\SW[1]~input_o\ & (!\DUT|bout_sig[4]~17\)))) # (!\DUT|bout_sig\(5) & ((\SW[1]~input_o\ & (!\DUT|bout_sig[4]~17\)) # (!\SW[1]~input_o\ & 
-- ((\DUT|bout_sig[4]~17\) # (GND)))))
-- \DUT|bout_sig[5]~19\ = CARRY((\DUT|bout_sig\(5) & (!\SW[1]~input_o\ & !\DUT|bout_sig[4]~17\)) # (!\DUT|bout_sig\(5) & ((!\DUT|bout_sig[4]~17\) # (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|bout_sig\(5),
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \DUT|bout_sig[4]~17\,
	combout => \DUT|bout_sig[5]~18_combout\,
	cout => \DUT|bout_sig[5]~19\);

-- Location: FF_X51_Y53_N19
\DUT|bout_sig[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_out~clkctrl_outclk\,
	d => \DUT|bout_sig[5]~18_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|bout_sig\(5));

-- Location: LCCOMB_X51_Y53_N20
\DUT|bout_sig[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|bout_sig[6]~20_combout\ = ((\DUT|bout_sig\(6) $ (\SW[1]~input_o\ $ (!\DUT|bout_sig[5]~19\)))) # (GND)
-- \DUT|bout_sig[6]~21\ = CARRY((\DUT|bout_sig\(6) & ((\SW[1]~input_o\) # (!\DUT|bout_sig[5]~19\))) # (!\DUT|bout_sig\(6) & (\SW[1]~input_o\ & !\DUT|bout_sig[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|bout_sig\(6),
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \DUT|bout_sig[5]~19\,
	combout => \DUT|bout_sig[6]~20_combout\,
	cout => \DUT|bout_sig[6]~21\);

-- Location: FF_X51_Y53_N21
\DUT|bout_sig[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_out~clkctrl_outclk\,
	d => \DUT|bout_sig[6]~20_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|bout_sig\(6));

-- Location: LCCOMB_X51_Y53_N22
\DUT|bout_sig[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|bout_sig[7]~22_combout\ = \DUT|bout_sig\(7) $ (\SW[1]~input_o\ $ (\DUT|bout_sig[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|bout_sig\(7),
	datab => \SW[1]~input_o\,
	cin => \DUT|bout_sig[6]~21\,
	combout => \DUT|bout_sig[7]~22_combout\);

-- Location: FF_X51_Y53_N23
\DUT|bout_sig[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_out~clkctrl_outclk\,
	d => \DUT|bout_sig[7]~22_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|bout_sig\(7));

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
END structure;


