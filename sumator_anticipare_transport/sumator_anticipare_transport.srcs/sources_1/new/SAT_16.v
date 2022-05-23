`timescale 1ns / 1ps

module SAT_16(a, b, carry_in, sum, carry_out, P, G);
input [15:0] a, b;
input carry_in;
output[15:0] sum;
output carry_out; // C4
output [3:0] P, G; // propagare si generare bloc
wire c1, c2, c3;

SAT_4 sat1 (a[3:0], b[3:0], carry_in, sum[3:0], c1, P[0], G[0]);
SAT_4 sat2 (a[7:4], b[7:4], c1, sum[7:4], c2, P[1], G[1]);
SAT_4 sat3 (a[11:8], b[11:8], c2, sum[11:8], c3, P[2], G[2]);
SAT_4 sat4 (a[15:12], b[15:12], c3, sum[15:12], carry_out, P[3], G[3]);

endmodule
