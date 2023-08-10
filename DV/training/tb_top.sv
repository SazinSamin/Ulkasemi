module tb_top;

  import counter_tb_package::*;

  int a = 123;
  bit  clk;

  // Clock Generation
  initial begin
  	forever #10 clk = ~clk;
  end

  // Interface Instance
  counter_interface count_intf(clk);

  // DUT Instantiation
  counter DUT(
  .data_in(count_intf.data_in),
  .load(count_intf.load),
  .enable(count_intf.enable),
  .up_down(count_intf.up_down),
  .clk(clk),
  .reset(count_intf.reset),
  .data_out(count_intf.data_out)
  );


  counter_test test_obj;


  // Run Simulation from Test
  initial begin
  	
    test_obj = new(count_intf);

    test_obj.set_data(a);


    #100 $display("%0t Simulation Finished", $time);
    $finish();
  end

endmodule