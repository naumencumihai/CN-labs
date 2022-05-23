`timescale 1ns / 1ps

module mux41(
    output out,
    input in0,
    input in1,
    input in2,
    input in3,
    input sel0,
    input sel1
    );
 
assign out = 
    (in0 & ~sel1 & ~sel0) |
    (in1 & ~sel1 & sel0)  |
    (in2 & sel1 & ~sel0)  |
    (in3 & sel1 & sel0);
 
endmodule