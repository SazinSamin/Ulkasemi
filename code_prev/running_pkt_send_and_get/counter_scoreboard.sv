class counter_scoreboard;
  
  mailbox mbx;

  function new(mailbox mbx);
    $display("scoreboard class created successfully");
    this.mbx = mbx;

    fork
      compare();
    join_none

  endfunction


  task compare;
    counter_stimulus rcv_pkt;

    forever begin
      mbx.get(rcv_pkt);
      $display("@%0t RCV_PKT :: %p", $time, rcv_pkt);
    end
  endtask


endclass