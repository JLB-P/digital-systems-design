`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2025 10:06:24 PM
// Design Name: 
// Module Name: free_shift_reg
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


module free_shift_reg
    #(parameter N=8)
    (
    input logic clk, reset, s_in,
    output logic s_out
    );
    //signal declaration
    logic [N-1:0] state_reg;
    logic [N-1:0] state_next;
    //body
    //register
    always_ff @(posedge clk, posedge reset)
    if (reset)
        state_reg <= 0;
    else
        state_reg <= state_next;
    //next state logic
    assign state_next = {s_in,state_reg[N-1:1]};
    //output logic
    assign s_out = state_reg[0];
endmodule
