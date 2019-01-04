module RegFile(clk,reset,ReadReg1,ReadReg2,WriteData,WriteReg,RegWrite,ReadData1,ReadData2);
	input clk, reset, RegWrite;
	input [1:0] ReadReg1, ReadReg2, WriteReg;
	input [31:0] WriteData;
	output [31:0] ReadData1, ReadData2;
	wire [3:0] WriteDecode;
	wire c0,c1,c2,c3;
	wire [31:0] w0,w1,w2,w3;

	decoder2_4 d1(WriteDecode, WriteReg);
	and(c0, RegWrite, clk, WriteDecode[0]);
	and(c1, RegWrite, clk, WriteDecode[1]);
	and(c2, RegWrite, clk, WriteDecode[2]);
	and(c3, RegWrite, clk, WriteDecode[3]);
	reg32bit r0(w0, WriteData, c0, reset);
	reg32bit r1(w1, WriteData, c1, reset);
	reg32bit r2(w2, WriteData, c2, reset);
	reg32bit r3(w3, WriteData, c3, reset);
	mux4_1 m0(ReadData1,w0,w1,w2,w3,ReadReg1);
	mux4_1 m1(ReadData2,w0,w1,w2,w3,ReadReg2);
endmodule