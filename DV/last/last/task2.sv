class tb_top;
	test t1_obj = new();
endclass

class test;
	env e1_obj = new();
endclass

class env;
	scoreboard s1_obj = new();
	agent a1_obj = new();
endclass

class scoreboard
endclass

class agent;
	driver d1_obj = new();
	monitor m1_obj = new();
endclass

class driver;
endclass

class monitor;
endclass
