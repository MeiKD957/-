// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Jul 31 17:57:06 2020
// Host        : DESKTOP-NF5G41P running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/UART/motor_control/project_1/project_1.srcs/sources_1/ip/STEP_M_0/STEP_M_0_sim_netlist.v
// Design      : STEP_M_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s15ftgb196-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "STEP_M_0,STEP_M,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "STEP_M,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module STEP_M_0
   (clk0,
    out,
    rst);
  input clk0;
  output [3:0]out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;

  wire clk0;
  wire [3:0]out;
  wire rst;

  STEP_M_0_STEP_M inst
       (.clk0(clk0),
        .out(out),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "STEP_M" *) 
module STEP_M_0_STEP_M
   (out,
    clk0,
    rst);
  output [3:0]out;
  input clk0;
  input rst;

  wire \FSM_sequential_current[0]_i_1_n_0 ;
  wire \FSM_sequential_current[1]_i_1_n_0 ;
  wire \FSM_sequential_current[2]_i_1_n_0 ;
  wire clk0;
  (* RTL_KEEP = "yes" *) wire [2:0]current;
  wire [3:0]out;
  wire \out[0]_i_1_n_0 ;
  wire \out[1]_i_1_n_0 ;
  wire \out[2]_i_1_n_0 ;
  wire \out[3]_i_1_n_0 ;
  wire rst;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_current[0]_i_1 
       (.I0(current[0]),
        .O(\FSM_sequential_current[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_current[1]_i_1 
       (.I0(current[0]),
        .I1(current[1]),
        .O(\FSM_sequential_current[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \FSM_sequential_current[2]_i_1 
       (.I0(current[1]),
        .I1(current[0]),
        .I2(current[2]),
        .O(\FSM_sequential_current[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s0:000,s1:111,s2:110,s3:101,s4:100,s5:011,s6:010,s7:001" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_reg[0] 
       (.C(clk0),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_sequential_current[0]_i_1_n_0 ),
        .Q(current[0]));
  (* FSM_ENCODED_STATES = "s0:000,s1:111,s2:110,s3:101,s4:100,s5:011,s6:010,s7:001" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_reg[1] 
       (.C(clk0),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_sequential_current[1]_i_1_n_0 ),
        .Q(current[1]));
  (* FSM_ENCODED_STATES = "s0:000,s1:111,s2:110,s3:101,s4:100,s5:011,s6:010,s7:001" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_reg[2] 
       (.C(clk0),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_sequential_current[2]_i_1_n_0 ),
        .Q(current[2]));
  LUT3 #(
    .INIT(8'hA8)) 
    \out[0]_i_1 
       (.I0(current[2]),
        .I1(current[1]),
        .I2(current[0]),
        .O(\out[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h38)) 
    \out[1]_i_1 
       (.I0(current[0]),
        .I1(current[1]),
        .I2(current[2]),
        .O(\out[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \out[2]_i_1 
       (.I0(current[2]),
        .I1(current[1]),
        .I2(current[0]),
        .O(\out[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h83)) 
    \out[3]_i_1 
       (.I0(current[0]),
        .I1(current[1]),
        .I2(current[2]),
        .O(\out[3]_i_1_n_0 ));
  FDPE \out_reg[0] 
       (.C(clk0),
        .CE(1'b1),
        .D(\out[0]_i_1_n_0 ),
        .PRE(rst),
        .Q(out[0]));
  FDCE \out_reg[1] 
       (.C(clk0),
        .CE(1'b1),
        .CLR(rst),
        .D(\out[1]_i_1_n_0 ),
        .Q(out[1]));
  FDCE \out_reg[2] 
       (.C(clk0),
        .CE(1'b1),
        .CLR(rst),
        .D(\out[2]_i_1_n_0 ),
        .Q(out[2]));
  FDPE \out_reg[3] 
       (.C(clk0),
        .CE(1'b1),
        .D(\out[3]_i_1_n_0 ),
        .PRE(rst),
        .Q(out[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
