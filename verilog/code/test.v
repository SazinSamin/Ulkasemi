module test;
	reg [1:0] a;
	reg [2:0] b;
	reg [12:0] out;
	
	initial begin
		a  = 2;
		b = 4;
		
		#10;
		out = {{2{a}}, {3{b}}};
		#10;
		$display("a=%b, b=%b, out=%b", a, b, out);
	end
	
endmodule
