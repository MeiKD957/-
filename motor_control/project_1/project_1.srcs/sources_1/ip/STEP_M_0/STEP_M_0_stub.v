// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Jul 31 17:57:06 2020
// Host        : DESKTOP-NF5G41P running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/UART/motor_control/project_1/project_1.srcs/sources_1/ip/STEP_M_0/STEP_M_0_stub.v
// Design      : STEP_M_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s15ftgb196-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "STEP_M,Vivado 2018.2" *)
module STEP_M_0(clk0, out, rst)
/* synthesis syn_black_box black_box_pad_pin="clk0,out[3:0],rst" */;
  input clk0;
  output [3:0]out;
  input rst;
endmodule
