module reg32bit_testbench;
	reg [31:0] d;
	reg clk,reset;
	wire [31:0] q;
	reg32bit R(q,d,clk,reset);

	always @(clk) #5 clk <= ~clk;
	initial
	begin
		$monitor($time, " q=%b d=%b", q, d);
		clk= 1'b1;
		reset=1'b0;//reset the register
		#20 reset=1'b1;
		#20 d=32'hAFAFAFAF;
		#200 $finish;
	end
endmodule