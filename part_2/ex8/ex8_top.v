module ex8_top(
		CLOCK_50,
		KEY,
		HEX0,
		HEX1,
		HEX2,
		HEX3,
		HEX4,
		LEDR
);

	input CLOCK_50;
	input [3:0] KEY;
	
	output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4;
	output [9:0] LEDR;

	wire tick_ms, tick_hs, en, delay, time_out;
	wire [15:0] N;
	
	clktick tick1 (CLOCK_50, 1'b1, 15'b1100001101010000, tick_ms);
	clktick tick2 (CLOCK_50, tick_ms, 12'b100111000100, tick_hs);
	
	fsm main (tick_ms, tick_hs, ~KEY[3], time_out, en, delay, LEDR);
	
	//LFSR_7 lfsr 


endmodule 