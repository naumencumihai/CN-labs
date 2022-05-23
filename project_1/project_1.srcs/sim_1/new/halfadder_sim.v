`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2021 08:58:19 AM
// Design Name: 
// Module Name: halfadder_sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module halfadder_sim( );
    reg a, b;
    wire sum, cout;
    
    halfAdder h1(a, b, sum, cout);
    initial begin 
        a = 0; b = 0;
        #20 a = 1; b = 1;
        #20 a = 0; b = 1;
        #20 a = 1; b = 0;
    end
endmodule
