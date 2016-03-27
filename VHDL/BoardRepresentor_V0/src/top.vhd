----------------------------------------------------------------------------------
-- Company: The Hong Kong Polytechnic University (FPGA interest group led by Dr. Bruce Sham)
-- Engineer/Student: LYU Yetao Aaron
-- 
-- Create Date: 02/Feb/2016   
-- Design Name: BetaTrax_V0
-- Module Name: Trax 
-- Project Name: BetaTrax
-- Target Devices: EP4CE115F29C8
-- Tool versions: 
-- Description: This module is used as the top module.
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Trax is
port(
	reset:	in std_LOGIC;
	clock:	in std_LOGIC;
	Txd:		out std_logic; -- transmitter output signal
	Tx_busy:	out std_logic; --transmitter busy, active high
	Rxd:		in std_logic; -- receiver input signal
	Rx_busy:	out std_logic; -- receiver busy, active high
	Rx_err:	out std_logic; -- error in receiving, active high
	Translation_busy:	out std_logic; -- translate busy, active high
	Tranlation_err:	out std_logic -- error in command translation, active high
);
end Trax;

architecture behavior of Trax is

component pll IS
PORT(
	inclk0: IN STD_LOGIC  := '0';
	c0		: OUT STD_LOGIC 
	);
END component;

component move_translator is
port (
	reset: 	in std_logic; -- active low
	clk:		in std_logic; -- clock
	x:			in std_logic_vector(4 downto 0); -- x coordinate
	y:			in std_logic_vector(4 downto 0); -- y coordinate
	edges: 	in std_logic_vector(3 downto 0); -- four edges of the tile, recorded counter-clockwisely starting from the top edge
	Txd:		out std_logic; -- transmitter output signal
	Tx_busy:	out std_logic --transmitter busy, active high
);
end component;

component command_translator is
port (
	reset: 	in std_logic; -- active low
	clk:		in std_logic; -- clock
	Rx_err:	out std_logic; -- error in receiving, active high
	Tranlation_err:	out std_logic; -- error in command translation, active high
	Rxd:		in std_logic; -- receiver input signal
	Rx_busy:	out std_logic; -- receiver busy, active high
	Translation_busy:	out std_logic; -- translate busy, active high
	x:			out std_logic_vector(4 downto 0); -- x coordinate
	y:			out std_logic_vector(4 downto 0); -- y coordinate
	tile_type: 	out std_logic_vector(1 downto 0) -- pattern type of the tile
);
end component;

signal clk_100				:std_logic;
signal x_receive 			:std_logic_vector(4 downto 0); -- x coordinate
signal y_receive 			:std_logic_vector(4 downto 0); -- y coordinate
signal tile_type_receive:std_logic_vector(1 downto 0); -- pattern type of the tile
signal edges_receive		:std_logic_vector(3 downto 0); -- four edges of the tile, recorded counter-clockwisely starting from the top edge
signal x_send 				:std_logic_vector(4 downto 0); -- x coordinate
signal y_send 				:std_logic_vector(4 downto 0); -- y coordinate
signal edges_send			:std_logic_vector(3 downto 0); -- four edges of the tile, recorded counter-clockwisely starting from the top edge
signal Translation_busy_temp :std_logic; -- translate busy, active high

begin

pll_inst:pll port map(clock,clk_100);

command_translator_inst:command_translator port map(
	reset => reset,
	clk => clk_100,
	Rx_err => Rx_err,
	Tranlation_err => Tranlation_err,
	Rxd => Rxd,
	Rx_busy => Rx_busy,
	Translation_busy => Translation_busy_temp,
	x => x_receive,
	y => y_receive,
	tile_type => tile_type_receive
);

move_translator_inst:move_translator port map(
	reset => reset,
	clk => clk_100,
	x => x_send,
	y => y_send,
	edges => edges_send,
	Txd => Txd,
	Tx_busy =>Tx_busy
);

process(reset, Translation_busy_temp)
begin
	if (reset = '0') then

	elsif (falling_edge(Translation_busy_temp)) then
		case tile_type_receive is
			when "01" =>
				edges_receive <= "0011";
				edges_send <= "0011";
			when "10" =>
				edges_receive <= "0110";
				edges_send <= "0110";
			when "11" =>
				edges_receive <= "0101";
				edges_send <= "0101";
			when others =>
				NULL;
		end case;
		x_send <= x_receive;
		y_send <= y_receive;
		--edges_send <= edges_receive;
	end if;
end process;

Translation_busy <= Translation_busy_temp;

end architecture;