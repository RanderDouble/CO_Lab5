module ImmGen (
    input [2:0] ImmSel,
    input [31:0] inst_field,
    output reg [31:0] Imm_out
);
  always @(*) begin
    case (ImmSel)
      3'b000: begin
        // U-type (lui, auipc)
        Imm_out = {inst_field[31:12], 12'b0};
      end
      3'b001: begin
        // I-type
        Imm_out = {{20{inst_field[31]}}, inst_field[31:20]};
      end
      3'b010: begin
        // S-type
        Imm_out = {{20{inst_field[31]}}, inst_field[31:25], inst_field[11:7]};
      end
      3'b011: begin
        // B-type
        Imm_out = {
          {19{inst_field[31]}},
          inst_field[31],
          inst_field[7],
          inst_field[30:25],
          inst_field[11:8],
          1'b0
        };
      end
      3'b100: begin
        // J-type (jal)
        Imm_out = {
          {12{inst_field[31]}}, inst_field[19:12], inst_field[20], inst_field[30:21], 1'b0
        };
      end
    endcase
  end
endmodule
