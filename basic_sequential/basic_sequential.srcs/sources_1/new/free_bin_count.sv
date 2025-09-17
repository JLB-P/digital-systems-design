`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2025 10:21:21 AM
// Design Name: 
// Module Name: free_bin_count
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


module free_bin_count
    #(parameter N=8)
    (
    input logic clk,reset,
    output logic max_count,
    output logic [N-1:0] q
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
    assign state_next = state_reg + 1;
    //output logic
    assign q = state_reg;
    assign max_count = (state_reg == 2**N-1) ? 1'b1 : 1'b0;
endmodule
