module syncCounter_testbench;
	reg clock;
	wire [3:0] Q;
	syncCounter s1(clock, Q);
	initial #0 clock = 0;
	always #5 clock = ~clock;
	initial
	begin
		$monitor($time, " Q=%b", Q);
		#200 $finish;
	end
endmodule