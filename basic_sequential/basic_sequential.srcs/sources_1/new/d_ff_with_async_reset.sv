`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2025 08:57:46 PM
// Design Name: 
// Module Name: d_ff_with_async_reset
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


module d_ff_with_async_reset(
    input logic clk,d,reset,
    output logic q 
    );
    //body
    always_ff @(posedge clk,posedge reset)
    if (reset)
        q <= 1'b0;
    else
        q <= d;
endmodule
