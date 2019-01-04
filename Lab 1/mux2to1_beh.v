module mux2to1_beh(Out, A, B, select);
	output Out;
	input A, B, select;
	reg Out;
	always @(A, B, select)
	if(select==1) Out = A;
	else Out = B;
endmodule