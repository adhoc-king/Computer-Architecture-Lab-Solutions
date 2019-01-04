module FADDER8_testbench;
	reg [7:0] A,B;
	reg c_in;
	wire [7:0] sum;
	wire carry;
	integer i,j;
	FADDER8 f1(sum,carry,A,B,c_in);
	initial
	begin
		$monitor($time, " A=%b B=%b c_in=%b sum=%b carry=%b", A, B, c_in, sum, carry);
		#0 A=8'b00000000; B=8'b00000000;
		for(i=0; i<256; i++) 
		begin
			for(j=0; j<256; j++)
			begin
				#3 c_in = 0;
				#3 c_in = 1;
				B = B + 8'b00000001;
			end
			A = A + 8'b00000001;
		end
	end
endmodule