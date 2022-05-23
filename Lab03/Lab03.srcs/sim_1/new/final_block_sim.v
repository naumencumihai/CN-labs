`timescale 1ns / 1ps

module final_block_sim();
    reg clk, reset, pause;
    wire [3:0] BCD00, BCD01, BCD10, BCD11;

    final_block f(clk, reset, pause, BCD00, BCD01, BCD10, BCD11);

    initial begin
        clk = 0;
        reset = 1;
        pause = 0;
        #50
        #50 reset = 0;
    end
    
    always
        #10 clk = ~clk;
        
           
endmodule
