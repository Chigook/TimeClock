`timescale 1ns / 1ps

module DecoderFNDDigit(
    input [1:0] i_select,

    output [3:0] o_digitPosition
    );

    reg [3:0] r_digitPosition;
    //reg --> register --> Latch or F/F 같은 memory 공간

    assign o_digitPosition = r_digitPosition;

    always @(i_select) begin
        case (i_select)
            2'h0 : r_digitPosition <= 4'b1110;
            2'h1 : r_digitPosition <= 4'b1101;
            2'h2 : r_digitPosition <= 4'b1011;
            2'h3 : r_digitPosition <= 4'b0111;
        endcase
    end
endmodule
