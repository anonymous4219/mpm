`include "log2.vh"

module xor_memory_tb;
  parameter WIDTH = 8;
  parameter DEPTH = 256;
  parameter PORTS = 2;

  logic clk;
  logic [PORTS-1:0]addr[log2(DEPTH)-1:0];
  logic [PORTS-1:0]d[WIDTH-1:0];
  logic en[PORTS-1:0];
  logic [PORTS-1:0]q[WIDTH-1:0];

  xor_memory #(WIDTH, DEPTH, PORTS) dut(clk, addr, d, en, q);

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

endmodule // xor_memory_tb
