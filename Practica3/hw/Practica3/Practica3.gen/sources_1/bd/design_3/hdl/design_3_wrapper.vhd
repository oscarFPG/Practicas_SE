library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_3_wrapper is
  port (
    R_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    red_0 : out STD_LOGIC;
    green_0 : out STD_LOGIC;
    blue_0 : out STD_LOGIC;
    red_1 : out STD_LOGIC;
    green_1 : out STD_LOGIC;
    blue_1 : out STD_LOGIC;
    green_2 : out STD_LOGIC;
    blue_2 : out STD_LOGIC;
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
end design_3_wrapper;

architecture STRUCTURE of design_3_wrapper is
  component design_3 is
  port (
    R_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    blue_0 : out STD_LOGIC;
    blue_1 : out STD_LOGIC;
    blue_2 : out STD_LOGIC;
    green_0 : out STD_LOGIC;
    green_1 : out STD_LOGIC;
    green_2 : out STD_LOGIC;
    red_0 : out STD_LOGIC;
    red_1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
  end component design_3;
begin
design_3_i: component design_3
     port map (
      R_0(3 downto 0) => R_0(3 downto 0),
      S_0(3 downto 0) => S_0(3 downto 0),
      blue_0 => blue_0,
      blue_1 => blue_1,
      blue_2 => blue_2,
      green_0 => green_0,
      green_1 => green_1,
      green_2 => green_2,
      red_0 => red_0,
      red_1 => red_1,
      reset => reset,
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
end STRUCTURE;