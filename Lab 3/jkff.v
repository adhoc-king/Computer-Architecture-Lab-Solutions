module jkff(j, k, clock, q);
	input j,k,clock;
	output q;
	reg q;
	initial q = 1'b0;
	always @(posedge clock)
	case ({j,k})
		2'b00: q <= q;
		2'b01: q <= 1'b0;
		2'b10: q <= 1'b1;
		2'b11: q <= ~q;
	endcase
endmodule