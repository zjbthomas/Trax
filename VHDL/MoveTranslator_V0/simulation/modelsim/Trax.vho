-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 Patches 0.01we SJ Web Edition"

-- DATE "03/23/2016 21:04:43"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Trax IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	Txd : BUFFER std_logic;
	Tx_busy : BUFFER std_logic
	);
END Trax;

-- Design Ports Information
-- Txd	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx_busy	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Trax IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_Txd : std_logic;
SIGNAL ww_Tx_busy : std_logic;
SIGNAL \pll_inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \pll_inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \counter~16_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \send:counter[16]~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \counter~15_combout\ : std_logic;
SIGNAL \send:counter[0]~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \counter~14_combout\ : std_logic;
SIGNAL \send:counter[1]~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \counter~13_combout\ : std_logic;
SIGNAL \send:counter[2]~q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \counter~12_combout\ : std_logic;
SIGNAL \send:counter[3]~q\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \counter~11_combout\ : std_logic;
SIGNAL \send:counter[4]~q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \counter~10_combout\ : std_logic;
SIGNAL \send:counter[5]~q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \counter~9_combout\ : std_logic;
SIGNAL \send:counter[6]~q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \counter~8_combout\ : std_logic;
SIGNAL \send:counter[7]~q\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \counter~7_combout\ : std_logic;
SIGNAL \send:counter[8]~q\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \counter~6_combout\ : std_logic;
SIGNAL \send:counter[9]~q\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \send:counter[10]~q\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \send:counter[11]~q\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \send:counter[12]~q\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \send:counter[13]~q\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \send:counter[14]~q\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \send:counter[15]~q\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \x[0]~4_combout\ : std_logic;
SIGNAL \x[1]~5_combout\ : std_logic;
SIGNAL \send~0_combout\ : std_logic;
SIGNAL \x[1]~6\ : std_logic;
SIGNAL \x[2]~7_combout\ : std_logic;
SIGNAL \x[2]~8\ : std_logic;
SIGNAL \x[3]~9_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[2]~9_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[2]~11_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[2]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|x_last[2]~10_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[3]~13_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[3]~15_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[3]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|x_last[3]~14_combout\ : std_logic;
SIGNAL \move_translator_inst|process_0~1_combout\ : std_logic;
SIGNAL \x[3]~10\ : std_logic;
SIGNAL \x[4]~11_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[4]~17_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[4]~19_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[4]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|x_last[4]~18_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[1]~5_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[1]~7_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[1]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|x_last[1]~6_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[0]~1_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[0]~3_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[0]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|x_last[0]~2_combout\ : std_logic;
SIGNAL \move_translator_inst|process_0~0_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[4]~25_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[4]~26_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector3~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector2~0_combout\ : std_logic;
SIGNAL \move_translator_inst|x_temp[2]~5_combout\ : std_logic;
SIGNAL \move_translator_inst|x_temp[2]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|x_temp[2]~4_combout\ : std_logic;
SIGNAL \move_translator_inst|Add0~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector0~0_combout\ : std_logic;
SIGNAL \move_translator_inst|x_temp[4]~1_combout\ : std_logic;
SIGNAL \move_translator_inst|x_temp[4]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|x_temp[4]~0_combout\ : std_logic;
SIGNAL \move_translator_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \move_translator_inst|x_temp[4]~12_combout\ : std_logic;
SIGNAL \move_translator_inst|x_temp[1]~7_combout\ : std_logic;
SIGNAL \move_translator_inst|x_temp[1]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|x_temp[1]~6_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector1~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector1~1_combout\ : std_logic;
SIGNAL \move_translator_inst|x_temp[3]~3_combout\ : std_logic;
SIGNAL \move_translator_inst|x_temp[3]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|x_temp[3]~2_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector9~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector9~1_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_state.axis_x~q\ : std_logic;
SIGNAL \move_translator_inst|Selector11~2_combout\ : std_logic;
SIGNAL \move_translator_inst|process_0~2_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector11~3_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector10~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_state.axis_y~q\ : std_logic;
SIGNAL \move_translator_inst|y_temp[1]~2_combout\ : std_logic;
SIGNAL \move_translator_inst|y_temp[4]~0_combout\ : std_logic;
SIGNAL \move_translator_inst|y_temp[2]~1_combout\ : std_logic;
SIGNAL \move_translator_inst|Add2~0_combout\ : std_logic;
SIGNAL \move_translator_inst|y_temp[3]~3_combout\ : std_logic;
SIGNAL \move_translator_inst|Add2~1_combout\ : std_logic;
SIGNAL \move_translator_inst|y_temp[4]~4_combout\ : std_logic;
SIGNAL \move_translator_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector11~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector11~1_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_state.tile_pattern~q\ : std_logic;
SIGNAL \move_translator_inst|Selector8~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_state.idle~q\ : std_logic;
SIGNAL \move_translator_inst|Tx_en~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_en~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~0_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~38_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|counter[3]~0_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~1\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~2_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~33_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~3\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~4_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~32_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~5\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~6_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~35_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~7\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~8_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~36_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~9\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~10_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~34_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~11\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~12_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~37_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~13\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~14_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~31_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~15\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~16_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~30_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~17\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~18_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~29_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~19\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~20_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~25_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~21\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~22_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~24_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|LessThan0~1_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|LessThan0~3_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~23\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~26_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~28_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|LessThan0~0_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|LessThan0~2_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|LessThan0~4_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|state~21_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.start~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit0~feeder_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|state~19_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit0~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit1~feeder_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit1~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit2~feeder_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit2~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit3~feeder_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit3~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit4~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit5~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit6~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit7~feeder_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit7~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.stop~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|state~20_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.idle~q\ : std_logic;
SIGNAL \move_translator_inst|Add1~2_combout\ : std_logic;
SIGNAL \move_translator_inst|Add1~3_combout\ : std_logic;
SIGNAL \move_translator_inst|Add1~4_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_data[0]~7\ : std_logic;
SIGNAL \move_translator_inst|Tx_data[1]~9\ : std_logic;
SIGNAL \move_translator_inst|Tx_data[2]~10_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_data[5]~18_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|process_0~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_data[1]~8_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Selector0~2_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_data[0]~6_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Selector0~3_combout\ : std_logic;
SIGNAL \move_translator_inst|Add1~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Add1~1_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_data[2]~11\ : std_logic;
SIGNAL \move_translator_inst|Tx_data[3]~13\ : std_logic;
SIGNAL \move_translator_inst|Tx_data[4]~14_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|reg[4]~feeder_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_data[3]~12_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Selector0~1_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_data[4]~15\ : std_logic;
SIGNAL \move_translator_inst|Tx_data[5]~16_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector13~0_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|reg[6]~feeder_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Selector0~0_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Selector0~4_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Txd~2_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Txd~3_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Txd~q\ : std_logic;
SIGNAL \pll_inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \move_translator_inst|uut0|reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL x : std_logic_vector(4 DOWNTO 0);
SIGNAL \move_translator_inst|Tx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \move_translator_inst|uut0|counter\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \move_translator_inst|y_temp\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \move_translator_inst|uut0|ALT_INV_Txd~q\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
Txd <= ww_Txd;
Tx_busy <= ww_Tx_busy;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pll_inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clock~input_o\);

\pll_inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\pll_inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\pll_inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\pll_inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\pll_inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll_inst|altpll_component|auto_generated|wire_pll1_clk\(0));
\move_translator_inst|uut0|ALT_INV_Txd~q\ <= NOT \move_translator_inst|uut0|Txd~q\;

-- Location: IOOBUF_X13_Y73_N23
\Txd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \move_translator_inst|uut0|ALT_INV_Txd~q\,
	devoe => ww_devoe,
	o => ww_Txd);

-- Location: IOOBUF_X83_Y73_N2
\Tx_busy~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \move_translator_inst|uut0|state.idle~q\,
	devoe => ww_devoe,
	o => ww_Tx_busy);

-- Location: IOIBUF_X0_Y36_N15
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: PLL_1
\pll_inst|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 3,
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
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 2,
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
	pll_compensation_delay => 7101,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
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
	fbin => \pll_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \pll_inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \pll_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y40_N26
\counter~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~16_combout\ = (!\Add0~30_combout\ & \Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \Add0~32_combout\,
	combout => \counter~16_combout\);

-- Location: IOIBUF_X115_Y40_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X114_Y40_N27
\send:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send:counter[16]~q\);

-- Location: LCCOMB_X114_Y39_N16
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \send:counter[0]~q\ $ (VCC)
-- \Add0~1\ = CARRY(\send:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \send:counter[0]~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X114_Y39_N14
\counter~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~15_combout\ = (\Add0~0_combout\ & ((!\Add0~32_combout\) # (!\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datac => \Add0~32_combout\,
	datad => \Add0~0_combout\,
	combout => \counter~15_combout\);

-- Location: FF_X114_Y39_N15
\send:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter~15_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send:counter[0]~q\);

-- Location: LCCOMB_X114_Y39_N18
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\send:counter[1]~q\ & (!\Add0~1\)) # (!\send:counter[1]~q\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\send:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \send:counter[1]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X114_Y39_N12
\counter~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~14_combout\ = (\Add0~2_combout\ & ((!\Add0~32_combout\) # (!\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datac => \Add0~32_combout\,
	datad => \Add0~2_combout\,
	combout => \counter~14_combout\);

-- Location: FF_X114_Y39_N13
\send:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send:counter[1]~q\);

-- Location: LCCOMB_X114_Y39_N20
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\send:counter[2]~q\ & (\Add0~3\ $ (GND))) # (!\send:counter[2]~q\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\send:counter[2]~q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \send:counter[2]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X114_Y39_N2
\counter~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~13_combout\ = (\Add0~4_combout\ & ((!\Add0~32_combout\) # (!\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datac => \Add0~32_combout\,
	datad => \Add0~4_combout\,
	combout => \counter~13_combout\);

-- Location: FF_X114_Y39_N3
\send:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter~13_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send:counter[2]~q\);

-- Location: LCCOMB_X114_Y39_N22
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\send:counter[3]~q\ & (!\Add0~5\)) # (!\send:counter[3]~q\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\send:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \send:counter[3]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X114_Y39_N8
\counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~12_combout\ = (\Add0~6_combout\ & ((!\Add0~30_combout\) # (!\Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~30_combout\,
	combout => \counter~12_combout\);

-- Location: FF_X114_Y39_N9
\send:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send:counter[3]~q\);

-- Location: LCCOMB_X114_Y39_N24
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\send:counter[4]~q\ & (\Add0~7\ $ (GND))) # (!\send:counter[4]~q\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\send:counter[4]~q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \send:counter[4]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X114_Y39_N6
\counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~11_combout\ = (\Add0~8_combout\ & ((!\Add0~32_combout\) # (!\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datac => \Add0~32_combout\,
	datad => \Add0~8_combout\,
	combout => \counter~11_combout\);

-- Location: FF_X114_Y39_N7
\send:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send:counter[4]~q\);

-- Location: LCCOMB_X114_Y39_N26
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\send:counter[5]~q\ & (!\Add0~9\)) # (!\send:counter[5]~q\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\send:counter[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \send:counter[5]~q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X114_Y39_N4
\counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~10_combout\ = (\Add0~10_combout\ & ((!\Add0~30_combout\) # (!\Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~30_combout\,
	combout => \counter~10_combout\);

-- Location: FF_X114_Y39_N5
\send:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send:counter[5]~q\);

