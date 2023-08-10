module taskTest;
	task sum(input [7:0] a, b, output [15:0] out);
		begin
			out = a + b;
		end
	endtask
	
	reg [7:0] x, y;
	reg [15:0] z;
	initial begin
		$monitor("%d + %d = %d %t", x, y, z, $time);	
		x = 10;
		y = 10;
		
		#10 sum(x, y, z);
		
		x = 5;
		y = 5;
		#10 sum(x, y, z);

	end
	
	
endmodule
