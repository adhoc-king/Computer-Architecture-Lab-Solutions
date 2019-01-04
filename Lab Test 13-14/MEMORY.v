module MEMORY(WE, datatowrite, regsel, readdata);
	input WE;
	input [7:0] datatowrite;
	input [15:0] regsel;
	output [7:0] readdata;
	reg [7:0] readdata;
	reg [7:0] Mem [0:15];
	always @(*)
	begin
		case(regsel)
			16'b0000000000000001: 
				begin
					if(WE) Mem[4'b0000] = datatowrite;
					readdata = Mem[4'b0000];
				end
			16'b0000000000000010: 
				begin
					if(WE) Mem[4'b0001] = datatowrite;
					readdata = Mem[4'b0001];
				end
			16'b0000000000000100: 
				begin
					if(WE) Mem[4'b0010] = datatowrite;
					readdata = Mem[4'b0010];
				end
			16'b0000000000001000: 
				begin
					if(WE) Mem[4'b0011] = datatowrite;
					readdata = Mem[4'b0011];
				end
			16'b0000000000010000: 
				begin
					if(WE) Mem[4'b0100] = datatowrite;
					readdata = Mem[4'b0100];
				end
			16'b0000000000100000: 
				begin
					if(WE) Mem[4'b0101] = datatowrite;
					readdata = Mem[4'b0101];
				end
			16'b0000000001000000: 
				begin
					if(WE) Mem[4'b0110] = datatowrite;
					readdata = Mem[4'b0110];
				end
			16'b0000000010000000: 
				begin
					if(WE) Mem[4'b0111] = datatowrite;
					readdata = Mem[4'b0111];
				end
			16'b0000000100000000: 
				begin
					if(WE) Mem[4'b1000] = datatowrite;
					readdata = Mem[4'b1000];
				end
			16'b0000001000000000: 
				begin
					if(WE) Mem[4'b1001] = datatowrite;
					readdata = Mem[4'b1001];
				end
			16'b0000010000000000: 
				begin
					if(WE) Mem[4'b1010] = datatowrite;
					readdata = Mem[4'b1010];
				end
			16'b0000100000000000: 
				begin
					if(WE) Mem[4'b1011] = datatowrite;
					readdata = Mem[4'b1011];
				end
			16'b0001000000000000: 
				begin
					if(WE) Mem[4'b1100] = datatowrite;
					readdata = Mem[4'b1100];
				end
			16'b0010000000000000: 
				begin
					if(WE) Mem[4'b1101] = datatowrite;
					readdata = Mem[4'b1101];
				end
			16'b0100000000000000: 
				begin
					if(WE) Mem[4'b1110] = datatowrite;
					readdata = Mem[4'b1110];
				end
			16'b100000000000000: 
				begin
					if(WE) Mem[4'b1111] = datatowrite;
					readdata = Mem[4'b1111];
				end
		endcase
	end
endmodule