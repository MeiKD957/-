`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/28 16:41:39
// Design Name: 
// Module Name: test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test();
 reg clk0;
   reg rst;
   wire[3:0] out;
   initial
       begin
           clk0=0;
           rst=0;
       end
   always  #100
       begin
          clk0 =~clk0;
       end

   STEP_M test(.clk0(clk0),.rst(rst),.out(out));
endmodule
