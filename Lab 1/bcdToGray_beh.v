module bcdToGray_beh(Out, In);
	output [3:0] Out;
	input [3:0] In;
	reg [3:0] Out;
	integer i;
	always @(In)
	begin
		Out[3] = In[3];
		Out[2] = In[2] | In[3];
		for(i=1; i>-1; i--) 
			Out[i] = In[i+1] ^ In[i];
	end
endmodule