module firstPipe(Aout, Bout, Opout, clock, A, B, Op);
	output [3:0] Aout, Bout;
	output [2:0] Opout;
	input [3:0] A, B;
	input [2:0] Op;
	input clock;
	reg [3:0] Aout, Bout;
	reg [2:0] Opout;
	always @(posedge clock)
	begin
		Aout <= A;
		Bout <= B;
		Opout <= Op;
	end
endmodule