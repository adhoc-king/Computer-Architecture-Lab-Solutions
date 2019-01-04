module FADDER32(sum,carry,A,B,c_in);
	output [31:0] sum;
	output carry;
	input [31:0] A,B;
	input c_in;
	wire c0,c1,c2;

	FADDER8 f0(sum[7:0], c0, A[7:0], B[7:0], c_in);
	FADDER8 f1(sum[15:8], c1, A[15:8], B[15:8], c0);
	FADDER8 f2(sum[23:16], c2, A[23:16], B[23:16], c1);
	FADDER8 f3(sum[31:24], carry, A[31:24], B[31:24], c2);
endmodule