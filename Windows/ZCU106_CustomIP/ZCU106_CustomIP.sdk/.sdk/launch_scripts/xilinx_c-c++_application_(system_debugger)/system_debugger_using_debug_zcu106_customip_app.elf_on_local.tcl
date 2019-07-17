connect -url tcp:127.0.0.1:3121
source C:/Xilinx/SDK/2018.1/scripts/sdk/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx HW-FTDI-TEST FT232H 93268"} -index 1
loadhw -hw D:/Projects/FPGA_Zynq/Development/ZCU106_CustomIP/ZCU106_CustomIP.sdk/system_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx HW-FTDI-TEST FT232H 93268"} -index 1
source D:/Projects/FPGA_Zynq/Development/ZCU106_CustomIP/ZCU106_CustomIP.sdk/system_wrapper_hw_platform_0/psu_init.tcl
psu_init
after 1000
psu_ps_pl_isolation_removal
after 1000
psu_ps_pl_reset_config
catch {psu_protection}
targets -set -nocase -filter {name =~"*A53*0" && jtag_cable_name =~ "Xilinx HW-FTDI-TEST FT232H 93268"} -index 1
rst -processor
dow D:/Projects/FPGA_Zynq/Development/ZCU106_CustomIP/ZCU106_CustomIP.sdk/ZCU106_CustomIP_APP/Debug/ZCU106_CustomIP_APP.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~"*A53*0" && jtag_cable_name =~ "Xilinx HW-FTDI-TEST FT232H 93268"} -index 1
con
