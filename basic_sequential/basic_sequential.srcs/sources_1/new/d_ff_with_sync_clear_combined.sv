`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2025 09:29:58 AM
// Design Name: 
// Module Name: d_ff_with_sync_clear_combined
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


module d_ff_with_sync_clear_combined(
    input logic clk, sync_clear, d,
    output logic q
    );
    //body
    always_ff @(posedge clk)
    if (sync_clear)
        q <= 1'b0;
    else
        q <= d;
endmodule