-- Location: LCCOMB_X114_Y39_N28
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\send:counter[6]~q\ & (\Add0~11\ $ (GND))) # (!\send:counter[6]~q\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\send:counter[6]~q\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \send:counter[6]~q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X114_Y39_N10
\counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~9_combout\ = (\Add0~12_combout\ & ((!\Add0~32_combout\) # (!\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datac => \Add0~32_combout\,
	datad => \Add0~12_combout\,
	combout => \counter~9_combout\);

-- Location: FF_X114_Y39_N11
\send:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send:counter[6]~q\);

-- Location: LCCOMB_X114_Y39_N30
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\send:counter[7]~q\ & (!\Add0~13\)) # (!\send:counter[7]~q\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\send:counter[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \send:counter[7]~q\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X114_Y39_N0
\counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~8_combout\ = (\Add0~14_combout\ & ((!\Add0~30_combout\) # (!\Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~30_combout\,
	combout => \counter~8_combout\);

-- Location: FF_X114_Y39_N1
\send:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send:counter[7]~q\);

-- Location: LCCOMB_X114_Y38_N0
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\send:counter[8]~q\ & (\Add0~15\ $ (GND))) # (!\send:counter[8]~q\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\send:counter[8]~q\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \send:counter[8]~q\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X114_Y38_N30
\counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~7_combout\ = (\Add0~16_combout\ & ((!\Add0~32_combout\) # (!\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~32_combout\,
	combout => \counter~7_combout\);

-- Location: FF_X114_Y38_N31
\send:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send:counter[8]~q\);

-- Location: LCCOMB_X114_Y38_N2
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\send:counter[9]~q\ & (!\Add0~17\)) # (!\send:counter[9]~q\ & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\send:counter[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \send:counter[9]~q\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X114_Y38_N28
\counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~6_combout\ = (\Add0~18_combout\ & ((!\Add0~32_combout\) # (!\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~32_combout\,
	combout => \counter~6_combout\);

-- Location: FF_X114_Y38_N29
\send:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send:counter[9]~q\);

-- Location: LCCOMB_X114_Y38_N4
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\send:counter[10]~q\ & (\Add0~19\ $ (GND))) # (!\send:counter[10]~q\ & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\send:counter[10]~q\ & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \send:counter[10]~q\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X114_Y38_N18
\counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = (\Add0~20_combout\ & ((!\Add0~32_combout\) # (!\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~20_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~32_combout\,
	combout => \counter~5_combout\);

-- Location: FF_X114_Y38_N19
\send:counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send:counter[10]~q\);

-- Location: LCCOMB_X114_Y38_N6
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\send:counter[11]~q\ & (!\Add0~21\)) # (!\send:counter[11]~q\ & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\send:counter[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \send:counter[11]~q\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X114_Y38_N24
\counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = (\Add0~22_combout\ & ((!\Add0~32_combout\) # (!\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~32_combout\,
	combout => \counter~4_combout\);

-- Location: FF_X114_Y38_N25
\send:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send:counter[11]~q\);

-- Location: LCCOMB_X114_Y38_N8
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\send:counter[12]~q\ & (\Add0~23\ $ (GND))) # (!\send:counter[12]~q\ & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((\send:counter[12]~q\ & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \send:counter[12]~q\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X114_Y38_N26
\counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (\Add0~24_combout\ & ((!\Add0~32_combout\) # (!\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~24_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~32_combout\,
	combout => \counter~3_combout\);

-- Location: FF_X114_Y38_N27
\send:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send:counter[12]~q\);

-- Location: LCCOMB_X114_Y38_N10
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\send:counter[13]~q\ & (!\Add0~25\)) # (!\send:counter[13]~q\ & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\send:counter[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \send:counter[13]~q\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X114_Y38_N20
\counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (\Add0~26_combout\ & ((!\Add0~32_combout\) # (!\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~32_combout\,
	combout => \counter~2_combout\);

-- Location: FF_X114_Y38_N21
\send:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send:counter[13]~q\);

-- Location: LCCOMB_X114_Y38_N12
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\send:counter[14]~q\ & (\Add0~27\ $ (GND))) # (!\send:counter[14]~q\ & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((\send:counter[14]~q\ & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \send:counter[14]~q\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X114_Y38_N22
\counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (\Add0~28_combout\ & ((!\Add0~32_combout\) # (!\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~32_combout\,
	combout => \counter~1_combout\);

-- Location: FF_X114_Y38_N23
\send:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send:counter[14]~q\);

