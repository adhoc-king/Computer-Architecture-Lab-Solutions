module Padd(paddedText,plainText);
	output [255:0] paddedText;
	input [255:0] plainText;
	reg [255:0] paddedText;
	wire [7:0] length = plainText[255:248];
	integer i;
	always @(*)
	begin
		for(i=0; i<length; i=i+1)
		begin
			paddedText[i] = plainText[i];
		end
		for(i=length; i<248; i=i+1)
		begin
			paddedText[i] = 1'b0;
		end
		for(i=248; i<256; i=i+1)
		begin
			paddedText[i] = plainText[i];
		end
	end
endmodule