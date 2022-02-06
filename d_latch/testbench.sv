
// Testcase for D-Latch in Verilog

`include "d_latch.v"

module latch_tb;
 
  reg D; reg enable; reg reset;

  wire Q;
  
  integer i;
  
  d_latch test_latch(
    .D(D),
    .enable(enable),
    .reset(reset),
    .Q(Q)
  );
  
  initial
    begin
      
      $dumpfile("dump.vcd");
      $dumpvars(0, test_latch);
      
      $monitor("[%0t] D = %d en = %d reset = %d Q = %d", $time, D, enable, reset, Q);
      
      D = 1;
      enable = 0;
      reset = 0;
      
      #10 reset = 1;
      
      for (i=0; i!=10; i=i+1)
        begin
          #5 enable <= ~enable;
          
          #5 D <= i; 
          
        end
     
    end 
      
endmodule // half_adder_tb
