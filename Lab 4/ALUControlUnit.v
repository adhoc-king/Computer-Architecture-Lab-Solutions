module ALUControlUnit(Op, F, ALUOp1, ALUOp0);
	output [2:0] Op;
	input [5:0] F;
	input ALUOp1, ALUOp0;
	wire a, b, c, d;

	and(a, ALUOp1, F[1]);
	or(b, F[0], F[3]);
	not(c, ALUOp1);
	not(d, F[2]);
	or(Op[2], ALUOp0, a);
	or(Op[1], c, d);
	and(Op[0], ALUOp1, b);
endmodule