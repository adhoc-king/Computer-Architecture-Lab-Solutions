module dff_async_clear(d, clearb, clock, q);
	output q;
	input d, clearb, clock;
	reg q;
	always @(posedge clock, negedge clearb)
	begin
		if(!clearb) q <= 1'b0;
		else q <= d;
	end
endmodule