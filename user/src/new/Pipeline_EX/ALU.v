module ALU (
    input [31:0] A,
    input [31:0] B,
    input [3:0] ALU_operation,
    output reg [31:0] res,
    output reg zero
);
  always @* begin
    case (ALU_operation)
      4'b0000: res = A & B;  // and
      4'b0001: res = A | B;  // or
      4'b0010: res = A + B;  // add
      4'b0110: res = A - B;  // sub
      4'b0111: res = $signed(A) < $signed(B) ? 32'b1 : 32'b0;  // slt
      4'b1001: res = (A < B) ? 32'b1 : 32'b0;  // sltu
      4'b1100: res = A ^ B;  // xor
      4'b1101: res = A >> B[4:0];  // srl
      4'b1110: res = A << B[4:0];  // sll
      4'b1111: res = $signed(A) >>> B[4:0];  // sra
      default: res = 32'b0;
    endcase
    zero = (res == 32'b0);
  end
endmodule
