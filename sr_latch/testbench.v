// testbench for SR Latch
`include "sr_latch.v"
 
module test_latch;
 
  reg s, r;
  wire q, q_bar;
  
  
  SR_Latch Latch_test (q, q_bar, s, r);
  
//     (
//       .Q(q),
//       .Q_bar(q_bar),
//       .S(s),
//       .R(r);
//      );
 
  
  initial
    begin
      
      $monitor($time, " S = %b, R = %b, Q = %b, Q_bar = %b", s, r, q, q_bar);
      $dumpfile("dump.vcd"); 
      $dumpvars(1, s, r, q, q_bar);
      
      s = 1'b0; r = 1'b1;
      #5;
      
      s = 1'b1; r = 1'b0;
      #5;
      
      s = 1'b0; r = 1'b0;
      #5;
      
      s = 1'b0; r = 1'b1;
      #5;
      
      s = 1'b1; r = 1'b0;
      #5;
      
      s = 1'b1; r = 1'b1;
      #5;
    end 
 
endmodule // half_adder_tb
