module PC(count, clock, reset)
	output [31:0] count;
	input clock, reset;
	reg [31:0] count;
	always @(posedge clock, negedge reset)
	begin
		if(!reset) count <= 0;
		else count <= count+1;
	end
endmodule