// testbench for half substractor

`timescale 1ns / 1ns

`include "half_substractor.v"

module half_sub_tb;
  
  reg  a;
  reg b;
  
  wire sub;
  wire borrow;

  half_sub half_sub_inst(
    
    .a(a),
    .b(b),
    .sub(sub),
    .borrow(borrow)
  );
  
  initial 
    begin
      
      $dumpfile("gates_wave.vcd");
      $dumpvars(1, a, b, sub, borrow);
		
      a = 1;
      b = 0;
      
      #100 $finish;
      
    end
  
  always #10 a=~a;

  always #5 b=~b;

  always @(a or b)

    $monitor("At TIME(in ns)=%t, a=%d b=%d Difference = %d Borrow = %d", $time, a, b, sub, borrow);  

endmodule