`timescale 1ns / 1ps

module rom #
// Parameters
(
    parameter
    romAddrWidth = 4,
    romDataWidth = 8
)
// Inputs and Outputs
(
    input clk,
    input [romAddrWidth - 1 : 0] addr,
    output reg [romDataWidth - 1 : 0] data
);
    
    always @ (*)
    begin
        case(addr)
            4'b0000: data <= 8'h48;     // H   ascii = 48; 0
            4'b0001: data <= 8'h65;     // e   ascii = 65; 1
            4'b0010: data <= 8'h6C;     // l   ascii = 6C; 2
            4'b0011: data <= 8'h6C;     // l   ascii = 6C; 3
            4'b0100: data <= 8'h6F;     // o   ascii = 6F; 4
            4'b0101: data <= 8'h20;     //     ascii = 20; 5
            4'b0110: data <= 8'h57;     // W   ascii = 57; 6
            4'b0111: data <= 8'h6F;     // o   ascii = 6F; 7
            4'b1000: data <= 8'h72;     // r   ascii = 72; 8
            4'b1001: data <= 8'h6C;     // l   ascii = 6C; 9
            4'b1010: data <= 8'h64;     // d   ascii = 64; 10
            4'b1011: data <= 8'h21;     // !   ascii = 21; 11
            4'b1100: data <= 8'h0D;     // \r  ascii = 0D; 12
            4'b1101: data <= 8'h0A;     // \n  ascii = 0A; 13
            default: data <= 8'h21;     // !   ascii = 21;
        endcase
    end
endmodule
