module syncCounter(clock, Q);
	input clock;
	output [3:0] Q;
	wire w0, w1;
	jkff j0(1'b1, 1'b1, clock, Q[0]);
	jkff j1(Q[0], Q[0], clock, Q[1]);
	and(w0, Q[0], Q[1]);
	jkff j2(w0, w0, clock, Q[2]);
	and(w1, w0, Q[2]);
	jkff j3(w1, w1, clock, Q[3]);
endmodule