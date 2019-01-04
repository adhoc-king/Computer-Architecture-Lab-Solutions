module Keygen(key1,key2,key);
	output [63:0] key1, key2;
	input [63:0] key;
	wire [31:0] left, right;

	assign left = key[31:0];
	assign right = key[63:32];
	ALU64bit a1(key1,left,right,1'b0);
	ALU64bit a2(key2,left,right,1'b1);
endmodule