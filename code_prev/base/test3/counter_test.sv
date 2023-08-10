//`include "counter_environment.sv"

class counter_test;

  counter_environment env_obj;
  virtual counter_interface count_vif;

  function new(virtual counter_interface count_vif);
    $$display("Counter Test created successfully");
    env_obj = new(count_vif);
    this.count_vif = count_vif;
  endfunction

  task run_phase;
    
    $display("drive reset to 0");
    env_obj.agent_obj.driver_inst.reset();

    env_obj.agent_obj.driver_inst.load();
    
    repeat(3) begin
        env_obj.agent_obj.driver_inst.up();  
    end
    
    
    $display("set load value");
    env_obj.agent_obj.driver_inst.load();
    
    $display("up test");
    env_obj.agent_obj.driver_inst.up(); 

    
    
    $display("Down test");  
    repeat(3) begin
        env_obj.agent_obj.driver_inst.down();
    end
    //@ (negedge counter_interface.clk);
    //@ (negedge counter_interface.clk);
    env_obj.agent_obj.driver_inst.load();

    repeat(3) begin
        env_obj.agent_obj.driver_inst.down();
    end


    env_obj.agent_obj.driver_inst.reset();


  endtask


endclass 