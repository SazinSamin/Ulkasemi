class counter_driver;

  virtual counter_interface count_vif;

  function new(virtual counter_interface count_vif);
    $display("driver class created successfully");
    this.count_vif = count_vif;
  endfunction


  task driveLoad;
    this.count_vif.load <= 0;
    always @(posedge this.clk) begin
      this.count_vif.load <= 1;
    end
  endtask

endclass