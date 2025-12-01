transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/oscar/OneDrive/Documentos/UCM/5_QUINTO/SE/Practicas_SE/Practica5/hw/Practica5.cache/compile_simlib/riviera}
vlib riviera/xpm
vlib riviera/microblaze_v11_0_11
vlib riviera/xil_defaultlib
vlib riviera/lmb_v10_v3_0_12
vlib riviera/lmb_bram_if_cntlr_v4_0_22
vlib riviera/blk_mem_gen_v8_4_6
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/mdm_v3_2_24
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_uartlite_v2_0_32

vlog -work xpm  -incr "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 \
"D:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"D:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_11 -93  -incr \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/e224/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_5/ip/design_5_microblaze_0_0/sim/design_5_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_12 -93  -incr \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/cd1d/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_5/ip/design_5_dlmb_v10_0/sim/design_5_dlmb_v10_0.vhd" \
"../../../bd/design_5/ip/design_5_ilmb_v10_0/sim/design_5_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_22 -93  -incr \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_5/ip/design_5_dlmb_bram_if_cntlr_0/sim/design_5_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_5/ip/design_5_ilmb_bram_if_cntlr_0/sim/design_5_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_6  -incr -v2k5 "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/bb55/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 \
"../../../bd/design_5/ip/design_5_lmb_bram_0/sim/design_5_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_24 -93  -incr \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_5/ip/design_5_mdm_1_0/sim/design_5_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 \
"../../../bd/design_5/ip/design_5_clk_wiz_1_0/design_5_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_5/ip/design_5_clk_wiz_1_0/design_5_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -93  -incr \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  -incr \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_5/ip/design_5_rst_clk_wiz_1_100M_0/sim/design_5_rst_clk_wiz_1_100M_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 \
"../../../bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core/clk_ip_core_clk_wiz.v" \
"../../../bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core/clk_ip_core.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_5/ipshared/7c7b/hdl/vga_v1_0_S00_AXIS.vhd" \
"../../../bd/design_5/ipshared/7c7b/hdl/vga_v1_0.vhd" \
"../../../bd/design_5/ipshared/7c7b/src/AXI_Stream_FIFO.vhd" \
"../../../bd/design_5/ipshared/7c7b/src/BRAM_image.vhd" \
"../../../bd/design_5/ipshared/7c7b/src/display_image.vhd" \
"../../../bd/design_5/ipshared/7c7b/src/image.vhd" \
"../../../bd/design_5/ipshared/7c7b/src/vga_core.vhd" \
"../../../bd/design_5/ip/design_5_vga_0_4/sim/design_5_vga_0_4.vhd" \

vcom -work lib_pkg_v1_0_2 -93  -incr \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93  -incr \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_32 -93  -incr \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/3dd9/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_5/ip/design_5_axi_uartlite_0_0/sim/design_5_axi_uartlite_0_0.vhd" \
"../../../bd/design_5/sim/design_5.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

