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

-- DATE "03/26/2016 22:54:45"

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
	Tx_busy : BUFFER std_logic;
	Rxd : IN std_logic;
	Rx_busy : BUFFER std_logic;
	Rx_err : BUFFER std_logic;
	Translation_busy : BUFFER std_logic;
	Tranlation_err : BUFFER std_logic
	);
END Trax;

-- Design Ports Information
-- Txd	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx_busy	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx_busy	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx_err	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Translation_busy	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tranlation_err	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rxd	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_Rxd : std_logic;
SIGNAL ww_Rx_busy : std_logic;
SIGNAL ww_Rx_err : std_logic;
SIGNAL ww_Translation_busy : std_logic;
SIGNAL ww_Tranlation_err : std_logic;
SIGNAL \pll_inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \command_translator_inst|uut0|state.idle~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \command_translator_inst|Translation_busy~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \pll_inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \move_translator_inst|Tx_state~19_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~0_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~35_combout\ : std_logic;
SIGNAL \Rxd~input_o\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~19_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~1\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~2_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~30_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~3\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~4_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~39_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~5\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~6_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~37_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~7\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~8_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~38_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~9\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~10_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~36_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Equal1~2_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~11\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~12_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~34_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~13\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~14_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~20_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~15\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~16_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~18_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~17\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~21_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~32_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~22\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~23_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~33_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~24\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~25_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~31_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Equal1~1_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~26\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~27_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~29_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Equal1~0_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Equal1~3_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Equal0~0_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Equal0~2_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Equal0~1_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Equal0~3_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Add0~40_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|state~19_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|state.start~q\ : std_logic;
SIGNAL \command_translator_inst|uut0|state~17_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|state.bit0~q\ : std_logic;
SIGNAL \command_translator_inst|uut0|state.bit1~feeder_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|state.bit1~q\ : std_logic;
SIGNAL \command_translator_inst|uut0|state.bit2~feeder_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|state.bit2~q\ : std_logic;
SIGNAL \command_translator_inst|uut0|state.bit3~q\ : std_logic;
SIGNAL \command_translator_inst|uut0|state.bit4~feeder_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|state.bit4~q\ : std_logic;
SIGNAL \command_translator_inst|uut0|state.bit5~feeder_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|state.bit5~q\ : std_logic;
SIGNAL \command_translator_inst|uut0|state.bit6~q\ : std_logic;
SIGNAL \command_translator_inst|uut0|state.bit7~feeder_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|state.bit7~q\ : std_logic;
SIGNAL \command_translator_inst|uut0|state.stop~q\ : std_logic;
SIGNAL \command_translator_inst|uut0|state~16_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|state.idle~q\ : std_logic;
SIGNAL \command_translator_inst|uut0|reg[3]~8_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|state~18_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|reg[0]~14_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|reg[2]~15_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|reg[7]~9_combout\ : std_logic;
SIGNAL \command_translator_inst|Selector6~11_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|reg[5]~11_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|reg[6]~13_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|reg[1]~10_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|reg[4]~12_combout\ : std_logic;
SIGNAL \command_translator_inst|Selector6~10_combout\ : std_logic;
SIGNAL \command_translator_inst|Selector6~12_combout\ : std_logic;
SIGNAL \command_translator_inst|Selector6~6_combout\ : std_logic;
SIGNAL \command_translator_inst|Selector6~5_combout\ : std_logic;
SIGNAL \command_translator_inst|tile_type[0]~2_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|state.idle~clkctrl_outclk\ : std_logic;
SIGNAL \command_translator_inst|process_0~1_combout\ : std_logic;
SIGNAL \command_translator_inst|process_0~2_combout\ : std_logic;
SIGNAL \command_translator_inst|Selector6~16_combout\ : std_logic;
SIGNAL \command_translator_inst|process_0~0_combout\ : std_logic;
SIGNAL \command_translator_inst|Selector6~7_combout\ : std_logic;
SIGNAL \command_translator_inst|Selector6~13_combout\ : std_logic;
SIGNAL \command_translator_inst|Selector5~0_combout\ : std_logic;
SIGNAL \command_translator_inst|Rx_state.idle~q\ : std_logic;
SIGNAL \command_translator_inst|Selector6~8_combout\ : std_logic;
SIGNAL \command_translator_inst|Selector6~14_combout\ : std_logic;
SIGNAL \command_translator_inst|Rx_state.axis_x~q\ : std_logic;
SIGNAL \command_translator_inst|Selector6~9_combout\ : std_logic;
SIGNAL \command_translator_inst|Selector7~0_combout\ : std_logic;
SIGNAL \command_translator_inst|Rx_state.axis_y~q\ : std_logic;
SIGNAL \command_translator_inst|tile_type[0]~4_combout\ : std_logic;
SIGNAL \command_translator_inst|Selector6~15_combout\ : std_logic;
SIGNAL \command_translator_inst|Selector8~0_combout\ : std_logic;
SIGNAL \command_translator_inst|Rx_state.tile_pattern~q\ : std_logic;
SIGNAL \command_translator_inst|Translation_busy~0_combout\ : std_logic;
SIGNAL \command_translator_inst|Translation_busy~0clkctrl_outclk\ : std_logic;
SIGNAL \command_translator_inst|Selector2~0_combout\ : std_logic;
SIGNAL \command_translator_inst|x_temp[2]~feeder_combout\ : std_logic;
SIGNAL \command_translator_inst|x_temp[4]~2_combout\ : std_logic;
SIGNAL \command_translator_inst|x[2]~feeder_combout\ : std_logic;
SIGNAL \command_translator_inst|Selector6~4_combout\ : std_logic;
SIGNAL \command_translator_inst|tile_type[0]~3_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[2]~9_combout\ : std_logic;
SIGNAL \command_translator_inst|Selector3~0_combout\ : std_logic;
SIGNAL \command_translator_inst|x[1]~feeder_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[1]~5_combout\ : std_logic;
SIGNAL \move_translator_inst|x_temp[1]~7_combout\ : std_logic;
SIGNAL \command_translator_inst|Selector1~0_combout\ : std_logic;
SIGNAL \command_translator_inst|x_temp[3]~feeder_combout\ : std_logic;
SIGNAL \command_translator_inst|x[3]~feeder_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[3]~13_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector1~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector1~1_combout\ : std_logic;
SIGNAL \move_translator_inst|x_temp[3]~3_combout\ : std_logic;
SIGNAL \move_translator_inst|x_temp[3]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|x_temp[3]~2_combout\ : std_logic;
SIGNAL \move_translator_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \command_translator_inst|Add0~0_combout\ : std_logic;
SIGNAL \command_translator_inst|Selector0~0_combout\ : std_logic;
SIGNAL \command_translator_inst|x_temp[4]~feeder_combout\ : std_logic;
SIGNAL \command_translator_inst|x[4]~feeder_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[4]~17_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[4]~19_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[4]~_emulatedfeeder_combout\ : std_logic;
SIGNAL \command_translator_inst|y_temp[0]~0_combout\ : std_logic;
SIGNAL \command_translator_inst|y_temp[0]~feeder_combout\ : std_logic;
SIGNAL \command_translator_inst|Mux21~2_combout\ : std_logic;
SIGNAL \command_translator_inst|Selector12~2_combout\ : std_logic;
SIGNAL \command_translator_inst|y_temp[1]~9_combout\ : std_logic;
SIGNAL \command_translator_inst|y_temp[1]~10_combout\ : std_logic;
SIGNAL \command_translator_inst|Mux25~1_combout\ : std_logic;
SIGNAL \command_translator_inst|Mux25~0_combout\ : std_logic;
SIGNAL \command_translator_inst|Mux25~2_combout\ : std_logic;
SIGNAL \command_translator_inst|Mux0~1_combout\ : std_logic;
SIGNAL \command_translator_inst|Mux0~0_combout\ : std_logic;
SIGNAL \command_translator_inst|Mux0~2_combout\ : std_logic;
SIGNAL \command_translator_inst|y_temp[4]~1_combout\ : std_logic;
SIGNAL \command_translator_inst|y_temp~7_combout\ : std_logic;
SIGNAL \command_translator_inst|y[4]~feeder_combout\ : std_logic;
SIGNAL \move_translator_inst|y_temp[4]~1_combout\ : std_logic;
SIGNAL \move_translator_inst|y_last[4]~13_combout\ : std_logic;
SIGNAL \move_translator_inst|y_last[4]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|y_last[4]~12_combout\ : std_logic;
SIGNAL \command_translator_inst|y[1]~feeder_combout\ : std_logic;
SIGNAL \command_translator_inst|y[0]~feeder_combout\ : std_logic;
SIGNAL \y_send[0]~feeder_combout\ : std_logic;
SIGNAL \move_translator_inst|y_last[1]~5_combout\ : std_logic;
SIGNAL \move_translator_inst|y_last[1]~7_combout\ : std_logic;
SIGNAL \move_translator_inst|y_last[1]~_emulatedfeeder_combout\ : std_logic;
SIGNAL \move_translator_inst|y_last[1]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|y_last[1]~6_combout\ : std_logic;
SIGNAL \move_translator_inst|y_last[0]~1_combout\ : std_logic;
SIGNAL \move_translator_inst|y_last[0]~3_combout\ : std_logic;
SIGNAL \move_translator_inst|y_last[0]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|y_last[0]~2_combout\ : std_logic;
SIGNAL \move_translator_inst|process_0~5_combout\ : std_logic;
SIGNAL \command_translator_inst|y_temp[3]~5_combout\ : std_logic;
SIGNAL \command_translator_inst|y_temp[3]~4_combout\ : std_logic;
SIGNAL \command_translator_inst|Selector11~0_combout\ : std_logic;
SIGNAL \command_translator_inst|y_temp[3]~6_combout\ : std_logic;
SIGNAL \command_translator_inst|y_temp[3]~8_combout\ : std_logic;
SIGNAL \command_translator_inst|y[2]~feeder_combout\ : std_logic;
SIGNAL \y_send[2]~feeder_combout\ : std_logic;
SIGNAL \command_translator_inst|Selector10~0_combout\ : std_logic;
SIGNAL \command_translator_inst|Selector10~1_combout\ : std_logic;
SIGNAL \command_translator_inst|y[3]~feeder_combout\ : std_logic;
SIGNAL \y_send[3]~feeder_combout\ : std_logic;
SIGNAL \move_translator_inst|y_temp[3]~5_combout\ : std_logic;
SIGNAL \move_translator_inst|y_last[3]~11_combout\ : std_logic;
SIGNAL \move_translator_inst|y_last[3]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|y_last[3]~10_combout\ : std_logic;
SIGNAL \move_translator_inst|y_temp[2]~9_combout\ : std_logic;
SIGNAL \move_translator_inst|y_last[2]~9_combout\ : std_logic;
SIGNAL \move_translator_inst|y_last[2]~_emulatedfeeder_combout\ : std_logic;
SIGNAL \move_translator_inst|y_last[2]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|y_last[2]~8_combout\ : std_logic;
SIGNAL \move_translator_inst|process_0~6_combout\ : std_logic;
SIGNAL \move_translator_inst|process_0~7_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[4]~26_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[4]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|x_last[4]~18_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[3]~15_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[3]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|x_last[3]~14_combout\ : std_logic;
SIGNAL \move_translator_inst|process_0~3_combout\ : std_logic;
SIGNAL \command_translator_inst|Mux15~0_combout\ : std_logic;
SIGNAL \command_translator_inst|tile_type[0]~5_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \edges_send[0]~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \move_translator_inst|edges_last[1]~5_combout\ : std_logic;
SIGNAL \move_translator_inst|edges_last[1]~7_combout\ : std_logic;
SIGNAL \move_translator_inst|edges_last[1]~_emulatedfeeder_combout\ : std_logic;
SIGNAL \move_translator_inst|edges_last[1]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|edges_last[1]~6_combout\ : std_logic;
SIGNAL \move_translator_inst|edges_last[0]~1_combout\ : std_logic;
SIGNAL \move_translator_inst|edges_last[0]~3_combout\ : std_logic;
SIGNAL \move_translator_inst|edges_last[0]~_emulatedfeeder_combout\ : std_logic;
SIGNAL \move_translator_inst|edges_last[0]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|edges_last[0]~2_combout\ : std_logic;
SIGNAL \move_translator_inst|process_0~0_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[2]~11_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[2]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|x_last[2]~10_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[1]~7_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[1]~_emulatedfeeder_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[1]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|x_last[1]~6_combout\ : std_logic;
SIGNAL \move_translator_inst|process_0~2_combout\ : std_logic;
SIGNAL \command_translator_inst|x_temp[0]~0_combout\ : std_logic;
SIGNAL \command_translator_inst|x_temp[0]~1_combout\ : std_logic;
SIGNAL \command_translator_inst|x[0]~feeder_combout\ : std_logic;
SIGNAL \move_translator_inst|edges_last[2]~9_combout\ : std_logic;
SIGNAL \move_translator_inst|edges_last[2]~11_combout\ : std_logic;
SIGNAL \move_translator_inst|edges_last[2]~_emulatedfeeder_combout\ : std_logic;
SIGNAL \move_translator_inst|edges_last[2]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|edges_last[2]~10_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[0]~1_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[0]~3_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[0]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|x_last[0]~2_combout\ : std_logic;
SIGNAL \move_translator_inst|process_0~1_combout\ : std_logic;
SIGNAL \move_translator_inst|process_0~4_combout\ : std_logic;
SIGNAL \move_translator_inst|x_last[4]~25_combout\ : std_logic;
SIGNAL \move_translator_inst|x_temp[4]~12_combout\ : std_logic;
SIGNAL \move_translator_inst|x_temp[1]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|x_temp[1]~6_combout\ : std_logic;
SIGNAL \move_translator_inst|Add0~1_combout\ : std_logic;
SIGNAL \move_translator_inst|x_temp[2]~5_combout\ : std_logic;
SIGNAL \move_translator_inst|x_temp[2]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|x_temp[2]~4_combout\ : std_logic;
SIGNAL \move_translator_inst|Add0~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector0~0_combout\ : std_logic;
SIGNAL \move_translator_inst|x_temp[4]~1_combout\ : std_logic;
SIGNAL \move_translator_inst|x_temp[4]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|x_temp[4]~0_combout\ : std_logic;
SIGNAL \move_translator_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector4~1_combout\ : std_logic;
SIGNAL \move_translator_inst|y_temp[4]~18_combout\ : std_logic;
SIGNAL \move_translator_inst|y_temp[4]~3_combout\ : std_logic;
SIGNAL \move_translator_inst|y_temp[4]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|y_temp[4]~2_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector5~3_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector6~2_combout\ : std_logic;
SIGNAL \move_translator_inst|process_0~8_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector5~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector6~1_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector6~0_combout\ : std_logic;
SIGNAL \move_translator_inst|y_temp[2]~11_combout\ : std_logic;
SIGNAL \move_translator_inst|y_temp[2]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|y_temp[2]~10_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector20~1_combout\ : std_logic;
SIGNAL \move_translator_inst|Add2~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector5~1_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector5~2_combout\ : std_logic;
SIGNAL \move_translator_inst|y_temp[3]~7_combout\ : std_logic;
SIGNAL \move_translator_inst|y_temp[3]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|y_temp[3]~6_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector7~3_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector7~2_combout\ : std_logic;
SIGNAL \move_translator_inst|y_temp[1]~19_combout\ : std_logic;
SIGNAL \move_translator_inst|y_temp[1]~13_combout\ : std_logic;
SIGNAL \move_translator_inst|y_temp[1]~_emulated_q\ : std_logic;
SIGNAL \move_translator_inst|y_temp[1]~12_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector4~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_state~16_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_state~17_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_state~22_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_state.axis_x~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_state.axis_x~q\ : std_logic;
SIGNAL \move_translator_inst|Tx_state~21_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_state.axis_y~q\ : std_logic;
SIGNAL \move_translator_inst|Tx_state~20_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_state.tile_pattern~feeder_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_state.tile_pattern~q\ : std_logic;
SIGNAL \move_translator_inst|Tx_state~18_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_state.line_feed~q\ : std_logic;
SIGNAL \move_translator_inst|Tx_state.idle~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_state.idle~q\ : std_logic;
SIGNAL \move_translator_inst|Tx_en~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_en~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|state~21_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.start~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|state~19_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit0~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit1~feeder_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit1~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit2~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit3~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit4~feeder_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit4~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit5~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit6~feeder_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit6~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit7~feeder_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.bit7~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.stop~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|state~20_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|state.idle~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~0_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~38_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|counter[0]~feeder_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|counter[5]~0_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~1\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~2_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~33_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~3\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~4_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~32_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|counter[2]~feeder_combout\ : std_logic;
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
SIGNAL \move_translator_inst|uut0|LessThan0~3_combout\ : std_logic;
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
SIGNAL \move_translator_inst|uut0|Add0~23\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~26_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Add0~28_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|LessThan0~0_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|LessThan0~2_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|LessThan0~1_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|LessThan0~4_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector20~0_combout\ : std_logic;
SIGNAL \move_translator_inst|process_0~9_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector20~3_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector15~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector20~2_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector20~4_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_data[1]~1_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|process_0~0_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Selector0~3_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector15~1_combout\ : std_logic;
SIGNAL \move_translator_inst|Tx_data[0]~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector14~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector14~1_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Selector0~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector19~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector19~1_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector19~2_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector18~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector18~1_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector18~2_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector18~3_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Selector0~2_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector17~2_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector17~3_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector17~4_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector16~0_combout\ : std_logic;
SIGNAL \move_translator_inst|Selector16~1_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|reg[4]~feeder_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Selector0~1_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Selector0~4_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Txd~2_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Txd~3_combout\ : std_logic;
SIGNAL \move_translator_inst|uut0|Txd~q\ : std_logic;
SIGNAL \command_translator_inst|uut0|Rx_err~1_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Rx_err~2_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|Rx_err~q\ : std_logic;
SIGNAL \pll_inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \command_translator_inst|uut0|counter\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \command_translator_inst|y_temp\ : std_logic_vector(4 DOWNTO 0);
SIGNAL edges_send : std_logic_vector(3 DOWNTO 0);
SIGNAL \move_translator_inst|uut0|counter\ : std_logic_vector(12 DOWNTO 0);
SIGNAL x_send : std_logic_vector(4 DOWNTO 0);
SIGNAL \command_translator_inst|uut0|Rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \move_translator_inst|uut0|reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \move_translator_inst|Tx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL y_send : std_logic_vector(4 DOWNTO 0);
SIGNAL \command_translator_inst|uut0|reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \command_translator_inst|tile_type\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \command_translator_inst|x\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \command_translator_inst|y\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \command_translator_inst|x_temp\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\ : std_logic;
SIGNAL \command_translator_inst|ALT_INV_Rx_state.axis_x~q\ : std_logic;
SIGNAL \command_translator_inst|ALT_INV_Translation_busy~0_combout\ : std_logic;
SIGNAL \command_translator_inst|uut0|ALT_INV_state.idle~q\ : std_logic;
SIGNAL \move_translator_inst|uut0|ALT_INV_Txd~q\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
Txd <= ww_Txd;
Tx_busy <= ww_Tx_busy;
ww_Rxd <= Rxd;
Rx_busy <= ww_Rx_busy;
Rx_err <= ww_Rx_err;
Translation_busy <= ww_Translation_busy;
Tranlation_err <= ww_Tranlation_err;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pll_inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clock~input_o\);

\pll_inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\pll_inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\pll_inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\pll_inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\pll_inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\command_translator_inst|uut0|state.idle~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \command_translator_inst|uut0|state.idle~q\);

\pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll_inst|altpll_component|auto_generated|wire_pll1_clk\(0));

\command_translator_inst|Translation_busy~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \command_translator_inst|Translation_busy~0_combout\);
\pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;
\command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\ <= NOT \command_translator_inst|uut0|state.idle~clkctrl_outclk\;
\command_translator_inst|ALT_INV_Rx_state.axis_x~q\ <= NOT \command_translator_inst|Rx_state.axis_x~q\;
\command_translator_inst|ALT_INV_Translation_busy~0_combout\ <= NOT \command_translator_inst|Translation_busy~0_combout\;
\command_translator_inst|uut0|ALT_INV_state.idle~q\ <= NOT \command_translator_inst|uut0|state.idle~q\;
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

-- Location: IOOBUF_X107_Y73_N9
\Rx_busy~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \command_translator_inst|uut0|state.idle~q\,
	devoe => ww_devoe,
	o => ww_Rx_busy);

-- Location: IOOBUF_X60_Y73_N16
\Rx_err~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \command_translator_inst|uut0|Rx_err~q\,
	devoe => ww_devoe,
	o => ww_Rx_err);

-- Location: IOOBUF_X94_Y73_N2
\Translation_busy~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \command_translator_inst|ALT_INV_Translation_busy~0_combout\,
	devoe => ww_devoe,
	o => ww_Translation_busy);

-- Location: IOOBUF_X69_Y73_N16
\Tranlation_err~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Tranlation_err);

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

-- Location: LCCOMB_X113_Y41_N30
\move_translator_inst|Tx_state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Tx_state~19_combout\ = (!\move_translator_inst|Tx_state.tile_pattern~q\ & !\move_translator_inst|Tx_state.line_feed~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \move_translator_inst|Tx_state.tile_pattern~q\,
	datad => \move_translator_inst|Tx_state.line_feed~q\,
	combout => \move_translator_inst|Tx_state~19_combout\);

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

-- Location: LCCOMB_X108_Y40_N0
\command_translator_inst|uut0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~0_combout\ = \command_translator_inst|uut0|counter\(0) $ (VCC)
-- \command_translator_inst|uut0|Add0~1\ = CARRY(\command_translator_inst|uut0|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|counter\(0),
	datad => VCC,
	combout => \command_translator_inst|uut0|Add0~0_combout\,
	cout => \command_translator_inst|uut0|Add0~1\);

-- Location: LCCOMB_X112_Y40_N12
\command_translator_inst|uut0|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~35_combout\ = (\command_translator_inst|uut0|Add0~0_combout\ & \command_translator_inst|uut0|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \command_translator_inst|uut0|Add0~0_combout\,
	datad => \command_translator_inst|uut0|Equal1~3_combout\,
	combout => \command_translator_inst|uut0|Add0~35_combout\);

-- Location: IOIBUF_X27_Y73_N8
\Rxd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rxd,
	o => \Rxd~input_o\);

-- Location: LCCOMB_X112_Y40_N24
\command_translator_inst|uut0|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~19_combout\ = (\command_translator_inst|uut0|state.idle~q\) # (!\Rxd~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rxd~input_o\,
	datad => \command_translator_inst|uut0|state.idle~q\,
	combout => \command_translator_inst|uut0|Add0~19_combout\);

-- Location: FF_X112_Y40_N13
\command_translator_inst|uut0|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|Add0~35_combout\,
	clrn => \reset~input_o\,
	sclr => \command_translator_inst|uut0|ALT_INV_state.idle~q\,
	ena => \command_translator_inst|uut0|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|counter\(0));

-- Location: LCCOMB_X108_Y40_N2
\command_translator_inst|uut0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~2_combout\ = (\command_translator_inst|uut0|counter\(1) & (!\command_translator_inst|uut0|Add0~1\)) # (!\command_translator_inst|uut0|counter\(1) & ((\command_translator_inst|uut0|Add0~1\) # (GND)))
-- \command_translator_inst|uut0|Add0~3\ = CARRY((!\command_translator_inst|uut0|Add0~1\) # (!\command_translator_inst|uut0|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \command_translator_inst|uut0|counter\(1),
	datad => VCC,
	cin => \command_translator_inst|uut0|Add0~1\,
	combout => \command_translator_inst|uut0|Add0~2_combout\,
	cout => \command_translator_inst|uut0|Add0~3\);

-- Location: LCCOMB_X112_Y40_N10
\command_translator_inst|uut0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~30_combout\ = (\command_translator_inst|uut0|Add0~2_combout\ & \command_translator_inst|uut0|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \command_translator_inst|uut0|Add0~2_combout\,
	datad => \command_translator_inst|uut0|Equal1~3_combout\,
	combout => \command_translator_inst|uut0|Add0~30_combout\);

-- Location: FF_X112_Y40_N11
\command_translator_inst|uut0|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|Add0~30_combout\,
	clrn => \reset~input_o\,
	sclr => \command_translator_inst|uut0|ALT_INV_state.idle~q\,
	ena => \command_translator_inst|uut0|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|counter\(1));

-- Location: LCCOMB_X108_Y40_N4
\command_translator_inst|uut0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~4_combout\ = (\command_translator_inst|uut0|counter\(2) & (\command_translator_inst|uut0|Add0~3\ $ (GND))) # (!\command_translator_inst|uut0|counter\(2) & (!\command_translator_inst|uut0|Add0~3\ & VCC))
-- \command_translator_inst|uut0|Add0~5\ = CARRY((\command_translator_inst|uut0|counter\(2) & !\command_translator_inst|uut0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|counter\(2),
	datad => VCC,
	cin => \command_translator_inst|uut0|Add0~3\,
	combout => \command_translator_inst|uut0|Add0~4_combout\,
	cout => \command_translator_inst|uut0|Add0~5\);

-- Location: LCCOMB_X112_Y40_N14
\command_translator_inst|uut0|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~39_combout\ = (\command_translator_inst|uut0|Add0~4_combout\ & \command_translator_inst|uut0|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \command_translator_inst|uut0|Add0~4_combout\,
	datad => \command_translator_inst|uut0|Equal1~3_combout\,
	combout => \command_translator_inst|uut0|Add0~39_combout\);

-- Location: FF_X112_Y40_N15
\command_translator_inst|uut0|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|Add0~39_combout\,
	clrn => \reset~input_o\,
	sclr => \command_translator_inst|uut0|ALT_INV_state.idle~q\,
	ena => \command_translator_inst|uut0|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|counter\(2));

