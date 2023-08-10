//`include "counter_environment.sv"

class counter_test;

  counter_environment env_obj;

  function new(virtual counter_interface count_vif);
    $$display("Counter Test created successfully");
    env_obj = new(count_vif);
  endfunction


endclass 