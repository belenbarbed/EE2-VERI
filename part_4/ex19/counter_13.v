`timescale 1ns/100ps //unit time is 1ns, resolution 100ps


//Design Name: counter_13
//Function: an 13-bit synchronous counter with enable input

module counter_13 (
	clock, 
	enable, 
	count
);


//-----Declare ports----

	parameter BIT_SZ = 13;
	input clock;
	input enable;
	output [BIT_SZ-1:0] count; 
	
//count needs to be declared as reg
	reg [BIT_SZ-1:0] count;
	
//---------always initialise storage elements such as D-FF
	initial count = 0;
	
//----Main body of the module -----

	always @ (posedge clock)
		if (enable == 1'b1)
			count <= count+1'b1;
			
endmodule