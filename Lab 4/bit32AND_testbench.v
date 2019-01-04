module bit32AND_testbench;
	reg [31:0] in1, in2;
	wire [31:0] out;
	bit32AND b1(out, in1, in2);
	initial
	begin
		$monitor($time, " out=%h in1=%h in2=%h", out, in1, in2);
		#0  in1=32'hA5A5; in2=32'h5A5A;
		#10 in1=32'h5A5A;
		#10 $finish;
	end
endmodule