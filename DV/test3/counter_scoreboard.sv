class counter_scoreboard;
  
  mailbox mbx;
  logic[15:0] prev_data;

  function new(mailbox mbx);
    $display("scoreboard class created successfully");
    this.mbx = mbx;

    fork
      compare();
    join_none

  endfunction

  // comparing input stimulus with output response
  task compare;
    counter_stimulus rcv_pkt;

    forever begin
      mbx.get(rcv_pkt);
      $display("@%0t RCV_PKT :: %p", $time, rcv_pkt);

      if(rcv_pkt.reset == 1) begin
        if(rcv_pkt.load == 1 && rcv_pkt.enable == 1) begin
          if(rcv_pkt.data_in == rcv_pkt.data_out) begin
            $display("@%0t PASS:: Load Data compare pass", $time);
          end
          else begin
            $display("@%0t FAIL :: Load data compare fail. Compare : Data_in:%0h | Data_out%0h", $time, rcv_pkt.data_in, rcv_pkt.data_out);
          end
        end
        else begin
          if(rcv_pkt.up_down == 1) begin
            if((prev_data + 1'b1) == rcv_pkt.data_out) begin
              $display("\n\n@%0t PASS: up_count test pass\n\n", $time);
            end 
            else begin
              $display("\n\n@%0t FAIL: up_count test Fail, Compare: PREV_DATA: %d | CURRENT_DATA: %d\n\n", $time, prev_data, rcv_pkt.data_out);
            end
          end
          else if(rcv_pkt.up_down == 0) begin
              if((prev_data - 1'b1) == rcv_pkt.data_out) begin
              $display("\n\n@%0t PASS: down_count test pass\n\n", $time);
            end 
            else begin
              $display("\n\n@%0t FAIL: down_count test Fail, Compare: PREV_DATA: %d | CURRENT_DATA: %d\n\n", $time, prev_data, rcv_pkt.data_out);
            end
          end 
        end
        prev_data = rcv_pkt.data_out;
      end
      else begin
        prev_data = 0;
      end
        




    end
  endtask




















  // load test
  task load_test(input counter_stimulus rcv_pkt);
    if((rcv_pkt.load == 1) && (rcv_pkt.enable == 1) && (rcv_pkt.reset == 1)) begin
        if(rcv_pkt.data_in == rcv_pkt.data_out) begin
          $display("\n\nLoad test PASS\n\n");
        end
        else begin
          $display("\n\nLoad test FAILED\n\n");
        end
      end
  endtask

  task reset_test(input counter_stimulus rcv_pkt);
    if(rcv_pkt.reset == 1) begin
      if(rcv_pkt.data_out == 0) begin
        $display("\n\nReset SUCCESSFULL\n\n");
      end
      else begin
        $display("\n\nReset FAILED\n\n");
      end
    end

  endtask

  task increment_test(input counter_stimulus rcv_pkt);

  endtask



endclass