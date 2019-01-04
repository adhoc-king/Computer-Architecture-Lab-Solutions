module bcdToGray_gate(Out, In);
	output [3:0] Out;
	input [3:0] In;

	buf b1(Out[3], In[3]);
	or o1(Out[2], In[2], In[3]);
	xor x1(Out[1], In[1], In[2]);
	xor x2(Out[0], In[0], In[1]);
endmodule