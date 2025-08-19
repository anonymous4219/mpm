sim:
	verilator --binary --top-module xor_memory_tb xor_memory_tb.sv xor_memory.sv
	obj_dir/Vxor_memory_tb
	verilator --binary --top-module xor_distributed_memory_tb xor_distributed_memory_tb.sv xor_distributed_memory.sv
	obj_dir/Vxor_distributed_memory_tb
