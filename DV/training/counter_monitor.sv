class counter_monitor;

  function new(virtual counter_interface count_vif);
    $display("%0t Counter_Monitor Created", $time);
  endfunction : new


endclass