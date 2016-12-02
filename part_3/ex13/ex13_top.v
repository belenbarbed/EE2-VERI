module ex13_top (
		CLOCK_50,
		DAC_CS,
		DAC_SDI,
		DAC_LD,
		DAC_SCK,
		PWM_OUT
);

input CLOCK_50;

output DAC_CS, DAC_SDI, DAC_LD, DAC_SCK, PWM_OUT;

wire tick;
wire[9:0] A, D;

clktick clktick_16 (CLOCK_50, 1'b1, 5000, tick);

counter_10 cthang (CLOCK_50, tick, A);

ROM our_ROM (A, tick, D);

spi2dac sthang (CLOCK_50, D, tick, DAC_SDI, DAC_CS, DAC_SCK, DAC_LD);

pwm pthang (CLOCK_50, D, tick, PWM_OUT);

endmodule 