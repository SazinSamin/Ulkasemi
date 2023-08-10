class counter_environment;
  
  counter_agent agent_obj;
  counter_scoreboard scoreboard_obj;


  function new(virtual counter_interface count_vif);

    $display("Environment class created successfully");
    agent_obj = new(count_vif);
    scoreboard_obj = new();

  endfunction


endclass