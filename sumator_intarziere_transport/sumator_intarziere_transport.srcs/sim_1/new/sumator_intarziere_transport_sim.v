`timescale 1ns / 1ps

module sumator_anticipare_transport_sim;
reg [15:0] a,b;
reg cin;
wire [15:0] sum;
wire cout;
wire [3:0] P, G;

sumator_anticipare_transport_16 s(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout), .P(P), .G(G)); 

initial begin
  #10 
  a = 16'b0001101000110011;
  b = 16'b1110010111101011;
  // a si b din exemplu laborator
end
endmodule
