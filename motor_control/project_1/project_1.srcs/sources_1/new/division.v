`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/31 17:46:10
// Design Name: 
// Module Name: division
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


module division(
    input clk_sys,
    output reg clk_4k
    );
    reg [6:0] count;
    always @(posedge clk_sys)
    begin
        if(count==7'd125)
            begin
                count <= 0;
                clk_4k <= ~clk_4k;
            end
        else
            begin
                count <= count+1'b1;
            end
    end
endmodule
