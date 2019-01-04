module TESTBENCH;
	reg [3:0] num, key;
	wire [7:0] storedvalue;

	DATAPATH d1(num, key, storedvalue);

	initial
	begin
		$monitor($time, " num=%b key=%b storedvalue=%b", num, key, storedvalue);
		#0  num = 4'b1000;  key = 4'b1000;
    	#20 num = 4'b1001;  key = 4'b1000;
	    #20 num = 4'b1100;  key = 4'b1010;
	    #20 num = 4'b1011;  key = 4'b1110;
	    #20 $finish;
	end
endmodule