module Pipeline_IF (
    input clk_IF,  //时钟
    input rst_IF,  //复位
    input en_IF,  //使能
    input [31:0] PC_in_IF,  //取指令PC输入
    input PCSrc,  //PC输入选择
    output reg [31:0] PC_out_IF
);
  REG32 u_REG32 (
      .clk(clk_IF),
      .rst(rst_IF),
      .CE (en_IF),
      .D  (PCSrc ? PC_out_IF + 4 : PC_in_IF),
      .Q  (PC_out_IF)
  );

endmodule
