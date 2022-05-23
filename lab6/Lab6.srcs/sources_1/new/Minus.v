`timescale 1ns / 1ps

module Dif(A, B, Dif);
input  [31:0] A;  
input  [31:0] B;  
output [31:0] Dif; 
 
  assign Dif = A - B;  
endmodule
