module FSM_testbench;
	reg in, reset, clock;
	wire out;
	reg [15:0] sequence;
	integer i;
	FSM f1(in, reset, clock, out);
	initial
	begin
		#0 clock = 1'b0; reset = 1'b1; sequence = 16'b0101101101110010;
		#5 reset = 1'b0;
		for(i=0; i<16; i++)
		begin
			in = sequence[i];
			#5 clock = 1'b1;
			#5 clock = 1'b0;
			$display($time, " state=%b input=%b output=%b", f1.state, in, out);
		end
	end
endmodule