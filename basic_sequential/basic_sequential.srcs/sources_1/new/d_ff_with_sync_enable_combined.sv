`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2025 09:46:24 PM
// Design Name: 
// Module Name: d_ff_with_sync_enable_combined
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


module d_ff_with_sync_enable_combined(
    input logic clk, reset, en, d,
    output logic q
    );
    //body
    always_ff @(posedge clk, posedge reset)
    if (reset)
        q <= 1'b0;
    else if (en)
        q <= d;
endmodule