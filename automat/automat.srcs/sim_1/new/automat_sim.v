`timescale 1ns / 1ps

module automat_sim();
    reg clk, reset;
    reg [2:0] B1_B2_B3;
    wire [2:0] EB1_EB2_EBS;
    
    automat a(clk, reset, B1_B2_B3, EB1_EB2_EBS);
    
    initial begin
        clk = 0;
        reset = 1;
        #10 reset = 0;
        // First sim
        #10 B1_B2_B3 = 3'b001; // A -> B
        //#10 B1_B2_B3 = 3'b100; // B -> C
        //#10 B1_B2_B3 = 3'b010; // C -> E
        //#40 B1_B2_B3 = 3'b000; reset = 1; // E -> F -> G -> A
        // Second sim
        //#20 reset = 0; B1_B2_B3 = 3'b100; // A -> B
       // #10 B1_B2_B3 = 3'b100; // B -> C
       // #10 B1_B2_B3 = 3'b001; // C -> D
       // #50 B1_B2_B3 = 3'b000; reset = 1; // D -> E -> F -> G -> A
        // Third sim
      //  #20 reset = 0; B1_B2_B3 = 3'b100; // A -> B
      //  #10 B1_B2_B3 = 3'b010; // B -> F
      //  #30 B1_B2_B3 = 3'b000; reset = 1; // F -> G -> A
    end
    
    always
        #10 clk = ~clk;
endmodule
