module fa(s, cout, a, b, cin);
	output s, cout;
	input a, b, cin;
	assign {cout, s} = a + b + cin;
endmodule

module serialAdder(sum, cout, a, b, clock);
	input [3:0] a, b;
	input clock;
	output [3:0] sum;
	output clock;
	
endmodule