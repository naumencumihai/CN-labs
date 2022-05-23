`timescale 1ns / 1ps

module bin2bcd_sim();
    reg [5:0] valoare_bin;
    wire [3:0] BCD0;
    wire [3:0] BCD1;
    integer i;
    
    bin2bcd b(valoare_bin, BCD0, BCD1);
    
    initial begin
        for (i = 0; i < 64; i = i + 1)
        begin
            valoare_bin = i;
            #10;
        end
        $finish;
    end
endmodule

