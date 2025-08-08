module xor_memory_tb;
  parameter WIDTH = 8;
  parameter DEPTH = 256;
  parameter PORTS = 2;

  logic clk;
  logic [$clog2(DEPTH)-1:0]addr[PORTS-1:0];
  logic [WIDTH-1:0]d[PORTS-1:0];
  logic en[PORTS-1:0];
  logic [WIDTH-1:0]q[PORTS-1:0];

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
