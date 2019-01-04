module ALU64bit(key,left,right,select);
	output [63:0] key;
	input [31:0] left, right;
	input select;
	reg [63:0] key;

	always @(*)
	begin
		if(select == 1'b0) key = left + right;
		else key = left - right;
	end
endmodule