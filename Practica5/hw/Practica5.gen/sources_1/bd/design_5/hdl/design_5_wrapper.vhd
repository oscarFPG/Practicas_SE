--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
--Date        : Mon Dec  1 12:44:31 2025
--Host        : PC-OSCAR running 64-bit major release  (build 9200)
--Command     : generate_target design_5_wrapper.bd
--Design      : design_5_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_5_wrapper is
  port (
    blue_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    green_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hsyncb_0 : out STD_LOGIC;
    red_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    vsyncb_0 : out STD_LOGIC
  );
end design_5_wrapper;

architecture STRUCTURE of design_5_wrapper is
  component design_5 is
  port (
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    hsyncb_0 : out STD_LOGIC;
    vsyncb_0 : out STD_LOGIC;
    red_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    green_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    blue_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
  end component design_5;
begin
design_5_i: component design_5
     port map (
      blue_0(3 downto 0) => blue_0(3 downto 0),
      green_0(3 downto 0) => green_0(3 downto 0),
      hsyncb_0 => hsyncb_0,
      red_0(3 downto 0) => red_0(3 downto 0),
      reset => reset,
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd,
      vsyncb_0 => vsyncb_0
    );
end STRUCTURE;
