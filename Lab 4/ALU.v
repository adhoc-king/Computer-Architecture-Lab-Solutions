module ALU(Result,CarryOut,A,B,Binvert,Carryin,Op);
	output [31:0] Result;
	output CarryOut;
	input [31:0] A,B;
	input Binvert,Carryin;
	input [1:0] Op;
	wire [31:0] minusB = -B;
	wire [31:0] muxB, wOr, wAnd, wAdd;
	bit32_2to1mux m1(muxB,Binvert,B,minusB);
	reg [31:0] Result;

	bit32AND b1(wAnd, A, B);
	bit32OR b2(wOr, A, B);
	FADDER32 b3(wAdd,CarryOut,A,muxB,Carryin);

	always @(*)
	begin
		case(Op)
			2'b00: Result = wAnd;
			2'b01: Result = wOr;
			2'b10: Result = wAdd;
		endcase
	end
	// always @(*)
	// begin
	// 	if(Op == 2'b00) Result = wAnd;
	// 	else if(Op == 2'b01) Result = wOr;
	// 	else Result = wAdd;
	// end
endmodule