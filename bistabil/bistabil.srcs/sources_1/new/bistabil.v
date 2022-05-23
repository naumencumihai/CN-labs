`timescale 1ns / 1ps

module bistabil_d(bin, clk, reset, bout);
    input [3:0] bin;
    input clk, reset;
    output reg [3:0] bout;
    
    always @ (posedge clk or posedge reset)  
      if (!reset)  
         bout <= 0;  
      else  
         if (clk)  
            bout <= bin;             
endmodule
