module DECODER(d0,d1,d2,d3,d4,d5,d6,d7,x,y,z);
	output d0,d1,d2,d3,d4,d5,d6,d7;
	input x,y,z;
	wire x1,y1,z1;

	not(x1,x);
	not(y1,y);
	not(z1,z);
	and(d0,x1,y1,z1);
	and(d1,x1,y1,z);
	and(d2,x1,y,z1);
	and(d3,x1,y,z);
	and(d4,x,y1,z1);
	and(d5,x,y1,z);
	and(d6,x,y,z1);
	and(d7,x,y,z);
endmodule