module FADDER(s,c,x,y,z);
	output s,c;
	input x,y,z;
	wire d0,d1,d2,d3,d4,d5,d6,d7;
	DECODER dec(d0,d1,d2,d3,d4,d5,d6,d7,x,y,z);
	assign s = d1 | d2 | d4 | d7;
	assign c = d3 | d5 | d6 | d7;
endmodule