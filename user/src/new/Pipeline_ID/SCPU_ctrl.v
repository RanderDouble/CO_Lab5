module SCPU_ctrl (
    input      [4:0] OPcode,       //OPcode
    input      [2:0] Fun3,         //Function
    input            Fun7,         //Function
    input            MIO_ready,    //CPU Wait
    input      [2:0] Fun_ecall,
    input      [1:0] Fun_mret,
    output reg [2:0] ImmSel,
    output reg       ALUSrc_B,
    output reg [1:0] MemtoReg,
    output reg [1:0] Jump,
    output reg       Branch,
    output reg       BranchN,
    output reg       RegWrite,
    output reg       MemRW,
    output reg [3:0] ALU_Control,
    output reg       CPU_MIO,
    output reg       ecall,
    output reg       mret,
    output reg       ill_instr
);
  reg [ 1:0] ALUop;
  reg [ 3:0] Fun;
  reg [10:0] CPUCtrl;  // Expanded control signals

  always @* begin
    CPU_MIO = 1'b0;
    Branch = 0;
    BranchN = 0;
    ecall = 1'b0;
    mret = 1'b0;
    ill_instr = 1'b0;

    // CPUCtrl = {ALUSrc_B, MemtoReg, Jump, Branch, BranchN, RegWrite, MemRW, ALUop}

    case (OPcode)
      5'b01100: begin  // R-type
        CPUCtrl = 11'b0_00_00_0_0_1_0_10;
        ImmSel  = 3'b000;
      end
      5'b00000: begin  // Load (I-type)
        CPUCtrl = 11'b1_01_00_0_0_1_0_00;
        ImmSel  = 3'b001;
      end
      5'b01000: begin  // Store (S-type)
        CPUCtrl = 11'b1_00_00_0_0_0_1_00;
        ImmSel  = 3'b010;
      end
      5'b11000: begin  // Branch (B-type)
        if (Fun3 == 3'b000) CPUCtrl = 11'b0_00_00_1_0_0_0_01;  // beq
        else if (Fun3 == 3'b001) CPUCtrl = 11'b0_00_00_0_1_0_0_01;  // bne
        else if (Fun3 == 3'b101) begin
          CPUCtrl   = 11'b0_00_00_0_0_0_0_00;  // illegal branch encoding
          ill_instr = 1'b1;
        end else CPUCtrl = 11'b0_00_00_0_0_0_0_00;
        ImmSel = 3'b011;
      end
      5'b11011: begin  // JAL (J-type)
        CPUCtrl = 11'b0_10_01_0_0_1_0_00;
        ImmSel  = 3'b100;
      end
      5'b11001: begin  // JALR (I-type)
        CPUCtrl = 11'b1_10_10_0_0_1_0_00;  // Jump=10 for JALR
        ImmSel  = 3'b001;
      end
      5'b00100: begin  // I-type ALU
        CPUCtrl = 11'b1_00_00_0_0_1_0_10;
        ImmSel  = 3'b001;
      end
      5'b01101: begin  // LUI (U-type)
        CPUCtrl = 11'b1_11_00_0_0_1_0_00;  // MemtoReg=11
        ImmSel  = 3'b000;  // New U-type ImmSel
      end
      default: begin
        CPUCtrl = 11'b0_00_00_0_0_0_0_00;
        ImmSel  = 3'b000;
      end
    endcase

    {ALUSrc_B, MemtoReg, Jump, Branch, BranchN, RegWrite, MemRW, ALUop} = CPUCtrl;

    // Fix Fun signal for I-type vs R-type
    if (OPcode == 5'b00100 && (Fun3 == 3'b001 || Fun3 == 3'b101)) Fun = {Fun7, Fun3};
    else if (OPcode == 5'b00100) Fun = {1'b0, Fun3};  // Force Fun7=0 for addi, slti, etc.
    else Fun = {Fun7, Fun3};

    case (ALUop)
      2'b00:   ALU_Control = 4'b0010;  // add (Load/Store/JALR/LUI)
      2'b01:   ALU_Control = 4'b0110;  // sub (Branch comparison)
      2'b10: begin  // R-type or I-type ALU
        case (Fun)
          4'b0000: ALU_Control = 4'b0010;  // add
          4'b1000: ALU_Control = 4'b0110;  // sub
          4'b0111: ALU_Control = 4'b0000;  // and
          4'b0110: ALU_Control = 4'b0001;  // or
          4'b0100: ALU_Control = 4'b1100;  // xor
          4'b0001: ALU_Control = 4'b1110;  // sll
          4'b0101: ALU_Control = 4'b1101;  // srl
          4'b1101: ALU_Control = 4'b1111;  // sra
          4'b0010: ALU_Control = 4'b0111;  // slt
          4'b0011: ALU_Control = 4'b1001;  // sltu
          default: ALU_Control = 4'b0010;
        endcase
      end
      default: ALU_Control = 4'b0010;
    endcase
    // SYSTEM instructions: detect ecall / mret using extra fields
    if (OPcode == 5'b11100) begin
      if (Fun_ecall == 3'b000) ecall = 1'b1;
      if (Fun_mret == 2'b11) mret = 1'b1;
    end
  end
endmodule
