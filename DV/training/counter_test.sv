class counter_test;
	int data;
  counter_environment  env_obj;

  function new(virtual counter_interface count_vif);
    $display("%0t Counter_Test Created", $time);

    env_obj = new(count_vif);
  endfunction : new

  function void set_data(int a);
  	this.data = a;
  	$display("Data: %0d",data);
  endfunction

endclass