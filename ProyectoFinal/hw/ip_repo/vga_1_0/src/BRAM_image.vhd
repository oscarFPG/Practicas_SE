library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BRAM_image is
    port(
        clk_100mhz          : in  std_logic;
        clk_108mhz          : in  std_logic;
        reset_n             : in  std_logic;
        load_new_pixel      : in  std_logic;
        color_new_pixel     : in  std_logic_vector(11 downto 0);
        row_new_pixel       : in  std_logic_vector(3 downto 0);
        col_new_pixel       : in  std_logic_vector(3 downto 0);            
        row, col            : in  std_logic_vector(15 downto 0);
        rout, gout, bout    : out std_logic_vector(3 downto 0));
end entity;

architecture arch of BRAM_image is
 
-- Esta componente genera una matriz de 16*16 cuadrados
  component image
        port(
        clk_108mhz          : in  std_logic;
        reset_n             : in  std_logic;
        row, col            : in  std_logic_vector(15 downto 0);
        rout, gout, bout    : out std_logic_vector(3 downto 0);
        row_new_pixel: in  std_logic_vector(3 downto 0);
        col_new_pixel: in  std_logic_vector(3 downto 0);
        load_new_pixel      : in  std_logic;
        color_new_pixel     : in  std_logic_vector(11 downto 0)
        );
    end component;
    
--Esta componente genera una imagen de un archivo *.coe*
     component BRAM_image_data
      PORT (
        clka : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
        clkb : IN STD_LOGIC;
        addrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        doutb : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
      );
    END component;
    
    signal row_and_col, row_and_col_new_pixel : std_logic_vector(15 downto 0);
    signal data_out : std_logic_vector(11 downto 0);
    signal wea : std_logic_vector(0 downto 0);

begin

use_image:
    image port map(
        clk_108mhz   => clk_108mhz,
        reset_n     => reset_n,
        row         => row, 
        col         => col,      
        rout        => rout, 
        gout        => gout, 
        bout        => bout,
        row_new_pixel=> row_new_pixel, 
        col_new_pixel=> col_new_pixel,
        load_new_pixel=> load_new_pixel,
        color_new_pixel  => color_new_pixel
    );

end arch;