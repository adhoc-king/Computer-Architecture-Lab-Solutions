module mux2to1_df(Out, A, B, select);
	output Out;
	input A, B, select;
	assign Out = select ? A : B;
endmodule