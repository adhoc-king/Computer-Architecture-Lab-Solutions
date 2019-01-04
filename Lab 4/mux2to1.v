module mux2to1(out,sel,in1,in2);
	output out;
	input sel, in1, in2;
	wire s0, i1, i2;
	not(s0, sel);
	and(i1, in1, s0);
	and(i2, in2, sel);
	or(out, i1, i2);
endmodule