module lvt_memory #(
  parameter WIDTH,
  parameter DEPTH,
  parameter PORTS
  )(
  input clk,
  input [$clog2(DEPTH)-1:0]addr[PORTS-1:0],
  input en[PORTS-1:0],
  input [WIDTH-1:0]d[PORTS-1:0],
  output logic [WIDTH-1:0]q[PORTS-1:0]
);

// TODO(kevintownsend): complete.
logic [WIDTH-1:0]intermediate_output[PORTS-1:0][PORTS-1:0];

genvar gi, gj;

generate
  for(gi = 0; gi < PORTS; gi++) begin
    for(gj = 0; gj < PORTS; gj++) begin
      if(gj < gi) begin
        dual_port_memory #(WIDTH, DEPTH) ram (
          clk,
          addr[gi],
          en[gi],
          d[gi],
          intermediate_output[gi][gj],
          addr[gj],
          en[gj],
          d[gj],
          intermediate_output[gj][gi]
          );
      end
    end
  end
endgenerate

// TODO: intermediate output diagonal.
// TODO: mux
// TODO: xor memory

endmodule // lvt_memory
