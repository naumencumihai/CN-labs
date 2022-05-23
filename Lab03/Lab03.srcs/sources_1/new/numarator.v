`timescale 1ns / 1ps

module numarator(clk, reset, pause, valoare_bin, carry_out);
    input clk;
    input reset;
    input pause;
    output reg carry_out;
    output reg [5:0] valoare_bin;
    
    always @(posedge clk, posedge reset)
    begin
    if (reset)
        begin
            valoare_bin = 0;
            carry_out = 0;
        end
    else
        begin
            if (~pause)
                begin
                    valoare_bin = valoare_bin + 1;
                    carry_out = 0;
                    if (valoare_bin > 59)
                        begin
                            carry_out = 1;
                            valoare_bin = 0;
                        end
                end
        end
    end
endmodule
