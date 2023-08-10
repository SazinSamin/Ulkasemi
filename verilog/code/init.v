module behave;
	reg [1:0] a,b, c, d;
	
	initial begin
		$monitor("a:%b b:%b c:%b, d:%b, time: %t", a, b, c, d, $time);
		a = 2'b00;
		#5 b = 2'b01;
	end
	initial begin
		#10 c = 2'b10;
		#40 d = 2'b11;
	end
	initial begin
		#60 $finish;
	end
	
endmodule
