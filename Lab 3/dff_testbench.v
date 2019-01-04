module dff_testbench;
	reg d, clk, rst;
	wire q;
	dff_sync_clear d1(d, rst, clk, q);
	initial
	begin
		clk = 0;
		forever #5 clk = ~clk;
	end
	initial 
	begin
		$monitor($time, " d=%b rst=%b q=%b", d, rst, q);
		    d=0; rst=1;
		#2  d=1; rst=0;
		#50 d=1; rst=1;
		#20 d=0; rst=0;
		#20 $finish;
	end
endmodule