module DATAPATH(num, key, storedvalue);
	output [7:0] storedvalue;
	input [3:0] num, key;
	reg clock, EN, WE;
	wire [3:0] numReg, numRot;
	wire [7:0] numProd;
	wire [15:0] numDecode;

	initial 
	begin 
		clock = 1'b0; 
		EN = 1'b1;
		WE = 1'b1;
	end
	always #5 clock = ~clock;

	REG1 r1(clock, EN, num, numReg);
	ROTATOR r2(clock, EN, numReg, numRot);
	MULTIPLIER m1(numRot, key, numProd);
	DECODER d1(num, numDecode);
	MEMORY m2(WE, numProd, numDecode, storedvalue);
endmodule