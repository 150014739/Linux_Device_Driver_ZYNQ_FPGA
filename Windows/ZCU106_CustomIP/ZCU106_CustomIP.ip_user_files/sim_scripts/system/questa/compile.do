vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_protocol_checker_v2_0_2
vlib questa_lib/msim/axi_vip_v1_1_2
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_2
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_12
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/fifo_generator_v13_2_2
vlib questa_lib/msim/axi_data_fifo_v2_1_15
vlib questa_lib/msim/axi_register_slice_v2_1_16
vlib questa_lib/msim/axi_protocol_converter_v2_1_16
vlib questa_lib/msim/axi_clock_converter_v2_1_15
vlib questa_lib/msim/blk_mem_gen_v8_4_1
vlib questa_lib/msim/axi_dwidth_converter_v2_1_16

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_2 questa_lib/msim/axi_protocol_checker_v2_0_2
vmap axi_vip_v1_1_2 questa_lib/msim/axi_vip_v1_1_2
vmap zynq_ultra_ps_e_vip_v1_0_2 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_2
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 questa_lib/msim/proc_sys_reset_v5_0_12
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_2 questa_lib/msim/fifo_generator_v13_2_2
vmap axi_data_fifo_v2_1_15 questa_lib/msim/axi_data_fifo_v2_1_15
vmap axi_register_slice_v2_1_16 questa_lib/msim/axi_register_slice_v2_1_16
vmap axi_protocol_converter_v2_1_16 questa_lib/msim/axi_protocol_converter_v2_1_16
vmap axi_clock_converter_v2_1_15 questa_lib/msim/axi_clock_converter_v2_1_15
vmap blk_mem_gen_v8_4_1 questa_lib/msim/blk_mem_gen_v8_4_1
vmap axi_dwidth_converter_v2_1_16 questa_lib/msim/axi_dwidth_converter_v2_1_16

vlog -work xilinx_vip -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_2 -L axi_vip_v1_1_2 -L zynq_ultra_ps_e_vip_v1_0_2 -L xilinx_vip "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_2 -L axi_vip_v1_1_2 -L zynq_ultra_ps_e_vip_v1_0_2 -L xilinx_vip "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_2 -L axi_vip_v1_1_2 -L zynq_ultra_ps_e_vip_v1_0_2 -L xilinx_vip "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_2 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_2 -L axi_vip_v1_1_2 -L zynq_ultra_ps_e_vip_v1_0_2 -L xilinx_vip "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/3755/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_2 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_2 -L axi_vip_v1_1_2 -L zynq_ultra_ps_e_vip_v1_0_2 -L xilinx_vip "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/725c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_2 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_2 -L axi_vip_v1_1_2 -L zynq_ultra_ps_e_vip_v1_0_2 -L xilinx_vip "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_zynq_ultra_ps_e_0_0/sim/system_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/system/ipshared/765a/hdl/myip_v1_0_S00_AXI.v" \
"../../../bd/system/ipshared/765a/hdl/myip_v1_0.v" \
"../../../bd/system/ip/system_myip_0_0/sim/system_myip_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_rst_ps8_0_99M_0/sim/system_rst_ps8_0_99M_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/sim/system.v" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_2 -64 "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -64 -93 \
"../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2 -64 "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_15 -64 "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/d114/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_16 -64 "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/0cde/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_16 -64 "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/1229/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_15 -64 "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/d371/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_1 -64 "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_16 -64 "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/2c2b/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../ZCU106_CustomIP.srcs/sources_1/bd/system/ipshared/ad7b/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_ds_0/sim/system_auto_ds_0.v" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

