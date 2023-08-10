module tb_top;

  //`include "counter_test.sv"

  import counter_tb_package::*;

  /*
  `include "counter_driver.sv";
  `include "counter_monitor.sv";
  `include "counter_agent.sv";
  `include "counter_scoreboard.sv";  
  //`include "counter_environment.sv";
  `include "counter_test.sv"
  */

  // Clock Generation
  bit clk;
  initial begin
    forever #10ns clk = ~clk;
  end
  
  // Interface instantiation
  counter_interface counter_intf(clk);
  
  // DUT instantiation
  counter DUT(
    .data_in(counter_intf.data_in),
    .load(counter_intf.load),
    .enable(counter_intf.enable),
    .up_down(counter_intf.up_down),
    .clk(counter_intf.clk),
    .reset(counter_intf.reset),
    .data_out(counter_intf.data_out)
  );
  
  // Test instantiation
  counter_test test_obj;

  initial begin
    test_obj = new(counter_intf);
    test_obj.env_obj.agent_obj.setData(10);
    test_obj.env_obj.agent_obj.display();
    #100ns $display("$%t Simulation time", $time);
    $finish();
  end
  
endmodule