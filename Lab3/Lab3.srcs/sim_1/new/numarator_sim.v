`timescale 1ns / 1ps

module numarator_sim();
    reg clk;
    reg reset;
    reg pause;
    wire carry_out;
    wire [5:0] valoare_bin;
    
    numarator n(clk, reset, pause, carry_out, valoare_bin);
    
    initial begin
        clk = 0;
        reset = 1;
        pause = 0;
        #50 reset = 0;
    end
    
    always
        #25 clk = ~clk;
    
endmodule