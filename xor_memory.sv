module xor_memory(clk, addr, d, en, q);
  parameter WIDTH = 8;
  parameter DEPTH = 256;
  parameter PORTS = 2;
  input clk;
  input [$clog2(DEPTH)-1:0]addr[PORTS-1:0];
  input [WIDTH-1:0]d[PORTS-1:0];
  input en[PORTS-1:0];
  output [WIDTH-1:0]q[PORTS-1:0];

  genvar i, j;
  generate
    for(i = 0; i < PORTS; i = i + 1) begin
      for(j = 0; j < PORTS; j = j + 1) begin
        // TODO: fix
        simple_ram gen_ram(clk, addr[i], d[i], en[i], addr[j], q[j]);
      end
    end
  endgenerate

endmodule // xor_memory

module simple_ram(clk, addr_d, d, en, addr_q, q);
  parameter WIDTH = 8;
  parameter DEPTH = 256;
  parameter PORTS = 2;
  input clk;
  input [$clog2(DEPTH)-1:0]addr_d;
  input [WIDTH-1:0]d;
  input en;
  input [$clog2(DEPTH)-1:0]addr_q;
  output reg [WIDTH-1:0]q;

  reg [WIDTH-1:0]ram[DEPTH-1:0];

  always @(posedge clk) begin
    if(en)
      ram[addr_d] <= d;
    q <= ram[addr_q];
  end
  // TODO: complete.

endmodule // simple_ram
