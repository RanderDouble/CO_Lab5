module Test_tb ();
  reg clk;
  reg rst;

  // 实例化被测模块
  Test uut (
      .clk (clk),
      .rst (rst)
  );

  // 时钟生成
  always #5 clk = ~clk;  // 每5时间单位翻转一次时钟

  // 初始化和复位信号
  initial begin
    rst = 1;
    clk = 1;
    #10;
    rst = 0;
    #10;
    #10;
    #590;
    #20;
    $finish;  // 结束仿真
  end
endmodule
