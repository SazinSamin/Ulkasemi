class counter_driver;

  virtual counter_interface count_vif;

  function new(virtual counter_interface count_vif);
    $display("driver class created successfully");
    this.count_vif = count_vif;
  endfunction


  task reset;

    count_vif.enable <= 0;
    count_vif.load <= 0;
    count_vif.up_down <= 0;
    count_vif.data_in <= 0;
    count_vif.data_out <= 0;

    count_vif.reset <= 0;

    @(negedge count_vif.clk);
      count_vif.reset <= 1;


  endtask

  task load;
    @(negedge count_vif.clk);
    count_vif.load <= 1;
    count_vif.enable <= 1;
    count_vif.data_in <= 16'b0000000000100000;
    @(negedge count_vif.clk);
     count_vif.load <= 0;
  endtask


  task up;
    @(negedge count_vif.clk);
    count_vif.enable <= 1;
    count_vif.up_down <= 1;
    //@(negedge count_vif.clk);
  endtask

  task down;
  //repeat(3)
    @(negedge count_vif.clk);
    count_vif.up_down = 0;
    //@(negedge count_vif.clk);
  
  endtask


endclass