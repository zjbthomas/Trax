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
	reset,clock:	in std_LOGIC;
	Txd:	out std_logic; -- transmitter output signal
	Tx_busy:	out std_logic --transmitter busy, active high
);
end Trax;

architecture behavior of Trax is

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

component pll IS
PORT(
	inclk0: IN STD_LOGIC  := '0';
	c0		: OUT STD_LOGIC 
	);
END component;

signal clk_100	:std_logic;
signal x 		:std_logic_vector(4 downto 0); -- x coordinate
signal y 		:std_logic_vector(4 downto 0); -- y coordinate
signal edges	:std_logic_vector(3 downto 0); -- four edges of the tile, recorded counter-clockwisely starting from the top edge

begin

pll_inst:pll port map(clock,clk_100);
move_translator_inst:move_translator port map(
	reset => reset,
	clk => clk_100,
	x => x,
	y => y,
	edges => edges,
	Txd => Txd,
	Tx_busy =>Tx_busy
);

send: process(reset, clk_100)
variable counter: std_logic_vector(26 downto 0) := (others=>'0');
begin
	if (reset = '0') then
		counter := (others=>'0');
		x <= "00001";
		y <= "00002";
		edges <= "0011";
	elsif (clk_100 = '1' and clk_100'event) then
		counter := counter + '1';
		if(counter(26) = '1') then
			x <= x + '1';
			counter := (others => '0');
		end if;
	end if;
end process;

end architecture;