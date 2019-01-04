module mux2to1_gate(Out, A, B, select);
	output Out;
	input A, B, select;
	wire c, d, e;

	not n1(c, select);
	and a1(d, A, select);
	and a2(e, A, c);
	or o1(Out, d, e);
endmodule
