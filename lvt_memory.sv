module lvt_memory #(
  parameter WIDTH,
  parameter DEPTH,
  parameter PORTS
  )(
  input clk,
  input [PORTS-1:0]addr[$clog2(DEPTH)-1:0],
  input [PORTS-1:0]en,
  input [PORTS-1:0]d,
  output logic [PORTS-1:0]q[$clog2(DEPTH)-1:0]
);

// TODO(kevintownsend): complete.

genvar gi, gj;


endmodule // lvt_memory
