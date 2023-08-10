class test;
	int a;
	int b;
	function new(int a, int b);
		this.a = a;
		this.b = b;
	endfunction
	
	function void display();
		$display("a: %0d, b: %0d", this.a, this.b);
	endfunction

	task my_task(input a, input b, output res);
		res = a + b;
	endtask

endclass

module tb_top;
	test t_inst;
	reg a;
	reg b;
	reg res;
	initial begin
		a = 1'b0;
		b = 1'b1;
		t_inst = new(10, 20);
		t_inst.display();
		t_inst.my_task(a, b, res);
		$display("result: %d", res);
		
	end
endmodule