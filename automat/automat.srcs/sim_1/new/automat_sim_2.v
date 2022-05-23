`timescale 1ns / 1ps

module automat_sim();
    reg clk, reset;
    reg [2:0] B1_B2_B3;
    wire [2:0] EB1_EB2_EBS;
    
    automat a2(clk, reset, B1_B2_B3, EB1_EB2_EBS);
    
    initial begin
        clk = 0;
        reset = 1;
        #10 reset = 0;
        #10 B1_B2_B3 = 3'b100; // A -> B
        #10 B1_B2_B3 = 3'b001; // B -> E
        #40 B1_B2_B3 = 3'b000; reset = 1; // E -> F -> G -> A -> reset
    end
    
    always
        #10 clk = ~clk;
endmodule
