// testbench for half substractor

`timescale 1ns / 1ns

`include "full_substractor.v"

module full_sub_tb;
  
  reg  x, y, Bin;
  
  wire sub, Bout;

  full_sub full_sub_inst(
    
    .x(x),
    .y(y),
    .Bin(Bin),
    .sub(sub),
    .Bout(Bout)
  );
  
  initial 
    begin
      
      $dumpfile("gates_wave.vcd");
      $dumpvars(1, x, y, Bin, sub, Bout);
		
      x = 1;
      y = 0;
      Bin = 1;
      
      #100 $finish;
      
    end
  
  always #5 x = ~x;

  always #10 y = ~y;
  
  always #5  Bin = ~Bin;

  always @(x or y or Bin)

    $monitor("At TIME(in ns)=%t, a=%d b=%d Bin=%d Difference = %d Borrow = %d", $time, x, y, Bin, sub, Bout);  

endmodule