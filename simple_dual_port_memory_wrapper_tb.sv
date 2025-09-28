module simple_dual_port_memory_wrapper_tb;
  parameter WIDTH = 8;
  parameter DEPTH = 256;

  logic clk;
  logic [$clog2(DEPTH)-1:0]addr_d;
  logic [WIDTH-1:0]d;
  logic en;
  logic [$clog2(DEPTH)-1:0]addr_q;
  logic [WIDTH-1:0]q;

  simple_dual_port_memory_wrapper #(
    .WIDTH(WIDTH),
    .DEPTH(DEPTH)
  )sdp(
    clk,
    addr_d,
    d,
    en,
    addr_q,
    q
  );

  initial begin
      clk = 1;
    forever begin
      #5 clk = ~clk;
    end
  end
  integer i;
  initial begin
    //TODO: add tests.
    addr_d = 0;
    d = 0;
    en = 0;
    addr_q = 0;
    #11 en = 1;
    addr_d = 3;
    d = 42;
    #10 en = 0;
    addr_q = 3;
    #10;
    if(q != 42) begin
      $display("FAILED");
      $finish();
    end
    #10 addr_q = 5;
    addr_d = 5;
    en = 1;
    d = 41;
    #10 en = 0;
    if(q != 41) begin
      $display("FAILED");
      $finish();
    end

    #100 $display("Passed");
    $finish();
  end

endmodule // simple_dual_port_memory_wrapper_tb
