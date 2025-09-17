`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2025 09:06:54 AM
// Design Name: 
// Module Name: d_ff_with_sync_clear
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


module d_ff_with_sync_clear(
    input logic clk, sync_clear, d,
    output logic q
    );
    //signal declaration
    logic state_reg, state_next;
    //body
    //D FF
    always_ff @(posedge clk)
        state_reg <= state_next;
    //next state logic
    always_comb
        if (sync_clear)
            state_next = 1'b0; 
        else
            state_next = d;
    //output logic
    assign q = state_reg;
endmodule
