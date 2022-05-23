`timescale 1ns / 1ps

module PipeLine_Sim();
reg clk, load, clear;
reg[31:0] a, b, c, d, e;
wire[31:0] f;

PipeLine PipeLine_sim(clk, load, clear, a, b, c, d, e, f);

initial begin 
    clk = 1;
    load = 1;
    clear = 0; 
    a = 30; b = 5; c = 5; d = 10; e = 10; // Set initial
#20 a = 12; b = 10; c = 2; d = 6; e = 12; // Set 2
#20 a = 1; b = 2; c = 8; d = 5; e = 2;    // Set 3
#20 a = 10; b = 3; c = 3; d = 3; e = 10;  // Set 4
#20 a = 5; b = 20; c = 7; d = 10; c = 10; // Set 5
end

always
#10 clk = ~clk;
endmodule

