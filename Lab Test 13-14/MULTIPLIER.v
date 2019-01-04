module MULTIPLIER(op1,op2,product);
	input [3:0] op1, op2;
	output [7:0] product;
	reg [7:0] product;
	reg carry;
	reg [3:0] A, M, Q;
	integer i;
	always @(*)
	begin
		M = op1;
		Q = op2;
		carry = 1'b0;
		A = 4'b000;
		for(i=0; i<4; i++) 
		begin
			if(Q[0] == 1'b1) {carry,A} = A + M;
			{carry,A,Q} = {1'b0,carry,A,Q[3:1]};
		end
		product = {A,Q};
	end
endmodule