-- Location: LCCOMB_X114_Y38_N14
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\send:counter[15]~q\ & (!\Add0~29\)) # (!\send:counter[15]~q\ & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!\send:counter[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \send:counter[15]~q\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X114_Y38_N16
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = \Add0~31\ $ (!\send:counter[16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \send:counter[16]~q\,
	cin => \Add0~31\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X114_Y40_N8
\counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (\Add0~30_combout\ & !\Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \Add0~32_combout\,
	combout => \counter~0_combout\);

-- Location: FF_X114_Y40_N9
\send:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send:counter[15]~q\);

-- Location: LCCOMB_X114_Y40_N24
\x[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[0]~4_combout\ = x(0) $ (((\Add0~30_combout\ & \Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(0),
	datac => \Add0~30_combout\,
	datad => \Add0~32_combout\,
	combout => \x[0]~4_combout\);

-- Location: FF_X112_Y40_N25
\x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \x[0]~4_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(0));

-- Location: LCCOMB_X114_Y40_N12
\x[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[1]~5_combout\ = (x(0) & (x(1) & VCC)) # (!x(0) & (x(1) $ (VCC)))
-- \x[1]~6\ = CARRY((!x(0) & x(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(0),
	datab => x(1),
	datad => VCC,
	combout => \x[1]~5_combout\,
	cout => \x[1]~6\);

-- Location: LCCOMB_X114_Y40_N30
\send~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \send~0_combout\ = (\Add0~30_combout\ & \Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \Add0~32_combout\,
	combout => \send~0_combout\);

-- Location: FF_X114_Y40_N13
\x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \x[1]~5_combout\,
	clrn => \reset~input_o\,
	ena => \send~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(1));

-- Location: LCCOMB_X114_Y40_N14
\x[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[2]~7_combout\ = (x(2) & (!\x[1]~6\)) # (!x(2) & ((\x[1]~6\) # (GND)))
-- \x[2]~8\ = CARRY((!\x[1]~6\) # (!x(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x(2),
	datad => VCC,
	cin => \x[1]~6\,
	combout => \x[2]~7_combout\,
	cout => \x[2]~8\);

-- Location: FF_X114_Y40_N15
\x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \x[2]~7_combout\,
	clrn => \reset~input_o\,
	ena => \send~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(2));

-- Location: LCCOMB_X114_Y40_N16
\x[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[3]~9_combout\ = (x(3) & (\x[2]~8\ $ (GND))) # (!x(3) & (!\x[2]~8\ & VCC))
-- \x[3]~10\ = CARRY((x(3) & !\x[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x(3),
	datad => VCC,
	cin => \x[2]~8\,
	combout => \x[3]~9_combout\,
	cout => \x[3]~10\);

-- Location: FF_X114_Y40_N17
\x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \x[3]~9_combout\,
	clrn => \reset~input_o\,
	ena => \send~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(3));

-- Location: LCCOMB_X113_Y40_N24
\move_translator_inst|x_last[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[2]~9_combout\ = (\reset~input_o\ & ((\move_translator_inst|x_last[2]~9_combout\))) # (!\reset~input_o\ & (x(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(2),
	datab => \move_translator_inst|x_last[2]~9_combout\,
	datad => \reset~input_o\,
	combout => \move_translator_inst|x_last[2]~9_combout\);

-- Location: LCCOMB_X113_Y40_N6
\move_translator_inst|x_last[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[2]~11_combout\ = x(2) $ (\move_translator_inst|x_last[2]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(2),
	datad => \move_translator_inst|x_last[2]~9_combout\,
	combout => \move_translator_inst|x_last[2]~11_combout\);

-- Location: FF_X113_Y40_N7
\move_translator_inst|x_last[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|x_last[2]~11_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|x_last[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|x_last[2]~_emulated_q\);

-- Location: LCCOMB_X113_Y40_N4
\move_translator_inst|x_last[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[2]~10_combout\ = (\reset~input_o\ & (\move_translator_inst|x_last[2]~_emulated_q\ $ (((\move_translator_inst|x_last[2]~9_combout\))))) # (!\reset~input_o\ & (((x(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[2]~_emulated_q\,
	datab => x(2),
	datac => \reset~input_o\,
	datad => \move_translator_inst|x_last[2]~9_combout\,
	combout => \move_translator_inst|x_last[2]~10_combout\);

-- Location: LCCOMB_X113_Y40_N8
\move_translator_inst|x_last[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[3]~13_combout\ = (\reset~input_o\ & (\move_translator_inst|x_last[3]~13_combout\)) # (!\reset~input_o\ & ((x(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|x_last[3]~13_combout\,
	datac => x(3),
	datad => \reset~input_o\,
	combout => \move_translator_inst|x_last[3]~13_combout\);

-- Location: LCCOMB_X113_Y40_N22
\move_translator_inst|x_last[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[3]~15_combout\ = \move_translator_inst|x_last[3]~13_combout\ $ (x(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|x_last[3]~13_combout\,
	datad => x(3),
	combout => \move_translator_inst|x_last[3]~15_combout\);

-- Location: FF_X113_Y40_N23
\move_translator_inst|x_last[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|x_last[3]~15_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|x_last[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|x_last[3]~_emulated_q\);

-- Location: LCCOMB_X113_Y40_N16
\move_translator_inst|x_last[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[3]~14_combout\ = (\reset~input_o\ & ((\move_translator_inst|x_last[3]~_emulated_q\ $ (\move_translator_inst|x_last[3]~13_combout\)))) # (!\reset~input_o\ & (x(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(3),
	datab => \move_translator_inst|x_last[3]~_emulated_q\,
	datac => \move_translator_inst|x_last[3]~13_combout\,
	datad => \reset~input_o\,
	combout => \move_translator_inst|x_last[3]~14_combout\);

-- Location: LCCOMB_X113_Y40_N28
\move_translator_inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|process_0~1_combout\ = (x(3) & ((x(2) $ (\move_translator_inst|x_last[2]~10_combout\)) # (!\move_translator_inst|x_last[3]~14_combout\))) # (!x(3) & ((\move_translator_inst|x_last[3]~14_combout\) # (x(2) $ 
-- (\move_translator_inst|x_last[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(3),
	datab => x(2),
	datac => \move_translator_inst|x_last[2]~10_combout\,
	datad => \move_translator_inst|x_last[3]~14_combout\,
	combout => \move_translator_inst|process_0~1_combout\);

-- Location: LCCOMB_X114_Y40_N18
\x[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[4]~11_combout\ = \x[3]~10\ $ (x(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => x(4),
	cin => \x[3]~10\,
	combout => \x[4]~11_combout\);

-- Location: FF_X114_Y40_N19
\x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \x[4]~11_combout\,
	clrn => \reset~input_o\,
	ena => \send~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(4));

-- Location: LCCOMB_X113_Y40_N2
\move_translator_inst|x_last[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[4]~17_combout\ = (\reset~input_o\ & (\move_translator_inst|x_last[4]~17_combout\)) # (!\reset~input_o\ & ((x(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|x_last[4]~17_combout\,
	datac => x(4),
	datad => \reset~input_o\,
	combout => \move_translator_inst|x_last[4]~17_combout\);

-- Location: LCCOMB_X113_Y40_N18
\move_translator_inst|x_last[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[4]~19_combout\ = \move_translator_inst|x_last[4]~17_combout\ $ (x(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|x_last[4]~17_combout\,
	datad => x(4),
	combout => \move_translator_inst|x_last[4]~19_combout\);

-- Location: FF_X113_Y40_N19
\move_translator_inst|x_last[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|x_last[4]~19_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|x_last[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|x_last[4]~_emulated_q\);

-- Location: LCCOMB_X113_Y40_N12
\move_translator_inst|x_last[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[4]~18_combout\ = (\reset~input_o\ & (\move_translator_inst|x_last[4]~_emulated_q\ $ (((\move_translator_inst|x_last[4]~17_combout\))))) # (!\reset~input_o\ & (((x(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[4]~_emulated_q\,
	datab => x(4),
	datac => \reset~input_o\,
	datad => \move_translator_inst|x_last[4]~17_combout\,
	combout => \move_translator_inst|x_last[4]~18_combout\);

-- Location: LCCOMB_X112_Y40_N14
\move_translator_inst|x_last[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[1]~5_combout\ = (\reset~input_o\ & (\move_translator_inst|x_last[1]~5_combout\)) # (!\reset~input_o\ & ((x(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|x_last[1]~5_combout\,
	datac => x(1),
	datad => \reset~input_o\,
	combout => \move_translator_inst|x_last[1]~5_combout\);

-- Location: LCCOMB_X112_Y40_N24
\move_translator_inst|x_last[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[1]~7_combout\ = x(1) $ (\move_translator_inst|x_last[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datad => \move_translator_inst|x_last[1]~5_combout\,
	combout => \move_translator_inst|x_last[1]~7_combout\);

-- Location: FF_X113_Y40_N1
\move_translator_inst|x_last[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|x_last[1]~7_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|x_last[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|x_last[1]~_emulated_q\);

-- Location: LCCOMB_X112_Y40_N8
\move_translator_inst|x_last[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[1]~6_combout\ = (\reset~input_o\ & ((\move_translator_inst|x_last[1]~_emulated_q\ $ (\move_translator_inst|x_last[1]~5_combout\)))) # (!\reset~input_o\ & (x(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datab => \move_translator_inst|x_last[1]~_emulated_q\,
	datac => \move_translator_inst|x_last[1]~5_combout\,
	datad => \reset~input_o\,
	combout => \move_translator_inst|x_last[1]~6_combout\);

-- Location: LCCOMB_X112_Y40_N20
\move_translator_inst|x_last[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[0]~1_combout\ = (\reset~input_o\ & ((\move_translator_inst|x_last[0]~1_combout\))) # (!\reset~input_o\ & (!x(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(0),
	datab => \move_translator_inst|x_last[0]~1_combout\,
	datad => \reset~input_o\,
	combout => \move_translator_inst|x_last[0]~1_combout\);

-- Location: LCCOMB_X114_Y40_N10
\move_translator_inst|x_last[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[0]~3_combout\ = x(0) $ (!\move_translator_inst|x_last[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x(0),
	datad => \move_translator_inst|x_last[0]~1_combout\,
	combout => \move_translator_inst|x_last[0]~3_combout\);

-- Location: FF_X113_Y40_N25
\move_translator_inst|x_last[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|x_last[0]~3_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|x_last[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|x_last[0]~_emulated_q\);

-- Location: LCCOMB_X112_Y40_N18
\move_translator_inst|x_last[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[0]~2_combout\ = (\reset~input_o\ & (\move_translator_inst|x_last[0]~_emulated_q\ $ (((\move_translator_inst|x_last[0]~1_combout\))))) # (!\reset~input_o\ & (((!x(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[0]~_emulated_q\,
	datab => x(0),
	datac => \reset~input_o\,
	datad => \move_translator_inst|x_last[0]~1_combout\,
	combout => \move_translator_inst|x_last[0]~2_combout\);

-- Location: LCCOMB_X112_Y40_N30
\move_translator_inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|process_0~0_combout\ = (x(1) & ((x(0) $ (!\move_translator_inst|x_last[0]~2_combout\)) # (!\move_translator_inst|x_last[1]~6_combout\))) # (!x(1) & ((\move_translator_inst|x_last[1]~6_combout\) # (x(0) $ 
-- (!\move_translator_inst|x_last[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datab => x(0),
	datac => \move_translator_inst|x_last[1]~6_combout\,
	datad => \move_translator_inst|x_last[0]~2_combout\,
	combout => \move_translator_inst|process_0~0_combout\);

-- Location: LCCOMB_X113_Y40_N0
\move_translator_inst|x_last[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[4]~25_combout\ = (\move_translator_inst|process_0~0_combout\) # (\move_translator_inst|x_last[4]~18_combout\ $ (x(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[4]~18_combout\,
	datab => x(4),
	datad => \move_translator_inst|process_0~0_combout\,
	combout => \move_translator_inst|x_last[4]~25_combout\);

-- Location: LCCOMB_X113_Y40_N30
\move_translator_inst|x_last[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[4]~26_combout\ = (!\move_translator_inst|Tx_state.idle~q\ & (!\move_translator_inst|uut0|state.idle~q\ & ((\move_translator_inst|process_0~1_combout\) # (\move_translator_inst|x_last[4]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.idle~q\,
	datab => \move_translator_inst|process_0~1_combout\,
	datac => \move_translator_inst|uut0|state.idle~q\,
	datad => \move_translator_inst|x_last[4]~25_combout\,
	combout => \move_translator_inst|x_last[4]~26_combout\);

-- Location: LCCOMB_X112_Y39_N8
\move_translator_inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector3~0_combout\ = (\move_translator_inst|Tx_state.axis_x~q\ & ((!\move_translator_inst|x_temp[1]~6_combout\))) # (!\move_translator_inst|Tx_state.axis_x~q\ & (x(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_x~q\,
	datac => x(1),
	datad => \move_translator_inst|x_temp[1]~6_combout\,
	combout => \move_translator_inst|Selector3~0_combout\);

-- Location: LCCOMB_X112_Y39_N30
\move_translator_inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector2~0_combout\ = (\move_translator_inst|Tx_state.axis_x~q\ & ((\move_translator_inst|x_temp[2]~4_combout\ $ (!\move_translator_inst|x_temp[1]~6_combout\)))) # (!\move_translator_inst|Tx_state.axis_x~q\ & (x(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_x~q\,
	datab => x(2),
	datac => \move_translator_inst|x_temp[2]~4_combout\,
	datad => \move_translator_inst|x_temp[1]~6_combout\,
	combout => \move_translator_inst|Selector2~0_combout\);

-- Location: LCCOMB_X112_Y39_N26
\move_translator_inst|x_temp[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_temp[2]~5_combout\ = \move_translator_inst|x_last[2]~9_combout\ $ (((\move_translator_inst|x_temp[4]~12_combout\ & ((\move_translator_inst|x_temp[2]~4_combout\))) # (!\move_translator_inst|x_temp[4]~12_combout\ & 
-- (\move_translator_inst|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Selector2~0_combout\,
	datab => \move_translator_inst|x_last[2]~9_combout\,
	datac => \move_translator_inst|x_temp[2]~4_combout\,
	datad => \move_translator_inst|x_temp[4]~12_combout\,
	combout => \move_translator_inst|x_temp[2]~5_combout\);

-- Location: FF_X112_Y39_N27
\move_translator_inst|x_temp[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|x_temp[2]~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|x_temp[2]~_emulated_q\);

-- Location: LCCOMB_X112_Y39_N0
\move_translator_inst|x_temp[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_temp[2]~4_combout\ = (\reset~input_o\ & (\move_translator_inst|x_temp[2]~_emulated_q\ $ (((\move_translator_inst|x_last[2]~9_combout\))))) # (!\reset~input_o\ & (((x(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_temp[2]~_emulated_q\,
	datab => x(2),
	datac => \reset~input_o\,
	datad => \move_translator_inst|x_last[2]~9_combout\,
	combout => \move_translator_inst|x_temp[2]~4_combout\);

-- Location: LCCOMB_X112_Y39_N24
\move_translator_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Add0~0_combout\ = \move_translator_inst|x_temp[4]~0_combout\ $ (((\move_translator_inst|x_temp[3]~2_combout\ & ((\move_translator_inst|x_temp[1]~6_combout\) # (\move_translator_inst|x_temp[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_temp[1]~6_combout\,
	datab => \move_translator_inst|x_temp[2]~4_combout\,
	datac => \move_translator_inst|x_temp[3]~2_combout\,
	datad => \move_translator_inst|x_temp[4]~0_combout\,
	combout => \move_translator_inst|Add0~0_combout\);

-- Location: LCCOMB_X112_Y39_N22
\move_translator_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector0~0_combout\ = (\move_translator_inst|Tx_state.axis_x~q\ & ((\move_translator_inst|Add0~0_combout\))) # (!\move_translator_inst|Tx_state.axis_x~q\ & (x(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_x~q\,
	datac => x(4),
	datad => \move_translator_inst|Add0~0_combout\,
	combout => \move_translator_inst|Selector0~0_combout\);

-- Location: LCCOMB_X112_Y39_N14
\move_translator_inst|x_temp[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_temp[4]~1_combout\ = \move_translator_inst|x_last[4]~17_combout\ $ (((\move_translator_inst|x_temp[4]~12_combout\ & (\move_translator_inst|x_temp[4]~0_combout\)) # (!\move_translator_inst|x_temp[4]~12_combout\ & 
-- ((\move_translator_inst|Selector0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_temp[4]~0_combout\,
	datab => \move_translator_inst|x_last[4]~17_combout\,
	datac => \move_translator_inst|Selector0~0_combout\,
	datad => \move_translator_inst|x_temp[4]~12_combout\,
	combout => \move_translator_inst|x_temp[4]~1_combout\);

-- Location: FF_X112_Y39_N15
\move_translator_inst|x_temp[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|x_temp[4]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|x_temp[4]~_emulated_q\);

-- Location: LCCOMB_X112_Y39_N12
\move_translator_inst|x_temp[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_temp[4]~0_combout\ = (\reset~input_o\ & ((\move_translator_inst|x_temp[4]~_emulated_q\ $ (\move_translator_inst|x_last[4]~17_combout\)))) # (!\reset~input_o\ & (x(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(4),
	datab => \move_translator_inst|x_temp[4]~_emulated_q\,
	datac => \reset~input_o\,
	datad => \move_translator_inst|x_last[4]~17_combout\,
	combout => \move_translator_inst|x_temp[4]~0_combout\);

-- Location: LCCOMB_X112_Y39_N20
\move_translator_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|LessThan0~0_combout\ = ((!\move_translator_inst|x_temp[2]~4_combout\ & ((!\move_translator_inst|x_last[0]~2_combout\) # (!\move_translator_inst|x_temp[1]~6_combout\)))) # (!\move_translator_inst|x_temp[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_temp[1]~6_combout\,
	datab => \move_translator_inst|x_temp[2]~4_combout\,
	datac => \move_translator_inst|x_last[0]~2_combout\,
	datad => \move_translator_inst|x_temp[4]~0_combout\,
	combout => \move_translator_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X112_Y39_N6
\move_translator_inst|x_temp[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_temp[4]~12_combout\ = (!\move_translator_inst|x_last[4]~26_combout\ & (((\move_translator_inst|LessThan0~0_combout\) # (!\move_translator_inst|Tx_state.axis_x~q\)) # (!\move_translator_inst|x_temp[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_temp[3]~2_combout\,
	datab => \move_translator_inst|Tx_state.axis_x~q\,
	datac => \move_translator_inst|x_last[4]~26_combout\,
	datad => \move_translator_inst|LessThan0~0_combout\,
	combout => \move_translator_inst|x_temp[4]~12_combout\);

-- Location: LCCOMB_X112_Y39_N16
\move_translator_inst|x_temp[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_temp[1]~7_combout\ = \move_translator_inst|x_last[1]~5_combout\ $ (((\move_translator_inst|x_temp[4]~12_combout\ & (\move_translator_inst|x_temp[1]~6_combout\)) # (!\move_translator_inst|x_temp[4]~12_combout\ & 
-- ((\move_translator_inst|Selector3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_temp[1]~6_combout\,
	datab => \move_translator_inst|Selector3~0_combout\,
	datac => \move_translator_inst|x_last[1]~5_combout\,
	datad => \move_translator_inst|x_temp[4]~12_combout\,
	combout => \move_translator_inst|x_temp[1]~7_combout\);

-- Location: FF_X112_Y39_N17
\move_translator_inst|x_temp[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|x_temp[1]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|x_temp[1]~_emulated_q\);

-- Location: LCCOMB_X112_Y40_N28
\move_translator_inst|x_temp[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_temp[1]~6_combout\ = (\reset~input_o\ & ((\move_translator_inst|x_temp[1]~_emulated_q\ $ (\move_translator_inst|x_last[1]~5_combout\)))) # (!\reset~input_o\ & (x(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datab => \move_translator_inst|x_temp[1]~_emulated_q\,
	datac => \move_translator_inst|x_last[1]~5_combout\,
	datad => \reset~input_o\,
	combout => \move_translator_inst|x_temp[1]~6_combout\);

-- Location: LCCOMB_X112_Y39_N10
\move_translator_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector1~0_combout\ = (\move_translator_inst|Tx_state.axis_x~q\ & (\move_translator_inst|x_temp[3]~2_combout\ $ (((\move_translator_inst|x_temp[1]~6_combout\) # (\move_translator_inst|x_temp[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_temp[1]~6_combout\,
	datab => \move_translator_inst|Tx_state.axis_x~q\,
	datac => \move_translator_inst|x_temp[2]~4_combout\,
	datad => \move_translator_inst|x_temp[3]~2_combout\,
	combout => \move_translator_inst|Selector1~0_combout\);

-- Location: LCCOMB_X112_Y39_N28
\move_translator_inst|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector1~1_combout\ = (\move_translator_inst|Selector1~0_combout\) # ((!\move_translator_inst|Tx_state.axis_x~q\ & x(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_x~q\,
	datac => x(3),
	datad => \move_translator_inst|Selector1~0_combout\,
	combout => \move_translator_inst|Selector1~1_combout\);

-- Location: LCCOMB_X112_Y39_N18
\move_translator_inst|x_temp[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_temp[3]~3_combout\ = \move_translator_inst|x_last[3]~13_combout\ $ (((\move_translator_inst|x_temp[4]~12_combout\ & ((\move_translator_inst|x_temp[3]~2_combout\))) # (!\move_translator_inst|x_temp[4]~12_combout\ & 
-- (\move_translator_inst|Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[3]~13_combout\,
	datab => \move_translator_inst|Selector1~1_combout\,
	datac => \move_translator_inst|x_temp[3]~2_combout\,
	datad => \move_translator_inst|x_temp[4]~12_combout\,
	combout => \move_translator_inst|x_temp[3]~3_combout\);

-- Location: FF_X112_Y39_N19
\move_translator_inst|x_temp[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|x_temp[3]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|x_temp[3]~_emulated_q\);

-- Location: LCCOMB_X113_Y40_N26
\move_translator_inst|x_temp[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_temp[3]~2_combout\ = (\reset~input_o\ & (\move_translator_inst|x_temp[3]~_emulated_q\ $ (((\move_translator_inst|x_last[3]~13_combout\))))) # (!\reset~input_o\ & (((x(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_temp[3]~_emulated_q\,
	datab => x(3),
	datac => \move_translator_inst|x_last[3]~13_combout\,
	datad => \reset~input_o\,
	combout => \move_translator_inst|x_temp[3]~2_combout\);

-- Location: LCCOMB_X113_Y39_N30
\move_translator_inst|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector9~0_combout\ = (!\move_translator_inst|Selector11~0_combout\ & (((\move_translator_inst|x_temp[3]~2_combout\ & !\move_translator_inst|LessThan0~0_combout\)) # (!\move_translator_inst|Tx_state.axis_x~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Selector11~0_combout\,
	datab => \move_translator_inst|Tx_state.axis_x~q\,
	datac => \move_translator_inst|x_temp[3]~2_combout\,
	datad => \move_translator_inst|LessThan0~0_combout\,
	combout => \move_translator_inst|Selector9~0_combout\);

-- Location: LCCOMB_X113_Y39_N24
\move_translator_inst|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector9~1_combout\ = (!\move_translator_inst|Tx_state.tile_pattern~q\ & (\move_translator_inst|Selector9~0_combout\ & ((\move_translator_inst|x_last[4]~26_combout\) # (\move_translator_inst|Tx_state.axis_x~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[4]~26_combout\,
	datab => \move_translator_inst|Tx_state.tile_pattern~q\,
	datac => \move_translator_inst|Tx_state.axis_x~q\,
	datad => \move_translator_inst|Selector9~0_combout\,
	combout => \move_translator_inst|Selector9~1_combout\);

-- Location: FF_X113_Y39_N25
\move_translator_inst|Tx_state.axis_x\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Selector9~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_state.axis_x~q\);

-- Location: LCCOMB_X113_Y39_N20
\move_translator_inst|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector11~2_combout\ = (\move_translator_inst|Tx_state.axis_x~q\ & ((\move_translator_inst|LessThan0~0_combout\) # (!\move_translator_inst|x_temp[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|Tx_state.axis_x~q\,
	datac => \move_translator_inst|x_temp[3]~2_combout\,
	datad => \move_translator_inst|LessThan0~0_combout\,
	combout => \move_translator_inst|Selector11~2_combout\);

-- Location: LCCOMB_X113_Y39_N28
\move_translator_inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|process_0~2_combout\ = (\move_translator_inst|process_0~0_combout\) # ((\move_translator_inst|process_0~1_combout\) # (\move_translator_inst|x_last[4]~18_combout\ $ (x(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[4]~18_combout\,
	datab => x(4),
	datac => \move_translator_inst|process_0~0_combout\,
	datad => \move_translator_inst|process_0~1_combout\,
	combout => \move_translator_inst|process_0~2_combout\);

-- Location: LCCOMB_X113_Y39_N6
\move_translator_inst|Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector11~3_combout\ = (\move_translator_inst|Selector9~0_combout\ & ((\move_translator_inst|uut0|state.idle~q\) # ((\move_translator_inst|Tx_state.idle~q\) # (!\move_translator_inst|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.idle~q\,
	datab => \move_translator_inst|Tx_state.idle~q\,
	datac => \move_translator_inst|Selector9~0_combout\,
	datad => \move_translator_inst|process_0~2_combout\,
	combout => \move_translator_inst|Selector11~3_combout\);

-- Location: LCCOMB_X113_Y39_N18
\move_translator_inst|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector10~0_combout\ = (!\move_translator_inst|Tx_state.tile_pattern~q\ & ((\move_translator_inst|Selector11~3_combout\ & ((\move_translator_inst|Tx_state.axis_y~q\))) # (!\move_translator_inst|Selector11~3_combout\ & 
-- (\move_translator_inst|Selector11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.tile_pattern~q\,
	datab => \move_translator_inst|Selector11~2_combout\,
	datac => \move_translator_inst|Tx_state.axis_y~q\,
	datad => \move_translator_inst|Selector11~3_combout\,
	combout => \move_translator_inst|Selector10~0_combout\);

-- Location: FF_X113_Y39_N19
\move_translator_inst|Tx_state.axis_y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Selector10~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_state.axis_y~q\);

-- Location: LCCOMB_X113_Y40_N14
\move_translator_inst|y_temp[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_temp[1]~2_combout\ = (\move_translator_inst|x_last[4]~26_combout\ & (((!\move_translator_inst|y_temp\(1) & \move_translator_inst|Tx_state.axis_y~q\)))) # (!\move_translator_inst|x_last[4]~26_combout\ & 
-- (\move_translator_inst|y_temp\(1) $ (((!\move_translator_inst|LessThan1~0_combout\ & \move_translator_inst|Tx_state.axis_y~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[4]~26_combout\,
	datab => \move_translator_inst|LessThan1~0_combout\,
	datac => \move_translator_inst|y_temp\(1),
	datad => \move_translator_inst|Tx_state.axis_y~q\,
	combout => \move_translator_inst|y_temp[1]~2_combout\);

-- Location: FF_X113_Y40_N15
\move_translator_inst|y_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|y_temp[1]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|y_temp\(1));

-- Location: LCCOMB_X114_Y40_N20
\move_translator_inst|y_temp[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_temp[4]~0_combout\ = (!\move_translator_inst|x_last[4]~26_combout\ & ((\move_translator_inst|LessThan1~0_combout\) # (!\move_translator_inst|Tx_state.axis_y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_y~q\,
	datab => \move_translator_inst|LessThan1~0_combout\,
	datad => \move_translator_inst|x_last[4]~26_combout\,
	combout => \move_translator_inst|y_temp[4]~0_combout\);

-- Location: LCCOMB_X114_Y40_N0
\move_translator_inst|y_temp[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_temp[2]~1_combout\ = (\move_translator_inst|y_temp[4]~0_combout\ & (((\move_translator_inst|y_temp\(2))))) # (!\move_translator_inst|y_temp[4]~0_combout\ & (\move_translator_inst|Tx_state.axis_y~q\ & 
-- (\move_translator_inst|y_temp\(1) $ (!\move_translator_inst|y_temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp\(1),
	datab => \move_translator_inst|Tx_state.axis_y~q\,
	datac => \move_translator_inst|y_temp\(2),
	datad => \move_translator_inst|y_temp[4]~0_combout\,
	combout => \move_translator_inst|y_temp[2]~1_combout\);

-- Location: FF_X114_Y40_N1
\move_translator_inst|y_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|y_temp[2]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|y_temp\(2));

-- Location: LCCOMB_X114_Y40_N2
\move_translator_inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Add2~0_combout\ = \move_translator_inst|y_temp\(3) $ (((\move_translator_inst|y_temp\(1)) # (\move_translator_inst|y_temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp\(1),
	datab => \move_translator_inst|y_temp\(2),
	datad => \move_translator_inst|y_temp\(3),
	combout => \move_translator_inst|Add2~0_combout\);

-- Location: LCCOMB_X114_Y40_N6
\move_translator_inst|y_temp[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_temp[3]~3_combout\ = (\move_translator_inst|y_temp[4]~0_combout\ & (((\move_translator_inst|y_temp\(3))))) # (!\move_translator_inst|y_temp[4]~0_combout\ & (\move_translator_inst|Tx_state.axis_y~q\ & 
-- (\move_translator_inst|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_y~q\,
	datab => \move_translator_inst|Add2~0_combout\,
	datac => \move_translator_inst|y_temp\(3),
	datad => \move_translator_inst|y_temp[4]~0_combout\,
	combout => \move_translator_inst|y_temp[3]~3_combout\);

-- Location: FF_X114_Y40_N7
\move_translator_inst|y_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|y_temp[3]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|y_temp\(3));

-- Location: LCCOMB_X114_Y40_N28
\move_translator_inst|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Add2~1_combout\ = \move_translator_inst|y_temp\(4) $ (((\move_translator_inst|y_temp\(3) & ((\move_translator_inst|y_temp\(1)) # (\move_translator_inst|y_temp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp\(1),
	datab => \move_translator_inst|y_temp\(2),
	datac => \move_translator_inst|y_temp\(4),
	datad => \move_translator_inst|y_temp\(3),
	combout => \move_translator_inst|Add2~1_combout\);

-- Location: LCCOMB_X114_Y40_N4
\move_translator_inst|y_temp[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_temp[4]~4_combout\ = (\move_translator_inst|y_temp[4]~0_combout\ & (((\move_translator_inst|y_temp\(4))))) # (!\move_translator_inst|y_temp[4]~0_combout\ & (\move_translator_inst|Tx_state.axis_y~q\ & 
-- (\move_translator_inst|Add2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_y~q\,
	datab => \move_translator_inst|Add2~1_combout\,
	datac => \move_translator_inst|y_temp\(4),
	datad => \move_translator_inst|y_temp[4]~0_combout\,
	combout => \move_translator_inst|y_temp[4]~4_combout\);

-- Location: FF_X114_Y40_N5
\move_translator_inst|y_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|y_temp[4]~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|y_temp\(4));

-- Location: LCCOMB_X114_Y40_N22
\move_translator_inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|LessThan1~0_combout\ = (((!\move_translator_inst|y_temp\(1) & !\move_translator_inst|y_temp\(2))) # (!\move_translator_inst|y_temp\(3))) # (!\move_translator_inst|y_temp\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp\(1),
	datab => \move_translator_inst|y_temp\(2),
	datac => \move_translator_inst|y_temp\(4),
	datad => \move_translator_inst|y_temp\(3),
	combout => \move_translator_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X113_Y39_N12
\move_translator_inst|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector11~0_combout\ = (\move_translator_inst|LessThan1~0_combout\ & \move_translator_inst|Tx_state.axis_y~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \move_translator_inst|LessThan1~0_combout\,
	datad => \move_translator_inst|Tx_state.axis_y~q\,
	combout => \move_translator_inst|Selector11~0_combout\);

-- Location: LCCOMB_X113_Y39_N26
\move_translator_inst|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector11~1_combout\ = (\move_translator_inst|Selector11~0_combout\ & (!\move_translator_inst|Tx_state.tile_pattern~q\ & ((\move_translator_inst|x_last[4]~26_combout\) # (!\move_translator_inst|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[4]~26_combout\,
	datab => \move_translator_inst|Selector11~0_combout\,
	datac => \move_translator_inst|Tx_state.tile_pattern~q\,
	datad => \move_translator_inst|Selector9~0_combout\,
	combout => \move_translator_inst|Selector11~1_combout\);

-- Location: FF_X113_Y39_N27
\move_translator_inst|Tx_state.tile_pattern\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Selector11~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_state.tile_pattern~q\);

-- Location: LCCOMB_X113_Y40_N10
\move_translator_inst|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector8~0_combout\ = (!\move_translator_inst|Tx_state.tile_pattern~q\ & ((\move_translator_inst|x_last[4]~26_combout\) # ((\move_translator_inst|Tx_state.idle~q\) # (!\move_translator_inst|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[4]~26_combout\,
	datab => \move_translator_inst|Tx_state.tile_pattern~q\,
	datac => \move_translator_inst|Tx_state.idle~q\,
	datad => \move_translator_inst|Selector9~0_combout\,
	combout => \move_translator_inst|Selector8~0_combout\);

-- Location: FF_X113_Y40_N11
\move_translator_inst|Tx_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Selector8~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_state.idle~q\);

-- Location: LCCOMB_X113_Y39_N16
\move_translator_inst|Tx_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Tx_en~0_combout\ = (\move_translator_inst|Tx_state.idle~q\ & (((\move_translator_inst|Tx_en~q\)))) # (!\move_translator_inst|Tx_state.idle~q\ & (!\move_translator_inst|uut0|state.idle~q\ & 
-- ((\move_translator_inst|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.idle~q\,
	datab => \move_translator_inst|Tx_state.idle~q\,
	datac => \move_translator_inst|Tx_en~q\,
	datad => \move_translator_inst|process_0~2_combout\,
	combout => \move_translator_inst|Tx_en~0_combout\);

-- Location: FF_X113_Y39_N17
\move_translator_inst|Tx_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Tx_en~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_en~q\);

-- Location: LCCOMB_X112_Y38_N4
\move_translator_inst|uut0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~0_combout\ = \move_translator_inst|uut0|counter\(0) $ (VCC)
-- \move_translator_inst|uut0|Add0~1\ = CARRY(\move_translator_inst|uut0|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|uut0|counter\(0),
	datad => VCC,
	combout => \move_translator_inst|uut0|Add0~0_combout\,
	cout => \move_translator_inst|uut0|Add0~1\);

-- Location: LCCOMB_X112_Y40_N10
\move_translator_inst|uut0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~38_combout\ = (\move_translator_inst|uut0|state.idle~q\ & (\move_translator_inst|uut0|Add0~0_combout\ & \move_translator_inst|uut0|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.idle~q\,
	datac => \move_translator_inst|uut0|Add0~0_combout\,
	datad => \move_translator_inst|uut0|LessThan0~4_combout\,
	combout => \move_translator_inst|uut0|Add0~38_combout\);

-- Location: LCCOMB_X113_Y39_N14
\move_translator_inst|uut0|counter[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|counter[3]~0_combout\ = (\move_translator_inst|uut0|state.idle~q\) # (\move_translator_inst|Tx_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \move_translator_inst|uut0|state.idle~q\,
	datad => \move_translator_inst|Tx_en~q\,
	combout => \move_translator_inst|uut0|counter[3]~0_combout\);

-- Location: FF_X112_Y40_N11
\move_translator_inst|uut0|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|Add0~38_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(0));

-- Location: LCCOMB_X112_Y38_N6
\move_translator_inst|uut0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~2_combout\ = (\move_translator_inst|uut0|counter\(1) & (!\move_translator_inst|uut0|Add0~1\)) # (!\move_translator_inst|uut0|counter\(1) & ((\move_translator_inst|uut0|Add0~1\) # (GND)))
-- \move_translator_inst|uut0|Add0~3\ = CARRY((!\move_translator_inst|uut0|Add0~1\) # (!\move_translator_inst|uut0|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|uut0|counter\(1),
	datad => VCC,
	cin => \move_translator_inst|uut0|Add0~1\,
	combout => \move_translator_inst|uut0|Add0~2_combout\,
	cout => \move_translator_inst|uut0|Add0~3\);

-- Location: LCCOMB_X113_Y38_N10
\move_translator_inst|uut0|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~33_combout\ = (\move_translator_inst|uut0|state.idle~q\ & (\move_translator_inst|uut0|Add0~2_combout\ & \move_translator_inst|uut0|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.idle~q\,
	datac => \move_translator_inst|uut0|Add0~2_combout\,
	datad => \move_translator_inst|uut0|LessThan0~4_combout\,
	combout => \move_translator_inst|uut0|Add0~33_combout\);

-- Location: FF_X114_Y38_N13
\move_translator_inst|uut0|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|uut0|Add0~33_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(1));

-- Location: LCCOMB_X112_Y38_N8
\move_translator_inst|uut0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~4_combout\ = (\move_translator_inst|uut0|counter\(2) & (\move_translator_inst|uut0|Add0~3\ $ (GND))) # (!\move_translator_inst|uut0|counter\(2) & (!\move_translator_inst|uut0|Add0~3\ & VCC))
-- \move_translator_inst|uut0|Add0~5\ = CARRY((\move_translator_inst|uut0|counter\(2) & !\move_translator_inst|uut0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|counter\(2),
	datad => VCC,
	cin => \move_translator_inst|uut0|Add0~3\,
	combout => \move_translator_inst|uut0|Add0~4_combout\,
	cout => \move_translator_inst|uut0|Add0~5\);

-- Location: LCCOMB_X113_Y38_N16
\move_translator_inst|uut0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~32_combout\ = (\move_translator_inst|uut0|state.idle~q\ & (\move_translator_inst|uut0|LessThan0~4_combout\ & \move_translator_inst|uut0|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.idle~q\,
	datab => \move_translator_inst|uut0|LessThan0~4_combout\,
	datac => \move_translator_inst|uut0|Add0~4_combout\,
	combout => \move_translator_inst|uut0|Add0~32_combout\);

-- Location: FF_X114_Y38_N15
\move_translator_inst|uut0|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|uut0|Add0~32_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(2));

-- Location: LCCOMB_X112_Y38_N10
\move_translator_inst|uut0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~6_combout\ = (\move_translator_inst|uut0|counter\(3) & (!\move_translator_inst|uut0|Add0~5\)) # (!\move_translator_inst|uut0|counter\(3) & ((\move_translator_inst|uut0|Add0~5\) # (GND)))
-- \move_translator_inst|uut0|Add0~7\ = CARRY((!\move_translator_inst|uut0|Add0~5\) # (!\move_translator_inst|uut0|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|counter\(3),
	datad => VCC,
	cin => \move_translator_inst|uut0|Add0~5\,
	combout => \move_translator_inst|uut0|Add0~6_combout\,
	cout => \move_translator_inst|uut0|Add0~7\);

-- Location: LCCOMB_X113_Y38_N14
\move_translator_inst|uut0|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~35_combout\ = (\move_translator_inst|uut0|Add0~6_combout\ & (\move_translator_inst|uut0|LessThan0~4_combout\ & \move_translator_inst|uut0|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|Add0~6_combout\,
	datab => \move_translator_inst|uut0|LessThan0~4_combout\,
	datac => \move_translator_inst|uut0|state.idle~q\,
	combout => \move_translator_inst|uut0|Add0~35_combout\);

-- Location: FF_X112_Y40_N21
\move_translator_inst|uut0|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|uut0|Add0~35_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(3));

-- Location: LCCOMB_X112_Y38_N12
\move_translator_inst|uut0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~8_combout\ = (\move_translator_inst|uut0|counter\(4) & (\move_translator_inst|uut0|Add0~7\ $ (GND))) # (!\move_translator_inst|uut0|counter\(4) & (!\move_translator_inst|uut0|Add0~7\ & VCC))
-- \move_translator_inst|uut0|Add0~9\ = CARRY((\move_translator_inst|uut0|counter\(4) & !\move_translator_inst|uut0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|counter\(4),
	datad => VCC,
	cin => \move_translator_inst|uut0|Add0~7\,
	combout => \move_translator_inst|uut0|Add0~8_combout\,
	cout => \move_translator_inst|uut0|Add0~9\);

-- Location: LCCOMB_X113_Y38_N4
\move_translator_inst|uut0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~36_combout\ = (\move_translator_inst|uut0|Add0~8_combout\ & (\move_translator_inst|uut0|LessThan0~4_combout\ & \move_translator_inst|uut0|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|Add0~8_combout\,
	datab => \move_translator_inst|uut0|LessThan0~4_combout\,
	datac => \move_translator_inst|uut0|state.idle~q\,
	combout => \move_translator_inst|uut0|Add0~36_combout\);

-- Location: FF_X114_Y38_N9
\move_translator_inst|uut0|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|uut0|Add0~36_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(4));

-- Location: LCCOMB_X112_Y38_N14
\move_translator_inst|uut0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~10_combout\ = (\move_translator_inst|uut0|counter\(5) & (!\move_translator_inst|uut0|Add0~9\)) # (!\move_translator_inst|uut0|counter\(5) & ((\move_translator_inst|uut0|Add0~9\) # (GND)))
-- \move_translator_inst|uut0|Add0~11\ = CARRY((!\move_translator_inst|uut0|Add0~9\) # (!\move_translator_inst|uut0|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|counter\(5),
	datad => VCC,
	cin => \move_translator_inst|uut0|Add0~9\,
	combout => \move_translator_inst|uut0|Add0~10_combout\,
	cout => \move_translator_inst|uut0|Add0~11\);

-- Location: LCCOMB_X113_Y38_N0
\move_translator_inst|uut0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~34_combout\ = (\move_translator_inst|uut0|Add0~10_combout\ & (\move_translator_inst|uut0|LessThan0~4_combout\ & \move_translator_inst|uut0|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|Add0~10_combout\,
	datab => \move_translator_inst|uut0|LessThan0~4_combout\,
	datac => \move_translator_inst|uut0|state.idle~q\,
	combout => \move_translator_inst|uut0|Add0~34_combout\);

-- Location: FF_X114_Y38_N7
\move_translator_inst|uut0|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|uut0|Add0~34_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(5));

-- Location: LCCOMB_X112_Y38_N16
\move_translator_inst|uut0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~12_combout\ = (\move_translator_inst|uut0|counter\(6) & (\move_translator_inst|uut0|Add0~11\ $ (GND))) # (!\move_translator_inst|uut0|counter\(6) & (!\move_translator_inst|uut0|Add0~11\ & VCC))
-- \move_translator_inst|uut0|Add0~13\ = CARRY((\move_translator_inst|uut0|counter\(6) & !\move_translator_inst|uut0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|counter\(6),
	datad => VCC,
	cin => \move_translator_inst|uut0|Add0~11\,
	combout => \move_translator_inst|uut0|Add0~12_combout\,
	cout => \move_translator_inst|uut0|Add0~13\);

-- Location: LCCOMB_X113_Y38_N26
\move_translator_inst|uut0|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~37_combout\ = (\move_translator_inst|uut0|state.idle~q\ & (\move_translator_inst|uut0|Add0~12_combout\ & \move_translator_inst|uut0|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.idle~q\,
	datac => \move_translator_inst|uut0|Add0~12_combout\,
	datad => \move_translator_inst|uut0|LessThan0~4_combout\,
	combout => \move_translator_inst|uut0|Add0~37_combout\);

-- Location: FF_X114_Y38_N17
\move_translator_inst|uut0|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|uut0|Add0~37_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(6));

-- Location: LCCOMB_X112_Y38_N18
\move_translator_inst|uut0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~14_combout\ = (\move_translator_inst|uut0|counter\(7) & (!\move_translator_inst|uut0|Add0~13\)) # (!\move_translator_inst|uut0|counter\(7) & ((\move_translator_inst|uut0|Add0~13\) # (GND)))
-- \move_translator_inst|uut0|Add0~15\ = CARRY((!\move_translator_inst|uut0|Add0~13\) # (!\move_translator_inst|uut0|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|counter\(7),
	datad => VCC,
	cin => \move_translator_inst|uut0|Add0~13\,
	combout => \move_translator_inst|uut0|Add0~14_combout\,
	cout => \move_translator_inst|uut0|Add0~15\);

-- Location: LCCOMB_X113_Y38_N22
\move_translator_inst|uut0|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~31_combout\ = (\move_translator_inst|uut0|Add0~14_combout\ & (\move_translator_inst|uut0|state.idle~q\ & \move_translator_inst|uut0|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|uut0|Add0~14_combout\,
	datac => \move_translator_inst|uut0|state.idle~q\,
	datad => \move_translator_inst|uut0|LessThan0~4_combout\,
	combout => \move_translator_inst|uut0|Add0~31_combout\);

-- Location: FF_X114_Y38_N11
\move_translator_inst|uut0|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|uut0|Add0~31_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(7));

-- Location: LCCOMB_X112_Y38_N20
\move_translator_inst|uut0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~16_combout\ = (\move_translator_inst|uut0|counter\(8) & (\move_translator_inst|uut0|Add0~15\ $ (GND))) # (!\move_translator_inst|uut0|counter\(8) & (!\move_translator_inst|uut0|Add0~15\ & VCC))
-- \move_translator_inst|uut0|Add0~17\ = CARRY((\move_translator_inst|uut0|counter\(8) & !\move_translator_inst|uut0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|counter\(8),
	datad => VCC,
	cin => \move_translator_inst|uut0|Add0~15\,
	combout => \move_translator_inst|uut0|Add0~16_combout\,
	cout => \move_translator_inst|uut0|Add0~17\);

-- Location: LCCOMB_X112_Y40_N22
\move_translator_inst|uut0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~30_combout\ = (\move_translator_inst|uut0|state.idle~q\ & (\move_translator_inst|uut0|Add0~16_combout\ & \move_translator_inst|uut0|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.idle~q\,
	datac => \move_translator_inst|uut0|Add0~16_combout\,
	datad => \move_translator_inst|uut0|LessThan0~4_combout\,
	combout => \move_translator_inst|uut0|Add0~30_combout\);

-- Location: FF_X112_Y40_N23
\move_translator_inst|uut0|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|Add0~30_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(8));

-- Location: LCCOMB_X112_Y38_N22
\move_translator_inst|uut0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~18_combout\ = (\move_translator_inst|uut0|counter\(9) & (!\move_translator_inst|uut0|Add0~17\)) # (!\move_translator_inst|uut0|counter\(9) & ((\move_translator_inst|uut0|Add0~17\) # (GND)))
-- \move_translator_inst|uut0|Add0~19\ = CARRY((!\move_translator_inst|uut0|Add0~17\) # (!\move_translator_inst|uut0|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|uut0|counter\(9),
	datad => VCC,
	cin => \move_translator_inst|uut0|Add0~17\,
	combout => \move_translator_inst|uut0|Add0~18_combout\,
	cout => \move_translator_inst|uut0|Add0~19\);

-- Location: LCCOMB_X113_Y38_N12
\move_translator_inst|uut0|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~29_combout\ = (\move_translator_inst|uut0|Add0~18_combout\ & (\move_translator_inst|uut0|state.idle~q\ & \move_translator_inst|uut0|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|uut0|Add0~18_combout\,
	datac => \move_translator_inst|uut0|state.idle~q\,
	datad => \move_translator_inst|uut0|LessThan0~4_combout\,
	combout => \move_translator_inst|uut0|Add0~29_combout\);

-- Location: FF_X114_Y38_N5
\move_translator_inst|uut0|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|uut0|Add0~29_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(9));

-- Location: LCCOMB_X112_Y38_N24
\move_translator_inst|uut0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~20_combout\ = (\move_translator_inst|uut0|counter\(10) & (\move_translator_inst|uut0|Add0~19\ $ (GND))) # (!\move_translator_inst|uut0|counter\(10) & (!\move_translator_inst|uut0|Add0~19\ & VCC))
-- \move_translator_inst|uut0|Add0~21\ = CARRY((\move_translator_inst|uut0|counter\(10) & !\move_translator_inst|uut0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|uut0|counter\(10),
	datad => VCC,
	cin => \move_translator_inst|uut0|Add0~19\,
	combout => \move_translator_inst|uut0|Add0~20_combout\,
	cout => \move_translator_inst|uut0|Add0~21\);

-- Location: LCCOMB_X112_Y40_N16
\move_translator_inst|uut0|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~25_combout\ = (\move_translator_inst|uut0|state.idle~q\ & (\move_translator_inst|uut0|Add0~20_combout\ & \move_translator_inst|uut0|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.idle~q\,
	datac => \move_translator_inst|uut0|Add0~20_combout\,
	datad => \move_translator_inst|uut0|LessThan0~4_combout\,
	combout => \move_translator_inst|uut0|Add0~25_combout\);

-- Location: FF_X112_Y40_N17
\move_translator_inst|uut0|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|Add0~25_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(10));

-- Location: LCCOMB_X112_Y38_N26
\move_translator_inst|uut0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~22_combout\ = (\move_translator_inst|uut0|counter\(11) & (!\move_translator_inst|uut0|Add0~21\)) # (!\move_translator_inst|uut0|counter\(11) & ((\move_translator_inst|uut0|Add0~21\) # (GND)))
-- \move_translator_inst|uut0|Add0~23\ = CARRY((!\move_translator_inst|uut0|Add0~21\) # (!\move_translator_inst|uut0|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|counter\(11),
	datad => VCC,
	cin => \move_translator_inst|uut0|Add0~21\,
	combout => \move_translator_inst|uut0|Add0~22_combout\,
	cout => \move_translator_inst|uut0|Add0~23\);

-- Location: LCCOMB_X113_Y38_N28
\move_translator_inst|uut0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~24_combout\ = (\move_translator_inst|uut0|state.idle~q\ & (\move_translator_inst|uut0|Add0~22_combout\ & \move_translator_inst|uut0|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.idle~q\,
	datac => \move_translator_inst|uut0|Add0~22_combout\,
	datad => \move_translator_inst|uut0|LessThan0~4_combout\,
	combout => \move_translator_inst|uut0|Add0~24_combout\);

-- Location: FF_X114_Y38_N1
\move_translator_inst|uut0|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|uut0|Add0~24_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(11));

-- Location: LCCOMB_X112_Y38_N2
\move_translator_inst|uut0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|LessThan0~1_combout\ = (!\move_translator_inst|uut0|counter\(7) & (!\move_translator_inst|uut0|counter\(9) & (!\move_translator_inst|uut0|counter\(8) & !\move_translator_inst|uut0|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|counter\(7),
	datab => \move_translator_inst|uut0|counter\(9),
	datac => \move_translator_inst|uut0|counter\(8),
	datad => \move_translator_inst|uut0|counter\(11),
	combout => \move_translator_inst|uut0|LessThan0~1_combout\);

-- Location: LCCOMB_X113_Y38_N20
\move_translator_inst|uut0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|LessThan0~3_combout\ = ((!\move_translator_inst|uut0|counter\(4) & !\move_translator_inst|uut0|counter\(5))) # (!\move_translator_inst|uut0|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|uut0|counter\(6),
	datac => \move_translator_inst|uut0|counter\(4),
	datad => \move_translator_inst|uut0|counter\(5),
	combout => \move_translator_inst|uut0|LessThan0~3_combout\);

-- Location: LCCOMB_X112_Y38_N28
\move_translator_inst|uut0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~26_combout\ = \move_translator_inst|uut0|counter\(12) $ (!\move_translator_inst|uut0|Add0~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|uut0|counter\(12),
	cin => \move_translator_inst|uut0|Add0~23\,
	combout => \move_translator_inst|uut0|Add0~26_combout\);

-- Location: LCCOMB_X113_Y38_N6
\move_translator_inst|uut0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~28_combout\ = (\move_translator_inst|uut0|Add0~26_combout\ & (\move_translator_inst|uut0|state.idle~q\ & \move_translator_inst|uut0|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|uut0|Add0~26_combout\,
	datac => \move_translator_inst|uut0|state.idle~q\,
	datad => \move_translator_inst|uut0|LessThan0~4_combout\,
	combout => \move_translator_inst|uut0|Add0~28_combout\);

-- Location: FF_X114_Y38_N3
\move_translator_inst|uut0|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|uut0|Add0~28_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(12));

-- Location: LCCOMB_X112_Y38_N0
\move_translator_inst|uut0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|LessThan0~0_combout\ = ((!\move_translator_inst|uut0|counter\(10) & !\move_translator_inst|uut0|counter\(11))) # (!\move_translator_inst|uut0|counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|uut0|counter\(10),
	datac => \move_translator_inst|uut0|counter\(12),
	datad => \move_translator_inst|uut0|counter\(11),
	combout => \move_translator_inst|uut0|LessThan0~0_combout\);

-- Location: LCCOMB_X112_Y38_N30
\move_translator_inst|uut0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|LessThan0~2_combout\ = (!\move_translator_inst|uut0|counter\(5) & (!\move_translator_inst|uut0|counter\(3) & ((!\move_translator_inst|uut0|counter\(2)) # (!\move_translator_inst|uut0|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|counter\(5),
	datab => \move_translator_inst|uut0|counter\(1),
	datac => \move_translator_inst|uut0|counter\(3),
	datad => \move_translator_inst|uut0|counter\(2),
	combout => \move_translator_inst|uut0|LessThan0~2_combout\);

-- Location: LCCOMB_X113_Y38_N2
\move_translator_inst|uut0|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|LessThan0~4_combout\ = (\move_translator_inst|uut0|LessThan0~0_combout\) # ((\move_translator_inst|uut0|LessThan0~1_combout\ & ((\move_translator_inst|uut0|LessThan0~3_combout\) # 
-- (\move_translator_inst|uut0|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|LessThan0~1_combout\,
	datab => \move_translator_inst|uut0|LessThan0~3_combout\,
	datac => \move_translator_inst|uut0|LessThan0~0_combout\,
	datad => \move_translator_inst|uut0|LessThan0~2_combout\,
	combout => \move_translator_inst|uut0|LessThan0~4_combout\);

-- Location: LCCOMB_X112_Y40_N12
\move_translator_inst|uut0|state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|state~21_combout\ = (\move_translator_inst|uut0|state.idle~q\ & (((\move_translator_inst|uut0|state.start~q\ & \move_translator_inst|uut0|LessThan0~4_combout\)))) # (!\move_translator_inst|uut0|state.idle~q\ & 
-- (\move_translator_inst|Tx_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.idle~q\,
	datab => \move_translator_inst|Tx_en~q\,
	datac => \move_translator_inst|uut0|state.start~q\,
	datad => \move_translator_inst|uut0|LessThan0~4_combout\,
	combout => \move_translator_inst|uut0|state~21_combout\);

-- Location: FF_X112_Y40_N13
\move_translator_inst|uut0|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|state~21_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|state.start~q\);

-- Location: LCCOMB_X110_Y40_N16
\move_translator_inst|uut0|state.bit0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|state.bit0~feeder_combout\ = \move_translator_inst|uut0|state.start~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move_translator_inst|uut0|state.start~q\,
	combout => \move_translator_inst|uut0|state.bit0~feeder_combout\);

-- Location: LCCOMB_X112_Y40_N4
\move_translator_inst|uut0|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|state~19_combout\ = (\move_translator_inst|uut0|state.idle~q\ & !\move_translator_inst|uut0|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.idle~q\,
	datad => \move_translator_inst|uut0|LessThan0~4_combout\,
	combout => \move_translator_inst|uut0|state~19_combout\);

-- Location: FF_X110_Y40_N17
\move_translator_inst|uut0|state.bit0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|state.bit0~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|state.bit0~q\);

-- Location: LCCOMB_X110_Y40_N10
\move_translator_inst|uut0|state.bit1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|state.bit1~feeder_combout\ = \move_translator_inst|uut0|state.bit0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move_translator_inst|uut0|state.bit0~q\,
	combout => \move_translator_inst|uut0|state.bit1~feeder_combout\);

-- Location: FF_X110_Y40_N11
\move_translator_inst|uut0|state.bit1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|state.bit1~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|state.bit1~q\);

-- Location: LCCOMB_X110_Y40_N12
\move_translator_inst|uut0|state.bit2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|state.bit2~feeder_combout\ = \move_translator_inst|uut0|state.bit1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move_translator_inst|uut0|state.bit1~q\,
	combout => \move_translator_inst|uut0|state.bit2~feeder_combout\);

-- Location: FF_X110_Y40_N13
\move_translator_inst|uut0|state.bit2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|state.bit2~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|state.bit2~q\);

-- Location: LCCOMB_X110_Y40_N26
\move_translator_inst|uut0|state.bit3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|state.bit3~feeder_combout\ = \move_translator_inst|uut0|state.bit2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move_translator_inst|uut0|state.bit2~q\,
	combout => \move_translator_inst|uut0|state.bit3~feeder_combout\);

-- Location: FF_X110_Y40_N27
\move_translator_inst|uut0|state.bit3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|state.bit3~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|state.bit3~q\);

-- Location: FF_X110_Y40_N5
\move_translator_inst|uut0|state.bit4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|uut0|state.bit3~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|state.bit4~q\);

-- Location: FF_X110_Y40_N31
\move_translator_inst|uut0|state.bit5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|uut0|state.bit4~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|state.bit5~q\);

-- Location: FF_X110_Y40_N19
\move_translator_inst|uut0|state.bit6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|uut0|state.bit5~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|state.bit6~q\);

-- Location: LCCOMB_X110_Y40_N8
\move_translator_inst|uut0|state.bit7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|state.bit7~feeder_combout\ = \move_translator_inst|uut0|state.bit6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move_translator_inst|uut0|state.bit6~q\,
	combout => \move_translator_inst|uut0|state.bit7~feeder_combout\);

-- Location: FF_X110_Y40_N9
\move_translator_inst|uut0|state.bit7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|state.bit7~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|state.bit7~q\);

-- Location: FF_X110_Y40_N23
\move_translator_inst|uut0|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|uut0|state.bit7~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|state.stop~q\);

-- Location: LCCOMB_X112_Y40_N6
\move_translator_inst|uut0|state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|state~20_combout\ = (\move_translator_inst|uut0|state.idle~q\ & (((\move_translator_inst|uut0|LessThan0~4_combout\)) # (!\move_translator_inst|uut0|state.stop~q\))) # (!\move_translator_inst|uut0|state.idle~q\ & 
-- (((\move_translator_inst|Tx_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.stop~q\,
	datab => \move_translator_inst|Tx_en~q\,
	datac => \move_translator_inst|uut0|state.idle~q\,
	datad => \move_translator_inst|uut0|LessThan0~4_combout\,
	combout => \move_translator_inst|uut0|state~20_combout\);

-- Location: FF_X112_Y40_N7
\move_translator_inst|uut0|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|state~20_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|state.idle~q\);

-- Location: LCCOMB_X111_Y40_N28
\move_translator_inst|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Add1~2_combout\ = (\move_translator_inst|Tx_state.axis_x~q\ & ((\move_translator_inst|x_temp[2]~4_combout\))) # (!\move_translator_inst|Tx_state.axis_x~q\ & (\move_translator_inst|y_temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|y_temp\(2),
	datac => \move_translator_inst|Tx_state.axis_x~q\,
	datad => \move_translator_inst|x_temp[2]~4_combout\,
	combout => \move_translator_inst|Add1~2_combout\);

-- Location: LCCOMB_X111_Y40_N30
\move_translator_inst|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Add1~3_combout\ = (\move_translator_inst|Tx_state.axis_x~q\ & ((\move_translator_inst|x_temp[1]~6_combout\))) # (!\move_translator_inst|Tx_state.axis_x~q\ & (\move_translator_inst|y_temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp\(1),
	datac => \move_translator_inst|Tx_state.axis_x~q\,
	datad => \move_translator_inst|x_temp[1]~6_combout\,
	combout => \move_translator_inst|Add1~3_combout\);

-- Location: LCCOMB_X112_Y40_N2
\move_translator_inst|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Add1~4_combout\ = (\move_translator_inst|x_last[0]~2_combout\) # (!\move_translator_inst|Tx_state.axis_x~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|Tx_state.axis_x~q\,
	datad => \move_translator_inst|x_last[0]~2_combout\,
	combout => \move_translator_inst|Add1~4_combout\);

-- Location: LCCOMB_X111_Y40_N10
\move_translator_inst|Tx_data[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Tx_data[0]~6_combout\ = \move_translator_inst|Add1~4_combout\ $ (VCC)
-- \move_translator_inst|Tx_data[0]~7\ = CARRY(\move_translator_inst|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Add1~4_combout\,
	datad => VCC,
	combout => \move_translator_inst|Tx_data[0]~6_combout\,
	cout => \move_translator_inst|Tx_data[0]~7\);

-- Location: LCCOMB_X111_Y40_N12
\move_translator_inst|Tx_data[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Tx_data[1]~8_combout\ = (\move_translator_inst|Add1~3_combout\ & (!\move_translator_inst|Tx_data[0]~7\)) # (!\move_translator_inst|Add1~3_combout\ & ((\move_translator_inst|Tx_data[0]~7\) # (GND)))
-- \move_translator_inst|Tx_data[1]~9\ = CARRY((!\move_translator_inst|Tx_data[0]~7\) # (!\move_translator_inst|Add1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Add1~3_combout\,
	datad => VCC,
	cin => \move_translator_inst|Tx_data[0]~7\,
	combout => \move_translator_inst|Tx_data[1]~8_combout\,
	cout => \move_translator_inst|Tx_data[1]~9\);

-- Location: LCCOMB_X111_Y40_N14
\move_translator_inst|Tx_data[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Tx_data[2]~10_combout\ = (\move_translator_inst|Add1~2_combout\ & (\move_translator_inst|Tx_data[1]~9\ $ (GND))) # (!\move_translator_inst|Add1~2_combout\ & (!\move_translator_inst|Tx_data[1]~9\ & VCC))
-- \move_translator_inst|Tx_data[2]~11\ = CARRY((\move_translator_inst|Add1~2_combout\ & !\move_translator_inst|Tx_data[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|Add1~2_combout\,
	datad => VCC,
	cin => \move_translator_inst|Tx_data[1]~9\,
	combout => \move_translator_inst|Tx_data[2]~10_combout\,
	cout => \move_translator_inst|Tx_data[2]~11\);

-- Location: LCCOMB_X111_Y40_N8
\move_translator_inst|Tx_data[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Tx_data[5]~18_combout\ = (\reset~input_o\ & \move_translator_inst|Tx_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \move_translator_inst|Tx_state.idle~q\,
	combout => \move_translator_inst|Tx_data[5]~18_combout\);

-- Location: FF_X111_Y40_N15
\move_translator_inst|Tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Tx_data[2]~10_combout\,
	asdata => VCC,
	sload => \move_translator_inst|Tx_state.tile_pattern~q\,
	ena => \move_translator_inst|Tx_data[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_data\(2));

-- Location: LCCOMB_X113_Y40_N20
\move_translator_inst|uut0|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|process_0~0_combout\ = (!\move_translator_inst|uut0|state.idle~q\ & \move_translator_inst|Tx_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \move_translator_inst|uut0|state.idle~q\,
	datad => \move_translator_inst|Tx_en~q\,
	combout => \move_translator_inst|uut0|process_0~0_combout\);

-- Location: FF_X110_Y40_N21
\move_translator_inst|uut0|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|Tx_data\(2),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|reg\(2));

-- Location: FF_X111_Y40_N13
\move_translator_inst|Tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Tx_data[1]~8_combout\,
	asdata => VCC,
	sload => \move_translator_inst|Tx_state.tile_pattern~q\,
	ena => \move_translator_inst|Tx_data[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_data\(1));

-- Location: FF_X110_Y40_N3
\move_translator_inst|uut0|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|Tx_data\(1),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|reg\(1));

-- Location: LCCOMB_X110_Y40_N2
\move_translator_inst|uut0|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Selector0~2_combout\ = (\move_translator_inst|uut0|state.bit1~q\ & ((\move_translator_inst|uut0|reg\(2)) # ((\move_translator_inst|uut0|reg\(1) & \move_translator_inst|uut0|state.bit0~q\)))) # 
-- (!\move_translator_inst|uut0|state.bit1~q\ & (((\move_translator_inst|uut0|reg\(1) & \move_translator_inst|uut0|state.bit0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.bit1~q\,
	datab => \move_translator_inst|uut0|reg\(2),
	datac => \move_translator_inst|uut0|reg\(1),
	datad => \move_translator_inst|uut0|state.bit0~q\,
	combout => \move_translator_inst|uut0|Selector0~2_combout\);

-- Location: FF_X111_Y40_N11
\move_translator_inst|Tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Tx_data[0]~6_combout\,
	asdata => VCC,
	sload => \move_translator_inst|Tx_state.tile_pattern~q\,
	ena => \move_translator_inst|Tx_data[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_data\(0));

-- Location: FF_X110_Y40_N25
\move_translator_inst|uut0|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|Tx_data\(0),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|reg\(0));

-- Location: LCCOMB_X110_Y40_N24
\move_translator_inst|uut0|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Selector0~3_combout\ = (\move_translator_inst|uut0|state.stop~q\) # ((\move_translator_inst|uut0|state.bit7~q\) # ((\move_translator_inst|uut0|reg\(0) & \move_translator_inst|uut0|state.start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.stop~q\,
	datab => \move_translator_inst|uut0|state.bit7~q\,
	datac => \move_translator_inst|uut0|reg\(0),
	datad => \move_translator_inst|uut0|state.start~q\,
	combout => \move_translator_inst|uut0|Selector0~3_combout\);

-- Location: LCCOMB_X111_Y40_N4
\move_translator_inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Add1~0_combout\ = (\move_translator_inst|Tx_state.axis_x~q\ & ((\move_translator_inst|x_temp[4]~0_combout\))) # (!\move_translator_inst|Tx_state.axis_x~q\ & (\move_translator_inst|y_temp\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp\(4),
	datac => \move_translator_inst|Tx_state.axis_x~q\,
	datad => \move_translator_inst|x_temp[4]~0_combout\,
	combout => \move_translator_inst|Add1~0_combout\);

-- Location: LCCOMB_X111_Y40_N6
\move_translator_inst|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Add1~1_combout\ = (\move_translator_inst|Tx_state.axis_x~q\ & ((\move_translator_inst|x_temp[3]~2_combout\))) # (!\move_translator_inst|Tx_state.axis_x~q\ & (\move_translator_inst|y_temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|y_temp\(3),
	datac => \move_translator_inst|Tx_state.axis_x~q\,
	datad => \move_translator_inst|x_temp[3]~2_combout\,
	combout => \move_translator_inst|Add1~1_combout\);

-- Location: LCCOMB_X111_Y40_N16
\move_translator_inst|Tx_data[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Tx_data[3]~12_combout\ = (\move_translator_inst|Add1~1_combout\ & (!\move_translator_inst|Tx_data[2]~11\)) # (!\move_translator_inst|Add1~1_combout\ & ((\move_translator_inst|Tx_data[2]~11\) # (GND)))
-- \move_translator_inst|Tx_data[3]~13\ = CARRY((!\move_translator_inst|Tx_data[2]~11\) # (!\move_translator_inst|Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Add1~1_combout\,
	datad => VCC,
	cin => \move_translator_inst|Tx_data[2]~11\,
	combout => \move_translator_inst|Tx_data[3]~12_combout\,
	cout => \move_translator_inst|Tx_data[3]~13\);

-- Location: LCCOMB_X111_Y40_N18
\move_translator_inst|Tx_data[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Tx_data[4]~14_combout\ = (\move_translator_inst|Add1~0_combout\ & (\move_translator_inst|Tx_data[3]~13\ $ (GND))) # (!\move_translator_inst|Add1~0_combout\ & (!\move_translator_inst|Tx_data[3]~13\ & VCC))
-- \move_translator_inst|Tx_data[4]~15\ = CARRY((\move_translator_inst|Add1~0_combout\ & !\move_translator_inst|Tx_data[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|Add1~0_combout\,
	datad => VCC,
	cin => \move_translator_inst|Tx_data[3]~13\,
	combout => \move_translator_inst|Tx_data[4]~14_combout\,
	cout => \move_translator_inst|Tx_data[4]~15\);

-- Location: LCCOMB_X111_Y40_N22
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X111_Y40_N19
\move_translator_inst|Tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Tx_data[4]~14_combout\,
	asdata => \~GND~combout\,
	sload => \move_translator_inst|Tx_state.tile_pattern~q\,
	ena => \move_translator_inst|Tx_data[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_data\(4));

-- Location: LCCOMB_X110_Y40_N0
\move_translator_inst|uut0|reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|reg[4]~feeder_combout\ = \move_translator_inst|Tx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move_translator_inst|Tx_data\(4),
	combout => \move_translator_inst|uut0|reg[4]~feeder_combout\);

-- Location: FF_X110_Y40_N1
\move_translator_inst|uut0|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|reg[4]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|reg\(4));

-- Location: FF_X111_Y40_N17
\move_translator_inst|Tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Tx_data[3]~12_combout\,
	asdata => VCC,
	sload => \move_translator_inst|Tx_state.tile_pattern~q\,
	ena => \move_translator_inst|Tx_data[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_data\(3));

-- Location: FF_X110_Y40_N7
\move_translator_inst|uut0|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|Tx_data\(3),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|reg\(3));

-- Location: LCCOMB_X110_Y40_N6
\move_translator_inst|uut0|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Selector0~1_combout\ = (\move_translator_inst|uut0|state.bit3~q\ & ((\move_translator_inst|uut0|reg\(4)) # ((\move_translator_inst|uut0|reg\(3) & \move_translator_inst|uut0|state.bit2~q\)))) # 
-- (!\move_translator_inst|uut0|state.bit3~q\ & (((\move_translator_inst|uut0|reg\(3) & \move_translator_inst|uut0|state.bit2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.bit3~q\,
	datab => \move_translator_inst|uut0|reg\(4),
	datac => \move_translator_inst|uut0|reg\(3),
	datad => \move_translator_inst|uut0|state.bit2~q\,
	combout => \move_translator_inst|uut0|Selector0~1_combout\);

-- Location: LCCOMB_X111_Y40_N20
\move_translator_inst|Tx_data[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Tx_data[5]~16_combout\ = \move_translator_inst|Tx_data[4]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \move_translator_inst|Tx_data[4]~15\,
	combout => \move_translator_inst|Tx_data[5]~16_combout\);

-- Location: FF_X111_Y40_N21
\move_translator_inst|Tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Tx_data[5]~16_combout\,
	asdata => VCC,
	sload => \move_translator_inst|Tx_state.tile_pattern~q\,
	ena => \move_translator_inst|Tx_data[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_data\(5));

-- Location: FF_X110_Y40_N15
\move_translator_inst|uut0|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|Tx_data\(5),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|reg\(5));

-- Location: LCCOMB_X111_Y40_N26
\move_translator_inst|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector13~0_combout\ = (\move_translator_inst|Tx_state.axis_x~q\) # ((\move_translator_inst|Tx_state.axis_y~q\) # ((\move_translator_inst|Tx_data\(6) & !\move_translator_inst|Tx_state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_x~q\,
	datab => \move_translator_inst|Tx_state.axis_y~q\,
	datac => \move_translator_inst|Tx_data\(6),
	datad => \move_translator_inst|Tx_state.idle~q\,
	combout => \move_translator_inst|Selector13~0_combout\);

-- Location: FF_X111_Y40_N27
\move_translator_inst|Tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Selector13~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_data\(6));

-- Location: LCCOMB_X110_Y40_N28
\move_translator_inst|uut0|reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|reg[6]~feeder_combout\ = \move_translator_inst|Tx_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move_translator_inst|Tx_data\(6),
	combout => \move_translator_inst|uut0|reg[6]~feeder_combout\);

-- Location: FF_X110_Y40_N29
\move_translator_inst|uut0|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|reg[6]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|reg\(6));

-- Location: LCCOMB_X110_Y40_N14
\move_translator_inst|uut0|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Selector0~0_combout\ = (\move_translator_inst|uut0|state.bit5~q\ & ((\move_translator_inst|uut0|reg\(6)) # ((\move_translator_inst|uut0|state.bit4~q\ & \move_translator_inst|uut0|reg\(5))))) # 
-- (!\move_translator_inst|uut0|state.bit5~q\ & (\move_translator_inst|uut0|state.bit4~q\ & (\move_translator_inst|uut0|reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.bit5~q\,
	datab => \move_translator_inst|uut0|state.bit4~q\,
	datac => \move_translator_inst|uut0|reg\(5),
	datad => \move_translator_inst|uut0|reg\(6),
	combout => \move_translator_inst|uut0|Selector0~0_combout\);

-- Location: LCCOMB_X111_Y40_N24
\move_translator_inst|uut0|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Selector0~4_combout\ = (\move_translator_inst|uut0|Selector0~2_combout\) # ((\move_translator_inst|uut0|Selector0~3_combout\) # ((\move_translator_inst|uut0|Selector0~1_combout\) # 
-- (\move_translator_inst|uut0|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|Selector0~2_combout\,
	datab => \move_translator_inst|uut0|Selector0~3_combout\,
	datac => \move_translator_inst|uut0|Selector0~1_combout\,
	datad => \move_translator_inst|uut0|Selector0~0_combout\,
	combout => \move_translator_inst|uut0|Selector0~4_combout\);

-- Location: LCCOMB_X112_Y40_N26
\move_translator_inst|uut0|Txd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Txd~2_combout\ = (!\move_translator_inst|uut0|Txd~q\ & ((\move_translator_inst|uut0|state.idle~q\ & (\move_translator_inst|uut0|LessThan0~4_combout\)) # (!\move_translator_inst|uut0|state.idle~q\ & 
-- ((!\move_translator_inst|Tx_en~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.idle~q\,
	datab => \move_translator_inst|uut0|LessThan0~4_combout\,
	datac => \move_translator_inst|Tx_en~q\,
	datad => \move_translator_inst|uut0|Txd~q\,
	combout => \move_translator_inst|uut0|Txd~2_combout\);

-- Location: LCCOMB_X112_Y40_N0
\move_translator_inst|uut0|Txd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Txd~3_combout\ = (!\move_translator_inst|uut0|Txd~2_combout\ & (((\move_translator_inst|uut0|LessThan0~4_combout\) # (!\move_translator_inst|uut0|Selector0~4_combout\)) # (!\move_translator_inst|uut0|state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.idle~q\,
	datab => \move_translator_inst|uut0|Selector0~4_combout\,
	datac => \move_translator_inst|uut0|Txd~2_combout\,
	datad => \move_translator_inst|uut0|LessThan0~4_combout\,
	combout => \move_translator_inst|uut0|Txd~3_combout\);

-- Location: FF_X112_Y40_N1
\move_translator_inst|uut0|Txd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|Txd~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|Txd~q\);
END structure;


