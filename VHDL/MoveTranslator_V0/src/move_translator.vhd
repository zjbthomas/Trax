----------------------------------------------------------------------------------
-- Company: The Hong Kong Polytechnic University (FPGA interest group led by Dr. Bruce Sham)
-- Engineer/Student: LYU Yetao Aaron
-- 
-- Create Date: 20/Mar/2016
-- Design Name: BetaTrax_V0
-- Module Name: move_translator
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

entity move_translator is
port(
	reset: 	in std_logic; -- active low
	clk:		in std_logic; -- clock
	x:			in std_logic_vector(4 downto 0); -- x coordinate
	y:			in std_logic_vector(4 downto 0); -- y coordinate
	edges: 	in std_logic_vector(3 downto 0); -- four edges of the tile, recorded counter-clockwisely starting from the top edge
	Txd:		out std_logic; -- transmitter output signal
	Tx_busy:	out std_logic --transmitter busy, active high
);
end move_translator;

architecture Behavioral of move_translator is

type states is (idle, axis_x, axis_y, tile_pattern);
signal Tx_state:		states := idle;
signal edges_last: 	std_logic_vector(3 downto 0) := (others=>'0'); -- last four edges of the tile, recorded counter-clockwisely starting from the top edge
signal x_last:  		std_logic_vector(4 downto 0) := (others=>'0'); -- last x coordinate
signal y_last:			std_logic_vector(4 downto 0) := (others=>'0'); -- last y coordinate
signal x_temp:  		std_logic_vector(4 downto 0) := (others=>'0'); -- temporary storage of x coordinate
signal y_temp:			std_logic_vector(4 downto 0) := (others=>'0'); -- temporary storage of y coordinate
signal pattern:		std_logic_vector(7 downto 0) := (others=>'0'); -- ASII Code of the tile pattern
signal Tx_data:		std_logic_vector(7 downto 0) := (others=>'0'); -- to-be-transmitted data
signal Tx_data_temp1:std_logic_vector(7 downto 0) := (others=>'0'); -- to-be-transmitted data
signal Tx_data_temp2:std_logic_vector(7 downto 0) := (others=>'0'); -- to-be-transmitted data
signal Tx_en:			std_logic  := '0'; -- transmitter enable, active high, one clock
signal Tx_busy_temp:	std_logic; -- transmitter busy, active high

--Component: The TX module of a simple UART for the following protocol: 19200 baud rate (100 MHz clock), no parity-check bit, 8 bits in one byte and one stopping bit.  
component TX is
port (
	reset: 	in std_logic; -- active low
	clk:		in std_logic; -- clock
	Tx_data:	in std_logic_vector(7 downto 0); -- to-be-transmitted data
	Tx_en:	in std_logic; -- transmitter enable, active high, one clock
	Txd:		out std_logic; -- transmitter output signal
	Tx_busy:	out std_logic --transmitter busy, active high
);
end component;

begin

	uut0: TX port map(
		reset => reset,
		clk => clk,
		Tx_data => Tx_data,
		Tx_en => Tx_en,
		Txd => Txd,
		Tx_busy => Tx_busy_temp
	);
	
	process(clk, reset)
	begin
		if (reset = '0') then
			edges_last <= edges;
			x_last <= x;
			y_last <= y;
			x_temp <= x;
			y_temp <= y;
			Tx_en <= '0';
			Tx_state <= idle;
		elsif (clk = '1' and clk'event) then
			case Tx_state is
				when idle =>
					if (Tx_busy_temp = '0') and ((edges /= edges_last) or (x /= x_last) or (y /= y_last))then
						edges_last <= edges;
						x_last <= x;
						y_last <= y;
						x_temp <= x;
						y_temp <= y;
						Tx_en <= '1';
						Tx_state <= axis_x;
					else
						Tx_en <= '0';
					end if;
				when axis_x =>
					if(x_temp > "11010") then
						x_temp <= x_temp - "11010";
					else
						Tx_state <= axis_y;
					end if;
					Tx_data <= x_temp + x"41";
				when axis_y =>
					if(y_temp > "11010") then
						y_temp <= y_temp - "11010";
					else
						Tx_state <= tile_pattern;
					end if;
					Tx_data <= y_temp + x"41";
				when tile_pattern =>
					Tx_data <= pattern;
					
					Tx_state <= idle;
				when others => Tx_state <= idle;
			end case;
		end if;
	end process;	
	
pattern <= x"2f" when (edges(0) = edges(1)) else
			x"5c" when (edges(1) = edges(2)) else
			x"2b";
			
Tx_busy <= Tx_busy_temp;

end Behavioral;