// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Jul 31 18:37:44 2020
// Host        : DESKTOP-NF5G41P running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/UART/motor_control/project_1/project_1.srcs/sources_1/ip/Driver_UART_0/Driver_UART_0_stub.v
// Design      : Driver_UART_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s15ftgb196-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Driver_UART,Vivado 2018.2" *)
module Driver_UART_0(clk_100MHz, Rst, En_Rx, En_Tx, Baud_Rate, Rx, 
  Tx_Data, Tx, Rx_Data, Rx_ACK, Tx_ACK)
/* synthesis syn_black_box black_box_pad_pin="clk_100MHz,Rst,En_Rx,En_Tx,Baud_Rate[30:0],Rx,Tx_Data[7:0],Tx,Rx_Data[7:0],Rx_ACK,Tx_ACK" */;
  input clk_100MHz;
  input Rst;
  input En_Rx;
  input En_Tx;
  input [30:0]Baud_Rate;
  input Rx;
  input [7:0]Tx_Data;
  output Tx;
  output [7:0]Rx_Data;
  output Rx_ACK;
  output Tx_ACK;
endmodule
