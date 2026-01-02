module Pipeline_Mem (
    input zero_in_Mem,  //zero
    input Branch_in_Mem,  //beq
    input BranchN_in_Mem,  //bne
    input Jump_in_Mem,  //jal
    output PCSrc  //PC选择控制输出
);

  assign PCSrc = Jump_in_Mem | ((Branch_in_Mem & zero_in_Mem) | (~zero_in_Mem & BranchN_in_Mem));
endmodule
