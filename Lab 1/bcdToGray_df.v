module bcdToGray_df(Out, In);
	output [3:0] Out;
	input [3:0] In;

	assign Out[3] = In[3],
		Out[2] = In[2] | In[3],
		Out[1:0] = In[2:1] ^ In[1:0];
endmodule