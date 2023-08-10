module queue_example;
    int my_queue[$];
    int data;

    initial begin
        // Push three elements into the queue
        my_queue.push_back(10);
        my_queue.push_back(20);
        my_queue.push_back(30);
        
        // Pop one element from the queue
        my_queue.pop_front();

        // Traverse the queue using a for loop
        for (int i = 0; i < my_queue.size(); i++) begin
            $display("Queue element at index %0d is: %0d", i, my_queue[i]);
        end
    end

endmodule

