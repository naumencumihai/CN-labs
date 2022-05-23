`timescale 1ns / 1ps

module PipeLine(clk, load, clear, a, b, c, d, e, f);
input clk, load, clear;
input[31:0] a, b, c, d, e;
output [31:0] f;

wire[31:0] out_1, out_2, out_3, out_4, out_5;
wire[31:0] i1, i2 ,out_i1, out_i2, out_3_prime, i3, out_i2_prime, i3_out, i4;

RegD inst1(a, b, c, d, e, clk, load, clear, out_1, out_2, out_3, out_4, out_5);
Inm inst2(out_1, out_2, i1);
Inm inst3(out_4, out_5, i2);
RegD inst4(i1, out_3, i2, 0, 0, clk, load, clear, out_i1, out_3_prime, out_i2);
Sum inst5(out_i1, out_3_prime, i3);
RegD inst6(out_i2, i3, 0, 0, 0, clk, load, clear, out_i2_prime, i3_out);
Dif inst7(i3_out, out_i2_prime, i4);
RegD inst8(i4, 0, 0, 0, 0, clk, load, clear, f);

endmodule
