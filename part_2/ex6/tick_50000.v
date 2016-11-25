module tick_50000(
		clock,
		tick
);

	input clock;
	output tick;

	reg [15:0] count;
	reg tick;

	initial count = 0;
	
	always @ (posedge clock)
	
		begin
			if (count < 5'd50000)
				begin
					count <= count+1'b1;
					tick <= 1'b0;
				end
			else
				begin
					count <= 1'b0;
					tick <= 1'b1;
				end	
		end		
				
endmodule
