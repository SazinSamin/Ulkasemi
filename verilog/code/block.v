module block;
	reg [1:0] a, b;
	
	initial begin
		$monitor("a: %b, b:%b, time=%t", a, b, $time);
		// remove fork join later to observe how fork-join work
		fork
			#20 a = 2'b00;
			#30 b = 2'b01;
		join
	end
endmodule	
