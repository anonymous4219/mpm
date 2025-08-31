module lvt_memory #(
  parameter WIDTH=32,
  parameter DEPTH=512,
  parameter PORTS=32
  )(
  input clk,
  input [$clog2(DEPTH)-1:0]addr[PORTS-1:0],
  input en[PORTS-1:0],
  input [WIDTH-1:0]d[PORTS-1:0],
  output logic [WIDTH-1:0]q[PORTS-1:0]
);

/* verilator lint_off UNOPTFLAT */
logic [WIDTH-1:0]intermediate_output[PORTS-1:0][PORTS-1:0];
/* verilator lint_on UNOPTFLAT */

genvar gi, gj;

generate
  for(gi = 0; gi < PORTS; gi++) begin : y_genblock
    for(gj = 0; gj < PORTS; gj++) begin : x_genblock
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

// Intermediate output diagonal.
integer i;
/* verilator lint_off ALWCOMBORDER */
always_comb begin
  intermediate_output[0][0] = intermediate_output[1][0];
  for(i = 1; i < PORTS; i++) begin
    intermediate_output[i][i] = intermediate_output[i-1][i];
  end
end
/* verilator lint_on ALWCOMBORDER */

logic [$clog2(PORTS)-1:0]port_numbers[PORTS-1:0];
integer j;
initial begin
  for(j=0; j < PORTS; j++) begin
    port_numbers[j] = j[$clog2(PORTS)-1:0];
  end
end

logic [$clog2(PORTS)-1:0] lvt_output[PORTS-1:0];

xor_distributed_memory #($clog2(PORTS), DEPTH, PORTS) lvt(
  clk,
  addr,
  port_numbers,
  en,
  lvt_output
);

always_comb begin
  for(int k = 0; k < PORTS; k++) begin
    q[k] = intermediate_output[k][lvt_output[k]];
  end
end

endmodule // lvt_memory
