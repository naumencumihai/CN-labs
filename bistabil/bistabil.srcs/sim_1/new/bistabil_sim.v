`timescale 1ns / 1ps

module bistabil_sim();
    reg [3:0] bin;
    reg clk, reset;
    wire [3:0] bout;
    
    bistabil_d  bis (bin, clk, reset, bout); 
                  
    initial begin  
    clk = 0;
    reset = 0;
    bin = 4'b 1010;
    #50 reset = 1;
    #50 reset = 0;
    #50
    $finish;
    end
    
    always
    #25 clk = ~clk;
endmodule
