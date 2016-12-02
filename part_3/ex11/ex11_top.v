module ex11_top(
	SW,
	CLOCK_50,
	DAC_CS,
	DAC_SDI,
	DAC_LD,
	DAC_SCK,
	PWM_OUT
);

input CLOCK_50;
input[9:0] SW;
output DAC_CS, DAC_SDI, DAC_LD, DAC_SCK, PWM_OUT;

wire tick;

clktick clktick_16 (CLOCK_50, 1'b1, 5000, tick);

spi2dac main (CLOCK_50, SW, tick, DAC_SDI, DAC_CS, DAC_SCK, DAC_LD);

pwm pthang (CLOCK_50, SW, tick, PWM_OUT);


endmodule 