module ex10_top (
		SW,
		CLOCK_50,
		DAC_CS,
		DAC_SDI,
		DAC_LD,
		DAC_SCK
);


input [9:0] SW;
input CLOCK_50;
output DAC_CS, DAC_SDI, DAC_LD, DAC_SCK;

wire tick;

clktick clktick_16 (CLOCK_50, 1'b1, 5000, tick);

spi2dac main (CLOCK_50, SW, tick, DAC_SDI, DAC_CS, DAC_SCK, DAC_LD);



endmodule 