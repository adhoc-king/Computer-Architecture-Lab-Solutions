module FADDER_testbench;
	reg x,y,z;
	wire s,c;
	FADDER f1(s,c,x,y,z);
	initial
	begin
		$monitor($time, " s=%b c=%b x=%b y=%b z=%b", s,c,x,y,z);
		#0 x=1'b0;y=1'b0;z=1'b0;
		#4 x=1'b1;y=1'b0;z=1'b0;
		#4 x=1'b0;y=1'b1;z=1'b0;
		#4 x=1'b1;y=1'b1;z=1'b0;
		#4 x=1'b0;y=1'b0;z=1'b1;
		#4 x=1'b1;y=1'b0;z=1'b1;
		#4 x=1'b0;y=1'b1;z=1'b1;
		#4 x=1'b1;y=1'b1;z=1'b1;
	end
endmodule 