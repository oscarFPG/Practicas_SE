--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
--Date        : Tue Jan 27 01:35:52 2026
--Host        : PC-OSCAR running 64-bit major release  (build 9200)
--Command     : generate_target design_final_wrapper.bd
--Design      : design_final_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_final_wrapper is
  port (
    R_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    blue_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    blue_1 : out STD_LOGIC;
    col_clk_0 : out STD_LOGIC;
    col_serial_out_0 : out STD_LOGIC;
    control_motor_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    green_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    green_1 : out STD_LOGIC;
    hsyncb_0 : out STD_LOGIC;
    red_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    red_1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    reset2_out_0 : out STD_LOGIC;
    reset_out_0 : out STD_LOGIC;
    row_clk_0 : out STD_LOGIC;
    row_serial_out_0 : out STD_LOGIC;
    sys_clock : in STD_LOGIC;
    vsyncb_0 : out STD_LOGIC
  );
end design_final_wrapper;

architecture STRUCTURE of design_final_wrapper is
  component design_final is
  port (
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    R_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    col_serial_out_0 : out STD_LOGIC;
    col_clk_0 : out STD_LOGIC;
    row_serial_out_0 : out STD_LOGIC;
    row_clk_0 : out STD_LOGIC;
    reset_out_0 : out STD_LOGIC;
    reset2_out_0 : out STD_LOGIC;
    hsyncb_0 : out STD_LOGIC;
    vsyncb_0 : out STD_LOGIC;
    red_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    green_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    blue_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    red_1 : out STD_LOGIC;
    green_1 : out STD_LOGIC;
    blue_1 : out STD_LOGIC;
    control_motor_0 : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_final;
begin
design_final_i: component design_final
     port map (
      R_0(3 downto 0) => R_0(3 downto 0),
      S_0(3 downto 0) => S_0(3 downto 0),
      blue_0(3 downto 0) => blue_0(3 downto 0),
      blue_1 => blue_1,
      col_clk_0 => col_clk_0,
      col_serial_out_0 => col_serial_out_0,
      control_motor_0(3 downto 0) => control_motor_0(3 downto 0),
      green_0(3 downto 0) => green_0(3 downto 0),
      green_1 => green_1,
      hsyncb_0 => hsyncb_0,
      red_0(3 downto 0) => red_0(3 downto 0),
      red_1 => red_1,
      reset => reset,
      reset2_out_0 => reset2_out_0,
      reset_out_0 => reset_out_0,
      row_clk_0 => row_clk_0,
      row_serial_out_0 => row_serial_out_0,
      sys_clock => sys_clock,
      vsyncb_0 => vsyncb_0
    );
end STRUCTURE;
