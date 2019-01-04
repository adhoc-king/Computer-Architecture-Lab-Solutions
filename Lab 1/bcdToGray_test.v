module bcdToGray_test;
	reg [3:0] In;
	wire [3:0] Out;
	bcdToGray_gate bcd(Out, In);
	initial
	begin
		$monitor($time, " Out=%b In=%b", Out, In);
		#0 In = 4'b0000;
		repeat(9) #10 In = In + 4'b0001;
	end
endmodule