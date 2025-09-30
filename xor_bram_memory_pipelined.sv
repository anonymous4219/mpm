module xor_bram_memory_pipelined #(
  parameter WIDTH = 32,
  parameter DEPTH = 1024,
  parameter PORTS = 32)(

  input clk,
  input [$clog2(DEPTH)-1:0]addr[PORTS-1:0],
  input [WIDTH-1:0]d[PORTS-1:0],
  input en[PORTS-1:0],
  output logic [WIDTH-1:0]q[PORTS-1:0]);

  logic [$clog2(DEPTH)-1:0]addr_buffered[PORTS-1:0];
  logic [WIDTH-1:0]d_buffered[PORTS-1:0];
  logic en_buffered[PORTS-1:0];

  always @(posedge clk) begin
    addr_buffered <= addr;
    d_buffered <= d;
    en_buffered <= en;
  end

  logic [WIDTH-1:0]ram_output[PORTS-1:0][PORTS-1:0];

  logic [WIDTH-1:0]partial_xor_input[PORTS-1:0];
  //logic [WIDTH-1:0]partial_xor_input_buffered[PORTS-1:0];

  /*
  always @(posedge clk) begin
    partial_xor_input_buffered <= partial_xor_input;
  end
  */

  integer i, j;
  always_comb begin
    for(i = 0; i < PORTS; i = i + 1) begin
      partial_xor_input[i] = 0;
      for(j = 0; j < PORTS; j = j + 1) begin
        if (i!= j) begin
          partial_xor_input[i] = partial_xor_input[i] ^ ram_output[j][i];
        end
      end
    end
  end
  always @(posedge clk) begin
    for(i = 0; i < PORTS; i = i + 1) begin
      q[i] <= partial_xor_input[i] ^ ram_output[i][i];
    end
  end

  genvar gi, gj;
  generate
    for(gi = 0; gi < PORTS; gi = gi + 1) begin : y_genblock
      for(gj = 0; gj < PORTS; gj = gj + 1) begin : x_genblock
        simple_dual_port_memory_wrapper #(WIDTH, DEPTH) gen_ram(clk, addr_buffered[gi], d_buffered[gi] ^ partial_xor_input[gi], en_buffered[gi], addr[gj], ram_output[gi][gj]);
      end
    end
  endgenerate

endmodule // xor_bram_memory_pipelined
