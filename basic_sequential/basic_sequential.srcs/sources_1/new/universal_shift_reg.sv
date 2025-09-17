`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2025 09:51:38 AM
// Design Name: 
// Module Name: universal_shift_reg
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


module universal_shift_reg
    #(parameter N=8)
    (
    input logic clk, reset,
    input logic [1:0] ctrl,
    input logic [N-1:0] d,
    output logic [N-1:0] q
    );
    //signal declaration
    logic [N-1:0] state_reg, state_next;
    //body
    //register
    always_ff @(posedge clk, posedge reset)
        if (reset)
            state_reg <= 0;
        else
            state_reg <= state_next;
    //next state logic
    always_comb
        case(ctrl)
            2'b00: state_next = state_reg; //no operation
            2'b01: state_next = {state_reg[N-2:0],d[0]};//shift left
            2'b10: state_next = {d[N-1],state_reg[N-1:1]};//shift right
            default: state_next = d;//load data
        endcase
    //output logic
    assign q = state_reg;
endmodule
