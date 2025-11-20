--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
--Date        : Thu Nov 20 15:42:18 2025
--Host        : PC-OSCAR running 64-bit major release  (build 9200)
--Command     : generate_target design_4_wrapper.bd
--Design      : design_4_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_4_wrapper is
  port (
    col_clk_0 : out STD_LOGIC;
    col_serial_out_0 : out STD_LOGIC;
    conv_addr_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    conv_ale_0 : out STD_LOGIC;
    conv_clk_0 : out STD_LOGIC;
    conv_data_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    conv_eoc_0 : in STD_LOGIC;
    conv_oe_0 : out STD_LOGIC;
    conv_start_0 : out STD_LOGIC;
    reset : in STD_LOGIC;
    reset2_out_0 : out STD_LOGIC;
    reset_out_0 : out STD_LOGIC;
    row_clk_0 : out STD_LOGIC;
    row_serial_out_0 : out STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
end design_4_wrapper;

architecture STRUCTURE of design_4_wrapper is
  component design_4 is
  port (
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    conv_eoc_0 : in STD_LOGIC;
    conv_data_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    conv_clk_0 : out STD_LOGIC;
    conv_ale_0 : out STD_LOGIC;
    conv_start_0 : out STD_LOGIC;
    conv_addr_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    conv_oe_0 : out STD_LOGIC;
    col_serial_out_0 : out STD_LOGIC;
    col_clk_0 : out STD_LOGIC;
    row_serial_out_0 : out STD_LOGIC;
    row_clk_0 : out STD_LOGIC;
    reset_out_0 : out STD_LOGIC;
    reset2_out_0 : out STD_LOGIC
  );
  end component design_4;
begin
design_4_i: component design_4
     port map (
      col_clk_0 => col_clk_0,
      col_serial_out_0 => col_serial_out_0,
      conv_addr_0(2 downto 0) => conv_addr_0(2 downto 0),
      conv_ale_0 => conv_ale_0,
      conv_clk_0 => conv_clk_0,
      conv_data_0(7 downto 0) => conv_data_0(7 downto 0),
      conv_eoc_0 => conv_eoc_0,
      conv_oe_0 => conv_oe_0,
      conv_start_0 => conv_start_0,
      reset => reset,
      reset2_out_0 => reset2_out_0,
      reset_out_0 => reset_out_0,
      row_clk_0 => row_clk_0,
      row_serial_out_0 => row_serial_out_0,
      sys_clock => sys_clock
    );
end STRUCTURE;
