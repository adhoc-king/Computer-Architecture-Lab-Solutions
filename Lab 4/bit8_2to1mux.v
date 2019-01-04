module bit8_2to1mux(out,sel,in1,in2);
	output [7:0] out;
	input [7:0] in1, in2;
	input sel;

	mux2to1 m0(out[0],sel,in1[0],in2[0]);
	mux2to1 m1(out[1],sel,in1[1],in2[1]);
	mux2to1 m2(out[2],sel,in1[2],in2[2]);
	mux2to1 m3(out[3],sel,in1[3],in2[3]);
	mux2to1 m4(out[4],sel,in1[4],in2[4]);
	mux2to1 m5(out[5],sel,in1[5],in2[5]);
	mux2to1 m6(out[6],sel,in1[6],in2[6]);
	mux2to1 m7(out[7],sel,in1[7],in2[7]);
endmodule