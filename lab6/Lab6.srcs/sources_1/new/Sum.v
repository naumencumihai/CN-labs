`timescale 1ns / 1ps

module Sum(A, B, Sum);
input  [31:0] A;  
input  [31:0] B;  
output [31:0] Sum; 
 
  assign Sum = A + B;  
endmodule 
