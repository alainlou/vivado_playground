`timescale 1ns / 1ps

module top(
  input clk,
  input rst,
  input [31:0] data_in,
  output [47:0] data_out);

  ooc_module (
    .clk(clk),
    .rst(rst),
    .data_in(data_in[15:0]),
    .data_in_valid(data_in[16]),
    .out_comb(data_out[15:0]),
    .out_reg(data_out[31:16]),
    .out_select(data_out[47:32]));
endmodule
