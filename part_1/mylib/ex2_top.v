//------------------------------------------
//	Module name: ex2_top
//	Function: Top level module for this design
//				 4-bit hex to one display only
//	Creator:  Peter Cheung
//	Version:  1.1
//	Date:     9 Oct 2016
//------------------------------------------

module ex2_top (
		SW,
		HEX0
);
	input  [3:0] SW;
	output [6:0] HEX0;
	
	hex_to_7seg	  SEG0 (HEX0, SW);
	
endmodule	