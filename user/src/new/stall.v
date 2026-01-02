module stall (
    input wire rst_stall,
    input wire RegWrite_out_IDEX,
    input wire [4:0] Rd_addr_out_IDEX,
    input wire RegWrite_out_EXMem,
    input wire [4:0] Rd_addr_out_EXMem,
    input wire RegWrite_out_MemWB,
    input wire [4:0] Rd_addr_out_MemWB,
    input wire [4:0] Rs1_addr_ID,
    input wire [4:0] Rs2_addr_ID,
    input wire Rs1_used,
    input wire Rs2_used,
    input wire Branch_ID,
    input wire BranchN_ID,
    input wire [1:0] Jump_ID,
    input wire Branch_out_IDEX,
    input wire BranchN_out_IDEX,
    input wire [1:0] Jump_out_IDEX,
    input wire Branch_out_EXMem,
    input wire BranchN_out_EXMem,
    input wire [1:0] Jump_out_EXMem,
    output reg en_IF,
    output reg en_IFID,
    output reg NOP_IFID,
    output reg NOP_IDEX,
    output reg Control_stall_IF
);

  reg Data_stall;

  always @(*) begin
    if ((Rd_addr_out_MemWB == Rs1_addr_ID) && (Rs1_addr_ID != 0) && RegWrite_out_MemWB && Rs1_used) begin
      Data_stall = 1;
    end else if ((Rd_addr_out_MemWB == Rs2_addr_ID) && (Rs2_addr_ID != 0) && RegWrite_out_MemWB && Rs2_used) begin
      Data_stall = 1;
    end else if ((Rd_addr_out_EXMem == Rs1_addr_ID) && (Rs1_addr_ID != 0) && RegWrite_out_EXMem && Rs1_used) begin
      Data_stall = 1;
    end else if ((Rd_addr_out_EXMem == Rs2_addr_ID) && (Rs2_addr_ID != 0) && RegWrite_out_EXMem && Rs2_used) begin
      Data_stall = 1;
    end else if ((Rd_addr_out_IDEX == Rs1_addr_ID) && (Rs1_addr_ID != 0) && RegWrite_out_IDEX && Rs1_used) begin
      Data_stall = 1;
    end else if ((Rd_addr_out_IDEX == Rs2_addr_ID) && (Rs2_addr_ID != 0) && RegWrite_out_IDEX && Rs2_used) begin
      Data_stall = 1;
    end else begin
      Data_stall = 0;
    end

    if (Branch_ID || BranchN_ID || Jump_ID[0] || Jump_ID[1] || (Branch_out_IDEX || BranchN_out_IDEX || Jump_out_IDEX[0] || Jump_out_IDEX[1]) || Branch_out_EXMem || BranchN_out_EXMem || Jump_out_EXMem[0] || Jump_out_EXMem[1]) begin
      Control_stall_IF = 1;
    end else begin
      Control_stall_IF = 0;
    end

    if (Data_stall) begin
      en_IF = 0;
    end else begin
      en_IF = 1;
    end

    if (rst_stall) begin
      en_IFID  = 1;
      NOP_IDEX = 0;
      NOP_IFID = 0;
    end else begin
      if ((Branch_ID || BranchN_ID || Jump_ID[0] || Jump_ID[1]) || (Branch_out_IDEX || BranchN_out_IDEX || Jump_out_IDEX[0] || Jump_out_IDEX[1]) || (Branch_out_EXMem || BranchN_out_EXMem || Jump_out_EXMem[0] || Jump_out_EXMem[1])) begin
        NOP_IFID = 1;
      end else begin
        NOP_IFID = 0;
      end
    end

    if (Data_stall) begin
      en_IFID  = 0;
      NOP_IDEX = 1;
    end else begin
      en_IFID  = 1;
      NOP_IDEX = 0;
    end

  end

endmodule
