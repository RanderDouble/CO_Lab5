module Pipeline_CPU (
    input clk,  //时钟
    input rst,  //复位
    input [31:0] Data_in,  //存储器数据输入
    input [31:0] inst_IF,  //取指阶段指令
    output [31:0] PC_out_IF,  //取指阶段PC输出
    output [31:0] PC_out_ID,  //译码阶段PC输出
    output [31:0] inst_ID,  //译码阶段指令
    output [31:0] PC_out_Ex,  //执行阶段PC输出
    output [31:0] MemRW_Ex,  //执行阶段存储器读写
    output [31:0] MemRW_Mem,  //访存阶段存储器读写
    output [31:0] Addr_out,  //地址输出
    output [31:0] Data_out,  //CPU数据输出
    output [31:0] Data_out_WB  //写回数据输出
);

  wire [31:0] PC_out_IF_0;

  wire [31:0] PC_out_IFID_0;
  wire [31:0] inst_out_IFID_0;

  wire [4:0] Rd_addr_out_ID_0;
  wire [31:0] Rs1_out_ID_0;
  wire [31:0] Rs2_out_ID_0;
  wire [31:0] Imm_out_ID_0;
  wire ALUSrc_B_ID_0;
  wire [3:0] ALU_control_ID_0;
  wire Branch_ID_0;
  wire BranchN_ID_0;
  wire MemRW_ID_0;
  wire [1:0] Jump_ID_0;
  wire [1:0] MemtoReg_ID_0;
  wire RegWrite_out_ID_0;

  wire [31:0] PC_out_IDEX_0;
  wire [4:0] Rd_addr_out_IDEX_0;
  wire [31:0] Rs1_out_IDEX_0;
  wire [31:0] Rs2_out_IDEX_0;
  wire [31:0] Imm_out_IDEX_0;
  wire ALUSrc_B_out_IDEX_0;
  wire [3:0] ALU_control_out_IDEX_0;
  wire Branch_out_IDEX_0;
  wire BranchN_out_IDEX_0;
  wire MemRW_out_IDEX_0;
  wire [1:0] Jump_out_IDEX_0;
  wire [1:0] MemtoReg_out_IDEX_0;
  wire RegWrite_out_IDEX_0;

  wire [31:0] PC_out_EX_0;
  wire [31:0] PC4_out_EX_0;
  wire zero_out_EX_0;
  wire [31:0] ALU_out_EX_0;
  wire [31:0] Rs2_out_EX_0;

  wire [31:0] PC_out_EXMem_0;
  wire [31:0] PC4_out_EXMem_0;
  wire [4:0] Rd_addr_out_EXMem_0;
  wire zero_out_EXMem_0;
  wire [31:0] ALU_out_EXMem_0;
  wire [31:0] Rs2_out_EXMem_0;
  wire Branch_out_EXMem_0;
  wire BranchN_out_EXMem_0;
  wire MemRW_out_EXMem_0;
  wire [1:0] Jump_out_EXMem_0;
  wire [1:0] MemtoReg_out_EXMem_0;
  wire RegWrite_out_EXMem_0;

  wire PCSrc_0;

  wire [31:0] PC4_out_MemWB_0;
  wire [4:0] Rd_addr_out_MemWB_0;
  wire [31:0] ALU_out_MemWB_0;
  wire [31:0] DMem_data_out_MemWB_0;
  wire [1:0] MemtoReg_out_MemWB_0;
  wire RegWrite_out_MemWB_0;

  wire [31:0] Data_out_WB_0;

  assign Imm_out_ID = Imm_out_ID_0;
  assign PC_out_Ex = PC_out_EX_0;
  assign PC_out_ID = PC_out_IFID_0;
  assign inst_ID = inst_out_IFID_0;
  assign PC_out_IF = PC_out_IF_0;
  assign Addr_out = ALU_out_EXMem_0;
  assign Data_out = Rs2_out_EXMem_0;
  assign Data_out_WB = Data_out_WB_0;
  assign MemRW_Mem = MemRW_out_EXMem_0;
  assign MemRW_Ex = MemRW_out_IDEX_0;

  Pipeline_IF pipe_if (
      .clk_IF(clk),
      .rst_IF(rst),
      .en_IF(1'b1),
      .PC_in_IF(PC_out_EXMem_0),
      .PCSrc(PCSrc_0),
      .PC_out_IF(PC_out_IF_0)
  );

  IF_reg_ID ifid (
      .clk_IFID(clk),
      .rst_IFID(rst),
      .en_IFID(1'b1),
      .PC_in_IFID(PC_out_IF_0),
      .Inst_in_IFID(inst_IF),
      .PC_out_IFID(PC_out_IFID_0),
      .inst_out_IFID(inst_out_IFID_0)
  );

  Pipeline_ID pipe_id (
      .clk_ID         (clk),
      .rst_ID         (rst),
      .RegWrite_in_ID (RegWrite_out_MemWB_0),
      .Rd_addr_ID     (Rd_addr_out_MemWB_0),
      .Wt_data_ID     (Data_out_WB_0),
      .Inst_in_ID     (inst_out_IFID_0),
      .Rd_addr_out_ID (Rd_addr_out_ID_0),
      .Rs1_out_ID     (Rs1_out_ID_0),
      .Rs2_out_ID     (Rs2_out_ID_0),
      .Imm_out_ID     (Imm_out_ID_0),
      .ALUSrc_B_ID    (ALUSrc_B_ID_0),
      .ALU_control_ID (ALU_control_ID_0),
      .Branch_ID      (Branch_ID_0),
      .BranchN_ID     (BranchN_ID_0),
      .MemRW_ID       (MemRW_ID_0),
      .Jump_ID        (Jump_ID_0),
      .MemtoReg_ID    (MemtoReg_ID_0),
      .RegWrite_out_ID(RegWrite_out_ID_0)
  );

  ID_reg_Ex id_ex (
      .clk_IDEX            (clk),
      .rst_IDEX            (rst),
      .en_IDEX             (1'b1),
      .PC_in_IDEX          (PC_out_IFID_0),
      .Rd_addr_IDEX        (Rd_addr_out_ID_0),
      .Rs1_in_IDEX         (Rs1_out_ID_0),
      .Rs2_in_IDEX         (Rs2_out_ID_0),
      .Imm_in_IDEX         (Imm_out_ID_0),
      .ALUSrc_B_in_IDEX    (ALUSrc_B_ID_0),
      .ALU_control_in_IDEX (ALU_control_ID_0),
      .Branch_in_IDEX      (Branch_ID_0),
      .BranchN_in_IDEX     (BranchN_ID_0),
      .MemRW_in_IDEX       (MemRW_ID_0),
      .Jump_in_IDEX        (Jump_ID_0),
      .MemtoReg_in_IDEX    (MemtoReg_ID_0),
      .RegWrite_in_IDEX    (RegWrite_out_ID_0),
      .PC_out_IDEX         (PC_out_IDEX_0),
      .Rd_addr_out_IDEX    (Rd_addr_out_IDEX_0),
      .Rs1_out_IDEX        (Rs1_out_IDEX_0),
      .Rs2_out_IDEX        (Rs2_out_IDEX_0),
      .Imm_out_IDEX        (Imm_out_IDEX_0),
      .ALUSrc_B_out_IDEX   (ALUSrc_B_out_IDEX_0),
      .ALU_control_out_IDEX(ALU_control_out_IDEX_0),
      .Branch_out_IDEX     (Branch_out_IDEX_0),
      .BranchN_out_IDEX    (BranchN_out_IDEX_0),
      .MemRW_out_IDEX      (MemRW_out_IDEX_0),
      .Jump_out_IDEX       (Jump_out_IDEX_0),
      .MemtoReg_out_IDEX   (MemtoReg_out_IDEX_0),
      .RegWrite_out_IDEX   (RegWrite_out_IDEX_0)
  );

  Pipeline_Ex pipe_ex (
      .PC_in_EX(PC_out_IDEX_0),
      .Rs1_in_EX(Rs1_out_IDEX_0),
      .Rs2_in_EX(Rs2_out_IDEX_0),
      .Imm_in_EX(Imm_out_IDEX_0),
      .ALUSrc_B_in_EX(ALUSrc_B_out_IDEX_0),
      .ALU_control_in_EX(ALU_control_out_IDEX_0),
      .PC_out_EX(PC_out_EX_0),
      .PC4_out_EX(PC4_out_EX_0),
      .zero_out_EX(zero_out_EX_0),
      .ALU_out_EX(ALU_out_EX_0),
      .Rs2_out_EX(Rs2_out_EX_0)
  );

  Ex_reg_Mem ex_mem (
      .clk_EXMem         (clk),
      .rst_EXMem         (rst),
      .en_EXMem          (1'b1),
      .PC_in_EXMem       (PC_out_EX_0),
      .PC4_in_EXMem      (PC4_out_EX_0),
      .Rd_addr_EXMem     (Rd_addr_out_IDEX_0),
      .zero_in_EXMem     (zero_out_EX_0),
      .ALU_in_EXMem      (ALU_out_EX_0),
      .Rs2_in_EXMem      (Rs2_out_EX_0),
      .Branch_in_EXMem   (Branch_out_IDEX_0),
      .BranchN_in_EXMem  (BranchN_out_IDEX_0),
      .MemRW_in_EXMem    (MemRW_out_IDEX_0),
      .Jump_in_EXMem     (Jump_out_IDEX_0),
      .MemtoReg_in_EXMem (MemtoReg_out_IDEX_0),
      .RegWrite_in_EXMem (RegWrite_out_IDEX_0),
      .PC_out_EXMem      (PC_out_EXMem_0),
      .PC4_out_EXMem     (PC4_out_EXMem_0),
      .Rd_addr_out_EXMem (Rd_addr_out_EXMem_0),
      .zero_out_EXMem    (zero_out_EXMem_0),
      .ALU_out_EXMem     (ALU_out_EXMem_0),
      .Rs2_out_EXMem     (Rs2_out_EXMem_0),
      .Branch_out_EXMem  (Branch_out_EXMem_0),
      .BranchN_out_EXMem (BranchN_out_EXMem_0),
      .MemRW_out_EXMem   (MemRW_out_EXMem_0),
      .Jump_out_EXMem    (Jump_out_EXMem_0),
      .MemtoReg_out_EXMem(MemtoReg_out_EXMem_0),
      .RegWrite_out_EXMem(RegWrite_out_EXMem_0)
  );

  Pipeline_Mem pipe_mem (
      .zero_in_Mem(zero_out_EXMem_0),
      .Branch_in_Mem(Branch_out_EXMem_0),
      .BranchN_in_Mem(BranchN_out_EXMem_0),
      .Jump_in_Mem(Jump_out_EXMem_0),
      .PCSrc(PCSrc_0)
  );

  Mem_reg_WB mem_reg_wb (
      .clk_MemWB          (clk),
      .rst_MemWB          (rst),
      .en_MemWB           (1'b1),
      .PC4_in_MemWB       (PC4_out_EXMem_0),
      .Rd_addr_MemWB      (Rd_addr_out_EXMem_0),
      .ALU_in_MemWB       (ALU_out_EXMem_0),
      .Dmem_data_MemWB    (Data_in),
      .MemtoReg_in_MemWB  (MemtoReg_out_EXMem_0),
      .RegWrite_in_MemWB  (RegWrite_out_EXMem_0),
      .PC4_out_MemWB      (PC4_out_MemWB_0),
      .Rd_addr_out_MemWB  (Rd_addr_out_MemWB_0),
      .ALU_out_MemWB      (ALU_out_MemWB_0),
      .DMem_data_out_MemWB(DMem_data_out_MemWB_0),
      .MemtoReg_out_MemWB (MemtoReg_out_MemWB_0),
      .RegWrite_out_MemWB (RegWrite_out_MemWB_0)
  );

  Pipeline_WB pipe_wb (
      .PC4_in_WB(PC4_out_MemWB_0),
      .ALU_in_WB(ALU_out_MemWB_0),
      .Dmem_data_WB(DMem_data_out_MemWB_0),
      .MemtoReg_in_WB(MemtoReg_out_MemWB_0),
      .Data_out_WB(Data_out_WB_0)
  );


endmodule
