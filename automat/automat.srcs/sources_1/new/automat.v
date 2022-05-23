`timescale 1ns / 1ps

module automat
(
    input wire clk, reset,
    input wire [2:0] B1_B2_B3,
    output reg [2:0] EB1_EB2_EBS
);

localparam [2:0]
    A = 3'b000,  // 0 lei
    B = 3'b001,  // 1 leu
    C = 3'b010,  // 2 lei
    D = 3'b011,  // Rest 4 lei
    E = 3'b100,  // Rest 3 lei
    F = 3'b101,  // Rest 2 lei
    G = 3'b110;  // Rest 1 leu

reg [2:0] state_reg, state_next;

always @(posedge clk, posedge reset) begin
    if (reset)
        begin
        state_reg <= A;
        end
    else
        begin
        state_reg <= state_next;
        end
end
    
always @(B1_B2_B3, state_reg) begin
    state_next = state_reg;
    EB1_EB2_EBS = 3'b000;
    case (state_reg)
        A : begin
            if (B1_B2_B3 == 3'b100) begin
                EB1_EB2_EBS = 3'b000;
                state_next = B;
            end
            else if (B1_B2_B3 == 3'b001) begin
                EB1_EB2_EBS = 3'b011;
                state_next = F;
            end
            else if (B1_B2_B3 == 3'b010) begin
                EB1_EB2_EBS = 3'b101;
                state_next = G;
            end
            else begin
                EB1_EB2_EBS = 3'b000;
                state_next = A;
            end
        end
        B : begin
            if (B1_B2_B3 == 3'b100) begin
                EB1_EB2_EBS = 3'b000;
                state_next = C;
            end
            else if (B1_B2_B3 == 3'b001) begin
                EB1_EB2_EBS = 3'b011;
                state_next = E;
            end
            else if (B1_B2_B3 == 3'b010) begin
                EB1_EB2_EBS = 3'b101;
                state_next = F;
            end
        end
        C : begin
            if (B1_B2_B3 == 3'b100) begin
                EB1_EB2_EBS = 3'b001;
                state_next = A;
            end
            else if (B1_B2_B3 == 3'b001) begin
                EB1_EB2_EBS = 3'b011;
                state_next = D;
            end
            else if (B1_B2_B3 == 3'b010) begin
                EB1_EB2_EBS = 3'b101;
                state_next = E;
            end
        end
        D : begin
            EB1_EB2_EBS = 3'b100;
            state_next = E;
        end
        E : begin
            EB1_EB2_EBS = 3'b100;
            state_next = F;
        end
        F : begin
            EB1_EB2_EBS = 3'b100;
            state_next = G;
        end
        G : begin
            EB1_EB2_EBS = 3'b100;
            state_next = A;
        end
        default : state_next = A;
    endcase                 
end
endmodule
