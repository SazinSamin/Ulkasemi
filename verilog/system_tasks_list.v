$display: Displays formatted output to the standard output during simulation. It is useful for debugging and observing the values of signals and variables.

$monitor: Similar to $display, but automatically monitors specified variables or expressions and displays their values whenever they change.

$strobe: Similar to $monitor, but displays the value only when a specified condition becomes true.

$stop: Stops the simulation immediately when executed.

$finish: Finishes the simulation, allowing it to continue until the current time step is completed before ending.

$time: Returns the current simulation time as an integer.

$random: Generates a 32-bit random number in each call.

$urandom: Generates an unsigned 32-bit random number in each call.

$urandom_range: Generates an unsigned random number within a specified range.

$sformatf: Similar to $display, but formats the output as a string and allows writing to a file.

$fopen, $fwrite, $fclose: File I/O tasks to open, write, and close files.

$test$plusargs: Allows reading command-line arguments passed to the simulator.

`$value$: Returns the resolved value of an expression.

$timeformat: Sets the format of displayed time values.

