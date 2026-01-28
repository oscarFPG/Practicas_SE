transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/oscar/OneDrive/Documentos/UCM/5_QUINTO/SE/Practicas_SE/ProyectoFinal/hw/proyectoFinal.cache/compile_simlib/riviera}
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
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_28
vlib riviera/fifo_generator_v13_2_8
vlib riviera/axi_data_fifo_v2_1_27
vlib riviera/axi_crossbar_v2_1_29
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_30

vlog -work xpm  -incr "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/30ef" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/ec67/hdl" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ip/design_final_vga_0_0/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 \
"D:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"D:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_11 -93  -incr \
"../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/e224/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_final/ip/design_final_microblaze_0_0/sim/design_final_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_12 -93  -incr \
"../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/cd1d/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_final/ip/design_final_dlmb_v10_0/sim/design_final_dlmb_v10_0.vhd" \
"../../../bd/design_final/ip/design_final_ilmb_v10_0/sim/design_final_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_22 -93  -incr \
"../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_final/ip/design_final_dlmb_bram_if_cntlr_0/sim/design_final_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_final/ip/design_final_ilmb_bram_if_cntlr_0/sim/design_final_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_6  -incr -v2k5 "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/30ef" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/ec67/hdl" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ip/design_final_vga_0_0/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 \
"../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/bb55/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/30ef" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/ec67/hdl" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ip/design_final_vga_0_0/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 \
"../../../bd/design_final/ip/design_final_lmb_bram_0/sim/design_final_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_24 -93  -incr \
"../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_final/ip/design_final_mdm_1_0/sim/design_final_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/30ef" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/ec67/hdl" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ip/design_final_vga_0_0/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 \
"../../../bd/design_final/ip/design_final_clk_wiz_1_0/design_final_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_final/ip/design_final_clk_wiz_1_0/design_final_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -93  -incr \
"../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  -incr \
"../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_final/ip/design_final_rst_clk_wiz_1_100M_0/sim/design_final_rst_clk_wiz_1_100M_0.vhd" \
"../../../bd/design_final/ipshared/2125/hdl/led_v1_0_S00_AXI.vhd" \
"../../../bd/design_final/ipshared/2125/hdl/led_v1_0.vhd" \
"../../../bd/design_final/ip/design_final_led_0_0/sim/design_final_led_0_0.vhd" \
"../../../bd/design_final/ipshared/965d/hdl/keypad_v1_0_S00_AXI.vhd" \
"../../../bd/design_final/ipshared/965d/hdl/teclaDetect.vhd" \
"../../../bd/design_final/ipshared/965d/hdl/keypad_v1_0.vhd" \
"../../../bd/design_final/ip/design_final_keypad_0_0/sim/design_final_keypad_0_0.vhd" \
"../../../bd/design_final/ipshared/ca6a/hdl/matriz_v1_0_S00_AXI.vhd" \
"../../../bd/design_final/ipshared/ca6a/src/bannerDesp.vhd" \
"../../../bd/design_final/ipshared/ca6a/hdl/matriz_v1_0.vhd" \
"../../../bd/design_final/ip/design_final_matriz_0_0/sim/design_final_matriz_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -v2k5 "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/30ef" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/ec67/hdl" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ip/design_final_vga_0_0/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 \
"../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/30ef" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/ec67/hdl" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ip/design_final_vga_0_0/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 \
"../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_28  -incr -v2k5 "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/30ef" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/ec67/hdl" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ip/design_final_vga_0_0/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 \
"../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/87d1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_8  -incr -v2k5 "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/30ef" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/ec67/hdl" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ip/design_final_vga_0_0/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 \
"../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/c97d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_8 -93  -incr \
"../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_8  -incr -v2k5 "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/30ef" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/ec67/hdl" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ip/design_final_vga_0_0/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 \
"../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_27  -incr -v2k5 "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/30ef" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/ec67/hdl" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ip/design_final_vga_0_0/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 \
"../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/fab7/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_29  -incr -v2k5 "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/30ef" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/ec67/hdl" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ip/design_final_vga_0_0/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 \
"../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/30ef" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/ec67/hdl" "+incdir+../../../../proyectoFinal.gen/sources_1/bd/design_final/ip/design_final_vga_0_0/src/clk_ip_core" -l xpm -l microblaze_v11_0_11 -l xil_defaultlib -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 \
"../../../bd/design_final/ip/design_final_xbar_0/sim/design_final_xbar_0.v" \
"../../../bd/design_final/ip/design_final_vga_0_0/src/clk_ip_core/clk_ip_core_clk_wiz.v" \
"../../../bd/design_final/ip/design_final_vga_0_0/src/clk_ip_core/clk_ip_core.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_final/ipshared/139c/hdl/vga_v1_0_S00_AXIS.vhd" \
"../../../bd/design_final/ipshared/139c/src/AXI_Stream_FIFO.vhd" \
"../../../bd/design_final/ipshared/139c/src/BRAM_image.vhd" \
"../../../bd/design_final/ipshared/139c/src/display_image.vhd" \
"../../../bd/design_final/ipshared/139c/src/image.vhd" \
"../../../bd/design_final/ipshared/139c/src/vga_core.vhd" \
"../../../bd/design_final/ipshared/139c/hdl/vga_v1_0.vhd" \
"../../../bd/design_final/ip/design_final_vga_0_0/sim/design_final_vga_0_0.vhd" \
"../../../bd/design_final/sim/design_final.vhd" \

vcom -work interrupt_control_v3_1_4 -93  -incr \
"../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_30 -93  -incr \
"../../../../proyectoFinal.gen/sources_1/bd/design_final/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_final/ip/design_final_axi_gpio_0_0/sim/design_final_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

