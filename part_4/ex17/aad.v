module add(in1, in2, out);

	input in1, in2;
	output out;
	
	reg out;
	
	always @(*)
		begin
			out <= in1 & in2;
		end	


endmodule 