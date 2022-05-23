`timescale 1ns / 1ps

module sumator_anticipare_transport_4(a, b, cin, sum, cout, P, G);
input [3:0] a,b;
input cin;
output [3:0] sum;
output [3:0] cout, P, G;

wire [3:0] p, g, c;
 
assign p = a | b; // propagare (pi = ai + bi)
assign g = a & b; // generare (gi = ai * bi)
 
assign c[0] = cin;
assign c[1] = g[0] | (p[0] & c[0]);
assign c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0 ]& c[0]);
assign c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & c[0]);
assign cout = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & c[0]);
assign sum = (a ^ b) ^ c;
assign P = p[3] & p[2] & p[1] &  p[0]; // propagare bloc
assign G = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]); // generare bloc
 
endmodule