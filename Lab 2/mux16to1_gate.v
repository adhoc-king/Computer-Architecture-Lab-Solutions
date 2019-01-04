module mux4to1_gate(out, in, sel);
	output out;
	input [3:0] in;
	input [1:0] sel;
	wire s0, s1, a1, a2, a3, a4;

	not (s0, sel[0]);
	not (s1, sel[1]);
	and (a1, s0, s1);
	and (a2, s0, sel[1]);
	and (a3, sel[0], s1);
	and (a4, sel[0], sel[1]);
	or (out, a1, a2, a3, a4);
endmodule

module mux16to1_gate(out, in, sel);
	output out;
	input [15:0] in;
	input [3:0] sel;
	wire [3:0] A;

	mux4to1_gate M1(A[0], in[15:12], sel[3:2]);
	mux4to1_gate M2(A[1], in[11:8], sel[3:2]);
	mux4to1_gate M3(A[2], in[7:4], sel[3:2]);
	mux4to1_gate M4(A[3], in[3:0], sel[3:2]);
	mux4to1_gate M5(out, A, sel[1:0]);
endmodule