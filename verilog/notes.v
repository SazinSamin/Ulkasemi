input in design become reg in testbench, also output in design become wire in testbench

together with multiple wire called vector
ports are default consider as nets of type wire

All signals used in procedural block should be decleared as type reg.	

there mainly two types of procedural block, initial and always


Use blocking assigments when modeling combinational logic with an always block

as where we wrote " input q, rst " we can wrote " input wire q, rst "as  ports are default consider as nets of type wire

reg signals can only be driven in procedural blocks like initial and always



Combinational logic requires the inputs to be continuously driven to maintain the output unlike sequential elements like flip flops where the value is captured and stored at the edge of a clock. So an <code>assign</code> statement fits the purpose the well because the output <span class=signal>o</span> is updated whenever any of the inputs on the right hand side change.</p><pre>


-> blocking non-blocking
	In summary, blocking assignments are used for combinational logic, and the assignments are executed sequentially, 	
	while non-blocking assignments are used for synchronous sequential logic, and the assignments are executed 
	concurrently. 


-> initial 
	- $finish can terminate all active initial block.
