class counter_driver;

  virtual counter_interface count_vif;

  function new(virtual counter_interface count_vif);
    $display("driver class created successfully");
    this.count_vif = count_vif;
  endfunction

  task driverLoad;
    $display("Driving laod...");
    this.count_vif.load <= 0;
    /*
    #1ns;
    $display("Set load :%d", this.count_vif.load);
    #10ns;
    this.count_vif.load <= 1;
    #1ns;
    $display("Set load :%d", this.count_vif.load);
    */
    always @ (posedge this.count_vif.load) begin
      #10ns this.count_vif.load <= 1;
    end
    
  endtask


endclass