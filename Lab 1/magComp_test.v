module magComp_test;
	wire ALTB, AGTB, AEQB;
	reg [4:0] A, B;
	magComp_df mag(ALTB, AGTB, AEQB, A, B);
	initial
	begin
		$monitor($time, " ALTB=%b AGTB=%b AEQB=%b A=%b B=%b", ALTB, AGTB, AEQB, A, B);
		#0  A=4'b1010; B=4'b1010;
    	#10 A=4'b0101; B=4'b1010;
    	#10 A=4'b1111; B=4'b1010;
    	#10 $finish;
	end
endmodule