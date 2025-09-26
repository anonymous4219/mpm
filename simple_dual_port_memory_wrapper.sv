module simple_dual_port_memory_wrapper #(
  parameter WIDTH = 8,
  parameter DEPTH = 256,
  parameter WRITE_FIRST = 0)(
  input clk,
  input [$clog2(DEPTH)-1:0]addr_d,
  input [WIDTH-1:0]d,
  input en,
  input [$clog2(DEPTH)-1:0]addr_q,
  output logic [WIDTH-1:0]q);

  reg [WIDTH-1:0]ram[DEPTH-1:0];

  simple_dual_port_memory #(
    .WIDTH = WIDTH,
    .DEPTH = DEPTH,
  )sdp(
    clk,
    addr_d,
    d,
    en,
    addr_q,
    q
  );
  // TODO: bypass on write first mode.

endmodule // simple_dual_port_memory_wrapper
