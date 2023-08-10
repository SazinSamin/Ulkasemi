//`include "counter_driver.sv";
//`include "counter_monitor.sv"

class counter_agent;

  int data;


  counter_monitor monitor_inst;
  counter_driver driver_inst;

  function new(virtual counter_interface count_vif);
    $display("agent class created successfully");
    monitor_inst = new();
    driver_inst = new(count_vif);

    /*
    $display("count_vif.data_in:%d", count_vif.data_in);
    $display("count_vif.load:%d", count_vif.load);
    $display("count_vif.ebable:%d", count_vif.enable);
    $display("count_vif.up_down:%d", count_vif.up_down);
    $display("count_vif.clk:%d", count_vif.clk);
    $display("count_vif.data_out:%d", count_vif.data_out);
    */
  endfunction

  /*
  

*/

  /*
  task seeClock;
    for(int i = 0; i < 20; i++) begin
      #5ns $display("clk: %d", this.clk);
    end
  endtask

  function void setData(int data);
     $display("passed data: %0d", data);
     this.data = data;
  endfunction

  function void display();
    $display("data: %0d", this.data);
  endfunction
  */

endclass