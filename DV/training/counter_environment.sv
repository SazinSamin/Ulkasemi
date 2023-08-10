class counter_environment;

  counter_scoreboard count_scb;
  counter_agent count_agnt;

  function new(virtual counter_interface count_vif);
    $display("%0t Counter_Environment Created", $time);

    count_scb = new();
    count_agnt = new(count_vif);
  endfunction : new


endclass