`timescale 1ns / 1ps

module mux_4_1_sim();
    reg[3:0] a, b, c, d;
    reg[1:0] s;
    wire[3:0] cout;
    
    mux_4_1 mux(a, b, c, d, s, cout);
    
    initial begin
        a = 10;
        b = 11;
        c = 13;
        d = 15;
        
        s[1] = 0;
        s[0] = 0;
        #20 s[1] = 0; s[0] = 1;
        #20 s[1] = 1; s[0] = 0;
        #20 s[1] = 1; s[0] = 1;
    end
endmodule
