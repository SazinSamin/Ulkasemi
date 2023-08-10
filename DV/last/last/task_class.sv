class scoreboard;
	function new();
		$display("I am scoreboard");
	endfunction
endclass


class driver;
    function new();
        $display("I am driver");
    endfunction
endclass

class monitor;
    function new();
        $display("I am monitor");
    endfunction
endclass

class agent;
    driver d1_obj;
    monitor m1_obj;
    function new();
        d1_obj = new();
        m1_obj = new();
        $display("I am agent");
    endfunction
endclass

class env;
	scoreboard s1_obj1;
	agent a1_obj;
	function new();
		s1_obj1 = new();
		a1_obj = new();
		$display("I am environment");
	endfunction
endclass

class test;
	env e1_obj;
	function new();
		e1_obj = new();
		$display("I am test class");
	endfunction
endclass


module tb_top;
	test t1_obj;
	initial begin
		t1_obj = new();
	end
endmodule




