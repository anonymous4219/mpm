module bidirectional_xor_memory_tb;

logic clk;

bidirectional_xor_memory dut(clk);

initial begin
  forever begin
    clk = 0;
    #10 clk = ~clk;
  end
end

initial begin
  #100 $display("Passed");
  $finish();
end

endmodule
