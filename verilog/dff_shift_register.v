module dff(d, rst, clk, rst);
	input d, rst, clk, rst;
	output reg q;
	
	always @ (posedge clk or negedge clk) begin
		if(!rst)
			q <= 0;
		else 
			q <= q;		
	end
endmodule

module shift_reg(d, clk, rst, q);
	input d, clk, rst;
	output reg q;
	
	

endmodule

