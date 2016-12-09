module processor (sysclk,
		data_in, data_out,
		data_valid,
		SW,
		BCD_0, BCD_1, BCD_2);

	input			sysclk;					// system clock
	input			data_valid;
	input[9:0]	data_in;					// 10-bit input data
	input[9:0]	SW;
	
	output[9:0] data_out;				// 10-bit output data
	output[3:0] BCD_0, BCD_1, BCD_2;

	wire				sysclk;
	wire [9:0]		data_in;
	reg  [9:0] 		data_out;
	wire [9:0]		x, y;
	wire [8:0]		q;
	wire				data_valid, pulse_valid;
	wire [12:0]		ctr_out, k;
	wire [19:0]		Delay;
	wire [9:0]		bin_wire;
	wire [3:0]		BCD_0, BCD_1, BCD_2, BCD_3, BCD_4;
	

	parameter 		ADC_OFFSET = 10'h181;
	parameter 		DAC_OFFSET = 10'h200;

	assign x = data_in[9:0] - ADC_OFFSET;		// x is input in 2's complement
	
	// This part should include your own processing hardware 
	
	pulse_gen gthang (pulse_valid, data_valid, sysclk);
	counter_13 ctr13 (sysclk, ~data_valid, ctr_out);
	
	assign k = {SW[8:0], 4'b0} + ctr_out;
	assign Delay = SW[8:0] * 11'h666;
	
	bin2bcd_16 bin2bcd ({5'b0, Delay[19:10]}, BCD_0, BCD_1, BCD_2, BCD_3, BCD_4);

	delay_ram our_ram(
		.clock (sysclk), 										
		.data (y[9:1]), 										
		.q (q),
		.wren (pulse_valid),
		.rden (pulse_valid),
		.wraddress (k),
		.rdaddress (ctr_out));
	
	assign y[9:0] = x[9:0] - {q[8], q[8], q[8:1]};

	//  Now clock y output with system clock
	always @(posedge sysclk)
		data_out <=  y + DAC_OFFSET;
		
endmodule 