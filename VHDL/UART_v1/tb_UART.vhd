----------------------------------------------------------------------------------
-- Company: The Hong Kong Polytechnic University (FPGA interest group led by Dr. Bruce Sham)
-- Engineer/Student: Thomas Junbin ZHANG 
-- 
-- Create Date: 26/Feb/2016
-- Design Name: UART
-- Module Name: tb_UART
-- Project Name: FPGA_Workshop
-- Target Devices: EP4CE115F29C8
-- Tool versions: Quartus II 13.0sp1 (64-bit)
-- Description: The test bench of the entity "UART".
--
-- Dependencies:
-- 1. UART.vhd
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

entity tb_UART is
end tb_UART;

architecture Behavioral of tb_UART is

component UART is
port (
	reset: 	in std_logic; -- active low
	clk:	in std_logic; -- clock
	Tx_data:	in std_logic_vector(7 downto 0); -- to-be-transmitted data
	Tx_en:	in std_logic; -- transmitter enable, active high, one clock
	Txd:	out std_logic; -- transmitter output signal
	Tx_busy:	out std_logic; --transmitter busy, active high
	Rx_data:	out std_logic_vector(7 downto 0); -- received data
	Rx_err:	out std_logic; -- error in receiving, active high
	Rxd:	in std_logic; -- receiver input signal
	Rx_busy:	out std_logic -- receiver busy, active low
);
end component;

signal reset,Tx_en,Tx_busy,Rx_err,Rx_busy:std_logic:='0';
signal clk,Txd,Rxd:std_logic:='1';
signal Tx_data,Rx_data:std_logic_vector(7 downto 0):=(others=>'0');
signal cnt:std_logic_vector(11 downto 0);

begin

	uut0: UART port map(
		reset => reset,
		clk => clk,
		Tx_data => Tx_data,
		Tx_en => Tx_en,
		Txd => Txd,
		Tx_busy => Tx_busy,
		Rx_data => Rx_data,
		Rx_err => Rx_err,
		Rxd => Rxd,
		Rx_busy => Rx_busy
	);

	process
	begin
	wait for 5 ns;
		clk<=not clk;
	end process;
	
	process
	begin
	wait for 115 ns;
		reset<='1';
	wait;
	end process;
	
	process(reset,clk)
	begin
	if reset='0' then
		cnt<=(others=>'0');
	elsif clk'event and clk='1' then
		if cnt<x"fff" then
			cnt<=cnt+'1';
		end if;
	end if;
	end process;
	
	process
	begin
	wait for 1 ms;
		Rxd<='0';
	wait for 52.1 us;
		Rxd<='1';
	wait for 52.1 us;
		Rxd<='0';
	wait for 52.1 us;
		Rxd<='0';
	wait for 52.1 us;
		Rxd<='1';
	wait for 52.1 us;
		Rxd<='1';
	wait for 52.1 us;
		Rxd<='0';
	wait for 52.1 us;
		Rxd<='1';
	wait for 52.1 us;
		Rxd<='0';
	wait for 52.1 us;
		Rxd<='1';
	wait;
	end process;
	
Tx_data<=x"d3";
Tx_en<='1' when cnt=x"ffe" else '0';

end Behavioral;

