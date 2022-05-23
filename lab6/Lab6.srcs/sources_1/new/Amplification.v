`timescale 1ns / 1ps

module Inm(A, B, Mult);
input  [31:0] A;  
input  [31:0] B;  
output [31:0] Mult; 
 
  assign Mult = A * B; 
endmodule
