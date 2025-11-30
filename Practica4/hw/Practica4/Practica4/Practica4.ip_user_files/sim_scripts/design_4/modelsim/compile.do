vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/microblaze_v11_0_11
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lmb_v10_v3_0_12
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_22
vlib modelsim_lib/msim/blk_mem_gen_v8_4_6
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/mdm_v3_2_24
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_28
vlib modelsim_lib/msim/fifo_generator_v13_2_8
vlib modelsim_lib/msim/axi_data_fifo_v2_1_27
vlib modelsim_lib/msim/axi_crossbar_v2_1_29

vmap xpm modelsim_lib/msim/xpm
vmap microblaze_v11_0_11 modelsim_lib/msim/microblaze_v11_0_11
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lmb_v10_v3_0_12 modelsim_lib/msim/lmb_v10_v3_0_12
vmap lmb_bram_if_cntlr_v4_0_22 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_22
vmap blk_mem_gen_v8_4_6 modelsim_lib/msim/blk_mem_gen_v8_4_6
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_24 modelsim_lib/msim/mdm_v3_2_24
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_28 modelsim_lib/msim/axi_register_slice_v2_1_28
vmap fifo_generator_v13_2_8 modelsim_lib/msim/fifo_generator_v13_2_8
vmap axi_data_fifo_v2_1_27 modelsim_lib/msim/axi_data_fifo_v2_1_27
vmap axi_crossbar_v2_1_29 modelsim_lib/msim/axi_crossbar_v2_1_29

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/30ef" "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/ec67/hdl" \
"D:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_11  -93  \
"../../../../Practica4.gen/sources_1/bd/design_4/ipshared/e224/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_4/ip/design_4_microblaze_0_0/sim/design_4_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_12  -93  \
"../../../../Practica4.gen/sources_1/bd/design_4/ipshared/cd1d/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_4/ip/design_4_dlmb_v10_0/sim/design_4_dlmb_v10_0.vhd" \
"../../../bd/design_4/ip/design_4_ilmb_v10_0/sim/design_4_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_22  -93  \
"../../../../Practica4.gen/sources_1/bd/design_4/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_4/ip/design_4_dlmb_bram_if_cntlr_0/sim/design_4_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_4/ip/design_4_ilmb_bram_if_cntlr_0/sim/design_4_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_6  -incr -mfcu  "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/30ef" "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/ec67/hdl" \
"../../../../Practica4.gen/sources_1/bd/design_4/ipshared/bb55/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/30ef" "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/ec67/hdl" \
"../../../bd/design_4/ip/design_4_lmb_bram_0/sim/design_4_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../Practica4.gen/sources_1/bd/design_4/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_24  -93  \
"../../../../Practica4.gen/sources_1/bd/design_4/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_4/ip/design_4_mdm_1_0/sim/design_4_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/30ef" "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/ec67/hdl" \
"../../../bd/design_4/ip/design_4_clk_wiz_1_0/design_4_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_4/ip/design_4_clk_wiz_1_0/design_4_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../Practica4.gen/sources_1/bd/design_4/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93  \
"../../../../Practica4.gen/sources_1/bd/design_4/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_4/ip/design_4_rst_clk_wiz_1_100M_0/sim/design_4_rst_clk_wiz_1_100M_0.vhd" \
"../../../bd/design_4/ipshared/a1a5/hdl/conversorAD_v1_0_S00_AXI.vhd" \
"../../../bd/design_4/ipshared/a1a5/src/adc0808.vhd" \
"../../../bd/design_4/ipshared/a1a5/src/divisor640K.vhd" \
"../../../bd/design_4/ipshared/a1a5/hdl/conversorAD_v1_0.vhd" \
"../../../bd/design_4/ip/design_4_conversorAD_0_0/sim/design_4_conversorAD_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu  "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/30ef" "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/ec67/hdl" \
"../../../../Practica4.gen/sources_1/bd/design_4/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/30ef" "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/ec67/hdl" \
"../../../../Practica4.gen/sources_1/bd/design_4/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_28  -incr -mfcu  "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/30ef" "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/ec67/hdl" \
"../../../../Practica4.gen/sources_1/bd/design_4/ipshared/87d1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_8  -incr -mfcu  "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/30ef" "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/ec67/hdl" \
"../../../../Practica4.gen/sources_1/bd/design_4/ipshared/c97d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_8  -93  \
"../../../../Practica4.gen/sources_1/bd/design_4/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_8  -incr -mfcu  "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/30ef" "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/ec67/hdl" \
"../../../../Practica4.gen/sources_1/bd/design_4/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_27  -incr -mfcu  "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/30ef" "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/ec67/hdl" \
"../../../../Practica4.gen/sources_1/bd/design_4/ipshared/fab7/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_29  -incr -mfcu  "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/30ef" "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/ec67/hdl" \
"../../../../Practica4.gen/sources_1/bd/design_4/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/30ef" "+incdir+../../../../Practica4.gen/sources_1/bd/design_4/ipshared/ec67/hdl" \
"../../../bd/design_4/ip/design_4_xbar_0/sim/design_4_xbar_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_4/ipshared/ca6a/hdl/matriz_v1_0_S00_AXI.vhd" \
"../../../bd/design_4/ipshared/ca6a/src/bannerDesp.vhd" \
"../../../bd/design_4/ipshared/ca6a/hdl/matriz_v1_0.vhd" \
"../../../bd/design_4/ip/design_4_matriz_0_0/sim/design_4_matriz_0_0.vhd" \
"../../../bd/design_4/sim/design_4.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

