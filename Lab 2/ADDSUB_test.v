module ADDSUB_test;
	wire [3:0] res;
	wire carry, V;
	reg [3:0] A,B;
	reg M;
	ADDSUB a1(res, carry, V, A, B, M);
	initial
	begin
		$monitor($time, " res=%b carry=%b V=%b A=%b B=%b M=%b",res,carry,V,A,B,M);
    	#0  A=4'b0000; B=4'b0000; M=1'b0;
    	#10 A=4'b1000; B=4'b0101; M=1'b1;
    	#10 A=4'b1111; B=4'b1000; M=1'b1;
    	#10 $finish;
	end
endmodule	