module processor (sysclk, data_in, data_out, data_valid);

	input				sysclk;		// system clock
	input				data_valid;
	input  [9:0]	data_in;		// 10-bit input data
	output [9:0] 	data_out;	// 10-bit output data

	wire				sysclk;
	wire [9:0]		data_in;
	reg  [9:0] 		data_out;
	wire [9:0]		x, q;
	wire  [9:0]		y;
//	reg signed [9:0]	y;
	wire				full, fulld, data_valid, pulse_valid, rdreq;

	parameter 		ADC_OFFSET = 10'h181;
	parameter 		DAC_OFFSET = 10'h200;

	assign x = data_in[9:0] - ADC_OFFSET;		// x is input in 2's complement
	
	// This part should include your own processing hardware 
	
	pulse_gen gthang (pulse_valid, data_valid, sysclk);
	
   reg full_q;
	initial full_q=1'b0;
	always @(posedge sysclk)
		full_q <= full;
	assign rdreq = pulse_valid & full_q;
	
	fifo our_fifo (
		.clock (sysclk), 										
		.data (x), 										
		.q (q),
		.full (full),
		.wrreq (pulse_valid),
		.rdreq (rdreq));
	
	assign y[9:0] = x[9:0] + {q[9], q[9:1]};

	//  Now clock y output with system clock
	always @(posedge sysclk)
		data_out <=  y + DAC_OFFSET;
		
endmodule 