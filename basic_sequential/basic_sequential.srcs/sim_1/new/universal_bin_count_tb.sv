`timescale 1ns / 10ps
//Specifies that simulation unit is 1 ns
//and simulator time step is 10 ps

module universal_bin_count_tb();
//declaration
    localparam T=20; //clock period
    logic clk,reset,syn_clr,load,en,up;
    logic [2:0] d;
    logic max_count,min_count;
    logic [2:0] q;
    //instantiation
    universal_bin_counter #(.N(3)) uut(.*);
    //clock
    always
    begin
        clk = 1'b1;
        #(T/2);
        clk = 1'b0;
        #(T/2);
    end
    //reset for fisrt half cycle
    initial
    begin
        reset = 1'b1;
        #(T/2);
        reset = 1'b0;    
    end
    //stimulus
    initial
    begin
        //initial input
        syn_clr = 1'b0;
        load = 1'b0;
        en = 1'b0;
        up = 1'b1; //count up
        d = 3'b000;
        @(negedge reset); //wait reset
        @(negedge clk); //wait for one clock
        //test load
        load = 1'b1;
        d = 3'b011;
        @(negedge clk);
        load = 1'b0;
        repeat(2) @(negedge clk);
        //test syn_clear
        
        //test up and pause
        
        //test down counter
        
        //other wait
        
        //stop
        $stop;
    end
    
endmodule
