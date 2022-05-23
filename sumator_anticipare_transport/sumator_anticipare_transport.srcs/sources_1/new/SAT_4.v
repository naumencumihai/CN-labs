`timescale 1ns / 1ps

module SAT_4(a, b, carry_in, sum, carry_out, P, G);
input [3:0] a,b;
input carry_in;
output [3:0] sum;
output [3:0] carry_out, P, G;

wire [3:0] p, g, c;
 
assign p = a | b; // propagare (pi = ai + bi)
assign g = a & b; // generare (gi = ai * bi)
 
assign c[0] = carry_in;
assign c[1] = g[0] | (p[0] & c[0]);
assign c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0 ]& c[0]);
assign c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & c[0]);
assign carry_out = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & c[0]);
assign sum = (a ^ b) ^ c;
assign P = p[3] & p[2] & p[1] &  p[0]; // propagare bloc
assign G = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]); // generare bloc
 
endmodule