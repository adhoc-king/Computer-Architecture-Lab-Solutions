module shiftreg(EN, in, CLK, Q);
	parameter n = 4;
	input EN, CLK, in;
	output [n-1:0] Q;
	reg [n-1:0] Q;
	initial
	Q = 4'd10;
	always @(posedge CLK)
	begin
		if(EN) Q = {in, Q[n-1:1]};
	end
endmodule