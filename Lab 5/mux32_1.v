module mux32_1(regData,q00,q01,q02,q03,q04,q05,q06,q07,q08,q09,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20,q21,q22,q23,q24,q25,q26,q27,q28,q29,q30,q31,reg_no);
	input [31:0] q00,q01,q02,q03,q04,q05,q06,q07,q08,q09,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20,q21,q22,q23,q24,q25,q26,q27,q28,q29,q30,q31;
	input [4:0] reg_no;
	output [31:0] regData;
	reg [31:0] regData;
	always @(*)
	case(reg_no)
		5'b00000: regData = q00;
		5'b00001: regData = q01;
		5'b00010: regData = q02;
		5'b00011: regData = q03;
		5'b00100: regData = q04;
		5'b00101: regData = q05;
		5'b00110: regData = q06;
		5'b00111: regData = q07;
		5'b01000: regData = q08;
		5'b01001: regData = q09;
		5'b01010: regData = q10;
		5'b01011: regData = q11;
		5'b01100: regData = q12;
		5'b01101: regData = q13;
		5'b01110: regData = q14;
		5'b01111: regData = q15;
		5'b10000: regData = q16;
		5'b10001: regData = q17;
		5'b10010: regData = q18;
		5'b10011: regData = q19;
		5'b10100: regData = q20;
		5'b10101: regData = q21;
		5'b10110: regData = q22;
		5'b10111: regData = q23;
		5'b11000: regData = q24;
		5'b11001: regData = q25;
		5'b11010: regData = q26;
		5'b11011: regData = q27;
		5'b11100: regData = q28;
		5'b11101: regData = q29;
		5'b11110: regData = q30;
		5'b11111: regData = q31;
	endcase
end
