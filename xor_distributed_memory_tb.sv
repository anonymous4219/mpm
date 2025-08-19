module xor_distributed_memory_tb;
  parameter WIDTH = 8;
  parameter DEPTH = 256;
  parameter PORTS = 2;

  logic clk;
  logic [$clog2(DEPTH)-1:0]addr[PORTS-1:0];
  logic [WIDTH-1:0]d[PORTS-1:0];
  logic en[PORTS-1:0];
  logic [WIDTH-1:0]q[PORTS-1:0];

  xor_distributed_memory #(WIDTH, DEPTH, PORTS) dut(clk, addr, d, en, q);

  initial begin
      clk = 1;
    forever begin
      #5 clk = ~clk;
    end
  end
  integer i;
  initial begin
    for(i = 0; i < PORTS; i = i + 1) begin
      addr[i] = 0;
      d[i] = 0;
      en[i] = 0;
    end
    #15 d[0] = 42;
    en[0] = 1;
    addr[0] = 5;
    #10 en[0] = 0;
    addr[0] = 0;
    d[0] = 0;
    #10
    addr[1] = 5;
    #10
    if(q[1] != 42) begin
      $display("FAILED");
      $finish();
    end
    #100 $display("Passed");
    $finish();
  end

endmodule // xor_memory_tb
