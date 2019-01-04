module ALU_testbench;
	reg Binvert, Carryin;
	reg [1:0] Operation;
	reg [31:0] a,b;
	wire [31:0] Result;
	wire CarryOut;
	ALU a1(Result,CarryOut,a,b,Binvert,Carryin,Operation);
	initial
	begin
		$monitor($time, " Result=%b a=%b b=%b Op=%b", Result, a, b, Operation);
		a=32'ha5a5a5a5;
		b=32'h5a5a5a5a;
		Operation=2'b00;
		Binvert=1'b0;
		Carryin=1'b0; //must perform AND resulting in zero
		#100 Operation=2'b01; //OR
		#100 Operation=2'b10; //ADD
		#100 Binvert=1'b1;//SUB
		#200 $finish;
	end
endmodule