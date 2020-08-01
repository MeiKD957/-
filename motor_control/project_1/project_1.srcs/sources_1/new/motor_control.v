`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/31 17:44:58
// Design Name: 
// Module Name: motor_control
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


module motor_control(
    input clk_sys,
    input key,
    output [3:0]pwm,
    output Rx,
    output Tx
    );
    reg clk_4k;
    division div(.clk_sys(clk_sys),.clk_4k(clk_4k));
    STEP_M_O motor(.out(pwm),.clk0(clk_4k),.rst(key));
    Driver_UART_0(.UART0_Rx(Rx),. UART0_Tx(Tx));
endmodule
