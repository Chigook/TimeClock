`timescale 1ns / 1ps

module Mux_4x1(
    input [3:0] i_a, i_b, i_c, i_d,
    input [1:0] i_select,

    output [3:0] o_y
    );

    reg [3:0] r_y;

    assign o_y = r_y;

    always @(*) begin
        case (i_select)
            2'b00 : r_y <= i_a;
            2'b01 : r_y <= i_b;
            2'b10 : r_y <= i_c;
            2'b11 : r_y <= i_d;
        endcase
    end
endmodule
