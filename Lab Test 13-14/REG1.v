module REG1(clk, EN, numin, numout);
	input clk, EN;
	input [3:0] numin;
	output [3:0] numout;
	reg [3:0] numout;
	always @(posedge clk)
	begin
		if(EN) numout <= numin;	
	end
endmodule