module RegFile_testbench;
	reg clk, reset, RegWrite;
	reg [1:0] ReadReg1, ReadReg2, WriteReg;
	reg [31:0] WriteData;
	wire [31:0] ReadData1, ReadData2;

	RegFile R(clk,reset,ReadReg1,ReadReg2,WriteData,WriteReg,RegWrite,ReadData1,ReadData2);
	initial
	begin
		$monitor($time, " ReadData1=%h ReadData2=%h ReadReg1=%b ReadReg2=%b WriteReg=%b", ReadData1, ReadData2, ReadReg1, ReadReg2, WriteReg);
		#0 clk = 1'b1; reset=1'b1;
		#2 reset = 1'b0;
		#6 reset = 1'b1; RegWrite = 1'b1;
		#10 WriteData = 32'hF0F0F0F0; WriteReg = 2'b00;
		#10 WriteData = 32'hF8F8F8F8; WriteReg = 2'b01;
		#10 WriteData = 32'hFAFAFAFA; WriteReg = 2'b10;
		#10 WriteData = 32'hFFFFFFFF; WriteReg = 2'b11;
		#5 RegWrite = 1'b0;
		#10 ReadReg1 = 2'b10; ReadReg2 = 2'b11;
		#10 $finish;
	end
	always #5 clk = ~clk;
endmodule