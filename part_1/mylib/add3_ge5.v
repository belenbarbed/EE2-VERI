module add3_ge5(iW, oA);

	input [3:0] iW;
	output reg [3:0] oA; 

	always @ (*) //* means always at any change of any input
		case (iW) 
			//input <5, pass to output unchanged
			4'b0000: oA <=4'b0000; // e.g. if iW = 4'b0000, oA will be 4'b0000
			4'b0001: oA <=4'b0001;
			4'b0010: oA <=4'b0010;
			4'b0011: oA <=4'b0011;
			4'b0100: oA <=4'b0100;
			//input >=5, output = input +3, using shift and add 3 algorithm
			4'b0101: oA <=4'b1000;
			4'b0110: oA <=4'b1001;
			4'b0111: oA <=4'b1010;
			4'b1000: oA <=4'b1011;
			4'b1001: oA <=4'b1100;
			4'b1010: oA <=4'b1101;
			4'b1011: oA <=4'b1110;
			4'b1100: oA <=4'b1111;
			default: oA <=4'b0000; //oA cannot be 13 or larger, else overflow as 13+3 = 16
			//difference between <= and = is
			//<= unblocked: oA doesn't get assigned until the case is over
			// = blocked: oA gets assigned immediately
			
		endcase
		
endmodule		