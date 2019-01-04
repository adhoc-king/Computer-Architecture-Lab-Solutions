module magComp_beh(ALTB, AGTB, AEQB, A, B);
	output ALTB, AGTB, AEQB;
	input [4:0] A, B;
	if(A>B) 
		begin
			ALTB = 0; 
			AGTB = 1;
			AEQB = 0;
		end
	else if(A<B)
		begin
			ALTB = 1;
			AGTB = 0;
			AEQB = 0;
		end
	else
		begin
			ALTB = 0;
			AGTB = 0;
			AEQB = 1;
		end
endmodule
