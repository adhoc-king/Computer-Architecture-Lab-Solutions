module FULLADDER(s,c,x,y,z);
	output s,c;
	input x,y,z;
	reg s,c;
	always @(x,y,z)
	{s,c} = x+y+z;
endmodule