module pipeline_testbench;
	reg clock;
	reg [7:0] FuncCode;
	reg [3:0] A, B;
	wire Out;

	pipeline p1(Out, clock, FuncCode, A, B);
	initial
	begin
		clock = 1'b0;
		$monitor($time, " Out=%b FuncCode=%b A=%b B=%b", Out,FuncCode,A,B);
		#5 A = 4'b0101; B = 4'b1110;
		#20 FuncCode = 8'b00000001;
		#20 FuncCode = 8'b00000010;
		#20 FuncCode = 8'b00000100;
		#20 FuncCode = 8'b00001000;
		#20 FuncCode = 8'b00010000;
		#20 FuncCode = 8'b00100000;
		#20 FuncCode = 8'b01000000;
		#20 FuncCode = 8'b10000000;
		#20 $finish;
	end
	always #5 clock = ~clock;
endmodule