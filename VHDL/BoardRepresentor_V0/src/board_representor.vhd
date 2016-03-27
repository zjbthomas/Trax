----------------------------------------------------------------------------------
-- Company: The Hong Kong Polytechnic University (FPGA interest group led by Dr. Bruce Sham)
-- Engineer/Student: LYU Yetao Aaron
-- 
-- Create Date: 23/Mar/2016
-- Design Name: BetaTrax_V0
-- Module Name: board_representor
-- Project Name: BetaTrax
-- Target Devices: EP4CE115F29C8
-- Tool versions: Quartus II 13.0sp1 (64-bit)
-- Description: The move_translator will translate the tile type into corresponding comamand. 
--
-- Dependencies: N/A
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity board_representor is
port (
	reset: 	in std_logic; -- active low
	clk:		in std_logic; -- clock
	x:			in std_logic_vector(4 downto 0); -- x coordinate
	y:			in std_logic_vector(4 downto 0); -- y coordinate
	edges: 	in std_logic_vector(3 downto 0); -- four edges of the tile, recorded counter-clockwisely starting from the top edge
	Rx_data:	out std_logic_vector(7 downto 0); -- received data
	Rx_err:	out std_logic; -- error in receiving, active high
	Rxd:	in std_logic; -- receiver input signal
	Rx_busy:	out std_logic -- receiver busy, active low
);
end board_representor;