-- Location: LCCOMB_X108_Y40_N6
\command_translator_inst|uut0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~6_combout\ = (\command_translator_inst|uut0|counter\(3) & (!\command_translator_inst|uut0|Add0~5\)) # (!\command_translator_inst|uut0|counter\(3) & ((\command_translator_inst|uut0|Add0~5\) # (GND)))
-- \command_translator_inst|uut0|Add0~7\ = CARRY((!\command_translator_inst|uut0|Add0~5\) # (!\command_translator_inst|uut0|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|counter\(3),
	datad => VCC,
	cin => \command_translator_inst|uut0|Add0~5\,
	combout => \command_translator_inst|uut0|Add0~6_combout\,
	cout => \command_translator_inst|uut0|Add0~7\);

-- Location: LCCOMB_X112_Y40_N30
\command_translator_inst|uut0|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~37_combout\ = (\command_translator_inst|uut0|Equal1~3_combout\ & \command_translator_inst|uut0|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Equal1~3_combout\,
	datad => \command_translator_inst|uut0|Add0~6_combout\,
	combout => \command_translator_inst|uut0|Add0~37_combout\);

-- Location: FF_X112_Y40_N31
\command_translator_inst|uut0|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|Add0~37_combout\,
	clrn => \reset~input_o\,
	sclr => \command_translator_inst|uut0|ALT_INV_state.idle~q\,
	ena => \command_translator_inst|uut0|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|counter\(3));

-- Location: LCCOMB_X108_Y40_N8
\command_translator_inst|uut0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~8_combout\ = (\command_translator_inst|uut0|counter\(4) & (\command_translator_inst|uut0|Add0~7\ $ (GND))) # (!\command_translator_inst|uut0|counter\(4) & (!\command_translator_inst|uut0|Add0~7\ & VCC))
-- \command_translator_inst|uut0|Add0~9\ = CARRY((\command_translator_inst|uut0|counter\(4) & !\command_translator_inst|uut0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|counter\(4),
	datad => VCC,
	cin => \command_translator_inst|uut0|Add0~7\,
	combout => \command_translator_inst|uut0|Add0~8_combout\,
	cout => \command_translator_inst|uut0|Add0~9\);

-- Location: LCCOMB_X112_Y40_N4
\command_translator_inst|uut0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~38_combout\ = (\command_translator_inst|uut0|Add0~8_combout\ & \command_translator_inst|uut0|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \command_translator_inst|uut0|Add0~8_combout\,
	datad => \command_translator_inst|uut0|Equal1~3_combout\,
	combout => \command_translator_inst|uut0|Add0~38_combout\);

-- Location: FF_X112_Y40_N5
\command_translator_inst|uut0|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|Add0~38_combout\,
	clrn => \reset~input_o\,
	sclr => \command_translator_inst|uut0|ALT_INV_state.idle~q\,
	ena => \command_translator_inst|uut0|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|counter\(4));

-- Location: LCCOMB_X108_Y40_N10
\command_translator_inst|uut0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~10_combout\ = (\command_translator_inst|uut0|counter\(5) & (!\command_translator_inst|uut0|Add0~9\)) # (!\command_translator_inst|uut0|counter\(5) & ((\command_translator_inst|uut0|Add0~9\) # (GND)))
-- \command_translator_inst|uut0|Add0~11\ = CARRY((!\command_translator_inst|uut0|Add0~9\) # (!\command_translator_inst|uut0|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \command_translator_inst|uut0|counter\(5),
	datad => VCC,
	cin => \command_translator_inst|uut0|Add0~9\,
	combout => \command_translator_inst|uut0|Add0~10_combout\,
	cout => \command_translator_inst|uut0|Add0~11\);

-- Location: LCCOMB_X112_Y40_N22
\command_translator_inst|uut0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~36_combout\ = (\command_translator_inst|uut0|Equal1~3_combout\ & \command_translator_inst|uut0|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Equal1~3_combout\,
	datad => \command_translator_inst|uut0|Add0~10_combout\,
	combout => \command_translator_inst|uut0|Add0~36_combout\);

-- Location: FF_X112_Y40_N23
\command_translator_inst|uut0|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|Add0~36_combout\,
	clrn => \reset~input_o\,
	sclr => \command_translator_inst|uut0|ALT_INV_state.idle~q\,
	ena => \command_translator_inst|uut0|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|counter\(5));

-- Location: LCCOMB_X111_Y40_N22
\command_translator_inst|uut0|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Equal1~2_combout\ = (((\command_translator_inst|uut0|counter\(3)) # (\command_translator_inst|uut0|counter\(5))) # (!\command_translator_inst|uut0|counter\(2))) # (!\command_translator_inst|uut0|counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|counter\(4),
	datab => \command_translator_inst|uut0|counter\(2),
	datac => \command_translator_inst|uut0|counter\(3),
	datad => \command_translator_inst|uut0|counter\(5),
	combout => \command_translator_inst|uut0|Equal1~2_combout\);

-- Location: LCCOMB_X108_Y40_N12
\command_translator_inst|uut0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~12_combout\ = (\command_translator_inst|uut0|counter\(6) & (\command_translator_inst|uut0|Add0~11\ $ (GND))) # (!\command_translator_inst|uut0|counter\(6) & (!\command_translator_inst|uut0|Add0~11\ & VCC))
-- \command_translator_inst|uut0|Add0~13\ = CARRY((\command_translator_inst|uut0|counter\(6) & !\command_translator_inst|uut0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|counter\(6),
	datad => VCC,
	cin => \command_translator_inst|uut0|Add0~11\,
	combout => \command_translator_inst|uut0|Add0~12_combout\,
	cout => \command_translator_inst|uut0|Add0~13\);

-- Location: LCCOMB_X112_Y40_N28
\command_translator_inst|uut0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~34_combout\ = (\command_translator_inst|uut0|Add0~12_combout\ & \command_translator_inst|uut0|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Add0~12_combout\,
	datad => \command_translator_inst|uut0|Equal1~3_combout\,
	combout => \command_translator_inst|uut0|Add0~34_combout\);

-- Location: FF_X112_Y40_N29
\command_translator_inst|uut0|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|Add0~34_combout\,
	clrn => \reset~input_o\,
	sclr => \command_translator_inst|uut0|ALT_INV_state.idle~q\,
	ena => \command_translator_inst|uut0|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|counter\(6));

-- Location: LCCOMB_X108_Y40_N14
\command_translator_inst|uut0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~14_combout\ = (\command_translator_inst|uut0|counter\(7) & (!\command_translator_inst|uut0|Add0~13\)) # (!\command_translator_inst|uut0|counter\(7) & ((\command_translator_inst|uut0|Add0~13\) # (GND)))
-- \command_translator_inst|uut0|Add0~15\ = CARRY((!\command_translator_inst|uut0|Add0~13\) # (!\command_translator_inst|uut0|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \command_translator_inst|uut0|counter\(7),
	datad => VCC,
	cin => \command_translator_inst|uut0|Add0~13\,
	combout => \command_translator_inst|uut0|Add0~14_combout\,
	cout => \command_translator_inst|uut0|Add0~15\);

-- Location: LCCOMB_X112_Y40_N8
\command_translator_inst|uut0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~20_combout\ = (\command_translator_inst|uut0|Add0~14_combout\ & \command_translator_inst|uut0|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Add0~14_combout\,
	datad => \command_translator_inst|uut0|Equal1~3_combout\,
	combout => \command_translator_inst|uut0|Add0~20_combout\);

-- Location: FF_X112_Y40_N9
\command_translator_inst|uut0|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|Add0~20_combout\,
	clrn => \reset~input_o\,
	sclr => \command_translator_inst|uut0|ALT_INV_state.idle~q\,
	ena => \command_translator_inst|uut0|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|counter\(7));

-- Location: LCCOMB_X108_Y40_N16
\command_translator_inst|uut0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~16_combout\ = (\command_translator_inst|uut0|counter\(8) & (\command_translator_inst|uut0|Add0~15\ $ (GND))) # (!\command_translator_inst|uut0|counter\(8) & (!\command_translator_inst|uut0|Add0~15\ & VCC))
-- \command_translator_inst|uut0|Add0~17\ = CARRY((\command_translator_inst|uut0|counter\(8) & !\command_translator_inst|uut0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \command_translator_inst|uut0|counter\(8),
	datad => VCC,
	cin => \command_translator_inst|uut0|Add0~15\,
	combout => \command_translator_inst|uut0|Add0~16_combout\,
	cout => \command_translator_inst|uut0|Add0~17\);

-- Location: LCCOMB_X112_Y40_N2
\command_translator_inst|uut0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~18_combout\ = (\command_translator_inst|uut0|Add0~16_combout\ & \command_translator_inst|uut0|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \command_translator_inst|uut0|Add0~16_combout\,
	datad => \command_translator_inst|uut0|Equal1~3_combout\,
	combout => \command_translator_inst|uut0|Add0~18_combout\);

-- Location: FF_X112_Y40_N3
\command_translator_inst|uut0|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|Add0~18_combout\,
	clrn => \reset~input_o\,
	sclr => \command_translator_inst|uut0|ALT_INV_state.idle~q\,
	ena => \command_translator_inst|uut0|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|counter\(8));

-- Location: LCCOMB_X108_Y40_N18
\command_translator_inst|uut0|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~21_combout\ = (\command_translator_inst|uut0|counter\(9) & (!\command_translator_inst|uut0|Add0~17\)) # (!\command_translator_inst|uut0|counter\(9) & ((\command_translator_inst|uut0|Add0~17\) # (GND)))
-- \command_translator_inst|uut0|Add0~22\ = CARRY((!\command_translator_inst|uut0|Add0~17\) # (!\command_translator_inst|uut0|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|counter\(9),
	datad => VCC,
	cin => \command_translator_inst|uut0|Add0~17\,
	combout => \command_translator_inst|uut0|Add0~21_combout\,
	cout => \command_translator_inst|uut0|Add0~22\);

-- Location: LCCOMB_X112_Y40_N16
\command_translator_inst|uut0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~32_combout\ = (\command_translator_inst|uut0|Add0~21_combout\ & \command_translator_inst|uut0|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \command_translator_inst|uut0|Add0~21_combout\,
	datad => \command_translator_inst|uut0|Equal1~3_combout\,
	combout => \command_translator_inst|uut0|Add0~32_combout\);

-- Location: FF_X112_Y40_N17
\command_translator_inst|uut0|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|Add0~32_combout\,
	clrn => \reset~input_o\,
	sclr => \command_translator_inst|uut0|ALT_INV_state.idle~q\,
	ena => \command_translator_inst|uut0|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|counter\(9));

-- Location: LCCOMB_X108_Y40_N20
\command_translator_inst|uut0|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~23_combout\ = (\command_translator_inst|uut0|counter\(10) & (\command_translator_inst|uut0|Add0~22\ $ (GND))) # (!\command_translator_inst|uut0|counter\(10) & (!\command_translator_inst|uut0|Add0~22\ & VCC))
-- \command_translator_inst|uut0|Add0~24\ = CARRY((\command_translator_inst|uut0|counter\(10) & !\command_translator_inst|uut0|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \command_translator_inst|uut0|counter\(10),
	datad => VCC,
	cin => \command_translator_inst|uut0|Add0~22\,
	combout => \command_translator_inst|uut0|Add0~23_combout\,
	cout => \command_translator_inst|uut0|Add0~24\);

-- Location: LCCOMB_X112_Y40_N6
\command_translator_inst|uut0|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~33_combout\ = (\command_translator_inst|uut0|Equal1~3_combout\ & \command_translator_inst|uut0|Add0~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Equal1~3_combout\,
	datac => \command_translator_inst|uut0|Add0~23_combout\,
	combout => \command_translator_inst|uut0|Add0~33_combout\);

-- Location: FF_X112_Y40_N7
\command_translator_inst|uut0|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|Add0~33_combout\,
	clrn => \reset~input_o\,
	sclr => \command_translator_inst|uut0|ALT_INV_state.idle~q\,
	ena => \command_translator_inst|uut0|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|counter\(10));

-- Location: LCCOMB_X108_Y40_N22
\command_translator_inst|uut0|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~25_combout\ = (\command_translator_inst|uut0|counter\(11) & (!\command_translator_inst|uut0|Add0~24\)) # (!\command_translator_inst|uut0|counter\(11) & ((\command_translator_inst|uut0|Add0~24\) # (GND)))
-- \command_translator_inst|uut0|Add0~26\ = CARRY((!\command_translator_inst|uut0|Add0~24\) # (!\command_translator_inst|uut0|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \command_translator_inst|uut0|counter\(11),
	datad => VCC,
	cin => \command_translator_inst|uut0|Add0~24\,
	combout => \command_translator_inst|uut0|Add0~25_combout\,
	cout => \command_translator_inst|uut0|Add0~26\);

-- Location: LCCOMB_X112_Y40_N26
\command_translator_inst|uut0|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~31_combout\ = (\command_translator_inst|uut0|Add0~25_combout\ & \command_translator_inst|uut0|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \command_translator_inst|uut0|Add0~25_combout\,
	datad => \command_translator_inst|uut0|Equal1~3_combout\,
	combout => \command_translator_inst|uut0|Add0~31_combout\);

-- Location: FF_X112_Y40_N27
\command_translator_inst|uut0|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|Add0~31_combout\,
	clrn => \reset~input_o\,
	sclr => \command_translator_inst|uut0|ALT_INV_state.idle~q\,
	ena => \command_translator_inst|uut0|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|counter\(11));

-- Location: LCCOMB_X108_Y40_N28
\command_translator_inst|uut0|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Equal1~1_combout\ = (\command_translator_inst|uut0|counter\(9)) # (((\command_translator_inst|uut0|counter\(11)) # (!\command_translator_inst|uut0|counter\(6))) # (!\command_translator_inst|uut0|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|counter\(9),
	datab => \command_translator_inst|uut0|counter\(10),
	datac => \command_translator_inst|uut0|counter\(6),
	datad => \command_translator_inst|uut0|counter\(11),
	combout => \command_translator_inst|uut0|Equal1~1_combout\);

-- Location: LCCOMB_X108_Y40_N24
\command_translator_inst|uut0|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~27_combout\ = \command_translator_inst|uut0|Add0~26\ $ (!\command_translator_inst|uut0|counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \command_translator_inst|uut0|counter\(12),
	cin => \command_translator_inst|uut0|Add0~26\,
	combout => \command_translator_inst|uut0|Add0~27_combout\);

-- Location: LCCOMB_X112_Y40_N20
\command_translator_inst|uut0|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~29_combout\ = (\command_translator_inst|uut0|Add0~27_combout\ & \command_translator_inst|uut0|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \command_translator_inst|uut0|Add0~27_combout\,
	datad => \command_translator_inst|uut0|Equal1~3_combout\,
	combout => \command_translator_inst|uut0|Add0~29_combout\);

-- Location: FF_X112_Y40_N21
\command_translator_inst|uut0|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|Add0~29_combout\,
	clrn => \reset~input_o\,
	sclr => \command_translator_inst|uut0|ALT_INV_state.idle~q\,
	ena => \command_translator_inst|uut0|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|counter\(12));

-- Location: LCCOMB_X111_Y40_N28
\command_translator_inst|uut0|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Equal1~0_combout\ = ((\command_translator_inst|uut0|counter\(7)) # ((\command_translator_inst|uut0|counter\(8)) # (!\command_translator_inst|uut0|counter\(1)))) # (!\command_translator_inst|uut0|counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|counter\(12),
	datab => \command_translator_inst|uut0|counter\(7),
	datac => \command_translator_inst|uut0|counter\(1),
	datad => \command_translator_inst|uut0|counter\(8),
	combout => \command_translator_inst|uut0|Equal1~0_combout\);

-- Location: LCCOMB_X111_Y40_N12
\command_translator_inst|uut0|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Equal1~3_combout\ = (\command_translator_inst|uut0|Equal1~2_combout\) # ((\command_translator_inst|uut0|Equal1~1_combout\) # ((\command_translator_inst|uut0|counter\(0)) # (\command_translator_inst|uut0|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Equal1~2_combout\,
	datab => \command_translator_inst|uut0|Equal1~1_combout\,
	datac => \command_translator_inst|uut0|counter\(0),
	datad => \command_translator_inst|uut0|Equal1~0_combout\,
	combout => \command_translator_inst|uut0|Equal1~3_combout\);

-- Location: LCCOMB_X111_Y40_N6
\command_translator_inst|uut0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Equal0~0_combout\ = (!\command_translator_inst|uut0|counter\(12) & (!\command_translator_inst|uut0|counter\(7) & (\command_translator_inst|uut0|counter\(1) & !\command_translator_inst|uut0|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|counter\(12),
	datab => \command_translator_inst|uut0|counter\(7),
	datac => \command_translator_inst|uut0|counter\(1),
	datad => \command_translator_inst|uut0|counter\(8),
	combout => \command_translator_inst|uut0|Equal0~0_combout\);

-- Location: LCCOMB_X111_Y40_N20
\command_translator_inst|uut0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Equal0~2_combout\ = (!\command_translator_inst|uut0|counter\(4) & (!\command_translator_inst|uut0|counter\(2) & (\command_translator_inst|uut0|counter\(3) & \command_translator_inst|uut0|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|counter\(4),
	datab => \command_translator_inst|uut0|counter\(2),
	datac => \command_translator_inst|uut0|counter\(3),
	datad => \command_translator_inst|uut0|counter\(5),
	combout => \command_translator_inst|uut0|Equal0~2_combout\);

-- Location: LCCOMB_X108_Y40_N26
\command_translator_inst|uut0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Equal0~1_combout\ = (\command_translator_inst|uut0|counter\(9) & (!\command_translator_inst|uut0|counter\(10) & (!\command_translator_inst|uut0|counter\(6) & \command_translator_inst|uut0|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|counter\(9),
	datab => \command_translator_inst|uut0|counter\(10),
	datac => \command_translator_inst|uut0|counter\(6),
	datad => \command_translator_inst|uut0|counter\(11),
	combout => \command_translator_inst|uut0|Equal0~1_combout\);

-- Location: LCCOMB_X111_Y40_N18
\command_translator_inst|uut0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Equal0~3_combout\ = (\command_translator_inst|uut0|Equal0~0_combout\ & (\command_translator_inst|uut0|Equal0~2_combout\ & (\command_translator_inst|uut0|counter\(0) & \command_translator_inst|uut0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Equal0~0_combout\,
	datab => \command_translator_inst|uut0|Equal0~2_combout\,
	datac => \command_translator_inst|uut0|counter\(0),
	datad => \command_translator_inst|uut0|Equal0~1_combout\,
	combout => \command_translator_inst|uut0|Equal0~3_combout\);

-- Location: LCCOMB_X111_Y40_N24
\command_translator_inst|uut0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Add0~40_combout\ = (!\Rxd~input_o\ & !\command_translator_inst|uut0|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rxd~input_o\,
	datac => \command_translator_inst|uut0|state.idle~q\,
	combout => \command_translator_inst|uut0|Add0~40_combout\);

-- Location: LCCOMB_X111_Y40_N26
\command_translator_inst|uut0|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|state~19_combout\ = (\command_translator_inst|uut0|Add0~40_combout\) # ((\command_translator_inst|uut0|state.start~q\ & ((\command_translator_inst|uut0|Equal1~3_combout\) # (\command_translator_inst|uut0|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Equal1~3_combout\,
	datab => \command_translator_inst|uut0|Equal0~3_combout\,
	datac => \command_translator_inst|uut0|state.start~q\,
	datad => \command_translator_inst|uut0|Add0~40_combout\,
	combout => \command_translator_inst|uut0|state~19_combout\);

-- Location: FF_X111_Y40_N27
\command_translator_inst|uut0|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|state~19_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|state.start~q\);

-- Location: LCCOMB_X112_Y40_N18
\command_translator_inst|uut0|state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|state~17_combout\ = (!\command_translator_inst|uut0|Equal1~3_combout\ & \command_translator_inst|uut0|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Equal1~3_combout\,
	datad => \command_translator_inst|uut0|state.idle~q\,
	combout => \command_translator_inst|uut0|state~17_combout\);

-- Location: FF_X111_Y40_N17
\command_translator_inst|uut0|state.bit0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \command_translator_inst|uut0|state.start~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \command_translator_inst|uut0|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|state.bit0~q\);

-- Location: LCCOMB_X113_Y40_N24
\command_translator_inst|uut0|state.bit1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|state.bit1~feeder_combout\ = \command_translator_inst|uut0|state.bit0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \command_translator_inst|uut0|state.bit0~q\,
	combout => \command_translator_inst|uut0|state.bit1~feeder_combout\);

-- Location: FF_X113_Y40_N25
\command_translator_inst|uut0|state.bit1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|state.bit1~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \command_translator_inst|uut0|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|state.bit1~q\);

-- Location: LCCOMB_X113_Y40_N14
\command_translator_inst|uut0|state.bit2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|state.bit2~feeder_combout\ = \command_translator_inst|uut0|state.bit1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \command_translator_inst|uut0|state.bit1~q\,
	combout => \command_translator_inst|uut0|state.bit2~feeder_combout\);

-- Location: FF_X113_Y40_N15
\command_translator_inst|uut0|state.bit2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|state.bit2~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \command_translator_inst|uut0|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|state.bit2~q\);

-- Location: FF_X113_Y40_N21
\command_translator_inst|uut0|state.bit3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \command_translator_inst|uut0|state.bit2~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \command_translator_inst|uut0|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|state.bit3~q\);

-- Location: LCCOMB_X113_Y40_N28
\command_translator_inst|uut0|state.bit4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|state.bit4~feeder_combout\ = \command_translator_inst|uut0|state.bit3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \command_translator_inst|uut0|state.bit3~q\,
	combout => \command_translator_inst|uut0|state.bit4~feeder_combout\);

-- Location: FF_X113_Y40_N29
\command_translator_inst|uut0|state.bit4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|state.bit4~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \command_translator_inst|uut0|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|state.bit4~q\);

-- Location: LCCOMB_X113_Y40_N4
\command_translator_inst|uut0|state.bit5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|state.bit5~feeder_combout\ = \command_translator_inst|uut0|state.bit4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \command_translator_inst|uut0|state.bit4~q\,
	combout => \command_translator_inst|uut0|state.bit5~feeder_combout\);

-- Location: FF_X113_Y40_N5
\command_translator_inst|uut0|state.bit5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|state.bit5~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \command_translator_inst|uut0|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|state.bit5~q\);

-- Location: FF_X113_Y40_N31
\command_translator_inst|uut0|state.bit6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \command_translator_inst|uut0|state.bit5~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \command_translator_inst|uut0|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|state.bit6~q\);

-- Location: LCCOMB_X113_Y40_N12
\command_translator_inst|uut0|state.bit7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|state.bit7~feeder_combout\ = \command_translator_inst|uut0|state.bit6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \command_translator_inst|uut0|state.bit6~q\,
	combout => \command_translator_inst|uut0|state.bit7~feeder_combout\);

-- Location: FF_X113_Y40_N13
\command_translator_inst|uut0|state.bit7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|state.bit7~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \command_translator_inst|uut0|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|state.bit7~q\);

-- Location: FF_X113_Y40_N3
\command_translator_inst|uut0|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \command_translator_inst|uut0|state.bit7~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \command_translator_inst|uut0|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|state.stop~q\);

-- Location: LCCOMB_X112_Y40_N0
\command_translator_inst|uut0|state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|state~16_combout\ = (\command_translator_inst|uut0|state.idle~q\ & (((\command_translator_inst|uut0|Equal1~3_combout\)) # (!\command_translator_inst|uut0|state.stop~q\))) # (!\command_translator_inst|uut0|state.idle~q\ & 
-- (((!\Rxd~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|state.stop~q\,
	datab => \Rxd~input_o\,
	datac => \command_translator_inst|uut0|state.idle~q\,
	datad => \command_translator_inst|uut0|Equal1~3_combout\,
	combout => \command_translator_inst|uut0|state~16_combout\);

-- Location: FF_X112_Y40_N1
\command_translator_inst|uut0|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|state~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|state.idle~q\);

-- Location: LCCOMB_X113_Y40_N26
\command_translator_inst|uut0|reg[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|reg[3]~8_combout\ = (\command_translator_inst|uut0|Equal0~3_combout\ & ((\command_translator_inst|uut0|state.bit3~q\ & (\Rxd~input_o\)) # (!\command_translator_inst|uut0|state.bit3~q\ & 
-- ((\command_translator_inst|uut0|reg\(3)))))) # (!\command_translator_inst|uut0|Equal0~3_combout\ & (((\command_translator_inst|uut0|reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Equal0~3_combout\,
	datab => \Rxd~input_o\,
	datac => \command_translator_inst|uut0|reg\(3),
	datad => \command_translator_inst|uut0|state.bit3~q\,
	combout => \command_translator_inst|uut0|reg[3]~8_combout\);

-- Location: FF_X113_Y40_N27
\command_translator_inst|uut0|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|reg[3]~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|reg\(3));

-- Location: LCCOMB_X111_Y40_N4
\command_translator_inst|uut0|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|state~18_combout\ = (!\command_translator_inst|uut0|Equal1~3_combout\ & \command_translator_inst|uut0|state.stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Equal1~3_combout\,
	datac => \command_translator_inst|uut0|state.stop~q\,
	combout => \command_translator_inst|uut0|state~18_combout\);

-- Location: FF_X110_Y40_N27
\command_translator_inst|uut0|Rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \command_translator_inst|uut0|reg\(3),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \command_translator_inst|uut0|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|Rx_data\(3));

