module Encoder(OpCode, FuncCode);
	output [2:0] OpCode;
	input [7:0] FuncCode;
	reg [2:0] OpCode;
	always @(FuncCode)
	case (FuncCode)
		8'b00000001: OpCode = 3'b000;
		8'b00000010: OpCode = 3'b001;
		8'b00000100: OpCode = 3'b010;
		8'b00001000: OpCode = 3'b011;
		8'b00010000: OpCode = 3'b100;
		8'b00100000: OpCode = 3'b101;
		8'b01000000: OpCode = 3'b110;
		8'b10000000: OpCode = 3'b111;
	endcase
endmodule