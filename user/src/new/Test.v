module Test (
    input clk,
    input rst
);
  /* SCPU 中接出 */
  wire [31:0] Data_in, inst_IF, PC_out_IF, PC_out_ID, inst_ID, PC_out_Ex, MemRW_Ex, MemRW_Mem, Addr_out, Data_out, Data_out_WB;

  Pipeline_CPU u0 (
      clk,  //时钟
      rst,  //复位
      Data_in,  //存储器数据输入
      inst_IF,  //取指阶段指令
      PC_out_IF,  //取指阶段PC输出
      PC_out_ID,  //译码阶段PC输出
      inst_ID,  //译码阶段指令
      PC_out_Ex,  //执行阶段PC输出
      MemRW_Ex,  //执行阶段存储器读写
      MemRW_Mem,  //访存阶段存储器读写
      Addr_out,  //地址输出
      Data_out,  //CPU数据输出
      Data_out_WB  //写回数据输出
  );

  RAM_B u1 (
      .clka (~clk),
      .wea  (MemRW_Mem),
      .addra(Addr_out[11:2]),
      .dina (Data_out),
      .douta(Data_in)
  );

  ROM_D u2 (
      .a  (PC_out_IF[11:2]),
      .spo(inst_IF)
  );

endmodule
