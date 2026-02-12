`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2024 07:09:18 AM
// Design Name: 
// Module Name: edge_detect_moore_tb
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


module edge_detect_moore_tb;
    reg clk_t, reset_t,in;
    wire out;
    
edge_detect_moore uut(
    .clk(clk_t),
    .reset(reset_t),
    .level(in),
    .tick(out)
);
    initial
        begin
            reset_t = 1; #10;
            reset_t = 0; in = 0; #10;
            in = 0; #10;
            in = 1; #10;
            in = 1; #10;
            in = 1; #10;
            in = 0; #10;
        end
    
    always
        begin
            clk_t = 1; #5;
            clk_t = 0; #5;
        end
endmodule
