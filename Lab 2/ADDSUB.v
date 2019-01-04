module ADDSUB(res,carry,V,A,B,M);
	output [3:0] res; 
	output V, carry;
	input [3:0] A,B;
	input M;
	wire [3:0] C;
	wire c1,c2,c3;

	xor(C[0],B[0],M);
	xor(C[1],B[1],M);
	xor(C[2],B[2],M);
	xor(C[3],B[3],M);
	FULLADDER f0(res[0],c1,A[0],C[0],M);
	FULLADDER f1(res[1],c2,A[1],C[1],c1);
	FULLADDER f2(res[2],c3,A[2],C[2],c2);
	FULLADDER f3(res[3],carry,A[3],C[3],c3);
	xor(V,c3,carry);
endmodule