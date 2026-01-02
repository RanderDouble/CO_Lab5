module Pipeline_ID (
    input clk_ID,
    //时钟
    input rst_ID,  //复位
    input RegWrite_in_ID,  //寄存器堆使能
    input [4:0] Rd_addr_ID,  //写目的地址输入
    input [31:0] Wt_data_ID,  //写数据输入
    input [31:0] Inst_in_ID,  //指令输入
    output [4:0] Rd_addr_out_ID,  //写目的地址输出
    output [31:0] Rs1_out_ID,  //操作数1输出
    output [31:0] Rs2_out_ID,  //操作数2输出
    output [4:0] Rs1_addr_ID,  //寄存器地址1
    output [4:0] Rs2_addr_ID,  //寄存器地址2
    output Rs1_used,  //源寄存器1是否被使用
    output Rs2_used,  //源寄存器2是否被使用
    output [31:0] Imm_out_ID,  //立即数输出
    output ALUSrc_B_ID,  //ALU B端输入选择
    output [3:0] ALU_control_ID,  //ALU控制
    output Branch_ID,  //Beq控制
    output BranchN_ID,  //Bne控制
    output MemRW_ID,  //存储器读写
    output Jump_ID,  //Jal控制
    output [1:0] MemtoReg_ID,  //寄存器写回选择
    output RegWrite_out_ID,  //寄存器堆读写
    output [2:0] imm_sel  //立即数选择信号输出
);
  assign Rd_addr_out_ID = Inst_in_ID[11:7];
  assign Rs1_addr_ID = Inst_in_ID[19:15];
  assign Rs2_addr_ID = Inst_in_ID[24:20];
  assign imm_sel = ImmSel;
  // output declaration of module SCPU_ctrl
  wire [2:0] ImmSel;

  SCPU_ctrl u_SCPU_ctrl (
      .OPcode     (Inst_in_ID[6:2]),
      .Fun3       (Inst_in_ID[14:12]),
      .Fun7       (Inst_in_ID[30]),
      .MIO_ready  (),
      .Fun_ecall  (),
      .Fun_mret   (),
      .ImmSel     (ImmSel),
      .ALUSrc_B   (ALUSrc_B_ID),
      .MemtoReg   (MemtoReg_ID),
      .Jump       (Jump_ID),
      .Branch     (Branch_ID),
      .BranchN    (BranchN_ID),
      .RegWrite   (RegWrite_out_ID),
      .MemRW      (MemRW_ID),
      .ALU_Control(ALU_control_ID),
      .CPU_MIO    (),
      .ecall      (),
      .mret       (),
      .ill_instr  (),
      .Rs1_used   (Rs1_used),
      .Rs2_used   (Rs2_used)
  );

  ImmGen u_ImmGen (
      .ImmSel    (ImmSel),
      .inst_field(Inst_in_ID),
      .Imm_out   (Imm_out_ID)
  );

  Regs u_Regs (
      .clk     (clk_ID),
      .rst     (rst_ID),
      .Rs1_addr(Inst_in_ID[6:2] == 5'b01101 ? 5'b0 : Inst_in_ID[19:15]),  // LUI: Rs1=0
      .Rs2_addr(Inst_in_ID[24:20]),
      .Wt_addr (Rd_addr_ID),
      .Wt_data (Wt_data_ID),
      .RegWrite(RegWrite_in_ID),
      .Rs1_data(Rs1_out_ID),
      .Rs2_data(Rs2_out_ID)
  );

endmodule
