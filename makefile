sim: lvt_sim
	verilator --binary --top-module xor_memory_tb xor_memory_tb.sv xor_memory.sv
	obj_dir/Vxor_memory_tb
	verilator --binary --top-module xor_distributed_memory_tb xor_distributed_memory_tb.sv xor_distributed_memory.sv
	obj_dir/Vxor_distributed_memory_tb

lvt_sim:
	verilator --binary --top-module lvt_memory_tb lvt_memory_tb.sv lvt_memory.sv xor_distributed_memory.sv dual_port_memory.sv
	obj_dir/Vlvt_memory_tb
