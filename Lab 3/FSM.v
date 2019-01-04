module FSM(in, reset, clock, out);
	input in, reset, clock;
	output out;
	reg [2:0] state;
	reg out;
	initial
	begin
		state <= 3'b000;
		out <= 1'b0;
	end
	always @(posedge clock, posedge reset)
	begin
		if(reset)
		begin
			state <= 3'b000;
			out <= 1'b0;
		end
		else 
		begin
			case(state)
				3'b000:
					begin
						if(!in)
							begin
								state <= 3'b000;
								out <= 1'b0;
							end
						else 
							begin
								state <= 3'b001;
								out <= 1'b0;
							end
					end
				3'b001:
					begin
						if(!in)
							begin
								state <= 3'b010;
								out <= 1'b0;
							end
						else 
							begin
								state <= 3'b001;
								out <= 1'b0;
							end
					end
				3'b010:
					begin
						if(!in)
							begin
								state <= 3'b000;
								out <= 1'b0;
							end
						else 
							begin
								state <= 3'b011;
								out <= 1'b0;
							end
					end
				3'b011:
					begin
						if(!in)
							begin
								state <= 3'b010;
								out <= 1'b0;
							end
						else 
							begin
								state <= 3'b100;
								out <= 1'b0;
							end
					end
				3'b100:
					begin
						if(!in)
							begin
								state <= 3'b010;
								out <= 1'b1;
							end
						else 
							begin
								state <= 3'b001;
								out <= 1'b0;
							end
					end
			endcase
		end
	end
endmodule