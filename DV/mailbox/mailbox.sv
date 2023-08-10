typedef mailbox #(int) mbox_inst;

class class1;

  mbox_inst sender;

  task send();
    for(int i = 0; i < 5; i++) begin
        #2 $display("send item %0d at %0t time", i, $time);
        sender.put(i);
      end
  endtask

endclass 

class class2;

  mbox_inst reciever;

  task recieve;
    forever begin
      int i;
      reciever.get(i);
      #5 $display("Get item %0d at %0t time", i, $time);
    end
  endtask
endclass


module tb_top;


  mbox_inst mbox = new();
  
  class1 class1_inst;
  class2 class2_inst;
  
  initial begin

    class1_inst = new();
    class2_inst = new();
    class1_inst.sender = mbox;
    class2_inst.reciever = mbox;


    fork
      class1_inst.send();
      class2_inst.recieve();
    join



  end




endmodule

