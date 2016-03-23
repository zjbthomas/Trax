----------------------------------------------------------------------------------
-- Company: The Hong Kong Polytechnic University (FPGA interest group led by Dr. Bruce Sham)
-- Engineer/Student: 
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: A simple UART for the following protocol: 19200 baud rate (100 MHz clock), no parity-check bit, 8 bits in one byte and one stopping bit.  
--
-- Dependencies: 
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

entity UART is
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
end UART;

architecture Behavioral of UART is

type state_type is (idle,start,data0,data1,data2,data3,data4,data5,data6,data7,stop);
signal stateTx : state_type :=idle;	--used for the Tx finite state machine
signal stateRx : state_type :=idle; --used for the Rx finite state machine
signal Tx_data_reg : std_logic_vector(7 downto 0); --store Tx_data temporarily
signal Rx_data_reg : std_logic_vector(7 downto 0); --store Rx_data temporarily
--signal cnt:integer range 0 to 5207:=0;			--

---- other signals

begin

-- tx process
	process(clk, reset)
	variable cntTx : std_logic_vector(12 downto 0) :=(others=>'0');
	begin
		if (reset = '0') then
			cntTx := (others=>'0');
			stateTx <= idle;
			Txd <= '1';
		elsif (clk = '1' and clk'event) then
			if (Tx_en = '1') then
				stateTx <= start;
				Tx_data_reg <= Tx_data;
			end if;
			if (cntTx(12) = '1' and cntTx(10) = '1') then	--when cntTx = 5120
				case stateTx is
					when idle =>
						Txd <= '1';
					when start =>
						Txd <= '0';
						stateTx <= data0;
					when data0 =>
						Txd <= Tx_data_reg(0);
						stateTx <= data1;
					when data1 =>
						Txd <= Tx_data_reg(1);
						stateTx <= data2;
					when data2 =>
						Txd <= Tx_data_reg(2);
						stateTx <= data3;
					when data3 =>
						Txd <= Tx_data_reg(3);
						stateTx <= data4;
					when data4 =>
						Txd <= Tx_data_reg(4);
						stateTx <= data5;
					when data5 =>
						Txd <= Tx_data_reg(5);
						stateTx <= data6;
					when data6 =>
						Txd <= Tx_data_reg(6);
						stateTx <= data7;
					when data7 =>
						Txd <= Tx_data_reg(7);
						stateTx <= stop;
					when stop =>
						Txd <= '1';
						stateTx <= idle;
					when others=>null;
				end case;
				cntTx := (others=>'0');
			end if;
			cntTx := cntTx + '1';
		end if;
	end process;
	
-- rx process
	process(clk, reset)
	variable cntRx : std_logic_vector(12 downto 0) :=(others=>'0');
	begin
		if (reset = '0') then
			cntRx := (others=>'0');
			stateRx <= idle;
			Rx_data_reg <= (others=>'0');
			Rx_data <= (others=>'0');
			Rx_err <= '0';
		elsif (clk = '1' and clk'event) then
			if (cntRx(12) = '1' and cntRx(10) = '1') then	--when cntRx = 5120
				cntRx := (others=>'0');
			elsif (cntRx = b"0101000000000") then	--when cntRx = 2560
				case stateRx is
					when idle =>
						if (Rxd = '0') then
							stateRx <= data0;
						end if;
					when data0 =>
						Rx_data_reg(0) <= Rxd;
						stateRx <= data1;
					when data1 =>
						Rx_data_reg(1) <= Rxd;
						stateRx <= data2;
					when data2 =>
						Rx_data_reg(2) <= Rxd;
						stateRx <= data3;
					when data3 =>
						Rx_data_reg(3) <= Rxd;
						stateRx <= data4;
					when data4 =>
						Rx_data_reg(4) <= Rxd;
						stateRx <= data5;
					when data5 =>
						Rx_data_reg(5) <= Rxd;
						stateRx <= data6;
					when data6 =>
						Rx_data_reg(6) <= Rxd;
						stateRx <= data7;
					when data7 =>
						Rx_data_reg(7) <= Rxd;
						stateRx <= stop;
					when stop =>
						Rx_err <= not Rxd;
						Rx_data <= Rx_data_reg;
						stateRx <= idle;
					when others=>null;
				end case;
			else Null;
			end if;
			cntRx := cntRx + '1';
		end if;
	end process;

----- combinational logic
Tx_busy <= '0' when stateTx=idle else '1';
Rx_busy <= '1' when stateRx=idle else '0';

end Behavioral;

