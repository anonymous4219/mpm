`include "log2.vh"

module xor_memory(clk, addr, d, en, q);
  parameter WIDTH = 8;
  parameter DEPTH = 256;
  parameter PORTS = 2;
  input clk;
  input [PORTS-1:0]addr[log2(DEPTH)-1:0];
  input [PORTS-1:0]d[WIDTH-1:0];
  input en[PORTS-1:0];
  output [PORTS-1:0]q[WIDTH-1:0];

endmodule
