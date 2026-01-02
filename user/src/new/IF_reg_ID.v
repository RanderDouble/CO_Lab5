module IF_reg_ID (
    input clk_IFID,  //寄存器时钟
    input rst_IFID,  //寄存器复位
    input en_IFID,   //寄存器使能
    input NOP_IFID,  //插入NOP信号
    input [31:0] PC_in_IFID,  //PC输入
    input [31:0] Inst_in_IFID,  //指令输入
    output reg [31:0] PC_out_IFID,  //PC输出
    output reg [31:0] inst_out_IFID,  //指令输出
    output reg valid_IFID  //指令有效位输出
);
  always @(posedge clk_IFID or posedge rst_IFID) begin
    if (rst_IFID) begin
      PC_out_IFID   <= 32'b0;
      inst_out_IFID <= 32'b0;
      valid_IFID    <= 1'b0;
    end else if (NOP_IFID) begin
      PC_out_IFID   <= 32'b0;
      inst_out_IFID <= 32'h00000013;  //NOP: addi x0, x0, 0
      valid_IFID    <= 1'b0;
    end else if (en_IFID) begin
      PC_out_IFID   <= PC_in_IFID;
      inst_out_IFID <= Inst_in_IFID;
      valid_IFID    <= 1'b1;
    end
  end
endmodule