-- Location: LCCOMB_X111_Y40_N30
\command_translator_inst|uut0|reg[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|reg[0]~14_combout\ = (\command_translator_inst|uut0|state.bit0~q\ & ((\command_translator_inst|uut0|Equal0~3_combout\ & (\Rxd~input_o\)) # (!\command_translator_inst|uut0|Equal0~3_combout\ & 
-- ((\command_translator_inst|uut0|reg\(0)))))) # (!\command_translator_inst|uut0|state.bit0~q\ & (((\command_translator_inst|uut0|reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|state.bit0~q\,
	datab => \Rxd~input_o\,
	datac => \command_translator_inst|uut0|reg\(0),
	datad => \command_translator_inst|uut0|Equal0~3_combout\,
	combout => \command_translator_inst|uut0|reg[0]~14_combout\);

-- Location: FF_X111_Y40_N31
\command_translator_inst|uut0|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|reg[0]~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|reg\(0));

-- Location: FF_X110_Y40_N3
\command_translator_inst|uut0|Rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \command_translator_inst|uut0|reg\(0),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \command_translator_inst|uut0|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|Rx_data\(0));

-- Location: LCCOMB_X113_Y40_N8
\command_translator_inst|uut0|reg[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|reg[2]~15_combout\ = (\command_translator_inst|uut0|Equal0~3_combout\ & ((\command_translator_inst|uut0|state.bit2~q\ & ((\Rxd~input_o\))) # (!\command_translator_inst|uut0|state.bit2~q\ & 
-- (\command_translator_inst|uut0|reg\(2))))) # (!\command_translator_inst|uut0|Equal0~3_combout\ & (((\command_translator_inst|uut0|reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Equal0~3_combout\,
	datab => \command_translator_inst|uut0|state.bit2~q\,
	datac => \command_translator_inst|uut0|reg\(2),
	datad => \Rxd~input_o\,
	combout => \command_translator_inst|uut0|reg[2]~15_combout\);

-- Location: FF_X113_Y40_N9
\command_translator_inst|uut0|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|reg[2]~15_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|reg\(2));

-- Location: FF_X110_Y40_N5
\command_translator_inst|uut0|Rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \command_translator_inst|uut0|reg\(2),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \command_translator_inst|uut0|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|Rx_data\(2));

-- Location: LCCOMB_X113_Y40_N10
\command_translator_inst|uut0|reg[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|reg[7]~9_combout\ = (\command_translator_inst|uut0|Equal0~3_combout\ & ((\command_translator_inst|uut0|state.bit7~q\ & (\Rxd~input_o\)) # (!\command_translator_inst|uut0|state.bit7~q\ & 
-- ((\command_translator_inst|uut0|reg\(7)))))) # (!\command_translator_inst|uut0|Equal0~3_combout\ & (((\command_translator_inst|uut0|reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Equal0~3_combout\,
	datab => \Rxd~input_o\,
	datac => \command_translator_inst|uut0|reg\(7),
	datad => \command_translator_inst|uut0|state.bit7~q\,
	combout => \command_translator_inst|uut0|reg[7]~9_combout\);

-- Location: FF_X113_Y40_N11
\command_translator_inst|uut0|reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|reg[7]~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|reg\(7));

-- Location: FF_X110_Y40_N17
\command_translator_inst|uut0|Rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \command_translator_inst|uut0|reg\(7),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \command_translator_inst|uut0|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|Rx_data\(7));

-- Location: LCCOMB_X110_Y40_N4
\command_translator_inst|Selector6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector6~11_combout\ = (\command_translator_inst|uut0|Rx_data\(3) & (!\command_translator_inst|uut0|Rx_data\(0) & (!\command_translator_inst|uut0|Rx_data\(2) & !\command_translator_inst|uut0|Rx_data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Rx_data\(3),
	datab => \command_translator_inst|uut0|Rx_data\(0),
	datac => \command_translator_inst|uut0|Rx_data\(2),
	datad => \command_translator_inst|uut0|Rx_data\(7),
	combout => \command_translator_inst|Selector6~11_combout\);

-- Location: LCCOMB_X113_Y40_N6
\command_translator_inst|uut0|reg[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|reg[5]~11_combout\ = (\command_translator_inst|uut0|Equal0~3_combout\ & ((\command_translator_inst|uut0|state.bit5~q\ & (\Rxd~input_o\)) # (!\command_translator_inst|uut0|state.bit5~q\ & 
-- ((\command_translator_inst|uut0|reg\(5)))))) # (!\command_translator_inst|uut0|Equal0~3_combout\ & (((\command_translator_inst|uut0|reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Equal0~3_combout\,
	datab => \Rxd~input_o\,
	datac => \command_translator_inst|uut0|reg\(5),
	datad => \command_translator_inst|uut0|state.bit5~q\,
	combout => \command_translator_inst|uut0|reg[5]~11_combout\);

-- Location: FF_X113_Y40_N7
\command_translator_inst|uut0|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|reg[5]~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|reg\(5));

-- Location: FF_X110_Y40_N15
\command_translator_inst|uut0|Rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \command_translator_inst|uut0|reg\(5),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \command_translator_inst|uut0|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|Rx_data\(5));

-- Location: LCCOMB_X113_Y40_N18
\command_translator_inst|uut0|reg[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|reg[6]~13_combout\ = (\command_translator_inst|uut0|Equal0~3_combout\ & ((\command_translator_inst|uut0|state.bit6~q\ & (\Rxd~input_o\)) # (!\command_translator_inst|uut0|state.bit6~q\ & 
-- ((\command_translator_inst|uut0|reg\(6)))))) # (!\command_translator_inst|uut0|Equal0~3_combout\ & (((\command_translator_inst|uut0|reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Equal0~3_combout\,
	datab => \Rxd~input_o\,
	datac => \command_translator_inst|uut0|reg\(6),
	datad => \command_translator_inst|uut0|state.bit6~q\,
	combout => \command_translator_inst|uut0|reg[6]~13_combout\);

-- Location: FF_X113_Y40_N19
\command_translator_inst|uut0|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|reg[6]~13_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|reg\(6));

-- Location: FF_X110_Y40_N1
\command_translator_inst|uut0|Rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \command_translator_inst|uut0|reg\(6),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \command_translator_inst|uut0|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|Rx_data\(6));

-- Location: LCCOMB_X113_Y40_N22
\command_translator_inst|uut0|reg[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|reg[1]~10_combout\ = (\command_translator_inst|uut0|Equal0~3_combout\ & ((\command_translator_inst|uut0|state.bit1~q\ & ((\Rxd~input_o\))) # (!\command_translator_inst|uut0|state.bit1~q\ & 
-- (\command_translator_inst|uut0|reg\(1))))) # (!\command_translator_inst|uut0|Equal0~3_combout\ & (((\command_translator_inst|uut0|reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Equal0~3_combout\,
	datab => \command_translator_inst|uut0|state.bit1~q\,
	datac => \command_translator_inst|uut0|reg\(1),
	datad => \Rxd~input_o\,
	combout => \command_translator_inst|uut0|reg[1]~10_combout\);

-- Location: FF_X113_Y40_N23
\command_translator_inst|uut0|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|reg[1]~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|reg\(1));

-- Location: FF_X110_Y40_N21
\command_translator_inst|uut0|Rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \command_translator_inst|uut0|reg\(1),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \command_translator_inst|uut0|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|Rx_data\(1));

-- Location: LCCOMB_X113_Y40_N16
\command_translator_inst|uut0|reg[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|reg[4]~12_combout\ = (\command_translator_inst|uut0|Equal0~3_combout\ & ((\command_translator_inst|uut0|state.bit4~q\ & (\Rxd~input_o\)) # (!\command_translator_inst|uut0|state.bit4~q\ & 
-- ((\command_translator_inst|uut0|reg\(4)))))) # (!\command_translator_inst|uut0|Equal0~3_combout\ & (((\command_translator_inst|uut0|reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Equal0~3_combout\,
	datab => \Rxd~input_o\,
	datac => \command_translator_inst|uut0|reg\(4),
	datad => \command_translator_inst|uut0|state.bit4~q\,
	combout => \command_translator_inst|uut0|reg[4]~12_combout\);

-- Location: FF_X113_Y40_N17
\command_translator_inst|uut0|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|reg[4]~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|reg\(4));

-- Location: FF_X110_Y40_N31
\command_translator_inst|uut0|Rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \command_translator_inst|uut0|reg\(4),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \command_translator_inst|uut0|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|Rx_data\(4));

