module ALU(X, OpCode, A, B);
	output [3:0] X;
	input [3:0] A, B;
	input [2:0] OpCode;
	assign X = OpCode[0] ? 
		(OpCode[1] ? (OpCode[2] ? (A^~B) : ~(A&B)) : (OpCode[2] ? ~(A|B) : (A&B))) : 
		(OpCode[1] ? (OpCode[2] ? (A|B) : (A^B)) : (OpCode[2] ? (A-B) : (A+B)));
endmodule