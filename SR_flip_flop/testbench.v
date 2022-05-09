
// Testcase for SR Flip Flop in Verilog

`include "sr_flip_flop.v"

module flip_flop_tb;
 
  reg S; reg R; reg clk;

  wire Q;
  
  integer i;
  
  sr_flip_flop test_flip_flop(
    .S(S),
    .R(R),
    .clk(clk),
    .Q(Q)
  );
  
  
  // clock signal
  initial 
    begin
  		clk=0;
     	forever #10 clk = ~clk;  
	end
  
  initial
    
    begin
      
      $dumpfile("dump.vcd");
      $dumpvars(0, test_flip_flop);
      
      $monitor("[%0t] clk = %d S = %d R = %d Q = %d", $time, clk, S, R, Q);
     
    end
  
  initial 
    begin 
 		S= 1; R= 0;
 		#50 S= 0; R= 1; 
 		#50 S= 0; R= 0; 
 		#50  S= 1; R=1;
    	#50 S= 0; R= 1; 
 		#50 S= 0; R= 0; 
 		#50  S= 1; R=1;
    	#50 S= 0; R= 1; 
 		#50 S= 0; R= 0; 
 		#50  S= 1; R=1;
    end
  
  initial
    #500 $finish;
      
endmodule
