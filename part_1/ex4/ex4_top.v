module ex4_top (
		SW,
		HEX0,
		HEX1,
		HEX2,
		HEX3
);

	input  [9:0] SW;
	output [6:0] HEX0;
	output [6:0] HEX1;
	output [6:0] HEX2;
	output [6:0] HEX3;
	
	// Our 10-bit version
	//wire [3:0] BCD_0, BCD_1, BCD_2, BCD_3;
	//bin2bcd_10 DECODE1 (SW, BCD_0, BCD_1, BCD_2, BCD_3);
	
	// His 16 bit version
	wire [3:0] BCD_0, BCD_1, BCD_2, BCD_3, BCD_4;
	bin2bcd_16 DECODE1 ({6'b0, SW[9:0]}, BCD_0, BCD_1, BCD_2, BCD_3, BCD_4);
	
	hex_to_7seg  SEG0 (HEX0, BCD_0);
	hex_to_7seg  SEG1 (HEX1, BCD_1);
	hex_to_7seg  SEG2 (HEX2, BCD_2);
	hex_to_7seg  SEG3 (HEX3, BCD_3);
	

endmodule
