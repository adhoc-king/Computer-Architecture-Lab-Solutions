module mealy_test;
	reg clk, rst, inp;
	wire outp;
	reg [15:0] sequence;
	integer i;

	mealy m1(clk, rst, inp, outp);
	initial
	begin
		clk = 0;
		rst = 1;
		sequence = 16'b0101_0111_0111_0010;
		#5 rst = 0;
		for(i=0; i<16; i++)
		begin
			inp = sequence[i];
			#2 clk = 1;
			#2 clk = 0;
			$display($time, " State=%b Input=%b Output=%b", m1.state, inp, outp);
		end
	end
endmodule