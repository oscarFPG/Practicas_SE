vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/microblaze_v11_0_11
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lmb_v10_v3_0_12
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_22
vlib questa_lib/msim/blk_mem_gen_v8_4_6
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/mdm_v3_2_24
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_uartlite_v2_0_32

vmap xpm questa_lib/msim/xpm
vmap microblaze_v11_0_11 questa_lib/msim/microblaze_v11_0_11
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lmb_v10_v3_0_12 questa_lib/msim/lmb_v10_v3_0_12
vmap lmb_bram_if_cntlr_v4_0_22 questa_lib/msim/lmb_bram_if_cntlr_v4_0_22
vmap blk_mem_gen_v8_4_6 questa_lib/msim/blk_mem_gen_v8_4_6
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_24 questa_lib/msim/mdm_v3_2_24
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_32 questa_lib/msim/axi_uartlite_v2_0_32

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" \
"D:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_11  -93  \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/e224/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_5/ip/design_5_microblaze_0_0/sim/design_5_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_12  -93  \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/cd1d/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_5/ip/design_5_dlmb_v10_0/sim/design_5_dlmb_v10_0.vhd" \
"../../../bd/design_5/ip/design_5_ilmb_v10_0/sim/design_5_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_22  -93  \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_5/ip/design_5_dlmb_bram_if_cntlr_0/sim/design_5_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_5/ip/design_5_ilmb_bram_if_cntlr_0/sim/design_5_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_6  -incr -mfcu  "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/bb55/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" \
"../../../bd/design_5/ip/design_5_lmb_bram_0/sim/design_5_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_24  -93  \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_5/ip/design_5_mdm_1_0/sim/design_5_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" \
"../../../bd/design_5/ip/design_5_clk_wiz_1_0/design_5_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_5/ip/design_5_clk_wiz_1_0/design_5_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93  \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_5/ip/design_5_rst_clk_wiz_1_100M_0/sim/design_5_rst_clk_wiz_1_100M_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" \
"../../../bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core/clk_ip_core_clk_wiz.v" \
"../../../bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core/clk_ip_core.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_5/ipshared/7c7b/hdl/vga_v1_0_S00_AXIS.vhd" \
"../../../bd/design_5/ipshared/7c7b/hdl/vga_v1_0.vhd" \
"../../../bd/design_5/ipshared/7c7b/src/AXI_Stream_FIFO.vhd" \
"../../../bd/design_5/ipshared/7c7b/src/BRAM_image.vhd" \
"../../../bd/design_5/ipshared/7c7b/src/display_image.vhd" \
"../../../bd/design_5/ipshared/7c7b/src/image.vhd" \
"../../../bd/design_5/ipshared/7c7b/src/vga_core.vhd" \
"../../../bd/design_5/ip/design_5_vga_0_4/sim/design_5_vga_0_4.vhd" \

vcom -work lib_pkg_v1_0_2  -93  \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2  -93  \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_32  -93  \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/3dd9/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_5/ip/design_5_axi_uartlite_0_0/sim/design_5_axi_uartlite_0_0.vhd" \
"../../../bd/design_5/sim/design_5.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

