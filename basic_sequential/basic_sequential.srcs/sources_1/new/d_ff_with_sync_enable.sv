`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2025 09:21:02 PM
// Design Name: 
// Module Name: d_ff_with_sync_enable
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


module d_ff_with_sync_enable(
    input logic clk, reset, en, d,
    output logic q
    );
    //signal declaration
    logic state_reg, state_next;
    //body
    //D FF
    always_ff @(posedge clk, posedge reset)
    if (reset)
        state_reg <= 1'b0;
    else
        state_reg <= state_next;
    //next state logic
    always_comb
        if (en)
            state_next = d; 
        else
            state_next = state_reg;
    //output logic
    assign q = state_reg;        
endmodule
