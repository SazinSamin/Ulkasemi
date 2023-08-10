class myPacket;
	bit [2:0]  header;
	bit        encode;
	bit [2:0]  mode;
	bit [7:0]  data;
	bit        stop;
	
	function new (bit [2:0] header = 3'h1, bit [2:0] mode = 5);
		this.header = header;
		this.encode = 0;
		this.mode   = mode;
		this.stop   = 1;
	endfunction
	
	function void display ();
		$display("Header = 3'b%b, Encode = %b, Mode = 3'b%b, Stop = %b", 
		          header, encode, mode, stop);
	endfunction
endclass

module tb_top;
	myPacket pkt0, pkt1;
		
	initial begin
		pkt0 = new (3'h2, 3'h3);
		pkt0.display ();
		
		pkt1 = new ();
		pkt1.display ();
	end
endmodule

