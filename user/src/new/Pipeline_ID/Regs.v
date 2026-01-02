module Regs (
    input clk,
    input rst,
    input [4:0] Rs1_addr,
    input [4:0] Rs2_addr,
    input [4:0] Wt_addr,
    input [31:0] Wt_data,
    input RegWrite,
    output [31:0] Rs1_data,
    output [31:0] Rs2_data
);
  reg [31:0] register[1:31];
  integer i;

  assign Rs1_data = (Rs1_addr == 0) ? 0 : register[Rs1_addr];
  assign Rs2_data = (Rs2_addr == 0) ? 0 : register[Rs2_addr];

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      for (i = 1; i < 32; i = i + 1) begin
        register[i] <= 32'b0;
      end
    end else if (RegWrite && Wt_addr != 0) begin
      register[Wt_addr] <= Wt_data;
    end
  end

endmodule

