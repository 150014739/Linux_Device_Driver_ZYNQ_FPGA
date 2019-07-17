//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Wed Jul 10 15:12:00 2019
//Host        : DESKTOP-2I11TUF running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (led_0,
    sw_0);
  output [7:0]led_0;
  input [7:0]sw_0;

  wire [7:0]led_0;
  wire [7:0]sw_0;

  system system_i
       (.led_0(led_0),
        .sw_0(sw_0));
endmodule
