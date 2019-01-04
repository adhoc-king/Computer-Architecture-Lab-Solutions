module FADDER32_testbench;
	reg [31:0] A,B;
	reg c_in;
	wire [31:0] sum;
	wire carry;
	FADDER32 f1(sum, carry, A, B, c_in);
	initial
	begin
		$monitor($time, " sum=%b carry=%b A=%b B=%b c_in=%b", sum,carry,A,B,c_in);
    	#0 A=32'b11110000000000000000000000000000; 
    		B=32'b00000000000000000000000000000111; 
    		c_in=1'b0;
    	#5 A=32'b11111111111111111111111111111111; 
    		B=32'b11111111111111111111111111111111; 
    		c_in=1'b0;
    	#5 A=32'b11110000000000001111000000000000; 
    		B=32'b00001010101000000000000000000111; 
    		c_in=1'b1;
	end
endmodule