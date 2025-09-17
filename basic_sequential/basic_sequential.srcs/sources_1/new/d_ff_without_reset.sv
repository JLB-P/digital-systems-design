`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2025 08:44:11 PM
// Design Name: 
// Module Name: d_ff_without_reset
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


module d_ff_without_reset(
    input logic clk,d,
    output logic q 
    );
    //body
    always_ff @(posedge clk)
    q <= d;
endmodule
