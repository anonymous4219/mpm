module xor_bram_memory_pipelined_syn(
  input clk,
  input d,
  input push,
  output logic q
);
parameter WIDTH=32;
parameter DEPTH=1024;
parameter PORTS=2;

logic [$clog2(DEPTH)-1:0]addr[PORTS-1:0];
logic en[PORTS-1:0];
logic [WIDTH-1:0]lvt_d[PORTS-1:0];
logic [WIDTH-1:0]lvt_q[PORTS-1:0];

logic [PORTS*$clog2(DEPTH)-1:0]addr_unrolled;
logic [PORTS*WIDTH-1:0]lvt_d_unrolled;
logic [PORTS*WIDTH-1:0]lvt_q_unrolled;
logic [PORTS*WIDTH-1:0]buffered_lvt_q_unrolled;
//TODO: logic
integer i;

always @(posedge clk) begin
  addr_unrolled[0] <= d;
  addr_unrolled[PORTS*$clog2(DEPTH)-1:1] <= addr_unrolled[PORTS*$clog2(DEPTH)-2:0];
  lvt_d_unrolled[0] <= addr_unrolled[PORTS*$clog2(DEPTH)-1];
  lvt_d_unrolled[PORTS*WIDTH-1:1] <= lvt_d_unrolled[PORTS*WIDTH-2:0];
  en[0] <= lvt_d_unrolled[PORTS*WIDTH-1];
  en[PORTS-1:1] <= en[PORTS-2:0];
  lvt_q_unrolled <= buffered_lvt_q_unrolled;
  lvt_q_unrolled[PORTS*WIDTH-1:1] <= lvt_q_unrolled[PORTS*WIDTH-2:0];
  q <= lvt_q_unrolled[PORTS*WIDTH-1];

  if(push) begin
    for(i=0; i < PORTS; i++) begin
      buffered_lvt_q_unrolled[(i+1)*WIDTH-1 -:WIDTH] <= lvt_q[i];
    end
  end
end
integer j;
always_comb begin
  for(j=0; j < PORTS; j++) begin
    addr[j] = addr_unrolled[(j+1)*$clog2(DEPTH)-1 -:$clog2(DEPTH)];
    lvt_d[j] = lvt_d_unrolled[(j+1)*WIDTH-1 -:WIDTH];
  end
end


//instanciate xor memory
xor_bram_memory_pipelined #(
  WIDTH,
  DEPTH,
  PORTS
  ) dut (
  clk,
  addr,
  lvt_d,
  en,
  lvt_q
);

endmodule // xor_bram_memory_pipelined
