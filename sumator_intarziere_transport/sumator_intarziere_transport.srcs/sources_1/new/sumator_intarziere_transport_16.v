`timescale 1ns / 1ps

module sumator_anticipare_transport_16(a, b, cin, sum, cout, P, G);
input [15:0] a, b;
input cin;
output[15:0] sum;
output cout; // C4
output [3:0] P, G; // propagare si generare bloc
wire c1, c2, c3;

sumator_anticipare_transport_4 s1 (.a(a[3:0]), .b(b[3:0]), .cin(cin), .sum(sum[3:0]), .cout(c1), .P(P[0]), .G(G[0]));
sumator_anticipare_transport_4 s2 (.a(a[7:4]), .b(b[7:4]), .cin(c1), .sum(sum[7:4]), .cout(c2), .P(P[1]), .G(G[1]));
sumator_anticipare_transport_4 s3 (.a(a[11:8]), .b(b[11:8]), .cin(c2), .sum(sum[11:8]), .cout(c3), .P(P[2]), .G(G[2]));
sumator_anticipare_transport_4 s4 (.a(a[15:12]), .b(b[15:12]), .cin(c3), .sum(sum[15:12]), .cout(cout), .P(P[3]), .G(G[3]));

endmodule