`timescale 1ns / 1ps

module RegD(a, b, c, d, e, clk, load, clear, a_out, b_out, c_out, d_out, e_out);
input[31:0] a, b, c, d, e;
input clk, load, clear;
output reg [31:0] a_out, b_out, c_out, d_out, e_out;

always @ (posedge clk or negedge clear)
begin
if (clear)
    begin
     a_out<=0;
     b_out<=0;
     c_out<=0;
     d_out<=0;
     e_out<=0;
     end
else if (load)
    begin
     a_out<=a;
     b_out<=b;
     c_out<=c;
     d_out<=d;
     e_out<=e;
     end 
end
endmodule
