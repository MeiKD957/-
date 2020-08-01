`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/28 16:26:22
// Design Name: 
// Module Name: STEP_M
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


module STEP_M(
    input clk0,
    output reg[3:0] out,
    input rst
    );
    reg[2:0] current;
    wire reset;
    parameter s0=3'b000,s1=3'b001,s2=3'b010,
              s3=3'b011,s4=3'b100,s5=3'b101,
              s6=3'b110,s7=3'b111;
   assign  reset = ~rst;
    always@(posedge clk0 or negedge reset)
        begin
            if(!reset)
                begin
                    current <= s0;
                    out <= 4'b1001;
                end
            else begin
                case(current)
                    s0:
                        begin
                            current <= s7;
                            out <= 4'b1000;
                        end
                    s1:
                        begin
                            current <= s0;
                            out <= 4'b1001;
                        end
                    s2:
                        begin
                             current <= s1;
                             out <= 4'b0001;   
                         end
                    s3:
                        begin
                             current <= s2;
                             out <= 4'b0011;
                        end
                    s4:
                        begin
                            current <= s3;
                            out <= 4'b0010;
                        end
                    s5:
                        begin
                            current <= s4;
                            out <= 4'b0110;
                        end
                    s6:
                        begin
                            current <= s5;
                            out <= 4'b0100;
                        end
                    s7:
                        begin
                            current <= s6;
                            out <= 4'b1100;
                         end
                   endcase
               end
           end    
endmodule