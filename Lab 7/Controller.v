module Controller(PCWrite,PCWriteCond,IorD,MemRead,MemWrite,IRWrite,MemtoReg,PCSource,ALUOp,ALUSrcA,ALUSrcB,RegWrite,RegDst,NS,Op,S);
	output PCWrite,PCWriteCond,IorD,MemRead,MemWrite,IRWrite,MemtoReg,ALUSrcA,RegWrite,RegDst;
	output [1:0] PCSource, ALUOp, ALUSrcB;
	output [3:0] NS;
	input [5:0] Op;
	input [3:0] S;
	wire clock;
	reg [3:0] S1;
	wire w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16;

	initial S1 = S;
	initial clock = 1'b0;
	always #5 clock = ~clock;
	
	assign w0 = ~S1[3]&~S1[2]&~S1[1]&~S1[0];
	assign w1 = ~S1[3]&~S1[2]&~S1[1]&S1[0];
	assign w2 = ~S1[3]&~S1[2]&S1[1]&~S1[0];
	assign w3 = ~S1[3]&~S1[2]&S1[1]&S1[0];
	assign w4 = ~S1[3]&S1[2]&~S1[1]&~S1[0];
	assign w5 = ~S1[3]&S1[2]&~S1[1]&S1[0];
	assign w6 = ~S1[3]&S1[2]&S1[1]&~S1[0];
	assign w7 = ~S1[3]&S1[2]&S1[1]&S1[0];
	assign w8 = S1[3]&~S1[2]&~S1[1]&~S1[0];
	assign w9 = S1[3]&~S1[2]&~S1[1]&S1[0];
	assign w10 = ~Op[5]&~Op[4]&~Op[3]&~Op[2]&Op[1]&~Op[0]&~S1[3]&~S1[2]&~S1[1]&S1[0];
	assign w11 = ~Op[5]&~Op[4]&~Op[3]&Op[2]&~Op[1]&~Op[0]&~S1[3]&~S1[2]&~S1[1]&S1[0];
	assign w12 = ~Op[5]&~Op[4]&~Op[3]&~Op[2]&~Op[1]&~Op[0]&~S1[3]&~S1[2]&~S1[1]&S1[0];
	assign w13 = Op[5]&~Op[4]&Op[3]&~Op[2]&Op[1]&Op[0]&~S1[3]&~S1[2]&S1[1]&~S1[0];
	assign w14 = Op[5]&~Op[4]&~Op[3]&~Op[2]&Op[1]&Op[0]&~S1[3]&~S1[2]&~S1[1]&S1[0];
	assign w15 = Op[5]&~Op[4]&Op[3]&~Op[2]&Op[1]&Op[0]&~S1[3]&~S1[2]&~S1[1]&S1[0];
	assign w16 = Op[5]&~Op[4]&~Op[3]&~Op[2]&Op[1]&Op[0]&~S1[3]&~S1[2]&S1[1]&~S1[0];

	assign PCWrite = w0 | w9;
	assign PCWriteCond = w8;
	assign IorD = w3 | w5;
	assign MemRead = w0 | w3;
	assign MemWrite = w5;
	assign IRWrite = w0;
	assign MemtoReg = w4;
	assign PCSource[0] = w8;
	assign PCSource[1] = w9;
	assign ALUOp[0] = w8;
	assign ALUOp[1] = w6;
	assign ALUSrcB[0] = w0 | w1;
	assign ALUSrcB[1] = w1 | w2;
	assign ALUSrcA = w2 | w6 | w8;
	assign RegWrite = w4 | w7;
	assign RegDst = w7;
	assign NS[0] = w0 | w6 | w10 | w13 | w16;
	assign NS[1] = w6 | w12 | w14 | w15 | w16;
	assign NS[2] = w3 | w6 | w12 | w13;
	assign NS[3] = w10 | w11;

	always @(posedge clock)
		S1 <= NS;
endmodule 