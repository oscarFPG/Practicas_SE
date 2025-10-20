--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
--Date        : Mon Oct 20 11:18:54 2025
--Host        : PC-OSCAR running 64-bit major release  (build 9200)
--Command     : generate_target design_2_wrapper.bd
--Design      : design_2_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_wrapper is
  port (
    buttons_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    leds_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset : in STD_LOGIC;
    switches_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
end design_2_wrapper;

architecture STRUCTURE of design_2_wrapper is
  component design_2 is
  port (
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    buttons_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    switches_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    leds_0 : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_2;
begin
design_2_i: component design_2
     port map (
      buttons_0(3 downto 0) => buttons_0(3 downto 0),
      leds_0(7 downto 0) => leds_0(7 downto 0),
      reset => reset,
      switches_0(3 downto 0) => switches_0(3 downto 0),
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
end STRUCTURE;
