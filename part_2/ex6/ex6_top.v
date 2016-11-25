module ex6_top (
		KEY,
		CLOCK_50,
		HEX0,
		HEX1,
		HEX2,
		HEX3,
		HEX4
);

	input [1:0] KEY;
	input CLOCK_50;
	output [6:0] HEX0;
	output [6:0] HEX1;
	output [6:0] HEX2;
	output [6:0] HEX3;
	output [6:0] HEX4;
	
	wire [15:0] B;
	wire [3:0] BCD_0, BCD_1, BCD_2, BCD_3, BCD_4;
	
	reg enable;
	wire tick;
	
	clktick tick_module (CLOCK_50, 1'b1, 16'b1100001101010000, tick);
	
	always @ (*)
		begin
			enable <= (tick & ~KEY[0]);
		end
	
	counter_16 counter (CLOCK_50, enable, ~KEY[1], B);					// THE BUTTONS ARE ACTIVE LOW!!!
	
	bin2bcd_16 binstuff (B, BCD_0, BCD_1, BCD_2, BCD_3, BCD_4);
	
	hex_to_7seg hexto7_0 (HEX0, BCD_0);
	hex_to_7seg hexto7_1 (HEX1, BCD_1);
	hex_to_7seg hexto7_2 (HEX2, BCD_2);
	hex_to_7seg hexto7_3 (HEX3, BCD_3);
	hex_to_7seg hexto7_4 (HEX4, BCD_4);
	
endmodule	