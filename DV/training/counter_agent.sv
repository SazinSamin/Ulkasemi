class counter_agent;

  counter_driver  drv_obj;
  counter_monitor  mntr_obj;

  function new(virtual counter_interface count_vif);
    $display("%0t Counter_Agent Created", $time);

    drv_obj = new(count_vif);
    mntr_obj = new(count_vif);
  endfunction : new


endclass