-- Location: LCCOMB_X110_Y40_N20
\command_translator_inst|Selector6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector6~10_combout\ = (!\command_translator_inst|uut0|Rx_data\(5) & (!\command_translator_inst|uut0|Rx_data\(6) & (\command_translator_inst|uut0|Rx_data\(1) & !\command_translator_inst|uut0|Rx_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Rx_data\(5),
	datab => \command_translator_inst|uut0|Rx_data\(6),
	datac => \command_translator_inst|uut0|Rx_data\(1),
	datad => \command_translator_inst|uut0|Rx_data\(4),
	combout => \command_translator_inst|Selector6~10_combout\);

-- Location: LCCOMB_X109_Y40_N12
\command_translator_inst|Selector6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector6~12_combout\ = (\command_translator_inst|Rx_state.tile_pattern~q\ & (\command_translator_inst|Selector6~11_combout\ & \command_translator_inst|Selector6~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|Rx_state.tile_pattern~q\,
	datab => \command_translator_inst|Selector6~11_combout\,
	datad => \command_translator_inst|Selector6~10_combout\,
	combout => \command_translator_inst|Selector6~12_combout\);

-- Location: LCCOMB_X110_Y40_N30
\command_translator_inst|Selector6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector6~6_combout\ = (\command_translator_inst|uut0|Rx_data\(6) & (\command_translator_inst|uut0|Rx_data\(2) & (\command_translator_inst|uut0|Rx_data\(4) & !\command_translator_inst|uut0|Rx_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Rx_data\(6),
	datab => \command_translator_inst|uut0|Rx_data\(2),
	datac => \command_translator_inst|uut0|Rx_data\(4),
	datad => \command_translator_inst|uut0|Rx_data\(5),
	combout => \command_translator_inst|Selector6~6_combout\);

-- Location: LCCOMB_X110_Y40_N8
\command_translator_inst|Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector6~5_combout\ = (!\command_translator_inst|uut0|Rx_data\(6) & (\command_translator_inst|uut0|Rx_data\(1) & (\command_translator_inst|uut0|Rx_data\(5) & !\command_translator_inst|uut0|Rx_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Rx_data\(6),
	datab => \command_translator_inst|uut0|Rx_data\(1),
	datac => \command_translator_inst|uut0|Rx_data\(5),
	datad => \command_translator_inst|uut0|Rx_data\(4),
	combout => \command_translator_inst|Selector6~5_combout\);

-- Location: LCCOMB_X110_Y40_N10
\command_translator_inst|tile_type[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|tile_type[0]~2_combout\ = (\command_translator_inst|uut0|Rx_data\(0) & (((\command_translator_inst|Selector6~5_combout\)))) # (!\command_translator_inst|uut0|Rx_data\(0) & (\command_translator_inst|Selector6~6_combout\ & 
-- (!\command_translator_inst|uut0|Rx_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|Selector6~6_combout\,
	datab => \command_translator_inst|uut0|Rx_data\(0),
	datac => \command_translator_inst|uut0|Rx_data\(1),
	datad => \command_translator_inst|Selector6~5_combout\,
	combout => \command_translator_inst|tile_type[0]~2_combout\);

-- Location: CLKCTRL_G7
\command_translator_inst|uut0|state.idle~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \command_translator_inst|uut0|state.idle~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \command_translator_inst|uut0|state.idle~clkctrl_outclk\);

-- Location: LCCOMB_X110_Y40_N18
\command_translator_inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|process_0~1_combout\ = (!\command_translator_inst|uut0|Rx_data\(7) & (((!\command_translator_inst|uut0|Rx_data\(2) & !\command_translator_inst|uut0|Rx_data\(1))) # (!\command_translator_inst|uut0|Rx_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Rx_data\(3),
	datab => \command_translator_inst|uut0|Rx_data\(2),
	datac => \command_translator_inst|uut0|Rx_data\(1),
	datad => \command_translator_inst|uut0|Rx_data\(7),
	combout => \command_translator_inst|process_0~1_combout\);

-- Location: LCCOMB_X110_Y40_N24
\command_translator_inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|process_0~2_combout\ = (!\command_translator_inst|uut0|Rx_data\(6) & (\command_translator_inst|process_0~1_combout\ & (\command_translator_inst|uut0|Rx_data\(5) & \command_translator_inst|uut0|Rx_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Rx_data\(6),
	datab => \command_translator_inst|process_0~1_combout\,
	datac => \command_translator_inst|uut0|Rx_data\(5),
	datad => \command_translator_inst|uut0|Rx_data\(4),
	combout => \command_translator_inst|process_0~2_combout\);

-- Location: LCCOMB_X109_Y40_N8
\command_translator_inst|Selector6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector6~16_combout\ = (!\command_translator_inst|tile_type[0]~4_combout\ & ((!\command_translator_inst|process_0~2_combout\) # (!\command_translator_inst|Rx_state.axis_x~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \command_translator_inst|Rx_state.axis_x~q\,
	datac => \command_translator_inst|process_0~2_combout\,
	datad => \command_translator_inst|tile_type[0]~4_combout\,
	combout => \command_translator_inst|Selector6~16_combout\);

-- Location: LCCOMB_X110_Y40_N2
\command_translator_inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|process_0~0_combout\ = (\command_translator_inst|uut0|Rx_data\(4) & ((\command_translator_inst|uut0|Rx_data\(2)) # ((\command_translator_inst|uut0|Rx_data\(1) & \command_translator_inst|uut0|Rx_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Rx_data\(2),
	datab => \command_translator_inst|uut0|Rx_data\(1),
	datac => \command_translator_inst|uut0|Rx_data\(0),
	datad => \command_translator_inst|uut0|Rx_data\(4),
	combout => \command_translator_inst|process_0~0_combout\);

-- Location: LCCOMB_X110_Y40_N16
\command_translator_inst|Selector6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector6~7_combout\ = (\command_translator_inst|uut0|Rx_data\(6) & (!\command_translator_inst|uut0|Rx_data\(7) & !\command_translator_inst|uut0|Rx_data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \command_translator_inst|uut0|Rx_data\(6),
	datac => \command_translator_inst|uut0|Rx_data\(7),
	datad => \command_translator_inst|uut0|Rx_data\(5),
	combout => \command_translator_inst|Selector6~7_combout\);

-- Location: LCCOMB_X109_Y40_N2
\command_translator_inst|Selector6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector6~13_combout\ = (\command_translator_inst|Selector6~7_combout\ & ((!\command_translator_inst|uut0|Rx_data\(3)) # (!\command_translator_inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|process_0~0_combout\,
	datab => \command_translator_inst|Selector6~7_combout\,
	datac => \command_translator_inst|uut0|Rx_data\(3),
	combout => \command_translator_inst|Selector6~13_combout\);

-- Location: LCCOMB_X109_Y40_N20
\command_translator_inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector5~0_combout\ = (!\command_translator_inst|Selector6~12_combout\ & ((\command_translator_inst|Selector6~13_combout\) # (\command_translator_inst|Rx_state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|Selector6~13_combout\,
	datab => \command_translator_inst|Selector6~12_combout\,
	datad => \command_translator_inst|Rx_state.idle~q\,
	combout => \command_translator_inst|Selector5~0_combout\);

-- Location: FF_X110_Y40_N23
\command_translator_inst|Rx_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	asdata => \command_translator_inst|Selector5~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|Rx_state.idle~q\);

-- Location: LCCOMB_X110_Y40_N28
\command_translator_inst|Selector6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector6~8_combout\ = (!\command_translator_inst|Rx_state.idle~q\ & (\command_translator_inst|Selector6~7_combout\ & ((!\command_translator_inst|process_0~0_combout\) # (!\command_translator_inst|uut0|Rx_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|Rx_state.idle~q\,
	datab => \command_translator_inst|uut0|Rx_data\(3),
	datac => \command_translator_inst|Selector6~7_combout\,
	datad => \command_translator_inst|process_0~0_combout\,
	combout => \command_translator_inst|Selector6~8_combout\);

-- Location: LCCOMB_X109_Y40_N24
\command_translator_inst|Selector6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector6~14_combout\ = (\command_translator_inst|Selector6~16_combout\ & (!\command_translator_inst|Selector6~12_combout\ & ((\command_translator_inst|Selector6~8_combout\) # (\command_translator_inst|Rx_state.axis_x~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|Selector6~16_combout\,
	datab => \command_translator_inst|Selector6~8_combout\,
	datac => \command_translator_inst|Rx_state.axis_x~q\,
	datad => \command_translator_inst|Selector6~12_combout\,
	combout => \command_translator_inst|Selector6~14_combout\);

-- Location: FF_X109_Y40_N25
\command_translator_inst|Rx_state.axis_x\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	d => \command_translator_inst|Selector6~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|Rx_state.axis_x~q\);

-- Location: LCCOMB_X110_Y40_N22
\command_translator_inst|Selector6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector6~9_combout\ = (\command_translator_inst|process_0~2_combout\ & \command_translator_inst|Rx_state.axis_x~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|process_0~2_combout\,
	datad => \command_translator_inst|Rx_state.axis_x~q\,
	combout => \command_translator_inst|Selector6~9_combout\);

-- Location: LCCOMB_X110_Y40_N6
\command_translator_inst|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector7~0_combout\ = (!\command_translator_inst|Selector6~12_combout\ & ((\command_translator_inst|Selector6~15_combout\ & (\command_translator_inst|Rx_state.axis_y~q\)) # (!\command_translator_inst|Selector6~15_combout\ & 
-- ((\command_translator_inst|Selector6~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|Selector6~12_combout\,
	datab => \command_translator_inst|Selector6~15_combout\,
	datac => \command_translator_inst|Rx_state.axis_y~q\,
	datad => \command_translator_inst|Selector6~9_combout\,
	combout => \command_translator_inst|Selector7~0_combout\);

-- Location: FF_X110_Y40_N7
\command_translator_inst|Rx_state.axis_y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	d => \command_translator_inst|Selector7~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|Rx_state.axis_y~q\);

-- Location: LCCOMB_X110_Y40_N26
\command_translator_inst|tile_type[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|tile_type[0]~4_combout\ = (\command_translator_inst|tile_type[0]~2_combout\ & (!\command_translator_inst|uut0|Rx_data\(7) & (\command_translator_inst|uut0|Rx_data\(3) & \command_translator_inst|Rx_state.axis_y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|tile_type[0]~2_combout\,
	datab => \command_translator_inst|uut0|Rx_data\(7),
	datac => \command_translator_inst|uut0|Rx_data\(3),
	datad => \command_translator_inst|Rx_state.axis_y~q\,
	combout => \command_translator_inst|tile_type[0]~4_combout\);

-- Location: LCCOMB_X109_Y40_N28
\command_translator_inst|Selector6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector6~15_combout\ = (!\command_translator_inst|tile_type[0]~4_combout\ & (!\command_translator_inst|Selector6~8_combout\ & ((!\command_translator_inst|Rx_state.axis_x~q\) # (!\command_translator_inst|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|tile_type[0]~4_combout\,
	datab => \command_translator_inst|Selector6~8_combout\,
	datac => \command_translator_inst|process_0~2_combout\,
	datad => \command_translator_inst|Rx_state.axis_x~q\,
	combout => \command_translator_inst|Selector6~15_combout\);

-- Location: LCCOMB_X109_Y40_N6
\command_translator_inst|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector8~0_combout\ = (!\command_translator_inst|Selector6~12_combout\ & ((\command_translator_inst|Selector6~15_combout\ & (\command_translator_inst|Rx_state.tile_pattern~q\)) # (!\command_translator_inst|Selector6~15_combout\ & 
-- ((\command_translator_inst|tile_type[0]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|Selector6~12_combout\,
	datab => \command_translator_inst|Selector6~15_combout\,
	datac => \command_translator_inst|Rx_state.tile_pattern~q\,
	datad => \command_translator_inst|tile_type[0]~4_combout\,
	combout => \command_translator_inst|Selector8~0_combout\);

-- Location: FF_X109_Y40_N7
\command_translator_inst|Rx_state.tile_pattern\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~q\,
	d => \command_translator_inst|Selector8~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|Rx_state.tile_pattern~q\);

-- Location: LCCOMB_X110_Y40_N0
\command_translator_inst|Translation_busy~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Translation_busy~0_combout\ = LCELL((\command_translator_inst|Rx_state.tile_pattern~q\) # (!\command_translator_inst|Rx_state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \command_translator_inst|Rx_state.tile_pattern~q\,
	datad => \command_translator_inst|Rx_state.idle~q\,
	combout => \command_translator_inst|Translation_busy~0_combout\);

-- Location: CLKCTRL_G5
\command_translator_inst|Translation_busy~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \command_translator_inst|Translation_busy~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \command_translator_inst|Translation_busy~0clkctrl_outclk\);

-- Location: LCCOMB_X108_Y41_N26
\command_translator_inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector2~0_combout\ = \command_translator_inst|uut0|Rx_data\(2) $ (((\command_translator_inst|Rx_state.axis_x~q\ & \command_translator_inst|uut0|Rx_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \command_translator_inst|Rx_state.axis_x~q\,
	datac => \command_translator_inst|uut0|Rx_data\(2),
	datad => \command_translator_inst|uut0|Rx_data\(1),
	combout => \command_translator_inst|Selector2~0_combout\);

-- Location: LCCOMB_X108_Y41_N22
\command_translator_inst|x_temp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|x_temp[2]~feeder_combout\ = \command_translator_inst|Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|Selector2~0_combout\,
	combout => \command_translator_inst|x_temp[2]~feeder_combout\);

-- Location: LCCOMB_X108_Y41_N20
\command_translator_inst|x_temp[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|x_temp[4]~2_combout\ = (\command_translator_inst|Selector6~8_combout\) # ((\command_translator_inst|Rx_state.axis_x~q\ & !\command_translator_inst|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|Selector6~8_combout\,
	datab => \command_translator_inst|Rx_state.axis_x~q\,
	datad => \command_translator_inst|process_0~2_combout\,
	combout => \command_translator_inst|x_temp[4]~2_combout\);

-- Location: FF_X108_Y41_N23
\command_translator_inst|x_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	d => \command_translator_inst|x_temp[2]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \command_translator_inst|x_temp[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|x_temp\(2));

-- Location: LCCOMB_X110_Y41_N26
\command_translator_inst|x[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|x[2]~feeder_combout\ = \command_translator_inst|x_temp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \command_translator_inst|x_temp\(2),
	combout => \command_translator_inst|x[2]~feeder_combout\);

-- Location: LCCOMB_X109_Y41_N16
\command_translator_inst|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector6~4_combout\ = (\command_translator_inst|uut0|Rx_data\(3) & !\command_translator_inst|uut0|Rx_data\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \command_translator_inst|uut0|Rx_data\(3),
	datad => \command_translator_inst|uut0|Rx_data\(7),
	combout => \command_translator_inst|Selector6~4_combout\);

-- Location: LCCOMB_X109_Y41_N24
\command_translator_inst|tile_type[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|tile_type[0]~3_combout\ = (\reset~input_o\ & (\command_translator_inst|Rx_state.axis_y~q\ & (\command_translator_inst|Selector6~4_combout\ & \command_translator_inst|tile_type[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \command_translator_inst|Rx_state.axis_y~q\,
	datac => \command_translator_inst|Selector6~4_combout\,
	datad => \command_translator_inst|tile_type[0]~2_combout\,
	combout => \command_translator_inst|tile_type[0]~3_combout\);

-- Location: FF_X110_Y41_N27
\command_translator_inst|x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	d => \command_translator_inst|x[2]~feeder_combout\,
	ena => \command_translator_inst|tile_type[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|x\(2));

-- Location: FF_X111_Y41_N1
\x_send[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|Translation_busy~0clkctrl_outclk\,
	asdata => \command_translator_inst|x\(2),
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_send(2));

-- Location: LCCOMB_X111_Y41_N16
\move_translator_inst|x_last[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[2]~9_combout\ = (\reset~input_o\ & (\move_translator_inst|x_last[2]~9_combout\)) # (!\reset~input_o\ & ((x_send(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[2]~9_combout\,
	datab => \reset~input_o\,
	datad => x_send(2),
	combout => \move_translator_inst|x_last[2]~9_combout\);

-- Location: LCCOMB_X108_Y41_N24
\command_translator_inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector3~0_combout\ = \command_translator_inst|Rx_state.axis_x~q\ $ (\command_translator_inst|uut0|Rx_data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \command_translator_inst|Rx_state.axis_x~q\,
	datad => \command_translator_inst|uut0|Rx_data\(1),
	combout => \command_translator_inst|Selector3~0_combout\);

-- Location: FF_X108_Y41_N21
\command_translator_inst|x_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	asdata => \command_translator_inst|Selector3~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \command_translator_inst|x_temp[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|x_temp\(1));

-- Location: LCCOMB_X110_Y41_N6
\command_translator_inst|x[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|x[1]~feeder_combout\ = \command_translator_inst|x_temp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \command_translator_inst|x_temp\(1),
	combout => \command_translator_inst|x[1]~feeder_combout\);

-- Location: FF_X110_Y41_N7
\command_translator_inst|x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	d => \command_translator_inst|x[1]~feeder_combout\,
	ena => \command_translator_inst|tile_type[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|x\(1));

-- Location: FF_X111_Y41_N11
\x_send[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|Translation_busy~0clkctrl_outclk\,
	asdata => \command_translator_inst|x\(1),
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_send(1));

-- Location: LCCOMB_X111_Y41_N30
\move_translator_inst|x_last[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[1]~5_combout\ = (\reset~input_o\ & (\move_translator_inst|x_last[1]~5_combout\)) # (!\reset~input_o\ & ((x_send(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[1]~5_combout\,
	datac => \reset~input_o\,
	datad => x_send(1),
	combout => \move_translator_inst|x_last[1]~5_combout\);

-- Location: LCCOMB_X112_Y43_N2
\move_translator_inst|x_temp[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_temp[1]~7_combout\ = \move_translator_inst|x_last[1]~5_combout\ $ (((\move_translator_inst|Tx_state.axis_x~q\ & ((!\move_translator_inst|x_temp[1]~6_combout\))) # (!\move_translator_inst|Tx_state.axis_x~q\ & (x_send(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_send(1),
	datab => \move_translator_inst|Tx_state.axis_x~q\,
	datac => \move_translator_inst|x_last[1]~5_combout\,
	datad => \move_translator_inst|x_temp[1]~6_combout\,
	combout => \move_translator_inst|x_temp[1]~7_combout\);

-- Location: LCCOMB_X108_Y41_N16
\command_translator_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector1~0_combout\ = \command_translator_inst|uut0|Rx_data\(3) $ (((\command_translator_inst|Rx_state.axis_x~q\ & ((!\command_translator_inst|uut0|Rx_data\(1)) # (!\command_translator_inst|uut0|Rx_data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Rx_data\(2),
	datab => \command_translator_inst|uut0|Rx_data\(3),
	datac => \command_translator_inst|Rx_state.axis_x~q\,
	datad => \command_translator_inst|uut0|Rx_data\(1),
	combout => \command_translator_inst|Selector1~0_combout\);

-- Location: LCCOMB_X108_Y41_N28
\command_translator_inst|x_temp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|x_temp[3]~feeder_combout\ = \command_translator_inst|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|Selector1~0_combout\,
	combout => \command_translator_inst|x_temp[3]~feeder_combout\);

-- Location: FF_X108_Y41_N29
\command_translator_inst|x_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	d => \command_translator_inst|x_temp[3]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \command_translator_inst|x_temp[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|x_temp\(3));

-- Location: LCCOMB_X110_Y41_N4
\command_translator_inst|x[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|x[3]~feeder_combout\ = \command_translator_inst|x_temp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \command_translator_inst|x_temp\(3),
	combout => \command_translator_inst|x[3]~feeder_combout\);

-- Location: FF_X110_Y41_N5
\command_translator_inst|x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	d => \command_translator_inst|x[3]~feeder_combout\,
	ena => \command_translator_inst|tile_type[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|x\(3));

-- Location: FF_X111_Y41_N3
\x_send[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|Translation_busy~0clkctrl_outclk\,
	asdata => \command_translator_inst|x\(3),
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_send(3));

-- Location: LCCOMB_X111_Y41_N28
\move_translator_inst|x_last[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[3]~13_combout\ = (\reset~input_o\ & (\move_translator_inst|x_last[3]~13_combout\)) # (!\reset~input_o\ & ((x_send(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[3]~13_combout\,
	datab => \reset~input_o\,
	datad => x_send(3),
	combout => \move_translator_inst|x_last[3]~13_combout\);

-- Location: LCCOMB_X112_Y43_N10
\move_translator_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector1~0_combout\ = (\move_translator_inst|Tx_state.axis_x~q\ & (\move_translator_inst|x_temp[3]~2_combout\ $ (((\move_translator_inst|x_temp[1]~6_combout\) # (\move_translator_inst|x_temp[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_x~q\,
	datab => \move_translator_inst|x_temp[1]~6_combout\,
	datac => \move_translator_inst|x_temp[3]~2_combout\,
	datad => \move_translator_inst|x_temp[2]~4_combout\,
	combout => \move_translator_inst|Selector1~0_combout\);

-- Location: LCCOMB_X112_Y43_N0
\move_translator_inst|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector1~1_combout\ = (\move_translator_inst|Selector1~0_combout\) # ((!\move_translator_inst|Tx_state.axis_x~q\ & x_send(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_x~q\,
	datac => x_send(3),
	datad => \move_translator_inst|Selector1~0_combout\,
	combout => \move_translator_inst|Selector1~1_combout\);

-- Location: LCCOMB_X112_Y43_N30
\move_translator_inst|x_temp[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_temp[3]~3_combout\ = \move_translator_inst|x_last[3]~13_combout\ $ (((\move_translator_inst|x_temp[4]~12_combout\ & ((\move_translator_inst|Selector1~1_combout\))) # (!\move_translator_inst|x_temp[4]~12_combout\ & 
-- (\move_translator_inst|x_temp[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[3]~13_combout\,
	datab => \move_translator_inst|x_temp[3]~2_combout\,
	datac => \move_translator_inst|Selector1~1_combout\,
	datad => \move_translator_inst|x_temp[4]~12_combout\,
	combout => \move_translator_inst|x_temp[3]~3_combout\);

-- Location: FF_X112_Y43_N31
\move_translator_inst|x_temp[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|x_temp[3]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|x_temp[3]~_emulated_q\);

-- Location: LCCOMB_X111_Y41_N18
\move_translator_inst|x_temp[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_temp[3]~2_combout\ = (\reset~input_o\ & (\move_translator_inst|x_temp[3]~_emulated_q\ $ ((\move_translator_inst|x_last[3]~13_combout\)))) # (!\reset~input_o\ & (((x_send(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_temp[3]~_emulated_q\,
	datab => \move_translator_inst|x_last[3]~13_combout\,
	datac => \reset~input_o\,
	datad => x_send(3),
	combout => \move_translator_inst|x_temp[3]~2_combout\);

-- Location: LCCOMB_X112_Y43_N14
\move_translator_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|LessThan0~1_combout\ = (\move_translator_inst|x_temp[3]~2_combout\ & \move_translator_inst|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \move_translator_inst|x_temp[3]~2_combout\,
	datad => \move_translator_inst|LessThan0~0_combout\,
	combout => \move_translator_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X109_Y41_N30
\command_translator_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Add0~0_combout\ = (\command_translator_inst|uut0|Rx_data\(3)) # ((\command_translator_inst|uut0|Rx_data\(1) & \command_translator_inst|uut0|Rx_data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \command_translator_inst|uut0|Rx_data\(3),
	datac => \command_translator_inst|uut0|Rx_data\(1),
	datad => \command_translator_inst|uut0|Rx_data\(2),
	combout => \command_translator_inst|Add0~0_combout\);

-- Location: LCCOMB_X109_Y41_N20
\command_translator_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector0~0_combout\ = \command_translator_inst|uut0|Rx_data\(4) $ (((!\command_translator_inst|Add0~0_combout\ & \command_translator_inst|Rx_state.axis_x~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Rx_data\(4),
	datac => \command_translator_inst|Add0~0_combout\,
	datad => \command_translator_inst|Rx_state.axis_x~q\,
	combout => \command_translator_inst|Selector0~0_combout\);

-- Location: LCCOMB_X108_Y41_N10
\command_translator_inst|x_temp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|x_temp[4]~feeder_combout\ = \command_translator_inst|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|Selector0~0_combout\,
	combout => \command_translator_inst|x_temp[4]~feeder_combout\);

-- Location: FF_X108_Y41_N11
\command_translator_inst|x_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	d => \command_translator_inst|x_temp[4]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \command_translator_inst|x_temp[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|x_temp\(4));

-- Location: LCCOMB_X110_Y41_N16
\command_translator_inst|x[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|x[4]~feeder_combout\ = \command_translator_inst|x_temp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \command_translator_inst|x_temp\(4),
	combout => \command_translator_inst|x[4]~feeder_combout\);

-- Location: FF_X110_Y41_N17
\command_translator_inst|x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	d => \command_translator_inst|x[4]~feeder_combout\,
	ena => \command_translator_inst|tile_type[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|x\(4));

-- Location: FF_X111_Y41_N17
\x_send[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|Translation_busy~0clkctrl_outclk\,
	asdata => \command_translator_inst|x\(4),
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_send(4));

-- Location: LCCOMB_X111_Y41_N0
\move_translator_inst|x_last[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[4]~17_combout\ = (\reset~input_o\ & (\move_translator_inst|x_last[4]~17_combout\)) # (!\reset~input_o\ & ((x_send(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[4]~17_combout\,
	datab => \reset~input_o\,
	datad => x_send(4),
	combout => \move_translator_inst|x_last[4]~17_combout\);

-- Location: LCCOMB_X111_Y41_N2
\move_translator_inst|x_last[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[4]~19_combout\ = x_send(4) $ (\move_translator_inst|x_last[4]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_send(4),
	datad => \move_translator_inst|x_last[4]~17_combout\,
	combout => \move_translator_inst|x_last[4]~19_combout\);

-- Location: LCCOMB_X114_Y41_N8
\move_translator_inst|x_last[4]~_emulatedfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[4]~_emulatedfeeder_combout\ = \move_translator_inst|x_last[4]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move_translator_inst|x_last[4]~19_combout\,
	combout => \move_translator_inst|x_last[4]~_emulatedfeeder_combout\);

-- Location: LCCOMB_X109_Y40_N30
\command_translator_inst|y_temp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|y_temp[0]~0_combout\ = (\command_translator_inst|process_0~2_combout\ & ((\command_translator_inst|uut0|Rx_data\(0)))) # (!\command_translator_inst|process_0~2_combout\ & (\command_translator_inst|y_temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \command_translator_inst|y_temp\(0),
	datac => \command_translator_inst|process_0~2_combout\,
	datad => \command_translator_inst|uut0|Rx_data\(0),
	combout => \command_translator_inst|y_temp[0]~0_combout\);

-- Location: LCCOMB_X108_Y40_N30
\command_translator_inst|y_temp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|y_temp[0]~feeder_combout\ = \command_translator_inst|y_temp[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \command_translator_inst|y_temp[0]~0_combout\,
	combout => \command_translator_inst|y_temp[0]~feeder_combout\);

-- Location: LCCOMB_X110_Y40_N14
\command_translator_inst|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Mux21~2_combout\ = (\command_translator_inst|tile_type[0]~2_combout\ & (!\command_translator_inst|uut0|Rx_data\(7) & \command_translator_inst|uut0|Rx_data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|tile_type[0]~2_combout\,
	datab => \command_translator_inst|uut0|Rx_data\(7),
	datad => \command_translator_inst|uut0|Rx_data\(3),
	combout => \command_translator_inst|Mux21~2_combout\);

-- Location: LCCOMB_X110_Y40_N12
\command_translator_inst|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector12~2_combout\ = (!\command_translator_inst|Translation_busy~0_combout\ & ((\command_translator_inst|Rx_state.axis_x~q\ & ((\command_translator_inst|process_0~2_combout\))) # (!\command_translator_inst|Rx_state.axis_x~q\ & 
-- (!\command_translator_inst|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|Mux21~2_combout\,
	datab => \command_translator_inst|Rx_state.axis_x~q\,
	datac => \command_translator_inst|Translation_busy~0_combout\,
	datad => \command_translator_inst|process_0~2_combout\,
	combout => \command_translator_inst|Selector12~2_combout\);

-- Location: LCCOMB_X109_Y40_N26
\command_translator_inst|y_temp[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|y_temp[1]~9_combout\ = (\command_translator_inst|Selector12~2_combout\ & ((\command_translator_inst|y_temp\(0) & ((!\command_translator_inst|Rx_state.axis_x~q\))) # (!\command_translator_inst|y_temp\(0) & 
-- ((\command_translator_inst|y_temp\(1)) # (\command_translator_inst|Rx_state.axis_x~q\))))) # (!\command_translator_inst|Selector12~2_combout\ & (((\command_translator_inst|y_temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|Selector12~2_combout\,
	datab => \command_translator_inst|y_temp\(0),
	datac => \command_translator_inst|y_temp\(1),
	datad => \command_translator_inst|Rx_state.axis_x~q\,
	combout => \command_translator_inst|y_temp[1]~9_combout\);

-- Location: LCCOMB_X109_Y40_N4
\command_translator_inst|y_temp[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|y_temp[1]~10_combout\ = (\command_translator_inst|Selector12~2_combout\ & ((\command_translator_inst|y_temp\(0) & (\command_translator_inst|y_temp[1]~9_combout\ $ (\command_translator_inst|uut0|Rx_data\(1)))) # 
-- (!\command_translator_inst|y_temp\(0) & (\command_translator_inst|y_temp[1]~9_combout\ & \command_translator_inst|uut0|Rx_data\(1))))) # (!\command_translator_inst|Selector12~2_combout\ & (((\command_translator_inst|y_temp[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|Selector12~2_combout\,
	datab => \command_translator_inst|y_temp\(0),
	datac => \command_translator_inst|y_temp[1]~9_combout\,
	datad => \command_translator_inst|uut0|Rx_data\(1),
	combout => \command_translator_inst|y_temp[1]~10_combout\);

-- Location: FF_X109_Y40_N5
\command_translator_inst|y_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	d => \command_translator_inst|y_temp[1]~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|y_temp\(1));

-- Location: LCCOMB_X109_Y40_N10
\command_translator_inst|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Mux25~1_combout\ = (\command_translator_inst|y_temp\(0)) # ((\command_translator_inst|y_temp\(1) & ((!\command_translator_inst|Selector6~4_combout\) # (!\command_translator_inst|Selector6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|Selector6~5_combout\,
	datab => \command_translator_inst|Selector6~4_combout\,
	datac => \command_translator_inst|y_temp\(1),
	datad => \command_translator_inst|y_temp\(0),
	combout => \command_translator_inst|Mux25~1_combout\);

-- Location: LCCOMB_X109_Y40_N22
\command_translator_inst|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Mux25~0_combout\ = (\command_translator_inst|Selector6~6_combout\ & (\command_translator_inst|Selector6~4_combout\ & (!\command_translator_inst|uut0|Rx_data\(1) & \command_translator_inst|y_temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|Selector6~6_combout\,
	datab => \command_translator_inst|Selector6~4_combout\,
	datac => \command_translator_inst|uut0|Rx_data\(1),
	datad => \command_translator_inst|y_temp\(0),
	combout => \command_translator_inst|Mux25~0_combout\);

-- Location: LCCOMB_X109_Y40_N14
\command_translator_inst|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Mux25~2_combout\ = (\command_translator_inst|Mux25~0_combout\) # ((\command_translator_inst|Mux25~1_combout\ & \command_translator_inst|uut0|Rx_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|Mux25~1_combout\,
	datab => \command_translator_inst|Mux25~0_combout\,
	datad => \command_translator_inst|uut0|Rx_data\(0),
	combout => \command_translator_inst|Mux25~2_combout\);

-- Location: FF_X108_Y40_N31
\command_translator_inst|y_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	d => \command_translator_inst|y_temp[0]~feeder_combout\,
	asdata => \command_translator_inst|Mux25~2_combout\,
	clrn => \reset~input_o\,
	sload => \command_translator_inst|ALT_INV_Rx_state.axis_x~q\,
	ena => \command_translator_inst|ALT_INV_Translation_busy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|y_temp\(0));

-- Location: LCCOMB_X109_Y39_N8
\command_translator_inst|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Mux0~1_combout\ = (\command_translator_inst|y_temp\(0) & (\command_translator_inst|Add0~0_combout\)) # (!\command_translator_inst|y_temp\(0) & ((\command_translator_inst|y_temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|y_temp\(0),
	datac => \command_translator_inst|Add0~0_combout\,
	datad => \command_translator_inst|y_temp\(4),
	combout => \command_translator_inst|Mux0~1_combout\);

-- Location: LCCOMB_X109_Y39_N14
\command_translator_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Mux0~0_combout\ = (\command_translator_inst|uut0|Rx_data\(3) & ((\command_translator_inst|uut0|Rx_data\(2)) # ((\command_translator_inst|y_temp\(0))))) # (!\command_translator_inst|uut0|Rx_data\(3) & 
-- (\command_translator_inst|y_temp\(0) & ((\command_translator_inst|uut0|Rx_data\(2)) # (\command_translator_inst|uut0|Rx_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Rx_data\(3),
	datab => \command_translator_inst|uut0|Rx_data\(2),
	datac => \command_translator_inst|uut0|Rx_data\(1),
	datad => \command_translator_inst|y_temp\(0),
	combout => \command_translator_inst|Mux0~0_combout\);

-- Location: LCCOMB_X109_Y39_N26
\command_translator_inst|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Mux0~2_combout\ = (\command_translator_inst|y_temp\(1) & ((!\command_translator_inst|Mux0~0_combout\))) # (!\command_translator_inst|y_temp\(1) & (\command_translator_inst|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|Mux0~1_combout\,
	datab => \command_translator_inst|Mux0~0_combout\,
	datac => \command_translator_inst|y_temp\(1),
	combout => \command_translator_inst|Mux0~2_combout\);

-- Location: LCCOMB_X109_Y39_N24
\command_translator_inst|y_temp[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|y_temp[4]~1_combout\ = (\command_translator_inst|Mux21~2_combout\ & ((\command_translator_inst|y_temp\(4)))) # (!\command_translator_inst|Mux21~2_combout\ & (\command_translator_inst|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|Mux0~2_combout\,
	datab => \command_translator_inst|Mux21~2_combout\,
	datac => \command_translator_inst|y_temp\(4),
	combout => \command_translator_inst|y_temp[4]~1_combout\);

-- Location: LCCOMB_X109_Y39_N28
\command_translator_inst|y_temp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|y_temp~7_combout\ = (!\command_translator_inst|process_0~2_combout\ & \command_translator_inst|y_temp\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \command_translator_inst|process_0~2_combout\,
	datad => \command_translator_inst|y_temp\(4),
	combout => \command_translator_inst|y_temp~7_combout\);

-- Location: FF_X109_Y39_N25
\command_translator_inst|y_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	d => \command_translator_inst|y_temp[4]~1_combout\,
	asdata => \command_translator_inst|y_temp~7_combout\,
	clrn => \reset~input_o\,
	sload => \command_translator_inst|Rx_state.axis_x~q\,
	ena => \command_translator_inst|ALT_INV_Translation_busy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|y_temp\(4));

-- Location: LCCOMB_X109_Y41_N6
\command_translator_inst|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|y[4]~feeder_combout\ = \command_translator_inst|y_temp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \command_translator_inst|y_temp\(4),
	combout => \command_translator_inst|y[4]~feeder_combout\);

-- Location: FF_X109_Y41_N7
\command_translator_inst|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	d => \command_translator_inst|y[4]~feeder_combout\,
	ena => \command_translator_inst|tile_type[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|y\(4));

-- Location: FF_X112_Y41_N1
\y_send[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|Translation_busy~0clkctrl_outclk\,
	asdata => \command_translator_inst|y\(4),
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_send(4));

-- Location: LCCOMB_X111_Y42_N26
\move_translator_inst|y_temp[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_temp[4]~1_combout\ = (\reset~input_o\ & (\move_translator_inst|y_temp[4]~1_combout\)) # (!\reset~input_o\ & ((y_send(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp[4]~1_combout\,
	datac => \reset~input_o\,
	datad => y_send(4),
	combout => \move_translator_inst|y_temp[4]~1_combout\);

-- Location: LCCOMB_X114_Y41_N12
\move_translator_inst|y_last[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_last[4]~13_combout\ = \move_translator_inst|y_temp[4]~1_combout\ $ (y_send(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \move_translator_inst|y_temp[4]~1_combout\,
	datad => y_send(4),
	combout => \move_translator_inst|y_last[4]~13_combout\);

-- Location: FF_X114_Y41_N13
\move_translator_inst|y_last[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|y_last[4]~13_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|x_last[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|y_last[4]~_emulated_q\);

-- Location: LCCOMB_X112_Y41_N0
\move_translator_inst|y_last[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_last[4]~12_combout\ = (\reset~input_o\ & (\move_translator_inst|y_last[4]~_emulated_q\ $ (((\move_translator_inst|y_temp[4]~1_combout\))))) # (!\reset~input_o\ & (((y_send(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \move_translator_inst|y_last[4]~_emulated_q\,
	datac => y_send(4),
	datad => \move_translator_inst|y_temp[4]~1_combout\,
	combout => \move_translator_inst|y_last[4]~12_combout\);

-- Location: LCCOMB_X109_Y41_N0
\command_translator_inst|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|y[1]~feeder_combout\ = \command_translator_inst|y_temp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \command_translator_inst|y_temp\(1),
	combout => \command_translator_inst|y[1]~feeder_combout\);

-- Location: FF_X109_Y41_N1
\command_translator_inst|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	d => \command_translator_inst|y[1]~feeder_combout\,
	ena => \command_translator_inst|tile_type[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|y\(1));

-- Location: FF_X112_Y42_N27
\y_send[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|Translation_busy~0clkctrl_outclk\,
	asdata => \command_translator_inst|y\(1),
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_send(1));

-- Location: LCCOMB_X109_Y41_N10
\command_translator_inst|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|y[0]~feeder_combout\ = \command_translator_inst|y_temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \command_translator_inst|y_temp\(0),
	combout => \command_translator_inst|y[0]~feeder_combout\);

-- Location: FF_X109_Y41_N11
\command_translator_inst|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	d => \command_translator_inst|y[0]~feeder_combout\,
	ena => \command_translator_inst|tile_type[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|y\(0));

-- Location: LCCOMB_X108_Y41_N12
\y_send[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_send[0]~feeder_combout\ = \command_translator_inst|y\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \command_translator_inst|y\(0),
	combout => \y_send[0]~feeder_combout\);

-- Location: FF_X108_Y41_N13
\y_send[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|Translation_busy~0clkctrl_outclk\,
	d => \y_send[0]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_send(0));

-- Location: LCCOMB_X112_Y42_N6
\move_translator_inst|y_last[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_last[1]~5_combout\ = (\reset~input_o\ & (\move_translator_inst|y_last[1]~5_combout\)) # (!\reset~input_o\ & ((y_send(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_last[1]~5_combout\,
	datac => y_send(1),
	datad => \reset~input_o\,
	combout => \move_translator_inst|y_last[1]~5_combout\);

-- Location: LCCOMB_X112_Y42_N22
\move_translator_inst|y_last[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_last[1]~7_combout\ = y_send(1) $ (\move_translator_inst|y_last[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_send(1),
	datad => \move_translator_inst|y_last[1]~5_combout\,
	combout => \move_translator_inst|y_last[1]~7_combout\);

-- Location: LCCOMB_X114_Y41_N22
\move_translator_inst|y_last[1]~_emulatedfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_last[1]~_emulatedfeeder_combout\ = \move_translator_inst|y_last[1]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move_translator_inst|y_last[1]~7_combout\,
	combout => \move_translator_inst|y_last[1]~_emulatedfeeder_combout\);

-- Location: FF_X114_Y41_N23
\move_translator_inst|y_last[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|y_last[1]~_emulatedfeeder_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|x_last[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|y_last[1]~_emulated_q\);

-- Location: LCCOMB_X112_Y42_N24
\move_translator_inst|y_last[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_last[1]~6_combout\ = (\reset~input_o\ & (\move_translator_inst|y_last[1]~5_combout\ $ ((\move_translator_inst|y_last[1]~_emulated_q\)))) # (!\reset~input_o\ & (((y_send(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_last[1]~5_combout\,
	datab => \move_translator_inst|y_last[1]~_emulated_q\,
	datac => y_send(1),
	datad => \reset~input_o\,
	combout => \move_translator_inst|y_last[1]~6_combout\);

-- Location: LCCOMB_X108_Y41_N30
\move_translator_inst|y_last[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_last[0]~1_combout\ = (\reset~input_o\ & (\move_translator_inst|y_last[0]~1_combout\)) # (!\reset~input_o\ & ((y_send(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_last[0]~1_combout\,
	datac => \reset~input_o\,
	datad => y_send(0),
	combout => \move_translator_inst|y_last[0]~1_combout\);

-- Location: LCCOMB_X111_Y41_N8
\move_translator_inst|y_last[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_last[0]~3_combout\ = y_send(0) $ (\move_translator_inst|y_last[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_send(0),
	datad => \move_translator_inst|y_last[0]~1_combout\,
	combout => \move_translator_inst|y_last[0]~3_combout\);

-- Location: FF_X111_Y41_N9
\move_translator_inst|y_last[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|y_last[0]~3_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|x_last[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|y_last[0]~_emulated_q\);

-- Location: LCCOMB_X108_Y41_N6
\move_translator_inst|y_last[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_last[0]~2_combout\ = (\reset~input_o\ & ((\move_translator_inst|y_last[0]~_emulated_q\ $ (\move_translator_inst|y_last[0]~1_combout\)))) # (!\reset~input_o\ & (y_send(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_send(0),
	datab => \move_translator_inst|y_last[0]~_emulated_q\,
	datac => \move_translator_inst|y_last[0]~1_combout\,
	datad => \reset~input_o\,
	combout => \move_translator_inst|y_last[0]~2_combout\);

-- Location: LCCOMB_X112_Y41_N22
\move_translator_inst|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|process_0~5_combout\ = (y_send(1) & ((y_send(0) $ (\move_translator_inst|y_last[0]~2_combout\)) # (!\move_translator_inst|y_last[1]~6_combout\))) # (!y_send(1) & ((\move_translator_inst|y_last[1]~6_combout\) # (y_send(0) $ 
-- (\move_translator_inst|y_last[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_send(1),
	datab => y_send(0),
	datac => \move_translator_inst|y_last[1]~6_combout\,
	datad => \move_translator_inst|y_last[0]~2_combout\,
	combout => \move_translator_inst|process_0~5_combout\);

-- Location: LCCOMB_X109_Y41_N8
\command_translator_inst|y_temp[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|y_temp[3]~5_combout\ = (\command_translator_inst|y_temp\(1) & \command_translator_inst|Rx_state.axis_y~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \command_translator_inst|y_temp\(1),
	datad => \command_translator_inst|Rx_state.axis_y~q\,
	combout => \command_translator_inst|y_temp[3]~5_combout\);

-- Location: LCCOMB_X109_Y41_N2
\command_translator_inst|y_temp[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|y_temp[3]~4_combout\ = (\command_translator_inst|Rx_state.axis_y~q\ & ((\command_translator_inst|y_temp\(0)) # (!\command_translator_inst|y_temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \command_translator_inst|Rx_state.axis_y~q\,
	datac => \command_translator_inst|y_temp\(1),
	datad => \command_translator_inst|y_temp\(0),
	combout => \command_translator_inst|y_temp[3]~4_combout\);

-- Location: LCCOMB_X109_Y41_N18
\command_translator_inst|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector11~0_combout\ = \command_translator_inst|uut0|Rx_data\(2) $ (\command_translator_inst|y_temp[3]~5_combout\ $ (((\command_translator_inst|uut0|Rx_data\(1) & \command_translator_inst|y_temp[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Rx_data\(2),
	datab => \command_translator_inst|y_temp[3]~5_combout\,
	datac => \command_translator_inst|uut0|Rx_data\(1),
	datad => \command_translator_inst|y_temp[3]~4_combout\,
	combout => \command_translator_inst|Selector11~0_combout\);

-- Location: LCCOMB_X109_Y40_N0
\command_translator_inst|y_temp[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|y_temp[3]~6_combout\ = ((!\command_translator_inst|y_temp\(1) & !\command_translator_inst|y_temp\(0))) # (!\command_translator_inst|Rx_state.axis_y~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \command_translator_inst|y_temp\(1),
	datac => \command_translator_inst|Rx_state.axis_y~q\,
	datad => \command_translator_inst|y_temp\(0),
	combout => \command_translator_inst|y_temp[3]~6_combout\);

-- Location: LCCOMB_X109_Y41_N4
\command_translator_inst|y_temp[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|y_temp[3]~8_combout\ = (\command_translator_inst|Rx_state.axis_x~q\ & ((\command_translator_inst|process_0~2_combout\) # ((!\command_translator_inst|Mux21~2_combout\ & !\command_translator_inst|y_temp[3]~6_combout\)))) # 
-- (!\command_translator_inst|Rx_state.axis_x~q\ & (((!\command_translator_inst|Mux21~2_combout\ & !\command_translator_inst|y_temp[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|Rx_state.axis_x~q\,
	datab => \command_translator_inst|process_0~2_combout\,
	datac => \command_translator_inst|Mux21~2_combout\,
	datad => \command_translator_inst|y_temp[3]~6_combout\,
	combout => \command_translator_inst|y_temp[3]~8_combout\);

-- Location: FF_X109_Y41_N19
\command_translator_inst|y_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	d => \command_translator_inst|Selector11~0_combout\,
	clrn => \reset~input_o\,
	ena => \command_translator_inst|y_temp[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|y_temp\(2));

-- Location: LCCOMB_X109_Y41_N14
\command_translator_inst|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|y[2]~feeder_combout\ = \command_translator_inst|y_temp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \command_translator_inst|y_temp\(2),
	combout => \command_translator_inst|y[2]~feeder_combout\);

-- Location: FF_X109_Y41_N15
\command_translator_inst|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	d => \command_translator_inst|y[2]~feeder_combout\,
	ena => \command_translator_inst|tile_type[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|y\(2));

-- Location: LCCOMB_X113_Y42_N12
\y_send[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_send[2]~feeder_combout\ = \command_translator_inst|y\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \command_translator_inst|y\(2),
	combout => \y_send[2]~feeder_combout\);

-- Location: FF_X113_Y42_N13
\y_send[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|Translation_busy~0clkctrl_outclk\,
	d => \y_send[2]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_send(2));

-- Location: LCCOMB_X109_Y41_N22
\command_translator_inst|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector10~0_combout\ = (\command_translator_inst|uut0|Rx_data\(2) & ((\command_translator_inst|y_temp[3]~5_combout\ & ((!\command_translator_inst|y_temp[3]~4_combout\))) # (!\command_translator_inst|y_temp[3]~5_combout\ & 
-- (!\command_translator_inst|uut0|Rx_data\(1) & \command_translator_inst|y_temp[3]~4_combout\)))) # (!\command_translator_inst|uut0|Rx_data\(2) & (\command_translator_inst|y_temp[3]~4_combout\ & ((!\command_translator_inst|y_temp[3]~5_combout\) # 
-- (!\command_translator_inst|uut0|Rx_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Rx_data\(2),
	datab => \command_translator_inst|uut0|Rx_data\(1),
	datac => \command_translator_inst|y_temp[3]~5_combout\,
	datad => \command_translator_inst|y_temp[3]~4_combout\,
	combout => \command_translator_inst|Selector10~0_combout\);

-- Location: LCCOMB_X109_Y41_N28
\command_translator_inst|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Selector10~1_combout\ = \command_translator_inst|Selector10~0_combout\ $ (\command_translator_inst|uut0|Rx_data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|Selector10~0_combout\,
	datad => \command_translator_inst|uut0|Rx_data\(3),
	combout => \command_translator_inst|Selector10~1_combout\);

-- Location: FF_X109_Y41_N29
\command_translator_inst|y_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	d => \command_translator_inst|Selector10~1_combout\,
	clrn => \reset~input_o\,
	ena => \command_translator_inst|y_temp[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|y_temp\(3));

-- Location: LCCOMB_X109_Y41_N12
\command_translator_inst|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|y[3]~feeder_combout\ = \command_translator_inst|y_temp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \command_translator_inst|y_temp\(3),
	combout => \command_translator_inst|y[3]~feeder_combout\);

-- Location: FF_X109_Y41_N13
\command_translator_inst|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	d => \command_translator_inst|y[3]~feeder_combout\,
	ena => \command_translator_inst|tile_type[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|y\(3));

-- Location: LCCOMB_X113_Y42_N18
\y_send[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_send[3]~feeder_combout\ = \command_translator_inst|y\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \command_translator_inst|y\(3),
	combout => \y_send[3]~feeder_combout\);

-- Location: FF_X113_Y42_N19
\y_send[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|Translation_busy~0clkctrl_outclk\,
	d => \y_send[3]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_send(3));

-- Location: LCCOMB_X113_Y42_N16
\move_translator_inst|y_temp[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_temp[3]~5_combout\ = (\reset~input_o\ & (\move_translator_inst|y_temp[3]~5_combout\)) # (!\reset~input_o\ & ((y_send(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|y_temp[3]~5_combout\,
	datac => \reset~input_o\,
	datad => y_send(3),
	combout => \move_translator_inst|y_temp[3]~5_combout\);

-- Location: LCCOMB_X114_Y41_N26
\move_translator_inst|y_last[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_last[3]~11_combout\ = \move_translator_inst|y_temp[3]~5_combout\ $ (y_send(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \move_translator_inst|y_temp[3]~5_combout\,
	datad => y_send(3),
	combout => \move_translator_inst|y_last[3]~11_combout\);

-- Location: FF_X114_Y41_N27
\move_translator_inst|y_last[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|y_last[3]~11_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|x_last[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|y_last[3]~_emulated_q\);

-- Location: LCCOMB_X113_Y42_N4
\move_translator_inst|y_last[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_last[3]~10_combout\ = (\reset~input_o\ & (\move_translator_inst|y_last[3]~_emulated_q\ $ ((\move_translator_inst|y_temp[3]~5_combout\)))) # (!\reset~input_o\ & (((y_send(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_last[3]~_emulated_q\,
	datab => \move_translator_inst|y_temp[3]~5_combout\,
	datac => \reset~input_o\,
	datad => y_send(3),
	combout => \move_translator_inst|y_last[3]~10_combout\);

-- Location: LCCOMB_X111_Y42_N16
\move_translator_inst|y_temp[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_temp[2]~9_combout\ = (\reset~input_o\ & (\move_translator_inst|y_temp[2]~9_combout\)) # (!\reset~input_o\ & ((y_send(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|y_temp[2]~9_combout\,
	datac => \reset~input_o\,
	datad => y_send(2),
	combout => \move_translator_inst|y_temp[2]~9_combout\);

-- Location: LCCOMB_X113_Y42_N14
\move_translator_inst|y_last[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_last[2]~9_combout\ = \move_translator_inst|y_temp[2]~9_combout\ $ (y_send(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|y_temp[2]~9_combout\,
	datad => y_send(2),
	combout => \move_translator_inst|y_last[2]~9_combout\);

-- Location: LCCOMB_X114_Y41_N24
\move_translator_inst|y_last[2]~_emulatedfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_last[2]~_emulatedfeeder_combout\ = \move_translator_inst|y_last[2]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move_translator_inst|y_last[2]~9_combout\,
	combout => \move_translator_inst|y_last[2]~_emulatedfeeder_combout\);

-- Location: FF_X114_Y41_N25
\move_translator_inst|y_last[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|y_last[2]~_emulatedfeeder_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|x_last[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|y_last[2]~_emulated_q\);

-- Location: LCCOMB_X113_Y42_N2
\move_translator_inst|y_last[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_last[2]~8_combout\ = (\reset~input_o\ & (\move_translator_inst|y_last[2]~_emulated_q\ $ ((\move_translator_inst|y_temp[2]~9_combout\)))) # (!\reset~input_o\ & (((y_send(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_last[2]~_emulated_q\,
	datab => \move_translator_inst|y_temp[2]~9_combout\,
	datac => \reset~input_o\,
	datad => y_send(2),
	combout => \move_translator_inst|y_last[2]~8_combout\);

-- Location: LCCOMB_X113_Y42_N28
\move_translator_inst|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|process_0~6_combout\ = (y_send(2) & ((y_send(3) $ (\move_translator_inst|y_last[3]~10_combout\)) # (!\move_translator_inst|y_last[2]~8_combout\))) # (!y_send(2) & ((\move_translator_inst|y_last[2]~8_combout\) # (y_send(3) $ 
-- (\move_translator_inst|y_last[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_send(2),
	datab => y_send(3),
	datac => \move_translator_inst|y_last[3]~10_combout\,
	datad => \move_translator_inst|y_last[2]~8_combout\,
	combout => \move_translator_inst|process_0~6_combout\);

-- Location: LCCOMB_X112_Y41_N18
\move_translator_inst|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|process_0~7_combout\ = (\move_translator_inst|process_0~5_combout\) # ((\move_translator_inst|process_0~6_combout\) # (y_send(4) $ (\move_translator_inst|y_last[4]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_send(4),
	datab => \move_translator_inst|y_last[4]~12_combout\,
	datac => \move_translator_inst|process_0~5_combout\,
	datad => \move_translator_inst|process_0~6_combout\,
	combout => \move_translator_inst|process_0~7_combout\);

-- Location: LCCOMB_X112_Y41_N24
\move_translator_inst|x_last[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[4]~26_combout\ = (!\move_translator_inst|Tx_state.idle~q\ & (!\move_translator_inst|uut0|state.idle~q\ & ((\move_translator_inst|process_0~4_combout\) # (\move_translator_inst|process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.idle~q\,
	datab => \move_translator_inst|process_0~4_combout\,
	datac => \move_translator_inst|uut0|state.idle~q\,
	datad => \move_translator_inst|process_0~7_combout\,
	combout => \move_translator_inst|x_last[4]~26_combout\);

-- Location: FF_X114_Y41_N9
\move_translator_inst|x_last[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|x_last[4]~_emulatedfeeder_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|x_last[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|x_last[4]~_emulated_q\);

-- Location: LCCOMB_X111_Y41_N6
\move_translator_inst|x_last[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[4]~18_combout\ = (\reset~input_o\ & (\move_translator_inst|x_last[4]~17_combout\ $ (((\move_translator_inst|x_last[4]~_emulated_q\))))) # (!\reset~input_o\ & (((x_send(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[4]~17_combout\,
	datab => x_send(4),
	datac => \move_translator_inst|x_last[4]~_emulated_q\,
	datad => \reset~input_o\,
	combout => \move_translator_inst|x_last[4]~18_combout\);

-- Location: LCCOMB_X112_Y43_N26
\move_translator_inst|x_last[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[3]~15_combout\ = \move_translator_inst|x_last[3]~13_combout\ $ (x_send(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \move_translator_inst|x_last[3]~13_combout\,
	datad => x_send(3),
	combout => \move_translator_inst|x_last[3]~15_combout\);

-- Location: FF_X111_Y41_N21
\move_translator_inst|x_last[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|x_last[3]~15_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|x_last[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|x_last[3]~_emulated_q\);

-- Location: LCCOMB_X111_Y41_N20
\move_translator_inst|x_last[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[3]~14_combout\ = (\reset~input_o\ & (\move_translator_inst|x_last[3]~13_combout\ $ (((\move_translator_inst|x_last[3]~_emulated_q\))))) # (!\reset~input_o\ & (((x_send(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[3]~13_combout\,
	datab => x_send(3),
	datac => \move_translator_inst|x_last[3]~_emulated_q\,
	datad => \reset~input_o\,
	combout => \move_translator_inst|x_last[3]~14_combout\);

-- Location: LCCOMB_X112_Y41_N26
\move_translator_inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|process_0~3_combout\ = (x_send(3) & ((x_send(4) $ (\move_translator_inst|x_last[4]~18_combout\)) # (!\move_translator_inst|x_last[3]~14_combout\))) # (!x_send(3) & ((\move_translator_inst|x_last[3]~14_combout\) # (x_send(4) $ 
-- (\move_translator_inst|x_last[4]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_send(3),
	datab => x_send(4),
	datac => \move_translator_inst|x_last[4]~18_combout\,
	datad => \move_translator_inst|x_last[3]~14_combout\,
	combout => \move_translator_inst|process_0~3_combout\);

-- Location: LCCOMB_X110_Y41_N20
\command_translator_inst|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|Mux15~0_combout\ = (\command_translator_inst|uut0|Rx_data\(6)) # (!\command_translator_inst|uut0|Rx_data\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Rx_data\(6),
	datab => \command_translator_inst|uut0|Rx_data\(2),
	combout => \command_translator_inst|Mux15~0_combout\);

-- Location: FF_X110_Y41_N23
\command_translator_inst|tile_type[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	asdata => \command_translator_inst|Mux15~0_combout\,
	sload => VCC,
	ena => \command_translator_inst|tile_type[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|tile_type\(1));

-- Location: LCCOMB_X110_Y41_N22
\command_translator_inst|tile_type[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|tile_type[0]~5_combout\ = !\command_translator_inst|uut0|Rx_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \command_translator_inst|uut0|Rx_data\(6),
	combout => \command_translator_inst|tile_type[0]~5_combout\);

-- Location: FF_X110_Y41_N21
\command_translator_inst|tile_type[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	asdata => \command_translator_inst|tile_type[0]~5_combout\,
	sload => VCC,
	ena => \command_translator_inst|tile_type[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|tile_type\(0));

-- Location: LCCOMB_X110_Y41_N12
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\command_translator_inst|tile_type\(0)) # (!\command_translator_inst|tile_type\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|tile_type\(1),
	datac => \command_translator_inst|tile_type\(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X110_Y41_N10
\edges_send[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \edges_send[0]~0_combout\ = (\reset~input_o\ & ((\command_translator_inst|tile_type\(1)) # (\command_translator_inst|tile_type\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \command_translator_inst|tile_type\(1),
	datad => \command_translator_inst|tile_type\(0),
	combout => \edges_send[0]~0_combout\);

-- Location: FF_X110_Y41_N13
\edges_send[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|Translation_busy~0clkctrl_outclk\,
	d => \Mux3~0_combout\,
	ena => \edges_send[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => edges_send(0));

-- Location: LCCOMB_X110_Y41_N28
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\command_translator_inst|tile_type\(0)) # (!\command_translator_inst|tile_type\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|tile_type\(1),
	datac => \command_translator_inst|tile_type\(0),
	combout => \Mux2~0_combout\);

-- Location: FF_X110_Y41_N29
\edges_send[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|Translation_busy~0clkctrl_outclk\,
	d => \Mux2~0_combout\,
	ena => \edges_send[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => edges_send(1));

-- Location: LCCOMB_X110_Y41_N8
\move_translator_inst|edges_last[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|edges_last[1]~5_combout\ = (\reset~input_o\ & (\move_translator_inst|edges_last[1]~5_combout\)) # (!\reset~input_o\ & ((edges_send(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|edges_last[1]~5_combout\,
	datac => \reset~input_o\,
	datad => edges_send(1),
	combout => \move_translator_inst|edges_last[1]~5_combout\);

-- Location: LCCOMB_X113_Y41_N20
\move_translator_inst|edges_last[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|edges_last[1]~7_combout\ = edges_send(1) $ (\move_translator_inst|edges_last[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => edges_send(1),
	datad => \move_translator_inst|edges_last[1]~5_combout\,
	combout => \move_translator_inst|edges_last[1]~7_combout\);

-- Location: LCCOMB_X114_Y41_N2
\move_translator_inst|edges_last[1]~_emulatedfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|edges_last[1]~_emulatedfeeder_combout\ = \move_translator_inst|edges_last[1]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move_translator_inst|edges_last[1]~7_combout\,
	combout => \move_translator_inst|edges_last[1]~_emulatedfeeder_combout\);

-- Location: FF_X114_Y41_N3
\move_translator_inst|edges_last[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|edges_last[1]~_emulatedfeeder_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|x_last[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|edges_last[1]~_emulated_q\);

-- Location: LCCOMB_X112_Y41_N8
\move_translator_inst|edges_last[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|edges_last[1]~6_combout\ = (\reset~input_o\ & (\move_translator_inst|edges_last[1]~_emulated_q\ $ ((\move_translator_inst|edges_last[1]~5_combout\)))) # (!\reset~input_o\ & (((edges_send(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \move_translator_inst|edges_last[1]~_emulated_q\,
	datac => \move_translator_inst|edges_last[1]~5_combout\,
	datad => edges_send(1),
	combout => \move_translator_inst|edges_last[1]~6_combout\);

-- Location: LCCOMB_X110_Y41_N30
\move_translator_inst|edges_last[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|edges_last[0]~1_combout\ = (\reset~input_o\ & (\move_translator_inst|edges_last[0]~1_combout\)) # (!\reset~input_o\ & ((edges_send(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|edges_last[0]~1_combout\,
	datac => \reset~input_o\,
	datad => edges_send(0),
	combout => \move_translator_inst|edges_last[0]~1_combout\);

-- Location: LCCOMB_X110_Y41_N24
\move_translator_inst|edges_last[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|edges_last[0]~3_combout\ = \move_translator_inst|edges_last[0]~1_combout\ $ (edges_send(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|edges_last[0]~1_combout\,
	datad => edges_send(0),
	combout => \move_translator_inst|edges_last[0]~3_combout\);

-- Location: LCCOMB_X114_Y41_N16
\move_translator_inst|edges_last[0]~_emulatedfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|edges_last[0]~_emulatedfeeder_combout\ = \move_translator_inst|edges_last[0]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \move_translator_inst|edges_last[0]~3_combout\,
	combout => \move_translator_inst|edges_last[0]~_emulatedfeeder_combout\);

-- Location: FF_X114_Y41_N17
\move_translator_inst|edges_last[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|edges_last[0]~_emulatedfeeder_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|x_last[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|edges_last[0]~_emulated_q\);

-- Location: LCCOMB_X110_Y41_N18
\move_translator_inst|edges_last[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|edges_last[0]~2_combout\ = (\reset~input_o\ & (\move_translator_inst|edges_last[0]~1_combout\ $ ((\move_translator_inst|edges_last[0]~_emulated_q\)))) # (!\reset~input_o\ & (((edges_send(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|edges_last[0]~1_combout\,
	datab => \move_translator_inst|edges_last[0]~_emulated_q\,
	datac => \reset~input_o\,
	datad => edges_send(0),
	combout => \move_translator_inst|edges_last[0]~2_combout\);

-- Location: LCCOMB_X112_Y41_N28
\move_translator_inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|process_0~0_combout\ = (edges_send(0) & ((edges_send(1) $ (\move_translator_inst|edges_last[1]~6_combout\)) # (!\move_translator_inst|edges_last[0]~2_combout\))) # (!edges_send(0) & ((\move_translator_inst|edges_last[0]~2_combout\) # 
-- (edges_send(1) $ (\move_translator_inst|edges_last[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => edges_send(0),
	datab => edges_send(1),
	datac => \move_translator_inst|edges_last[1]~6_combout\,
	datad => \move_translator_inst|edges_last[0]~2_combout\,
	combout => \move_translator_inst|process_0~0_combout\);

-- Location: LCCOMB_X111_Y41_N4
\move_translator_inst|x_last[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[2]~11_combout\ = \move_translator_inst|x_last[2]~9_combout\ $ (x_send(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[2]~9_combout\,
	datad => x_send(2),
	combout => \move_translator_inst|x_last[2]~11_combout\);

-- Location: FF_X111_Y41_N5
\move_translator_inst|x_last[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|x_last[2]~11_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|x_last[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|x_last[2]~_emulated_q\);

-- Location: LCCOMB_X111_Y41_N26
\move_translator_inst|x_last[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[2]~10_combout\ = (\reset~input_o\ & (\move_translator_inst|x_last[2]~9_combout\ $ (((\move_translator_inst|x_last[2]~_emulated_q\))))) # (!\reset~input_o\ & (((x_send(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[2]~9_combout\,
	datab => x_send(2),
	datac => \move_translator_inst|x_last[2]~_emulated_q\,
	datad => \reset~input_o\,
	combout => \move_translator_inst|x_last[2]~10_combout\);

-- Location: LCCOMB_X113_Y41_N28
\move_translator_inst|x_last[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[1]~7_combout\ = \move_translator_inst|x_last[1]~5_combout\ $ (x_send(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \move_translator_inst|x_last[1]~5_combout\,
	datad => x_send(1),
	combout => \move_translator_inst|x_last[1]~7_combout\);

-- Location: LCCOMB_X114_Y41_N6
\move_translator_inst|x_last[1]~_emulatedfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[1]~_emulatedfeeder_combout\ = \move_translator_inst|x_last[1]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move_translator_inst|x_last[1]~7_combout\,
	combout => \move_translator_inst|x_last[1]~_emulatedfeeder_combout\);

-- Location: FF_X114_Y41_N7
\move_translator_inst|x_last[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|x_last[1]~_emulatedfeeder_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|x_last[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|x_last[1]~_emulated_q\);

-- Location: LCCOMB_X111_Y41_N22
\move_translator_inst|x_last[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[1]~6_combout\ = (\reset~input_o\ & (\move_translator_inst|x_last[1]~5_combout\ $ ((\move_translator_inst|x_last[1]~_emulated_q\)))) # (!\reset~input_o\ & (((x_send(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[1]~5_combout\,
	datab => \move_translator_inst|x_last[1]~_emulated_q\,
	datac => \reset~input_o\,
	datad => x_send(1),
	combout => \move_translator_inst|x_last[1]~6_combout\);

-- Location: LCCOMB_X112_Y41_N4
\move_translator_inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|process_0~2_combout\ = (x_send(2) & ((x_send(1) $ (\move_translator_inst|x_last[1]~6_combout\)) # (!\move_translator_inst|x_last[2]~10_combout\))) # (!x_send(2) & ((\move_translator_inst|x_last[2]~10_combout\) # (x_send(1) $ 
-- (\move_translator_inst|x_last[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_send(2),
	datab => x_send(1),
	datac => \move_translator_inst|x_last[2]~10_combout\,
	datad => \move_translator_inst|x_last[1]~6_combout\,
	combout => \move_translator_inst|process_0~2_combout\);

-- Location: LCCOMB_X109_Y40_N16
\command_translator_inst|x_temp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|x_temp[0]~0_combout\ = (!\command_translator_inst|Selector6~8_combout\ & ((\command_translator_inst|process_0~2_combout\) # ((!\command_translator_inst|Rx_state.axis_x~q\) # (!\command_translator_inst|Rx_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|process_0~2_combout\,
	datab => \command_translator_inst|Rx_state.idle~q\,
	datac => \command_translator_inst|Selector6~8_combout\,
	datad => \command_translator_inst|Rx_state.axis_x~q\,
	combout => \command_translator_inst|x_temp[0]~0_combout\);

-- Location: LCCOMB_X109_Y40_N18
\command_translator_inst|x_temp[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|x_temp[0]~1_combout\ = (\command_translator_inst|x_temp[0]~0_combout\ & ((\command_translator_inst|x_temp\(0)))) # (!\command_translator_inst|x_temp[0]~0_combout\ & (\command_translator_inst|uut0|Rx_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|x_temp[0]~0_combout\,
	datab => \command_translator_inst|uut0|Rx_data\(0),
	datac => \command_translator_inst|x_temp\(0),
	combout => \command_translator_inst|x_temp[0]~1_combout\);

-- Location: FF_X109_Y40_N19
\command_translator_inst|x_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	d => \command_translator_inst|x_temp[0]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|x_temp\(0));

-- Location: LCCOMB_X110_Y41_N0
\command_translator_inst|x[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|x[0]~feeder_combout\ = \command_translator_inst|x_temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \command_translator_inst|x_temp\(0),
	combout => \command_translator_inst|x[0]~feeder_combout\);

-- Location: FF_X110_Y41_N1
\command_translator_inst|x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|uut0|ALT_INV_state.idle~clkctrl_outclk\,
	d => \command_translator_inst|x[0]~feeder_combout\,
	ena => \command_translator_inst|tile_type[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|x\(0));

-- Location: FF_X111_Y41_N29
\x_send[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|Translation_busy~0clkctrl_outclk\,
	asdata => \command_translator_inst|x\(0),
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_send(0));

-- Location: FF_X110_Y41_N25
\edges_send[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \command_translator_inst|Translation_busy~0clkctrl_outclk\,
	asdata => \command_translator_inst|tile_type\(1),
	sload => VCC,
	ena => \edges_send[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => edges_send(2));

-- Location: LCCOMB_X110_Y41_N14
\move_translator_inst|edges_last[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|edges_last[2]~9_combout\ = (\reset~input_o\ & (\move_translator_inst|edges_last[2]~9_combout\)) # (!\reset~input_o\ & ((edges_send(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|edges_last[2]~9_combout\,
	datac => \reset~input_o\,
	datad => edges_send(2),
	combout => \move_translator_inst|edges_last[2]~9_combout\);

-- Location: LCCOMB_X113_Y41_N18
\move_translator_inst|edges_last[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|edges_last[2]~11_combout\ = edges_send(2) $ (\move_translator_inst|edges_last[2]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => edges_send(2),
	datad => \move_translator_inst|edges_last[2]~9_combout\,
	combout => \move_translator_inst|edges_last[2]~11_combout\);

-- Location: LCCOMB_X114_Y41_N4
\move_translator_inst|edges_last[2]~_emulatedfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|edges_last[2]~_emulatedfeeder_combout\ = \move_translator_inst|edges_last[2]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move_translator_inst|edges_last[2]~11_combout\,
	combout => \move_translator_inst|edges_last[2]~_emulatedfeeder_combout\);

-- Location: FF_X114_Y41_N5
\move_translator_inst|edges_last[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|edges_last[2]~_emulatedfeeder_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|x_last[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|edges_last[2]~_emulated_q\);

-- Location: LCCOMB_X110_Y41_N2
\move_translator_inst|edges_last[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|edges_last[2]~10_combout\ = (\reset~input_o\ & (\move_translator_inst|edges_last[2]~_emulated_q\ $ ((\move_translator_inst|edges_last[2]~9_combout\)))) # (!\reset~input_o\ & (((edges_send(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|edges_last[2]~_emulated_q\,
	datab => \move_translator_inst|edges_last[2]~9_combout\,
	datac => \reset~input_o\,
	datad => edges_send(2),
	combout => \move_translator_inst|edges_last[2]~10_combout\);

-- Location: LCCOMB_X111_Y41_N10
\move_translator_inst|x_last[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[0]~1_combout\ = (\reset~input_o\ & (\move_translator_inst|x_last[0]~1_combout\)) # (!\reset~input_o\ & ((x_send(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[0]~1_combout\,
	datab => \reset~input_o\,
	datad => x_send(0),
	combout => \move_translator_inst|x_last[0]~1_combout\);

-- Location: LCCOMB_X111_Y41_N14
\move_translator_inst|x_last[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[0]~3_combout\ = \move_translator_inst|x_last[0]~1_combout\ $ (x_send(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[0]~1_combout\,
	datad => x_send(0),
	combout => \move_translator_inst|x_last[0]~3_combout\);

-- Location: FF_X111_Y41_N15
\move_translator_inst|x_last[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|x_last[0]~3_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|x_last[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|x_last[0]~_emulated_q\);

-- Location: LCCOMB_X111_Y41_N12
\move_translator_inst|x_last[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[0]~2_combout\ = (\reset~input_o\ & (\move_translator_inst|x_last[0]~1_combout\ $ (((\move_translator_inst|x_last[0]~_emulated_q\))))) # (!\reset~input_o\ & (((x_send(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[0]~1_combout\,
	datab => x_send(0),
	datac => \move_translator_inst|x_last[0]~_emulated_q\,
	datad => \reset~input_o\,
	combout => \move_translator_inst|x_last[0]~2_combout\);

-- Location: LCCOMB_X112_Y41_N2
\move_translator_inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|process_0~1_combout\ = (x_send(0) & ((edges_send(2) $ (\move_translator_inst|edges_last[2]~10_combout\)) # (!\move_translator_inst|x_last[0]~2_combout\))) # (!x_send(0) & ((\move_translator_inst|x_last[0]~2_combout\) # (edges_send(2) 
-- $ (\move_translator_inst|edges_last[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_send(0),
	datab => edges_send(2),
	datac => \move_translator_inst|edges_last[2]~10_combout\,
	datad => \move_translator_inst|x_last[0]~2_combout\,
	combout => \move_translator_inst|process_0~1_combout\);

-- Location: LCCOMB_X112_Y41_N20
\move_translator_inst|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|process_0~4_combout\ = (\move_translator_inst|process_0~3_combout\) # ((\move_translator_inst|process_0~0_combout\) # ((\move_translator_inst|process_0~2_combout\) # (\move_translator_inst|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|process_0~3_combout\,
	datab => \move_translator_inst|process_0~0_combout\,
	datac => \move_translator_inst|process_0~2_combout\,
	datad => \move_translator_inst|process_0~1_combout\,
	combout => \move_translator_inst|process_0~4_combout\);

-- Location: LCCOMB_X112_Y41_N30
\move_translator_inst|x_last[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_last[4]~25_combout\ = (!\move_translator_inst|Tx_state.idle~q\ & ((\move_translator_inst|process_0~4_combout\) # (\move_translator_inst|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|process_0~4_combout\,
	datac => \move_translator_inst|Tx_state.idle~q\,
	datad => \move_translator_inst|process_0~7_combout\,
	combout => \move_translator_inst|x_last[4]~25_combout\);

-- Location: LCCOMB_X112_Y43_N18
\move_translator_inst|x_temp[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_temp[4]~12_combout\ = (!\move_translator_inst|uut0|state.idle~q\ & ((\move_translator_inst|x_last[4]~25_combout\) # ((\move_translator_inst|Tx_state.axis_x~q\ & \move_translator_inst|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_x~q\,
	datab => \move_translator_inst|uut0|state.idle~q\,
	datac => \move_translator_inst|LessThan0~1_combout\,
	datad => \move_translator_inst|x_last[4]~25_combout\,
	combout => \move_translator_inst|x_temp[4]~12_combout\);

-- Location: FF_X112_Y43_N3
\move_translator_inst|x_temp[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|x_temp[1]~7_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|x_temp[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|x_temp[1]~_emulated_q\);

-- Location: LCCOMB_X112_Y43_N4
\move_translator_inst|x_temp[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_temp[1]~6_combout\ = (\reset~input_o\ & (\move_translator_inst|x_last[1]~5_combout\ $ ((\move_translator_inst|x_temp[1]~_emulated_q\)))) # (!\reset~input_o\ & (((x_send(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[1]~5_combout\,
	datab => \move_translator_inst|x_temp[1]~_emulated_q\,
	datac => \reset~input_o\,
	datad => x_send(1),
	combout => \move_translator_inst|x_temp[1]~6_combout\);

-- Location: LCCOMB_X112_Y43_N24
\move_translator_inst|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Add0~1_combout\ = \move_translator_inst|x_temp[2]~4_combout\ $ (\move_translator_inst|x_temp[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \move_translator_inst|x_temp[2]~4_combout\,
	datad => \move_translator_inst|x_temp[1]~6_combout\,
	combout => \move_translator_inst|Add0~1_combout\);

-- Location: LCCOMB_X112_Y43_N6
\move_translator_inst|x_temp[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_temp[2]~5_combout\ = \move_translator_inst|x_last[2]~9_combout\ $ (((\move_translator_inst|Tx_state.axis_x~q\ & (!\move_translator_inst|Add0~1_combout\)) # (!\move_translator_inst|Tx_state.axis_x~q\ & ((x_send(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_x~q\,
	datab => \move_translator_inst|x_last[2]~9_combout\,
	datac => \move_translator_inst|Add0~1_combout\,
	datad => x_send(2),
	combout => \move_translator_inst|x_temp[2]~5_combout\);

-- Location: FF_X112_Y43_N7
\move_translator_inst|x_temp[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|x_temp[2]~5_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|x_temp[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|x_temp[2]~_emulated_q\);

-- Location: LCCOMB_X112_Y43_N28
\move_translator_inst|x_temp[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_temp[2]~4_combout\ = (\reset~input_o\ & (\move_translator_inst|x_temp[2]~_emulated_q\ $ ((\move_translator_inst|x_last[2]~9_combout\)))) # (!\reset~input_o\ & (((x_send(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_temp[2]~_emulated_q\,
	datab => \move_translator_inst|x_last[2]~9_combout\,
	datac => \reset~input_o\,
	datad => x_send(2),
	combout => \move_translator_inst|x_temp[2]~4_combout\);

-- Location: LCCOMB_X112_Y43_N16
\move_translator_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Add0~0_combout\ = \move_translator_inst|x_temp[4]~0_combout\ $ (((\move_translator_inst|x_temp[3]~2_combout\ & ((\move_translator_inst|x_temp[1]~6_combout\) # (\move_translator_inst|x_temp[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_temp[1]~6_combout\,
	datab => \move_translator_inst|x_temp[3]~2_combout\,
	datac => \move_translator_inst|x_temp[2]~4_combout\,
	datad => \move_translator_inst|x_temp[4]~0_combout\,
	combout => \move_translator_inst|Add0~0_combout\);

-- Location: LCCOMB_X112_Y43_N22
\move_translator_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector0~0_combout\ = (\move_translator_inst|Tx_state.axis_x~q\ & ((\move_translator_inst|Add0~0_combout\))) # (!\move_translator_inst|Tx_state.axis_x~q\ & (x_send(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_x~q\,
	datac => x_send(4),
	datad => \move_translator_inst|Add0~0_combout\,
	combout => \move_translator_inst|Selector0~0_combout\);

-- Location: LCCOMB_X112_Y43_N8
\move_translator_inst|x_temp[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_temp[4]~1_combout\ = \move_translator_inst|x_last[4]~17_combout\ $ (((\move_translator_inst|x_temp[4]~12_combout\ & ((\move_translator_inst|Selector0~0_combout\))) # (!\move_translator_inst|x_temp[4]~12_combout\ & 
-- (\move_translator_inst|x_temp[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[4]~17_combout\,
	datab => \move_translator_inst|x_temp[4]~0_combout\,
	datac => \move_translator_inst|Selector0~0_combout\,
	datad => \move_translator_inst|x_temp[4]~12_combout\,
	combout => \move_translator_inst|x_temp[4]~1_combout\);

-- Location: FF_X112_Y43_N9
\move_translator_inst|x_temp[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|x_temp[4]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|x_temp[4]~_emulated_q\);

-- Location: LCCOMB_X111_Y41_N24
\move_translator_inst|x_temp[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|x_temp[4]~0_combout\ = (\reset~input_o\ & (\move_translator_inst|x_last[4]~17_combout\ $ ((\move_translator_inst|x_temp[4]~_emulated_q\)))) # (!\reset~input_o\ & (((x_send(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_last[4]~17_combout\,
	datab => \move_translator_inst|x_temp[4]~_emulated_q\,
	datac => \reset~input_o\,
	datad => x_send(4),
	combout => \move_translator_inst|x_temp[4]~0_combout\);

-- Location: LCCOMB_X112_Y43_N20
\move_translator_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|LessThan0~0_combout\ = (\move_translator_inst|x_temp[4]~0_combout\ & ((\move_translator_inst|x_temp[2]~4_combout\) # ((\move_translator_inst|x_temp[1]~6_combout\ & \move_translator_inst|x_last[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_temp[2]~4_combout\,
	datab => \move_translator_inst|x_temp[4]~0_combout\,
	datac => \move_translator_inst|x_temp[1]~6_combout\,
	datad => \move_translator_inst|x_last[0]~2_combout\,
	combout => \move_translator_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X111_Y42_N14
\move_translator_inst|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector4~1_combout\ = (\move_translator_inst|Tx_state.axis_y~q\ & ((\move_translator_inst|Selector4~0_combout\))) # (!\move_translator_inst|Tx_state.axis_y~q\ & (y_send(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_y~q\,
	datab => y_send(4),
	datad => \move_translator_inst|Selector4~0_combout\,
	combout => \move_translator_inst|Selector4~1_combout\);

-- Location: LCCOMB_X111_Y42_N24
\move_translator_inst|y_temp[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_temp[4]~18_combout\ = (!\move_translator_inst|uut0|state.idle~q\ & ((\move_translator_inst|x_last[4]~25_combout\) # ((\move_translator_inst|Tx_state.axis_y~q\ & !\move_translator_inst|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_y~q\,
	datab => \move_translator_inst|Selector4~0_combout\,
	datac => \move_translator_inst|uut0|state.idle~q\,
	datad => \move_translator_inst|x_last[4]~25_combout\,
	combout => \move_translator_inst|y_temp[4]~18_combout\);

-- Location: LCCOMB_X111_Y42_N8
\move_translator_inst|y_temp[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_temp[4]~3_combout\ = \move_translator_inst|y_temp[4]~1_combout\ $ (((\move_translator_inst|y_temp[4]~18_combout\ & (\move_translator_inst|Selector4~1_combout\)) # (!\move_translator_inst|y_temp[4]~18_combout\ & 
-- ((\move_translator_inst|y_temp[4]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp[4]~1_combout\,
	datab => \move_translator_inst|Selector4~1_combout\,
	datac => \move_translator_inst|y_temp[4]~2_combout\,
	datad => \move_translator_inst|y_temp[4]~18_combout\,
	combout => \move_translator_inst|y_temp[4]~3_combout\);

-- Location: FF_X111_Y42_N9
\move_translator_inst|y_temp[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|y_temp[4]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|y_temp[4]~_emulated_q\);

-- Location: LCCOMB_X111_Y42_N22
\move_translator_inst|y_temp[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_temp[4]~2_combout\ = (\reset~input_o\ & (\move_translator_inst|y_temp[4]~1_combout\ $ ((\move_translator_inst|y_temp[4]~_emulated_q\)))) # (!\reset~input_o\ & (((y_send(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp[4]~1_combout\,
	datab => \move_translator_inst|y_temp[4]~_emulated_q\,
	datac => \reset~input_o\,
	datad => y_send(4),
	combout => \move_translator_inst|y_temp[4]~2_combout\);

-- Location: LCCOMB_X113_Y42_N8
\move_translator_inst|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector5~3_combout\ = (y_send(3) & !\move_translator_inst|Tx_state.axis_y~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_send(3),
	datad => \move_translator_inst|Tx_state.axis_y~q\,
	combout => \move_translator_inst|Selector5~3_combout\);

-- Location: LCCOMB_X111_Y42_N2
\move_translator_inst|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector6~2_combout\ = (!\move_translator_inst|Tx_state.axis_y~q\ & y_send(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \move_translator_inst|Tx_state.axis_y~q\,
	datad => y_send(2),
	combout => \move_translator_inst|Selector6~2_combout\);

-- Location: LCCOMB_X112_Y42_N26
\move_translator_inst|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|process_0~8_combout\ = (\move_translator_inst|y_temp[4]~2_combout\ & ((\move_translator_inst|y_temp[3]~6_combout\) # (\move_translator_inst|y_temp[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp[3]~6_combout\,
	datab => \move_translator_inst|y_temp[4]~2_combout\,
	datad => \move_translator_inst|y_temp[2]~10_combout\,
	combout => \move_translator_inst|process_0~8_combout\);

-- Location: LCCOMB_X112_Y42_N10
\move_translator_inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector5~0_combout\ = (!\move_translator_inst|process_0~8_combout\ & (\move_translator_inst|Tx_state.axis_y~q\ & !\move_translator_inst|Selector20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|process_0~8_combout\,
	datac => \move_translator_inst|Tx_state.axis_y~q\,
	datad => \move_translator_inst|Selector20~1_combout\,
	combout => \move_translator_inst|Selector5~0_combout\);

-- Location: LCCOMB_X112_Y42_N8
\move_translator_inst|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector6~1_combout\ = (\move_translator_inst|Selector5~0_combout\ & (\move_translator_inst|y_temp[2]~10_combout\ $ (!\move_translator_inst|y_temp[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|y_temp[2]~10_combout\,
	datac => \move_translator_inst|y_temp[1]~12_combout\,
	datad => \move_translator_inst|Selector5~0_combout\,
	combout => \move_translator_inst|Selector6~1_combout\);

-- Location: LCCOMB_X111_Y42_N28
\move_translator_inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector6~0_combout\ = (\move_translator_inst|Tx_state.axis_y~q\ & (\move_translator_inst|process_0~8_combout\ & (!\move_translator_inst|y_temp[2]~10_combout\ & !\move_translator_inst|Selector20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_y~q\,
	datab => \move_translator_inst|process_0~8_combout\,
	datac => \move_translator_inst|y_temp[2]~10_combout\,
	datad => \move_translator_inst|Selector20~1_combout\,
	combout => \move_translator_inst|Selector6~0_combout\);

-- Location: LCCOMB_X111_Y42_N6
\move_translator_inst|y_temp[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_temp[2]~11_combout\ = \move_translator_inst|y_temp[2]~9_combout\ $ (((\move_translator_inst|Selector6~2_combout\) # ((\move_translator_inst|Selector6~1_combout\) # (\move_translator_inst|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp[2]~9_combout\,
	datab => \move_translator_inst|Selector6~2_combout\,
	datac => \move_translator_inst|Selector6~1_combout\,
	datad => \move_translator_inst|Selector6~0_combout\,
	combout => \move_translator_inst|y_temp[2]~11_combout\);

-- Location: FF_X111_Y42_N7
\move_translator_inst|y_temp[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|y_temp[2]~11_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|y_temp[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|y_temp[2]~_emulated_q\);

-- Location: LCCOMB_X111_Y42_N12
\move_translator_inst|y_temp[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_temp[2]~10_combout\ = (\reset~input_o\ & (\move_translator_inst|y_temp[2]~_emulated_q\ $ ((\move_translator_inst|y_temp[2]~9_combout\)))) # (!\reset~input_o\ & (((y_send(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp[2]~_emulated_q\,
	datab => \move_translator_inst|y_temp[2]~9_combout\,
	datac => \reset~input_o\,
	datad => y_send(2),
	combout => \move_translator_inst|y_temp[2]~10_combout\);

-- Location: LCCOMB_X111_Y42_N20
\move_translator_inst|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector20~1_combout\ = (\move_translator_inst|y_temp[4]~2_combout\ & (\move_translator_inst|y_temp[1]~12_combout\ & (\move_translator_inst|y_temp[3]~6_combout\ & \move_translator_inst|y_temp[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp[4]~2_combout\,
	datab => \move_translator_inst|y_temp[1]~12_combout\,
	datac => \move_translator_inst|y_temp[3]~6_combout\,
	datad => \move_translator_inst|y_temp[2]~10_combout\,
	combout => \move_translator_inst|Selector20~1_combout\);

-- Location: LCCOMB_X111_Y42_N10
\move_translator_inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Add2~0_combout\ = \move_translator_inst|y_temp[3]~6_combout\ $ (\move_translator_inst|y_temp[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \move_translator_inst|y_temp[3]~6_combout\,
	datad => \move_translator_inst|y_temp[2]~10_combout\,
	combout => \move_translator_inst|Add2~0_combout\);

-- Location: LCCOMB_X111_Y42_N4
\move_translator_inst|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector5~1_combout\ = (!\move_translator_inst|Selector20~1_combout\ & (\move_translator_inst|process_0~8_combout\ & (\move_translator_inst|Tx_state.axis_y~q\ & !\move_translator_inst|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Selector20~1_combout\,
	datab => \move_translator_inst|process_0~8_combout\,
	datac => \move_translator_inst|Tx_state.axis_y~q\,
	datad => \move_translator_inst|Add2~0_combout\,
	combout => \move_translator_inst|Selector5~1_combout\);

-- Location: LCCOMB_X112_Y42_N4
\move_translator_inst|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector5~2_combout\ = (\move_translator_inst|Selector5~0_combout\ & (\move_translator_inst|y_temp[3]~6_combout\ $ (((\move_translator_inst|y_temp[1]~12_combout\) # (\move_translator_inst|y_temp[2]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp[1]~12_combout\,
	datab => \move_translator_inst|y_temp[2]~10_combout\,
	datac => \move_translator_inst|y_temp[3]~6_combout\,
	datad => \move_translator_inst|Selector5~0_combout\,
	combout => \move_translator_inst|Selector5~2_combout\);

-- Location: LCCOMB_X111_Y42_N18
\move_translator_inst|y_temp[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_temp[3]~7_combout\ = \move_translator_inst|y_temp[3]~5_combout\ $ (((\move_translator_inst|Selector5~3_combout\) # ((\move_translator_inst|Selector5~1_combout\) # (\move_translator_inst|Selector5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp[3]~5_combout\,
	datab => \move_translator_inst|Selector5~3_combout\,
	datac => \move_translator_inst|Selector5~1_combout\,
	datad => \move_translator_inst|Selector5~2_combout\,
	combout => \move_translator_inst|y_temp[3]~7_combout\);

-- Location: FF_X111_Y42_N19
\move_translator_inst|y_temp[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|y_temp[3]~7_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|y_temp[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|y_temp[3]~_emulated_q\);

-- Location: LCCOMB_X113_Y42_N20
\move_translator_inst|y_temp[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_temp[3]~6_combout\ = (\reset~input_o\ & (\move_translator_inst|y_temp[3]~_emulated_q\ $ ((\move_translator_inst|y_temp[3]~5_combout\)))) # (!\reset~input_o\ & (((y_send(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp[3]~_emulated_q\,
	datab => \move_translator_inst|y_temp[3]~5_combout\,
	datac => \reset~input_o\,
	datad => y_send(3),
	combout => \move_translator_inst|y_temp[3]~6_combout\);

-- Location: LCCOMB_X112_Y42_N28
\move_translator_inst|Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector7~3_combout\ = (\move_translator_inst|y_temp[3]~6_combout\ & ((\move_translator_inst|y_temp[2]~10_combout\ & (!\move_translator_inst|y_temp[1]~12_combout\ & !\move_translator_inst|y_temp[4]~2_combout\)) # 
-- (!\move_translator_inst|y_temp[2]~10_combout\ & (\move_translator_inst|y_temp[1]~12_combout\ & \move_translator_inst|y_temp[4]~2_combout\)))) # (!\move_translator_inst|y_temp[3]~6_combout\ & (\move_translator_inst|y_temp[1]~12_combout\ $ 
-- (((!\move_translator_inst|y_temp[2]~10_combout\ & \move_translator_inst|y_temp[4]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp[3]~6_combout\,
	datab => \move_translator_inst|y_temp[2]~10_combout\,
	datac => \move_translator_inst|y_temp[1]~12_combout\,
	datad => \move_translator_inst|y_temp[4]~2_combout\,
	combout => \move_translator_inst|Selector7~3_combout\);

-- Location: LCCOMB_X112_Y42_N30
\move_translator_inst|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector7~2_combout\ = (\move_translator_inst|Tx_state.idle~q\ & ((\move_translator_inst|Selector7~3_combout\))) # (!\move_translator_inst|Tx_state.idle~q\ & (y_send(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_send(1),
	datac => \move_translator_inst|Tx_state.idle~q\,
	datad => \move_translator_inst|Selector7~3_combout\,
	combout => \move_translator_inst|Selector7~2_combout\);

-- Location: LCCOMB_X113_Y42_N6
\move_translator_inst|y_temp[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_temp[1]~19_combout\ = (!\move_translator_inst|uut0|state.idle~q\ & ((\move_translator_inst|x_last[4]~25_combout\) # ((\move_translator_inst|Tx_state.axis_y~q\ & \move_translator_inst|Tx_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_y~q\,
	datab => \move_translator_inst|Tx_state.idle~q\,
	datac => \move_translator_inst|x_last[4]~25_combout\,
	datad => \move_translator_inst|uut0|state.idle~q\,
	combout => \move_translator_inst|y_temp[1]~19_combout\);

-- Location: LCCOMB_X113_Y42_N26
\move_translator_inst|y_temp[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_temp[1]~13_combout\ = \move_translator_inst|y_last[1]~5_combout\ $ (((\move_translator_inst|y_temp[1]~19_combout\ & (\move_translator_inst|Selector7~2_combout\)) # (!\move_translator_inst|y_temp[1]~19_combout\ & 
-- ((\move_translator_inst|y_temp[1]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_last[1]~5_combout\,
	datab => \move_translator_inst|Selector7~2_combout\,
	datac => \move_translator_inst|y_temp[1]~12_combout\,
	datad => \move_translator_inst|y_temp[1]~19_combout\,
	combout => \move_translator_inst|y_temp[1]~13_combout\);

-- Location: FF_X113_Y42_N27
\move_translator_inst|y_temp[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|y_temp[1]~13_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|y_temp[1]~_emulated_q\);

-- Location: LCCOMB_X112_Y42_N18
\move_translator_inst|y_temp[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|y_temp[1]~12_combout\ = (\reset~input_o\ & (\move_translator_inst|y_last[1]~5_combout\ $ ((\move_translator_inst|y_temp[1]~_emulated_q\)))) # (!\reset~input_o\ & (((y_send(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_last[1]~5_combout\,
	datab => \move_translator_inst|y_temp[1]~_emulated_q\,
	datac => y_send(1),
	datad => \reset~input_o\,
	combout => \move_translator_inst|y_temp[1]~12_combout\);

-- Location: LCCOMB_X111_Y42_N0
\move_translator_inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector4~0_combout\ = (!\move_translator_inst|y_temp[4]~2_combout\ & (((!\move_translator_inst|y_temp[1]~12_combout\ & !\move_translator_inst|y_temp[2]~10_combout\)) # (!\move_translator_inst|y_temp[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp[4]~2_combout\,
	datab => \move_translator_inst|y_temp[1]~12_combout\,
	datac => \move_translator_inst|y_temp[3]~6_combout\,
	datad => \move_translator_inst|y_temp[2]~10_combout\,
	combout => \move_translator_inst|Selector4~0_combout\);

-- Location: LCCOMB_X112_Y41_N10
\move_translator_inst|Tx_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Tx_state~16_combout\ = (!\move_translator_inst|uut0|state.idle~q\ & ((\move_translator_inst|Selector4~0_combout\) # (!\move_translator_inst|Tx_state.axis_y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|Tx_state.axis_y~q\,
	datac => \move_translator_inst|uut0|state.idle~q\,
	datad => \move_translator_inst|Selector4~0_combout\,
	combout => \move_translator_inst|Tx_state~16_combout\);

-- Location: LCCOMB_X112_Y41_N16
\move_translator_inst|Tx_state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Tx_state~17_combout\ = (\move_translator_inst|Tx_state~16_combout\ & ((\move_translator_inst|process_0~7_combout\) # ((\move_translator_inst|process_0~4_combout\) # (\move_translator_inst|Tx_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|process_0~7_combout\,
	datab => \move_translator_inst|process_0~4_combout\,
	datac => \move_translator_inst|Tx_state.idle~q\,
	datad => \move_translator_inst|Tx_state~16_combout\,
	combout => \move_translator_inst|Tx_state~17_combout\);

-- Location: LCCOMB_X112_Y41_N6
\move_translator_inst|Tx_state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Tx_state~22_combout\ = (\move_translator_inst|Tx_state~17_combout\ & (((!\move_translator_inst|x_temp[3]~2_combout\) # (!\move_translator_inst|LessThan0~0_combout\)) # (!\move_translator_inst|Tx_state.axis_x~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_x~q\,
	datab => \move_translator_inst|LessThan0~0_combout\,
	datac => \move_translator_inst|x_temp[3]~2_combout\,
	datad => \move_translator_inst|Tx_state~17_combout\,
	combout => \move_translator_inst|Tx_state~22_combout\);

-- Location: LCCOMB_X112_Y41_N12
\move_translator_inst|Tx_state.axis_x~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Tx_state.axis_x~0_combout\ = (\move_translator_inst|Tx_state.axis_x~q\ & (((!\move_translator_inst|Tx_state~22_combout\)))) # (!\move_translator_inst|Tx_state.axis_x~q\ & (\move_translator_inst|Tx_state~19_combout\ & 
-- (!\move_translator_inst|Tx_state.axis_y~q\ & \move_translator_inst|Tx_state~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state~19_combout\,
	datab => \move_translator_inst|Tx_state.axis_y~q\,
	datac => \move_translator_inst|Tx_state.axis_x~q\,
	datad => \move_translator_inst|Tx_state~22_combout\,
	combout => \move_translator_inst|Tx_state.axis_x~0_combout\);

-- Location: FF_X112_Y41_N13
\move_translator_inst|Tx_state.axis_x\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Tx_state.axis_x~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_state.axis_x~q\);

-- Location: LCCOMB_X113_Y41_N12
\move_translator_inst|Tx_state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Tx_state~21_combout\ = (\move_translator_inst|Tx_state.axis_x~q\ & (!\move_translator_inst|Tx_state.tile_pattern~q\ & !\move_translator_inst|Tx_state.line_feed~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_x~q\,
	datab => \move_translator_inst|Tx_state.tile_pattern~q\,
	datad => \move_translator_inst|Tx_state.line_feed~q\,
	combout => \move_translator_inst|Tx_state~21_combout\);

-- Location: FF_X113_Y41_N13
\move_translator_inst|Tx_state.axis_y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Tx_state~21_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|Tx_state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_state.axis_y~q\);

-- Location: LCCOMB_X113_Y43_N22
\move_translator_inst|Tx_state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Tx_state~20_combout\ = (\move_translator_inst|Tx_state.axis_y~q\ & (!\move_translator_inst|Tx_state.tile_pattern~q\ & !\move_translator_inst|Tx_state.line_feed~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_y~q\,
	datac => \move_translator_inst|Tx_state.tile_pattern~q\,
	datad => \move_translator_inst|Tx_state.line_feed~q\,
	combout => \move_translator_inst|Tx_state~20_combout\);

-- Location: LCCOMB_X113_Y41_N14
\move_translator_inst|Tx_state.tile_pattern~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Tx_state.tile_pattern~feeder_combout\ = \move_translator_inst|Tx_state~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move_translator_inst|Tx_state~20_combout\,
	combout => \move_translator_inst|Tx_state.tile_pattern~feeder_combout\);

-- Location: FF_X113_Y41_N15
\move_translator_inst|Tx_state.tile_pattern\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Tx_state.tile_pattern~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|Tx_state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_state.tile_pattern~q\);

-- Location: LCCOMB_X112_Y41_N14
\move_translator_inst|Tx_state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Tx_state~18_combout\ = (\move_translator_inst|Tx_state~17_combout\ & (((\move_translator_inst|Tx_state.axis_y~q\) # (!\move_translator_inst|LessThan0~1_combout\)) # (!\move_translator_inst|Tx_state.axis_x~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_x~q\,
	datab => \move_translator_inst|Tx_state.axis_y~q\,
	datac => \move_translator_inst|LessThan0~1_combout\,
	datad => \move_translator_inst|Tx_state~17_combout\,
	combout => \move_translator_inst|Tx_state~18_combout\);

-- Location: FF_X113_Y41_N3
\move_translator_inst|Tx_state.line_feed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|Tx_state.tile_pattern~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|Tx_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_state.line_feed~q\);

-- Location: LCCOMB_X113_Y41_N8
\move_translator_inst|Tx_state.idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Tx_state.idle~0_combout\ = !\move_translator_inst|Tx_state.line_feed~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move_translator_inst|Tx_state.line_feed~q\,
	combout => \move_translator_inst|Tx_state.idle~0_combout\);

-- Location: FF_X113_Y41_N9
\move_translator_inst|Tx_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Tx_state.idle~0_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|Tx_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_state.idle~q\);

-- Location: LCCOMB_X114_Y39_N24
\move_translator_inst|Tx_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Tx_en~0_combout\ = (\move_translator_inst|Tx_en~q\) # (\move_translator_inst|Tx_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \move_translator_inst|Tx_en~q\,
	datad => \move_translator_inst|Tx_state.idle~q\,
	combout => \move_translator_inst|Tx_en~0_combout\);

-- Location: FF_X114_Y39_N25
\move_translator_inst|Tx_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Tx_en~0_combout\,
	clrn => \reset~input_o\,
	sclr => \move_translator_inst|uut0|state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_en~q\);

-- Location: LCCOMB_X114_Y39_N30
\move_translator_inst|uut0|state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|state~21_combout\ = (\move_translator_inst|uut0|state.idle~q\ & (\move_translator_inst|uut0|LessThan0~4_combout\ & ((\move_translator_inst|uut0|state.start~q\)))) # (!\move_translator_inst|uut0|state.idle~q\ & 
-- (((\move_translator_inst|Tx_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|LessThan0~4_combout\,
	datab => \move_translator_inst|Tx_en~q\,
	datac => \move_translator_inst|uut0|state.start~q\,
	datad => \move_translator_inst|uut0|state.idle~q\,
	combout => \move_translator_inst|uut0|state~21_combout\);

-- Location: FF_X114_Y39_N31
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

-- Location: LCCOMB_X114_Y39_N20
\move_translator_inst|uut0|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|state~19_combout\ = (!\move_translator_inst|uut0|LessThan0~4_combout\ & \move_translator_inst|uut0|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \move_translator_inst|uut0|LessThan0~4_combout\,
	datad => \move_translator_inst|uut0|state.idle~q\,
	combout => \move_translator_inst|uut0|state~19_combout\);

-- Location: FF_X114_Y38_N3
\move_translator_inst|uut0|state.bit0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|uut0|state.start~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|state.bit0~q\);

-- Location: LCCOMB_X114_Y38_N8
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

-- Location: FF_X114_Y38_N9
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

-- Location: FF_X114_Y38_N15
\move_translator_inst|uut0|state.bit2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|uut0|state.bit1~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|state.bit2~q\);

-- Location: FF_X114_Y38_N13
\move_translator_inst|uut0|state.bit3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|uut0|state.bit2~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|state.bit3~q\);

-- Location: LCCOMB_X114_Y38_N22
\move_translator_inst|uut0|state.bit4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|state.bit4~feeder_combout\ = \move_translator_inst|uut0|state.bit3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move_translator_inst|uut0|state.bit3~q\,
	combout => \move_translator_inst|uut0|state.bit4~feeder_combout\);

-- Location: FF_X114_Y38_N23
\move_translator_inst|uut0|state.bit4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|state.bit4~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|state.bit4~q\);

-- Location: FF_X114_Y38_N21
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

-- Location: LCCOMB_X114_Y38_N10
\move_translator_inst|uut0|state.bit6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|state.bit6~feeder_combout\ = \move_translator_inst|uut0|state.bit5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move_translator_inst|uut0|state.bit5~q\,
	combout => \move_translator_inst|uut0|state.bit6~feeder_combout\);

-- Location: FF_X114_Y38_N11
\move_translator_inst|uut0|state.bit6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|state.bit6~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|state.bit6~q\);

-- Location: LCCOMB_X114_Y38_N30
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

-- Location: FF_X114_Y38_N31
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

-- Location: FF_X114_Y38_N17
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

-- Location: LCCOMB_X114_Y39_N12
\move_translator_inst|uut0|state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|state~20_combout\ = (\move_translator_inst|uut0|state.idle~q\ & ((\move_translator_inst|uut0|LessThan0~4_combout\) # ((!\move_translator_inst|uut0|state.stop~q\)))) # (!\move_translator_inst|uut0|state.idle~q\ & 
-- (((\move_translator_inst|Tx_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|LessThan0~4_combout\,
	datab => \move_translator_inst|uut0|state.stop~q\,
	datac => \move_translator_inst|uut0|state.idle~q\,
	datad => \move_translator_inst|Tx_en~q\,
	combout => \move_translator_inst|uut0|state~20_combout\);

-- Location: FF_X114_Y39_N13
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

-- Location: LCCOMB_X113_Y39_N6
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

-- Location: LCCOMB_X114_Y39_N2
\move_translator_inst|uut0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~38_combout\ = (\move_translator_inst|uut0|LessThan0~4_combout\ & (\move_translator_inst|uut0|Add0~0_combout\ & \move_translator_inst|uut0|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|LessThan0~4_combout\,
	datac => \move_translator_inst|uut0|Add0~0_combout\,
	datad => \move_translator_inst|uut0|state.idle~q\,
	combout => \move_translator_inst|uut0|Add0~38_combout\);

-- Location: LCCOMB_X114_Y40_N6
\move_translator_inst|uut0|counter[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|counter[0]~feeder_combout\ = \move_translator_inst|uut0|Add0~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move_translator_inst|uut0|Add0~38_combout\,
	combout => \move_translator_inst|uut0|counter[0]~feeder_combout\);

-- Location: LCCOMB_X114_Y40_N2
\move_translator_inst|uut0|counter[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|counter[5]~0_combout\ = (\move_translator_inst|uut0|state.idle~q\) # (\move_translator_inst|Tx_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|uut0|state.idle~q\,
	datad => \move_translator_inst|Tx_en~q\,
	combout => \move_translator_inst|uut0|counter[5]~0_combout\);

-- Location: FF_X114_Y40_N7
\move_translator_inst|uut0|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|counter[0]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(0));

-- Location: LCCOMB_X113_Y39_N8
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

-- Location: LCCOMB_X114_Y39_N10
\move_translator_inst|uut0|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~33_combout\ = (\move_translator_inst|uut0|Add0~2_combout\ & (\move_translator_inst|uut0|LessThan0~4_combout\ & \move_translator_inst|uut0|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|Add0~2_combout\,
	datac => \move_translator_inst|uut0|LessThan0~4_combout\,
	datad => \move_translator_inst|uut0|state.idle~q\,
	combout => \move_translator_inst|uut0|Add0~33_combout\);

-- Location: FF_X114_Y40_N31
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
	ena => \move_translator_inst|uut0|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(1));

-- Location: LCCOMB_X113_Y39_N10
\move_translator_inst|uut0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~4_combout\ = (\move_translator_inst|uut0|counter\(2) & (\move_translator_inst|uut0|Add0~3\ $ (GND))) # (!\move_translator_inst|uut0|counter\(2) & (!\move_translator_inst|uut0|Add0~3\ & VCC))
-- \move_translator_inst|uut0|Add0~5\ = CARRY((\move_translator_inst|uut0|counter\(2) & !\move_translator_inst|uut0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|uut0|counter\(2),
	datad => VCC,
	cin => \move_translator_inst|uut0|Add0~3\,
	combout => \move_translator_inst|uut0|Add0~4_combout\,
	cout => \move_translator_inst|uut0|Add0~5\);

-- Location: LCCOMB_X114_Y39_N0
\move_translator_inst|uut0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~32_combout\ = (\move_translator_inst|uut0|Add0~4_combout\ & (\move_translator_inst|uut0|LessThan0~4_combout\ & \move_translator_inst|uut0|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|Add0~4_combout\,
	datac => \move_translator_inst|uut0|LessThan0~4_combout\,
	datad => \move_translator_inst|uut0|state.idle~q\,
	combout => \move_translator_inst|uut0|Add0~32_combout\);

-- Location: LCCOMB_X114_Y40_N12
\move_translator_inst|uut0|counter[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|counter[2]~feeder_combout\ = \move_translator_inst|uut0|Add0~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \move_translator_inst|uut0|Add0~32_combout\,
	combout => \move_translator_inst|uut0|counter[2]~feeder_combout\);

-- Location: FF_X114_Y40_N13
\move_translator_inst|uut0|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|counter[2]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(2));

-- Location: LCCOMB_X113_Y39_N12
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

-- Location: LCCOMB_X114_Y40_N18
\move_translator_inst|uut0|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~35_combout\ = (\move_translator_inst|uut0|LessThan0~4_combout\ & (\move_translator_inst|uut0|state.idle~q\ & \move_translator_inst|uut0|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|LessThan0~4_combout\,
	datab => \move_translator_inst|uut0|state.idle~q\,
	datac => \move_translator_inst|uut0|Add0~6_combout\,
	combout => \move_translator_inst|uut0|Add0~35_combout\);

-- Location: FF_X114_Y40_N19
\move_translator_inst|uut0|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|Add0~35_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(3));

-- Location: LCCOMB_X113_Y39_N14
\move_translator_inst|uut0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~8_combout\ = (\move_translator_inst|uut0|counter\(4) & (\move_translator_inst|uut0|Add0~7\ $ (GND))) # (!\move_translator_inst|uut0|counter\(4) & (!\move_translator_inst|uut0|Add0~7\ & VCC))
-- \move_translator_inst|uut0|Add0~9\ = CARRY((\move_translator_inst|uut0|counter\(4) & !\move_translator_inst|uut0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|uut0|counter\(4),
	datad => VCC,
	cin => \move_translator_inst|uut0|Add0~7\,
	combout => \move_translator_inst|uut0|Add0~8_combout\,
	cout => \move_translator_inst|uut0|Add0~9\);

-- Location: LCCOMB_X114_Y40_N0
\move_translator_inst|uut0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~36_combout\ = (\move_translator_inst|uut0|state.idle~q\ & (\move_translator_inst|uut0|LessThan0~4_combout\ & \move_translator_inst|uut0|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|uut0|state.idle~q\,
	datac => \move_translator_inst|uut0|LessThan0~4_combout\,
	datad => \move_translator_inst|uut0|Add0~8_combout\,
	combout => \move_translator_inst|uut0|Add0~36_combout\);

-- Location: FF_X114_Y40_N1
\move_translator_inst|uut0|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|Add0~36_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(4));

-- Location: LCCOMB_X113_Y39_N16
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

-- Location: LCCOMB_X114_Y40_N20
\move_translator_inst|uut0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~34_combout\ = (\move_translator_inst|uut0|state.idle~q\ & (\move_translator_inst|uut0|LessThan0~4_combout\ & \move_translator_inst|uut0|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|uut0|state.idle~q\,
	datac => \move_translator_inst|uut0|LessThan0~4_combout\,
	datad => \move_translator_inst|uut0|Add0~10_combout\,
	combout => \move_translator_inst|uut0|Add0~34_combout\);

-- Location: FF_X114_Y40_N21
\move_translator_inst|uut0|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|Add0~34_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(5));

-- Location: LCCOMB_X113_Y39_N18
\move_translator_inst|uut0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~12_combout\ = (\move_translator_inst|uut0|counter\(6) & (\move_translator_inst|uut0|Add0~11\ $ (GND))) # (!\move_translator_inst|uut0|counter\(6) & (!\move_translator_inst|uut0|Add0~11\ & VCC))
-- \move_translator_inst|uut0|Add0~13\ = CARRY((\move_translator_inst|uut0|counter\(6) & !\move_translator_inst|uut0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|uut0|counter\(6),
	datad => VCC,
	cin => \move_translator_inst|uut0|Add0~11\,
	combout => \move_translator_inst|uut0|Add0~12_combout\,
	cout => \move_translator_inst|uut0|Add0~13\);

-- Location: LCCOMB_X114_Y40_N10
\move_translator_inst|uut0|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~37_combout\ = (\move_translator_inst|uut0|Add0~12_combout\ & (\move_translator_inst|uut0|state.idle~q\ & \move_translator_inst|uut0|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|Add0~12_combout\,
	datab => \move_translator_inst|uut0|state.idle~q\,
	datac => \move_translator_inst|uut0|LessThan0~4_combout\,
	combout => \move_translator_inst|uut0|Add0~37_combout\);

-- Location: FF_X114_Y40_N11
\move_translator_inst|uut0|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|Add0~37_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(6));

-- Location: LCCOMB_X113_Y39_N0
\move_translator_inst|uut0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|LessThan0~3_combout\ = ((!\move_translator_inst|uut0|counter\(5) & !\move_translator_inst|uut0|counter\(4))) # (!\move_translator_inst|uut0|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|counter\(5),
	datab => \move_translator_inst|uut0|counter\(6),
	datad => \move_translator_inst|uut0|counter\(4),
	combout => \move_translator_inst|uut0|LessThan0~3_combout\);

-- Location: LCCOMB_X113_Y39_N20
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

-- Location: LCCOMB_X114_Y40_N14
\move_translator_inst|uut0|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~31_combout\ = (\move_translator_inst|uut0|Add0~14_combout\ & (\move_translator_inst|uut0|state.idle~q\ & \move_translator_inst|uut0|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|Add0~14_combout\,
	datab => \move_translator_inst|uut0|state.idle~q\,
	datac => \move_translator_inst|uut0|LessThan0~4_combout\,
	combout => \move_translator_inst|uut0|Add0~31_combout\);

-- Location: FF_X114_Y40_N15
\move_translator_inst|uut0|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|Add0~31_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(7));

-- Location: LCCOMB_X113_Y39_N22
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

-- Location: LCCOMB_X114_Y40_N16
\move_translator_inst|uut0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~30_combout\ = (\move_translator_inst|uut0|LessThan0~4_combout\ & (\move_translator_inst|uut0|state.idle~q\ & \move_translator_inst|uut0|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|LessThan0~4_combout\,
	datac => \move_translator_inst|uut0|state.idle~q\,
	datad => \move_translator_inst|uut0|Add0~16_combout\,
	combout => \move_translator_inst|uut0|Add0~30_combout\);

-- Location: FF_X114_Y40_N17
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
	ena => \move_translator_inst|uut0|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(8));

-- Location: LCCOMB_X113_Y39_N24
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

-- Location: LCCOMB_X114_Y40_N26
\move_translator_inst|uut0|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~29_combout\ = (\move_translator_inst|uut0|LessThan0~4_combout\ & (\move_translator_inst|uut0|state.idle~q\ & \move_translator_inst|uut0|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|LessThan0~4_combout\,
	datab => \move_translator_inst|uut0|state.idle~q\,
	datac => \move_translator_inst|uut0|Add0~18_combout\,
	combout => \move_translator_inst|uut0|Add0~29_combout\);

-- Location: FF_X114_Y40_N27
\move_translator_inst|uut0|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|Add0~29_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(9));

-- Location: LCCOMB_X113_Y39_N26
\move_translator_inst|uut0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~20_combout\ = (\move_translator_inst|uut0|counter\(10) & (\move_translator_inst|uut0|Add0~19\ $ (GND))) # (!\move_translator_inst|uut0|counter\(10) & (!\move_translator_inst|uut0|Add0~19\ & VCC))
-- \move_translator_inst|uut0|Add0~21\ = CARRY((\move_translator_inst|uut0|counter\(10) & !\move_translator_inst|uut0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|counter\(10),
	datad => VCC,
	cin => \move_translator_inst|uut0|Add0~19\,
	combout => \move_translator_inst|uut0|Add0~20_combout\,
	cout => \move_translator_inst|uut0|Add0~21\);

-- Location: LCCOMB_X114_Y40_N22
\move_translator_inst|uut0|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~25_combout\ = (\move_translator_inst|uut0|state.idle~q\ & (\move_translator_inst|uut0|LessThan0~4_combout\ & \move_translator_inst|uut0|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|uut0|state.idle~q\,
	datac => \move_translator_inst|uut0|LessThan0~4_combout\,
	datad => \move_translator_inst|uut0|Add0~20_combout\,
	combout => \move_translator_inst|uut0|Add0~25_combout\);

-- Location: FF_X114_Y40_N23
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
	ena => \move_translator_inst|uut0|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(10));

-- Location: LCCOMB_X113_Y39_N28
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

-- Location: LCCOMB_X114_Y40_N4
\move_translator_inst|uut0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~24_combout\ = (\move_translator_inst|uut0|LessThan0~4_combout\ & (\move_translator_inst|uut0|state.idle~q\ & \move_translator_inst|uut0|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|LessThan0~4_combout\,
	datab => \move_translator_inst|uut0|state.idle~q\,
	datac => \move_translator_inst|uut0|Add0~22_combout\,
	combout => \move_translator_inst|uut0|Add0~24_combout\);

-- Location: FF_X114_Y40_N5
\move_translator_inst|uut0|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|Add0~24_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(11));

-- Location: LCCOMB_X113_Y39_N30
\move_translator_inst|uut0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~26_combout\ = \move_translator_inst|uut0|Add0~23\ $ (!\move_translator_inst|uut0|counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \move_translator_inst|uut0|counter\(12),
	cin => \move_translator_inst|uut0|Add0~23\,
	combout => \move_translator_inst|uut0|Add0~26_combout\);

-- Location: LCCOMB_X114_Y40_N24
\move_translator_inst|uut0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Add0~28_combout\ = (\move_translator_inst|uut0|LessThan0~4_combout\ & (\move_translator_inst|uut0|state.idle~q\ & \move_translator_inst|uut0|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|LessThan0~4_combout\,
	datab => \move_translator_inst|uut0|state.idle~q\,
	datad => \move_translator_inst|uut0|Add0~26_combout\,
	combout => \move_translator_inst|uut0|Add0~28_combout\);

-- Location: FF_X114_Y40_N25
\move_translator_inst|uut0|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|uut0|Add0~28_combout\,
	clrn => \reset~input_o\,
	ena => \move_translator_inst|uut0|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|counter\(12));

-- Location: LCCOMB_X113_Y39_N4
\move_translator_inst|uut0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|LessThan0~0_combout\ = ((!\move_translator_inst|uut0|counter\(11) & !\move_translator_inst|uut0|counter\(10))) # (!\move_translator_inst|uut0|counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|counter\(11),
	datac => \move_translator_inst|uut0|counter\(10),
	datad => \move_translator_inst|uut0|counter\(12),
	combout => \move_translator_inst|uut0|LessThan0~0_combout\);

-- Location: LCCOMB_X114_Y40_N30
\move_translator_inst|uut0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|LessThan0~2_combout\ = (!\move_translator_inst|uut0|counter\(3) & (!\move_translator_inst|uut0|counter\(5) & ((!\move_translator_inst|uut0|counter\(1)) # (!\move_translator_inst|uut0|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|counter\(2),
	datab => \move_translator_inst|uut0|counter\(3),
	datac => \move_translator_inst|uut0|counter\(1),
	datad => \move_translator_inst|uut0|counter\(5),
	combout => \move_translator_inst|uut0|LessThan0~2_combout\);

-- Location: LCCOMB_X113_Y39_N2
\move_translator_inst|uut0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|LessThan0~1_combout\ = (!\move_translator_inst|uut0|counter\(11) & (!\move_translator_inst|uut0|counter\(9) & (!\move_translator_inst|uut0|counter\(7) & !\move_translator_inst|uut0|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|counter\(11),
	datab => \move_translator_inst|uut0|counter\(9),
	datac => \move_translator_inst|uut0|counter\(7),
	datad => \move_translator_inst|uut0|counter\(8),
	combout => \move_translator_inst|uut0|LessThan0~1_combout\);

-- Location: LCCOMB_X114_Y39_N26
\move_translator_inst|uut0|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|LessThan0~4_combout\ = (\move_translator_inst|uut0|LessThan0~0_combout\) # ((\move_translator_inst|uut0|LessThan0~1_combout\ & ((\move_translator_inst|uut0|LessThan0~3_combout\) # 
-- (\move_translator_inst|uut0|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|LessThan0~3_combout\,
	datab => \move_translator_inst|uut0|LessThan0~0_combout\,
	datac => \move_translator_inst|uut0|LessThan0~2_combout\,
	datad => \move_translator_inst|uut0|LessThan0~1_combout\,
	combout => \move_translator_inst|uut0|LessThan0~4_combout\);

-- Location: LCCOMB_X112_Y43_N12
\move_translator_inst|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector20~0_combout\ = (!\move_translator_inst|Tx_state.axis_y~q\ & (\move_translator_inst|Tx_state~19_combout\ & ((\move_translator_inst|LessThan0~1_combout\) # (\move_translator_inst|x_last[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_y~q\,
	datab => \move_translator_inst|Tx_state~19_combout\,
	datac => \move_translator_inst|LessThan0~1_combout\,
	datad => \move_translator_inst|x_last[0]~2_combout\,
	combout => \move_translator_inst|Selector20~0_combout\);

-- Location: LCCOMB_X112_Y42_N14
\move_translator_inst|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|process_0~9_combout\ = (\move_translator_inst|y_temp[4]~2_combout\ & ((\move_translator_inst|y_temp[3]~6_combout\ & ((!\move_translator_inst|y_temp[2]~10_combout\) # (!\move_translator_inst|y_temp[1]~12_combout\))) # 
-- (!\move_translator_inst|y_temp[3]~6_combout\ & ((\move_translator_inst|y_temp[2]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp[3]~6_combout\,
	datab => \move_translator_inst|y_temp[4]~2_combout\,
	datac => \move_translator_inst|y_temp[1]~12_combout\,
	datad => \move_translator_inst|y_temp[2]~10_combout\,
	combout => \move_translator_inst|process_0~9_combout\);

-- Location: LCCOMB_X112_Y42_N16
\move_translator_inst|Selector20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector20~3_combout\ = (!\move_translator_inst|process_0~9_combout\ & ((\move_translator_inst|y_last[0]~2_combout\) # ((!\move_translator_inst|Selector4~0_combout\ & !\move_translator_inst|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Selector4~0_combout\,
	datab => \move_translator_inst|process_0~8_combout\,
	datac => \move_translator_inst|process_0~9_combout\,
	datad => \move_translator_inst|y_last[0]~2_combout\,
	combout => \move_translator_inst|Selector20~3_combout\);

-- Location: LCCOMB_X113_Y41_N26
\move_translator_inst|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector15~0_combout\ = (\move_translator_inst|Tx_state.tile_pattern~q\ & ((edges_send(0) & ((edges_send(1)) # (edges_send(2)))) # (!edges_send(0) & ((!edges_send(2)) # (!edges_send(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => edges_send(0),
	datab => \move_translator_inst|Tx_state.tile_pattern~q\,
	datac => edges_send(1),
	datad => edges_send(2),
	combout => \move_translator_inst|Selector15~0_combout\);

-- Location: LCCOMB_X113_Y43_N28
\move_translator_inst|Selector20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector20~2_combout\ = (\move_translator_inst|Tx_state.line_feed~q\ & (\move_translator_inst|Tx_state~20_combout\ & (\move_translator_inst|Selector20~1_combout\))) # (!\move_translator_inst|Tx_state.line_feed~q\ & 
-- ((\move_translator_inst|Selector15~0_combout\) # ((\move_translator_inst|Tx_state~20_combout\ & \move_translator_inst|Selector20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.line_feed~q\,
	datab => \move_translator_inst|Tx_state~20_combout\,
	datac => \move_translator_inst|Selector20~1_combout\,
	datad => \move_translator_inst|Selector15~0_combout\,
	combout => \move_translator_inst|Selector20~2_combout\);

-- Location: LCCOMB_X113_Y43_N30
\move_translator_inst|Selector20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector20~4_combout\ = (\move_translator_inst|Selector20~0_combout\) # ((\move_translator_inst|Selector20~2_combout\) # ((\move_translator_inst|Tx_state~20_combout\ & \move_translator_inst|Selector20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Selector20~0_combout\,
	datab => \move_translator_inst|Tx_state~20_combout\,
	datac => \move_translator_inst|Selector20~3_combout\,
	datad => \move_translator_inst|Selector20~2_combout\,
	combout => \move_translator_inst|Selector20~4_combout\);

-- Location: LCCOMB_X113_Y42_N0
\move_translator_inst|Tx_data[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Tx_data[1]~1_combout\ = (\move_translator_inst|Tx_state.idle~q\ & (!\move_translator_inst|uut0|state.idle~q\ & \reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.idle~q\,
	datab => \move_translator_inst|uut0|state.idle~q\,
	datac => \reset~input_o\,
	combout => \move_translator_inst|Tx_data[1]~1_combout\);

-- Location: FF_X113_Y43_N31
\move_translator_inst|Tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Selector20~4_combout\,
	ena => \move_translator_inst|Tx_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_data\(0));

-- Location: LCCOMB_X114_Y40_N8
\move_translator_inst|uut0|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|process_0~0_combout\ = (!\move_translator_inst|uut0|state.idle~q\ & \move_translator_inst|Tx_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|uut0|state.idle~q\,
	datad => \move_translator_inst|Tx_en~q\,
	combout => \move_translator_inst|uut0|process_0~0_combout\);

-- Location: FF_X114_Y38_N27
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

-- Location: LCCOMB_X114_Y38_N26
\move_translator_inst|uut0|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Selector0~3_combout\ = (\move_translator_inst|uut0|state.stop~q\) # ((\move_translator_inst|uut0|state.bit7~q\) # ((\move_translator_inst|uut0|state.start~q\ & \move_translator_inst|uut0|reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.start~q\,
	datab => \move_translator_inst|uut0|state.stop~q\,
	datac => \move_translator_inst|uut0|reg\(0),
	datad => \move_translator_inst|uut0|state.bit7~q\,
	combout => \move_translator_inst|uut0|Selector0~3_combout\);

-- Location: LCCOMB_X114_Y41_N14
\move_translator_inst|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector15~1_combout\ = (\move_translator_inst|Selector15~0_combout\) # ((\move_translator_inst|Tx_state.axis_y~q\) # ((\move_translator_inst|Tx_data\(5) & !\move_translator_inst|Tx_state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Selector15~0_combout\,
	datab => \move_translator_inst|Tx_state.axis_y~q\,
	datac => \move_translator_inst|Tx_data\(5),
	datad => \move_translator_inst|Tx_state.idle~q\,
	combout => \move_translator_inst|Selector15~1_combout\);

-- Location: LCCOMB_X113_Y42_N30
\move_translator_inst|Tx_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Tx_data[0]~0_combout\ = (!\move_translator_inst|uut0|state.idle~q\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \move_translator_inst|uut0|state.idle~q\,
	datad => \reset~input_o\,
	combout => \move_translator_inst|Tx_data[0]~0_combout\);

-- Location: FF_X114_Y41_N15
\move_translator_inst|Tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Selector15~1_combout\,
	ena => \move_translator_inst|Tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_data\(5));

-- Location: FF_X114_Y38_N29
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

-- Location: LCCOMB_X113_Y41_N24
\move_translator_inst|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector14~0_combout\ = (\move_translator_inst|Tx_state.tile_pattern~q\ & ((edges_send(0) & (!edges_send(1) & !edges_send(2))) # (!edges_send(0) & (edges_send(1) & edges_send(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => edges_send(0),
	datab => \move_translator_inst|Tx_state.tile_pattern~q\,
	datac => edges_send(1),
	datad => edges_send(2),
	combout => \move_translator_inst|Selector14~0_combout\);

-- Location: LCCOMB_X114_Y41_N28
\move_translator_inst|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector14~1_combout\ = (\move_translator_inst|Tx_state.axis_x~q\) # ((\move_translator_inst|Selector14~0_combout\) # ((!\move_translator_inst|Tx_state.idle~q\ & \move_translator_inst|Tx_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.idle~q\,
	datab => \move_translator_inst|Tx_state.axis_x~q\,
	datac => \move_translator_inst|Tx_data\(6),
	datad => \move_translator_inst|Selector14~0_combout\,
	combout => \move_translator_inst|Selector14~1_combout\);

-- Location: FF_X114_Y41_N29
\move_translator_inst|Tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Selector14~1_combout\,
	ena => \move_translator_inst|Tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_data\(6));

-- Location: FF_X114_Y40_N9
\move_translator_inst|uut0|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \move_translator_inst|Tx_data\(6),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \move_translator_inst|uut0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|uut0|reg\(6));

-- Location: LCCOMB_X114_Y38_N28
\move_translator_inst|uut0|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Selector0~0_combout\ = (\move_translator_inst|uut0|state.bit4~q\ & ((\move_translator_inst|uut0|reg\(5)) # ((\move_translator_inst|uut0|state.bit5~q\ & \move_translator_inst|uut0|reg\(6))))) # 
-- (!\move_translator_inst|uut0|state.bit4~q\ & (\move_translator_inst|uut0|state.bit5~q\ & ((\move_translator_inst|uut0|reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.bit4~q\,
	datab => \move_translator_inst|uut0|state.bit5~q\,
	datac => \move_translator_inst|uut0|reg\(5),
	datad => \move_translator_inst|uut0|reg\(6),
	combout => \move_translator_inst|uut0|Selector0~0_combout\);

-- Location: LCCOMB_X112_Y42_N0
\move_translator_inst|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector19~0_combout\ = (\move_translator_inst|y_temp[3]~6_combout\ & (\move_translator_inst|y_temp[4]~2_combout\)) # (!\move_translator_inst|y_temp[3]~6_combout\ & ((\move_translator_inst|y_temp[4]~2_combout\ & 
-- ((\move_translator_inst|y_temp[2]~10_combout\))) # (!\move_translator_inst|y_temp[4]~2_combout\ & (\move_translator_inst|y_temp[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp[3]~6_combout\,
	datab => \move_translator_inst|y_temp[4]~2_combout\,
	datac => \move_translator_inst|y_temp[1]~12_combout\,
	datad => \move_translator_inst|y_temp[2]~10_combout\,
	combout => \move_translator_inst|Selector19~0_combout\);

-- Location: LCCOMB_X113_Y43_N20
\move_translator_inst|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector19~1_combout\ = (\move_translator_inst|Tx_state.axis_y~q\ & (\move_translator_inst|Selector19~0_combout\)) # (!\move_translator_inst|Tx_state.axis_y~q\ & (((\move_translator_inst|x_temp[1]~6_combout\ & 
-- !\move_translator_inst|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.axis_y~q\,
	datab => \move_translator_inst|Selector19~0_combout\,
	datac => \move_translator_inst|x_temp[1]~6_combout\,
	datad => \move_translator_inst|LessThan0~1_combout\,
	combout => \move_translator_inst|Selector19~1_combout\);

-- Location: LCCOMB_X113_Y43_N16
\move_translator_inst|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector19~2_combout\ = (\move_translator_inst|Tx_state.line_feed~q\) # ((\move_translator_inst|Selector15~0_combout\) # ((\move_translator_inst|Selector19~1_combout\ & !\move_translator_inst|Tx_state.tile_pattern~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.line_feed~q\,
	datab => \move_translator_inst|Selector19~1_combout\,
	datac => \move_translator_inst|Tx_state.tile_pattern~q\,
	datad => \move_translator_inst|Selector15~0_combout\,
	combout => \move_translator_inst|Selector19~2_combout\);

-- Location: FF_X113_Y43_N17
\move_translator_inst|Tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Selector19~2_combout\,
	ena => \move_translator_inst|Tx_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_data\(1));

-- Location: FF_X114_Y40_N29
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

-- Location: LCCOMB_X113_Y41_N16
\move_translator_inst|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector18~0_combout\ = (\move_translator_inst|Tx_state.tile_pattern~q\ & ((edges_send(0) & ((edges_send(1)) # (!edges_send(2)))) # (!edges_send(0) & ((edges_send(2)) # (!edges_send(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => edges_send(0),
	datab => \move_translator_inst|Tx_state.tile_pattern~q\,
	datac => edges_send(1),
	datad => edges_send(2),
	combout => \move_translator_inst|Selector18~0_combout\);

-- Location: LCCOMB_X111_Y42_N30
\move_translator_inst|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector18~1_combout\ = (!\move_translator_inst|y_temp[4]~2_combout\ & (\move_translator_inst|y_temp[2]~10_combout\ & (!\move_translator_inst|y_temp[3]~6_combout\ & \move_translator_inst|Tx_state.axis_y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp[4]~2_combout\,
	datab => \move_translator_inst|y_temp[2]~10_combout\,
	datac => \move_translator_inst|y_temp[3]~6_combout\,
	datad => \move_translator_inst|Tx_state.axis_y~q\,
	combout => \move_translator_inst|Selector18~1_combout\);

-- Location: LCCOMB_X114_Y41_N18
\move_translator_inst|Selector18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector18~2_combout\ = (\move_translator_inst|Selector18~0_combout\) # ((\move_translator_inst|Selector18~1_combout\) # ((!\move_translator_inst|Tx_state.idle~q\ & \move_translator_inst|Tx_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Selector18~0_combout\,
	datab => \move_translator_inst|Tx_state.idle~q\,
	datac => \move_translator_inst|Tx_data\(2),
	datad => \move_translator_inst|Selector18~1_combout\,
	combout => \move_translator_inst|Selector18~2_combout\);

-- Location: LCCOMB_X114_Y41_N30
\move_translator_inst|Selector18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector18~3_combout\ = (\move_translator_inst|Selector18~2_combout\) # ((\move_translator_inst|x_temp[2]~4_combout\ & (\move_translator_inst|Tx_state.axis_x~q\ & !\move_translator_inst|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|x_temp[2]~4_combout\,
	datab => \move_translator_inst|Tx_state.axis_x~q\,
	datac => \move_translator_inst|LessThan0~1_combout\,
	datad => \move_translator_inst|Selector18~2_combout\,
	combout => \move_translator_inst|Selector18~3_combout\);

-- Location: FF_X114_Y41_N31
\move_translator_inst|Tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Selector18~3_combout\,
	ena => \move_translator_inst|Tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_data\(2));

-- Location: FF_X114_Y40_N3
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

-- Location: LCCOMB_X114_Y40_N28
\move_translator_inst|uut0|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Selector0~2_combout\ = (\move_translator_inst|uut0|state.bit1~q\ & ((\move_translator_inst|uut0|reg\(2)) # ((\move_translator_inst|uut0|state.bit0~q\ & \move_translator_inst|uut0|reg\(1))))) # 
-- (!\move_translator_inst|uut0|state.bit1~q\ & (\move_translator_inst|uut0|state.bit0~q\ & (\move_translator_inst|uut0|reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.bit1~q\,
	datab => \move_translator_inst|uut0|state.bit0~q\,
	datac => \move_translator_inst|uut0|reg\(1),
	datad => \move_translator_inst|uut0|reg\(2),
	combout => \move_translator_inst|uut0|Selector0~2_combout\);

-- Location: LCCOMB_X112_Y42_N12
\move_translator_inst|Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector17~2_combout\ = (!\move_translator_inst|y_temp[1]~12_combout\ & (!\move_translator_inst|y_temp[2]~10_combout\ & (\move_translator_inst|y_temp[3]~6_combout\ & !\move_translator_inst|y_temp[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|y_temp[1]~12_combout\,
	datab => \move_translator_inst|y_temp[2]~10_combout\,
	datac => \move_translator_inst|y_temp[3]~6_combout\,
	datad => \move_translator_inst|y_temp[4]~2_combout\,
	combout => \move_translator_inst|Selector17~2_combout\);

-- Location: LCCOMB_X112_Y42_N2
\move_translator_inst|Selector17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector17~3_combout\ = (\move_translator_inst|Tx_data\(3) & (((\move_translator_inst|Selector17~2_combout\)) # (!\move_translator_inst|Tx_state.axis_y~q\))) # (!\move_translator_inst|Tx_data\(3) & 
-- (\move_translator_inst|Tx_state.idle~q\ & ((\move_translator_inst|Selector17~2_combout\) # (!\move_translator_inst|Tx_state.axis_y~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_data\(3),
	datab => \move_translator_inst|Tx_state.axis_y~q\,
	datac => \move_translator_inst|Tx_state.idle~q\,
	datad => \move_translator_inst|Selector17~2_combout\,
	combout => \move_translator_inst|Selector17~3_combout\);

-- Location: LCCOMB_X112_Y42_N20
\move_translator_inst|Selector17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector17~4_combout\ = (\move_translator_inst|Selector17~3_combout\ & (((!\move_translator_inst|LessThan0~0_combout\ & \move_translator_inst|x_temp[3]~2_combout\)) # (!\move_translator_inst|Tx_state.axis_x~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|LessThan0~0_combout\,
	datab => \move_translator_inst|Tx_state.axis_x~q\,
	datac => \move_translator_inst|x_temp[3]~2_combout\,
	datad => \move_translator_inst|Selector17~3_combout\,
	combout => \move_translator_inst|Selector17~4_combout\);

-- Location: FF_X112_Y42_N21
\move_translator_inst|Tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Selector17~4_combout\,
	ena => \move_translator_inst|Tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_data\(3));

-- Location: FF_X114_Y38_N25
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

-- Location: LCCOMB_X114_Y41_N0
\move_translator_inst|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector16~0_combout\ = (\move_translator_inst|Tx_state.axis_y~q\) # ((\move_translator_inst|Selector14~0_combout\) # ((!\move_translator_inst|Tx_state.idle~q\ & \move_translator_inst|Tx_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|Tx_state.idle~q\,
	datab => \move_translator_inst|Tx_data\(4),
	datac => \move_translator_inst|Tx_state.axis_y~q\,
	datad => \move_translator_inst|Selector14~0_combout\,
	combout => \move_translator_inst|Selector16~0_combout\);

-- Location: LCCOMB_X114_Y41_N20
\move_translator_inst|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|Selector16~1_combout\ = (\move_translator_inst|Selector16~0_combout\) # ((!\move_translator_inst|LessThan0~1_combout\ & (\move_translator_inst|Tx_state.axis_x~q\ & \move_translator_inst|x_temp[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|LessThan0~1_combout\,
	datab => \move_translator_inst|Tx_state.axis_x~q\,
	datac => \move_translator_inst|x_temp[4]~0_combout\,
	datad => \move_translator_inst|Selector16~0_combout\,
	combout => \move_translator_inst|Selector16~1_combout\);

-- Location: FF_X114_Y41_N21
\move_translator_inst|Tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \move_translator_inst|Selector16~1_combout\,
	ena => \move_translator_inst|Tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \move_translator_inst|Tx_data\(4));

-- Location: LCCOMB_X114_Y38_N18
\move_translator_inst|uut0|reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|reg[4]~feeder_combout\ = \move_translator_inst|Tx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \move_translator_inst|Tx_data\(4),
	combout => \move_translator_inst|uut0|reg[4]~feeder_combout\);

-- Location: FF_X114_Y38_N19
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

-- Location: LCCOMB_X114_Y38_N24
\move_translator_inst|uut0|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Selector0~1_combout\ = (\move_translator_inst|uut0|state.bit3~q\ & ((\move_translator_inst|uut0|reg\(4)) # ((\move_translator_inst|uut0|state.bit2~q\ & \move_translator_inst|uut0|reg\(3))))) # 
-- (!\move_translator_inst|uut0|state.bit3~q\ & (\move_translator_inst|uut0|state.bit2~q\ & (\move_translator_inst|uut0|reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|state.bit3~q\,
	datab => \move_translator_inst|uut0|state.bit2~q\,
	datac => \move_translator_inst|uut0|reg\(3),
	datad => \move_translator_inst|uut0|reg\(4),
	combout => \move_translator_inst|uut0|Selector0~1_combout\);

-- Location: LCCOMB_X114_Y38_N0
\move_translator_inst|uut0|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Selector0~4_combout\ = (\move_translator_inst|uut0|Selector0~3_combout\) # ((\move_translator_inst|uut0|Selector0~0_combout\) # ((\move_translator_inst|uut0|Selector0~2_combout\) # 
-- (\move_translator_inst|uut0|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|Selector0~3_combout\,
	datab => \move_translator_inst|uut0|Selector0~0_combout\,
	datac => \move_translator_inst|uut0|Selector0~2_combout\,
	datad => \move_translator_inst|uut0|Selector0~1_combout\,
	combout => \move_translator_inst|uut0|Selector0~4_combout\);

-- Location: LCCOMB_X114_Y39_N8
\move_translator_inst|uut0|Txd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Txd~2_combout\ = (!\move_translator_inst|uut0|Txd~q\ & ((\move_translator_inst|uut0|state.idle~q\ & ((\move_translator_inst|uut0|LessThan0~4_combout\))) # (!\move_translator_inst|uut0|state.idle~q\ & 
-- (!\move_translator_inst|Tx_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|Txd~q\,
	datab => \move_translator_inst|Tx_en~q\,
	datac => \move_translator_inst|uut0|LessThan0~4_combout\,
	datad => \move_translator_inst|uut0|state.idle~q\,
	combout => \move_translator_inst|uut0|Txd~2_combout\);

-- Location: LCCOMB_X114_Y39_N6
\move_translator_inst|uut0|Txd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \move_translator_inst|uut0|Txd~3_combout\ = (!\move_translator_inst|uut0|Txd~2_combout\ & ((\move_translator_inst|uut0|LessThan0~4_combout\) # ((!\move_translator_inst|uut0|state.idle~q\) # (!\move_translator_inst|uut0|Selector0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \move_translator_inst|uut0|LessThan0~4_combout\,
	datab => \move_translator_inst|uut0|Selector0~4_combout\,
	datac => \move_translator_inst|uut0|Txd~2_combout\,
	datad => \move_translator_inst|uut0|state.idle~q\,
	combout => \move_translator_inst|uut0|Txd~3_combout\);

-- Location: FF_X114_Y39_N7
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

-- Location: LCCOMB_X113_Y40_N2
\command_translator_inst|uut0|Rx_err~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Rx_err~1_combout\ = (\command_translator_inst|uut0|state.idle~q\ & (!\Rxd~input_o\ & \command_translator_inst|uut0|state.stop~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|state.idle~q\,
	datab => \Rxd~input_o\,
	datac => \command_translator_inst|uut0|state.stop~q\,
	combout => \command_translator_inst|uut0|Rx_err~1_combout\);

-- Location: LCCOMB_X113_Y40_N0
\command_translator_inst|uut0|Rx_err~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \command_translator_inst|uut0|Rx_err~2_combout\ = (\command_translator_inst|uut0|Rx_err~q\) # ((\command_translator_inst|uut0|Equal0~3_combout\ & \command_translator_inst|uut0|Rx_err~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \command_translator_inst|uut0|Equal0~3_combout\,
	datac => \command_translator_inst|uut0|Rx_err~q\,
	datad => \command_translator_inst|uut0|Rx_err~1_combout\,
	combout => \command_translator_inst|uut0|Rx_err~2_combout\);

-- Location: FF_X113_Y40_N1
\command_translator_inst|uut0|Rx_err\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \command_translator_inst|uut0|Rx_err~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \command_translator_inst|uut0|Rx_err~q\);
END structure;


