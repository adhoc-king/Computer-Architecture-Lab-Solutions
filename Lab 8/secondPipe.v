module secondPipe(Xout, clock, X);
	output [3:0] Xout;
	input [3:0] X;
	input clock;
	reg [3:0] Xout;
	always @(posedge clock)
		Xout <= X;
endmodule