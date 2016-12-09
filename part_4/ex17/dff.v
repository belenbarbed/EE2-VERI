module d_ff(d, q, clk);

	input d, clk;
	output q;
	
	reg q;
	
	always@(posedge clk)
		begin
			q <= d;
		end


endmodule 