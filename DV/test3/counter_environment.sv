class counter_environment;
  
  counter_agent agent_obj;
  counter_scoreboard scoreboard_obj;
  mailbox mbx;


  function new(virtual counter_interface count_vif);

    $display("Environment class created successfully");
    mbx = new();
    agent_obj = new(count_vif, mbx);
    scoreboard_obj = new(mbx);

  endfunction


endclass