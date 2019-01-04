module magComp_df(ALTB, AGTB, AEQB, A, B);
	output ALTB, AGTB, AEQB;
	input [4:0] A, B;
	assign ALTB = (A<B),
		AGTB = (A>B),
		AEQB = (A==B);
endmodule
