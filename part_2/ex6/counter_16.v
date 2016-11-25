`timescale 1ns/100ps //unit time is 1ns, resolution 100ps


//Design Name: counter_8
//Function: an 8-bit synchronous counter with enable input

module counter_16 (
	clock, 
	enable, 
	reset,
	count
);


//-----Declare ports----

	parameter BIT_SZ = 16;
	input clock;
	input enable;
	input reset;
	output [BIT_SZ-1:0] count; 
	
//count needs to be declared as reg
	reg [BIT_SZ-1:0] count;
	
//---------always initialise storage elements such as D-FF
	initial count = 0;
	
//----Main body of the module -----

	always @ (posedge clock)
		if (reset == 1'b1)
			count <= 0;
		else if (enable == 1'b1)
			count <= count+1'b1;
			
endmodule