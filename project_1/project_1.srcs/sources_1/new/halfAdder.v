`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2021 08:53:47 AM
// Design Name: 
// Module Name: halfAdder
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


module halfAdder(a, b, sum, cout);
    input a, b;
    output sum, cout;
    assign sum = a ^ b;
    assign cout = a & b;
endmodule
