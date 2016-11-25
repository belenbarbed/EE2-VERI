module ex7_top(
		KEY,
		HEX0,
		HEX1
);

	input [3:0]KEY;
	output [6:0] HEX0, HEX1;
	
	wire [6:0] inter;
	
	LFSR_7 lfsr (inter, ~KEY[3]);
	
	hex_to_7seg hexto7_0 (HEX0, inter[3:0]);
	hex_to_7seg hexto7_1 (HEX1, {1'b0, inter[6:4]});
		

endmodule 