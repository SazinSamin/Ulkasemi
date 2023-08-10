class counter_monitor;

  virtual counter_interface count_vif;
  mailbox mbx;

  function new(virtual counter_interface count_vif, mailbox mbx);
    $display("monitor class created successfully");
    this.count_vif = count_vif;
    this.mbx = mbx;

    fork
      monitor_capture();
    join_none

  endfunction



  task monitor_capture;
    
    counter_stimulus pkt;

    forever begin
      @(negedge count_vif.clk)
      pkt = new();
      pkt.data_in = count_vif.data_in;
      pkt.load = count_vif.load;
      pkt.enable = count_vif.enable;
      pkt.up_down = count_vif.up_down;
      pkt.reset = count_vif.reset;
      pkt.data_out = count_vif.data_out;

      $display("@%0t MNTR_PKT :: %p", $time, pkt);
      mbx.put(pkt);

      
    end

  endtask
  
endclass