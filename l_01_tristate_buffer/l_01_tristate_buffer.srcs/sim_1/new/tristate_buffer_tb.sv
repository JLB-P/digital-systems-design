`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2025 08:40:49 AM
// Design Name: 
// Module Name: tristate_buffer_tb
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


module tristate_buffer_tb;
//signal declaration
logic test_a, test_en;
tri test_y;
//instantiate circuit under test
tristate_buffer uut (.a_input(test_a), .out_enable(test_en), .y_output(test_y));
initial
begin
    test_a = 1'b1;
    test_en = 1'b1;
    #10;
    test_a = 1'b0;
    test_en = 1'b1;
    #10;
    test_a = 1'b1;
    test_en = 1'b0;
    #10;
    test_a = 1'b1;
    test_en = 1'b01;
    #10;
    $stop;
end
endmodule
