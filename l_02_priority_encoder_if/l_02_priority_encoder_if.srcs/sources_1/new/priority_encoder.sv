`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2024 10:22:29 PM
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder
(
    input logic [3:0] p_in,
    output logic [2:0] p_code
);
always_comb
    begin
        if (p_in[3])
            p_code = 3'b100;
        else if (p_in[2])
            p_code = 3'b011;
        else if (p_in[1])
            p_code = 3'b010;
        else
            p_code = 3'b000;
   end     
endmodule
