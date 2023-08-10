class counter_driver;

  function new(virtual counter_interface count_vif);
    $display("%0t Counter_Driver Created", $time);
  endfunction : new


endclass