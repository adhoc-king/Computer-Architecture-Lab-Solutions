module ROTATOR(clk,Enable,numno,numrotated);
	input clk, Enable;
	input [3:0] numno;
	output [3:0] numrotated;
	reg [3:0] numrotated;
	reg c0 = 1'b0;
	always @(posedge clk)
		c0 = ~c0;
	always @(posedge c0)
		if(Enable) numrotated = {numno[1:0], numno[3:2]};
endmodule