module FADDER8(sum,carry,A,B,c_in);
	output [7:0] sum;
	output carry;
	input [7:0] A,B;
	input c_in;
	wire c0,c1,c2,c3,c4,c5,c6;

	FADDER f0(sum[0],c0,A[0],B[0],c_in);
	FADDER f1(sum[1],c1,A[1],B[1],c0);
	FADDER f2(sum[2],c2,A[2],B[2],c1);
	FADDER f3(sum[3],c3,A[3],B[3],c2);
	FADDER f4(sum[4],c4,A[4],B[4],c3);
	FADDER f5(sum[5],c5,A[5],B[5],c4);
	FADDER f6(sum[6],c6,A[6],B[6],c5);
	FADDER f7(sum[7],carry,A[7],B[7],c6);
endmodule