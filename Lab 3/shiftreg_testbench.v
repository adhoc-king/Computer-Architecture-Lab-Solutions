module shiftreg_testbench;
	parameter n = 4;
	reg EN, CLK, in;
	wire [n-1:0] Q;
	shiftreg s1(EN, in, CLK, Q);
	initial CLK = 1'b0;
	always #2 CLK = ~CLK;
	initial $monitor($time, " EN=%b in= %b Q=%b",EN,in,Q);
	initial
	begin
		in=0;EN=0;
		#4 in=1;EN=1;
		#4 in=1;EN=0;
		#4 in=0;EN=1;
		#5 $finish;
	end
endmodule