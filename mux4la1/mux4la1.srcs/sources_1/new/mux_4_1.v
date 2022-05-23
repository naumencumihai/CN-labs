`timescale 1ns / 1ps

module mux_4_1(a, b, c, d, s, cout);
    input [3:0] a, b, c, d;
    input [1:0] s;
    output [3:0] cout;
    assign cout = s[1] ? (s[0] ? d : c) : (s[0] ? b : a);

endmodule
