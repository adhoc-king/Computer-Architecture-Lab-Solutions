module pipeline(Out, clock, FuncCode, A, B);
	output Out;
	input clock;
	input [7:0] FuncCode;
	input [3:0] A, B;
	wire [2:0] Op, Opout;
	wire [3:0] Aout, Bout, X, Xout;

	Encoder e1(Op, FuncCode);
	firstPipe f1(Aout, Bout, Opout, clock, A, B, Op);
	ALU a1(X, Opout, Aout, Bout);
	secondPipe s1(Xout, clock, X);
	EvenParityGenerator e2(Xout, Out);
endmodule