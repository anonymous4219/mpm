module lvt_memory_tb;
  parameter WIDTH=8;
  parameter DEPTH=8;
  parameter PORTS=4;
  logic clk;
  logic [PORTS-1:0] addr [$clog2(DEPTH)-1:0];

lvt_memory #(WIDTH, DEPTH, PORTS) dut(
  clk,
  addr,
  );

endmodule // lvt_memory_tb
