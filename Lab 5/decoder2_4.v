module decoder2_4(register,reg_no);
	input [1:0] reg_no;
	output [3:0] register;
	assign register[0] = (~reg_no[1] & ~reg_no[0]),
		register[1] = (~reg_no[1] & reg_no[0]),
		register[2] = (reg_no[1] & ~reg_no[0]),
		register[3] = (reg_no[1] & reg_no[0]);
endmodule