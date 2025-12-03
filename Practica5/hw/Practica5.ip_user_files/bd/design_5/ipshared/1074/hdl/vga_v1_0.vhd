library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vga_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXIS
		C_S00_AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here
		max_row: in std_logic_vector(3 downto 0);
        max_col: in std_logic_vector(3 downto 0);
		
        hsyncb  : out std_logic;	-- horizontal (line) sync
        vsyncb  : out std_logic;	-- vertical (frame) sync
        red     : out std_logic_vector(3 downto 0);	-- red color
        green   : out std_logic_vector(3 downto 0);	-- green color
        blue    : out std_logic_vector(3 downto 0);	-- blue color
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXIS
		s00_axis_aclk	: in std_logic;
		s00_axis_aresetn	: in std_logic;
		s00_axis_tready	: out std_logic;
		s00_axis_tdata	: in std_logic_vector(C_S00_AXIS_TDATA_WIDTH-1 downto 0);
		s00_axis_tstrb	: in std_logic_vector((C_S00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		s00_axis_tlast	: in std_logic;
		s00_axis_tvalid	: in std_logic
	);
end vga_v1_0;

architecture arch_imp of vga_v1_0 is

    component vga_v1_0_S00_AXIS is
        generic (
            C_S00_AXIS_TDATA_WIDTH	: integer	:= 32
        );
        port (
            max_row: in std_logic_vector(3 downto 0);
            max_col: in std_logic_vector(3 downto 0);
            
            hsyncb  : out std_logic;	-- horizontal (line) sync
            vsyncb  : out std_logic;	-- vertical (frame) sync
            red     : out std_logic_vector(3 downto 0);	-- red color
            green   : out std_logic_vector(3 downto 0);	-- green color
            blue    : out std_logic_vector(3 downto 0);	-- blue color
            
            -- Ports of Axi Stream Slave Bus Interface S00_AXIS
            s00_axis_aclk	  : in std_logic;
            s00_axis_aresetn  : in std_logic;
            s00_axis_tready	  : out std_logic;
            s00_axis_tdata	  : in std_logic_vector(C_S00_AXIS_TDATA_WIDTH-1 downto 0);
            s00_axis_tlast	  : in std_logic;
            s00_axis_tvalid	  : in std_logic
        );
    end component vga_v1_0_S00_AXIS;

begin

-- Instantiation of Axi Bus Interface S00_AXIS
vga_instance : vga_v1_0_S00_AXIS
	generic map (
		C_S00_AXIS_TDATA_WIDTH => C_S00_AXIS_TDATA_WIDTH
	)
	port map (
	   max_row => max_row,
	   max_col => max_col,
	   
        hsyncb => hsyncb,
        vsyncb => vsyncb,
        red => red,
        green => green,
        blue => blue,
        
        s00_axis_aclk => s00_axis_aclk,
        s00_axis_aresetn => s00_axis_aresetn,
        s00_axis_tready => s00_axis_tready,
        s00_axis_tdata => s00_axis_tdata,
        s00_axis_tlast => s00_axis_tlast,
        s00_axis_tvalid => s00_axis_tvalid
	);

end arch_imp;
