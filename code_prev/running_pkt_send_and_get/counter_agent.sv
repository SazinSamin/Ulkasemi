//`include "counter_driver.sv";
//`include "counter_monitor.sv"

class counter_agent;

  int data;

  counter_monitor monitor_inst;
  counter_driver driver_inst;
  

  function new(virtual counter_interface count_vif, mailbox mbx);
    $display("agent class created successfully");
    monitor_inst = new(count_vif, mbx);
    driver_inst = new(count_vif);

  endfunction








  
  /*
  function void setData(int data);
     $display("passed data: %0d", data);
     this.data = data;
  endfunction

  function void display();
    $display("data: %0d", this.data);
  endfunction
  */

endclass