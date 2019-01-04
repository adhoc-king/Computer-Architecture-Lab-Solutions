module mux2to1_test;
	reg A, B, select;
	wire Out;
	initial
	begin
		$dumpfile("mux2to1_gate.vcd");
		$dumpvars(0, mux2to1_test);
	end
	mux2to1_gate mux(Out, A, B, select);
	// mux2to1_df mux(Out, A, B, select);
	// mux2to1_beh mux(Out, A, B, select);

	initial 
	begin
		$monitor($time, " A=%b B=%b select=%b Out=%b", A, B, select, Out);
    	#0 A=1'b0; B=1'b1;
    	#2 select=1'b1;
    	#5 select=1'b0;
    	#10 A=1'b1; B=1'b0;
    	#15 select=1'b1;
    	#20 select=1'b0;
    	#100 $finish; 
	end
endmodule

