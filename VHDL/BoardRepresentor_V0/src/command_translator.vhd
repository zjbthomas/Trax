----------------------------------------------------------------------------------
-- Company: The Hong Kong Polytechnic University (FPGA interest group led by Dr. Bruce Sham)
-- Engineer/Student: LYU Yetao Aaron
-- 
-- Create Date: 24/Mar/2016
-- Design Name: BetaTrax_V0
-- Module Name: command_translator
-- Project Name: BetaTrax
-- Target Devices: EP4CE115F29C8
-- Tool versions: Quartus II 13.0sp1 (64-bit)
-- Description: The command_translator will translate the received command into corresponding tile type and tile position. 
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

entity command_translator is
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
end command_translator;

architecture Behavioral of command_translator is

type states is (idle, axis_x, axis_y, tile_pattern);
signal Rx_state:		states := idle;
signal Rx_data:		std_logic_vector(7 downto 0); -- received data
signal Rx_busy_temp:	std_logic; -- receiver busy, active low
signal x_temp:  		std_logic_vector(4 downto 0) := (others=>'0'); -- temporary storage of x coordinate
signal y_temp:			std_logic_vector(4 downto 0) := (others=>'0'); -- temporary storage of y coordinate

--Component: The RX module of a simple UART for the following protocol: 19200 baud rate (100 MHz clock), no parity-check bit, 8 bits in one byte and one stopping bit.  
component RX is
port (
	reset: 	in std_logic; -- active low
	clk:	in std_logic; -- clock
	Rx_data:	out std_logic_vector(7 downto 0); -- received data
	Rx_err:	out std_logic; -- error in receiving, active high
	Rxd:	in std_logic; -- receiver input signal
	Rx_busy:	out std_logic -- receiver busy, active low
);
end component;

begin

	uut0: RX port map(
		reset => reset,
		clk => clk,
		Rx_data => Rx_data,
		Rx_err => Rx_err,
		Rxd => Rxd,
		Rx_busy => Rx_busy_temp
	);
	
	process(Rx_busy_temp, reset)
	begin
		if (reset = '0') then
			x_temp <= (others => '0');
			y_temp <= (others => '0');
			Tranlation_err <= '0';
			Rx_state <= idle;
		elsif falling_edge(Rx_busy_temp) then
			case Rx_state is
				when idle =>
					if ((Rx_data < x"5b") and (Rx_data >= x"40")) then	--if the received data is axis_x
						x_temp <= Rx_data(4 downto 0);
						Rx_state <= axis_x;
					end if;
				when axis_x =>
					if ((Rx_data < x"3a") and (Rx_data >= x"30")) then	--if the received data is axis_y
						y_temp <= '0' & Rx_data(3 downto 0);
						Rx_state <= axis_y;
					else
						x_temp <= Rx_data(4 downto 0) + "11010";	--if the received data is axis_x
					end if;
				when axis_y =>
					case Rx_data is
						when x"2F" =>
							x <= x_temp;
							y <= y_temp;
							tile_type <= "01";
							Rx_state <= tile_pattern;
						when x"5C" =>
							x <= x_temp;
							y <= y_temp;
							tile_type <= "10";
							Rx_state <= tile_pattern;
						when x"2B" =>
							x <= x_temp;
							y <= y_temp;
							tile_type <= "11";
							Rx_state <= tile_pattern;
						when others =>	--if the received data is axis_y
							case y_temp(1 downto 0) is
								when "01" =>
									y_temp <= ('0' & Rx_data(3 downto 0)) + "01010";
								when "10" =>
									y_temp <= ('0' & Rx_data(3 downto 0)) + "10100";
								when "11" =>
									y_temp <= ('0' & Rx_data(3 downto 0)) + "11110";
								when others =>
									--Tranlation_err <= '1';
							end case;
					end case;
				when tile_pattern =>
					if (Rx_data = x"0a") then
						Rx_state <= idle;
					end if;
				when others =>
					Rx_state <= idle;
			end case;
		end if;
	end process;
	
	Rx_busy <= Rx_busy_temp;
	Translation_busy <= '0' when (Rx_state = idle or Rx_state = tile_pattern) else '1';
	
end Behavioral;