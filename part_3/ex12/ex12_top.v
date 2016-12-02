module ex12_top (
		SW,
		HEX0,
		HEX1,
		HEX2,
		CLOCK_50
);	

input [9:0] SW;
input CLOCK_50;

output[6:0] HEX0, HEX1, HEX2;

wire[9:0] out_ROM;

ROM our_ROM (SW, CLOCK_50, out_ROM);

hex_to_7seg thing0 (HEX0, out_ROM[3:0]);
hex_to_7seg thing1 (HEX1, out_ROM[7:4]);
hex_to_7seg thing2 (HEX2, {2'b00, out_ROM[9:8]});

endmodule 