module clktick (
	clkin, 
	enable, 
	N, 
	tick 
);

parameter N_BIT = 16;

input clkin; 
input enable;
input [N_BIT-1:0] N;

output tick;

reg [N_BIT-1:0] count; 
reg tick;
initial tick = 1'b0;

	always @ (posedge clkin)
		if (enable == 1'b1)begin
			if (count == 0)
				begin
					tick <= 1'b1; 
					count <= N;
				end
			else
				begin
					tick <= 1'b0;
					count <= count - 1'b1;
				end
		end
				
endmodule 