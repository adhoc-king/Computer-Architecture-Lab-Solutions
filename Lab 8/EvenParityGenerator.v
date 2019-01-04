module EvenParityGenerator(X, out);
	input [3:0] X;
	output out;
	assign out = ~(X[3]^X[2]^X[1]^X[0]);
endmodule