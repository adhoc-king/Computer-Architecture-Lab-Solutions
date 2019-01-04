module dff_sync_clear(d, clearb, clock, q);
	output q;
	input d, clearb, clock;
	reg q;
	always @(posedge clock)	
	begin
		if(!clearb) q <= 1'b0;
		else q <= d;
	end
endmodule