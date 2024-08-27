`timescale 1ns / 1ps

module ooc_module(
  input clk,
  input rst,
  input [15:0] data_in,
  input data_in_valid,
  output logic [15:0] out_comb,
  output logic [15:0] out_reg,
  output logic [15:0] out_select);

  logic [15:0] internal;

  always @(posedge clk) begin
    internal <= data_in;
  end

  assign out_comb = data_in;
  assign out_select = data_in_valid ? out_comb : internal;
  assign out_reg = out_select;
endmodule
