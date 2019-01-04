module d_ff(q,d,clk,reset);
	output q;
	input d, clk, reset;
	reg q;
	always @(posedge clk, negedge reset)
	begin
		if(!reset) q <= 1'b0;
		else q <= d;
	end
endmodule