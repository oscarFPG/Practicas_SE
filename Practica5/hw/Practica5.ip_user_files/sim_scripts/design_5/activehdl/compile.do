transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/usuario_local/Documents/SE/Practicas_SE/Practica5/hw/Practica5.cache/compile_simlib/activehdl}
vlib activehdl/xpm
vlib activehdl/microblaze_v11_0_11
vlib activehdl/xil_defaultlib
vlib activehdl/lmb_v10_v3_0_12
vlib activehdl/lmb_bram_if_cntlr_v4_0_22
vlib activehdl/blk_mem_gen_v8_4_6
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/mdm_v3_2_24
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_28
vlib activehdl/fifo_generator_v13_2_8
vlib activehdl/axi_data_fifo_v2_1_27
vlib activehdl/axi_crossbar_v2_1_29
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_uartlite_v2_0_32
vlib activehdl/proc_sys_reset_v5_0_13

vlog -work xpm  -sv2k12 "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/ec67/hdl" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_32 -l proc_sys_reset_v5_0_13 \
"C:/software/electronica/xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/software/electronica/xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/software/electronica/xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_11 -93  \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/e224/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_5/ip/design_5_microblaze_0_0/sim/design_5_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_12 -93  \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/cd1d/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_5/ip/design_5_dlmb_v10_0/sim/design_5_dlmb_v10_0.vhd" \
"../../../bd/design_5/ip/design_5_ilmb_v10_0/sim/design_5_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_22 -93  \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_5/ip/design_5_dlmb_bram_if_cntlr_0/sim/design_5_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_5/ip/design_5_ilmb_bram_if_cntlr_0/sim/design_5_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_6  -v2k5 "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/ec67/hdl" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_32 -l proc_sys_reset_v5_0_13 \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/bb55/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/ec67/hdl" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_32 -l proc_sys_reset_v5_0_13 \
"../../../bd/design_5/ip/design_5_lmb_bram_0/sim/design_5_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_24 -93  \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_5/ip/design_5_mdm_1_0/sim/design_5_mdm_1_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/ec67/hdl" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_32 -l proc_sys_reset_v5_0_13 \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/ec67/hdl" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_32 -l proc_sys_reset_v5_0_13 \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_28  -v2k5 "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/ec67/hdl" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_32 -l proc_sys_reset_v5_0_13 \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/87d1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_8  -v2k5 "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/ec67/hdl" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_32 -l proc_sys_reset_v5_0_13 \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/c97d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_8 -93  \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_8  -v2k5 "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/ec67/hdl" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_32 -l proc_sys_reset_v5_0_13 \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_27  -v2k5 "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/ec67/hdl" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_32 -l proc_sys_reset_v5_0_13 \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/fab7/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_29  -v2k5 "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/ec67/hdl" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_32 -l proc_sys_reset_v5_0_13 \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/ec67/hdl" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_32 -l proc_sys_reset_v5_0_13 \
"../../../bd/design_5/ip/design_5_xbar_0_1/sim/design_5_xbar_0.v" \

vcom -work lib_pkg_v1_0_2 -93  \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93  \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_32 -93  \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/3dd9/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_5/ip/design_5_axi_uartlite_0_0/sim/design_5_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/ec67/hdl" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_32 -l proc_sys_reset_v5_0_13 \
"../../../bd/design_5/ip/design_5_clk_wiz_1_0/design_5_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_5/ip/design_5_clk_wiz_1_0/design_5_clk_wiz_1_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../Practica5.gen/sources_1/bd/design_5/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_5/ip/design_5_rst_clk_wiz_1_100M_0/sim/design_5_rst_clk_wiz_1_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/ec67/hdl" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ipshared/30ef" "+incdir+../../../../Practica5.gen/sources_1/bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l lib_cdc_v1_0_2 -l axi_uartlite_v2_0_32 -l proc_sys_reset_v5_0_13 \
"../../../bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core/clk_ip_core_clk_wiz.v" \
"../../../bd/design_5/ip/design_5_vga_0_4/src/clk_ip_core/clk_ip_core.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_5/ipshared/1074/hdl/vga_v1_0_S00_AXIS.vhd" \
"../../../bd/design_5/ipshared/1074/src/AXI_Stream_FIFO.vhd" \
"../../../bd/design_5/ipshared/1074/src/BRAM_image.vhd" \
"../../../bd/design_5/ipshared/1074/src/display_image.vhd" \
"../../../bd/design_5/ipshared/1074/src/image.vhd" \
"../../../bd/design_5/ipshared/1074/src/vga_core.vhd" \
"../../../bd/design_5/ipshared/1074/hdl/vga_v1_0.vhd" \
"../../../bd/design_5/ip/design_5_vga_0_4/sim/design_5_vga_0_4.vhd" \
"../../../bd/design_5/sim/design_5.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

