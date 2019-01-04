module reg32bit(q,d,clk,reset);
	output [31:0] q;
	input [31:0] d;
	input clk, reset;
	genvar i;
	generate for(i=0; i<32; i=i+1) 
			d_ff ff(q[i], d[i], clk, reset);
	endgenerate
endmodule