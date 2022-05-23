`timescale 1ns / 1ps

module SAT_sim;
reg [15:0] a,b;
reg cin;
wire [15:0] sum;
wire cout;
wire [3:0] P, G;

SAT_16 sat(a, b, cin, sum, cout, P, G); 

initial begin
  a = 0; 
  b = 0; 
  cin = 0;
  #10 
  // Exemplu indrumar laborator
  // P = 1110, G = 0010
  a = 16'b0001101000110011;
  b = 16'b1110010111101011;
  #10
  a = 100;
  b = 20;
  #10
  a = 12565;
  b = 30125;
end
endmodule