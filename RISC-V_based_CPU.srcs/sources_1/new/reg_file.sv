`timescale 1ns / 1ps

module reg_file #(
    parameter WORD_LEN = 32,
    parameter WIDTH = 32
) (
    input clk,
    input [$clog2(WIDTH)-1:0] adr1,  // read address 1
    input [$clog2(WIDTH)-1:0] adr2,  // read address 2
    input [$clog2(WIDTH)-1:0] adr3,  // write address
    input [WORD_LEN-1:0] wd3,  // Write Data
    input we3,  // Write Enable

    output [WORD_LEN-1:0] rd1,  // Read Data
    output [WORD_LEN-1:0] rd2   // Read Data
);
  logic [WORD_LEN-1:0] RAM[0:WIDTH-1];

  assign rd1 = (adr1 == 0) ? 0 : RAM[adr1];
  assign rd2 = (adr2 == 0) ? 0 : RAM[adr2];

  always_ff @(posedge clk) begin
    if (we3 && adr3) begin
      RAM[adr3] <= wd3;
      //$display("\nREG_FILE In write case: adr3 = %d; wd3 = %b; RAM[adr3] = %b\n", adr3, wd3, RAM[adr3]);
    end
  end

endmodule
