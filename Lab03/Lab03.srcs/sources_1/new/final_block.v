`timescale 1ns / 1ps


module final_block(clk, reset, pause, BCD00, BCD01, BCD10, BCD11);

   input clk, reset, pause;
   wire carry_out1, carry_out2;
   wire [5:0] valoare_bin1, valoare_bin2;
   output [3:0] BCD00, BCD01, BCD10, BCD11;
   
   numarator n1(clk, reset, pause, valoare_bin1, carry_out1);
   numarator n2(carry_out1, reset, pause, valoare_bin2, carry_out2);
   
   bin2bcd b1(valoare_bin1, BCD10, BCD11);
   bin2bcd b2(valoare_bin2, BCD00, BCD01);
   
endmodule
