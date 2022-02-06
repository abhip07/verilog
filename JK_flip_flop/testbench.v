
// Testcase for JK Flip Flop in Verilog

`include "jk_flip_flop.v"

module flip_flop_tb;
 
  reg J; reg K; reg clk;

  wire Q;
  
  integer i;
  
  JK_flip_flop test_flip_flop(
    .J(J),
    .K(K),
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
      
      $monitor("[%0t] clk = %d J = %d R = %d K = %d", $time, clk, J, K, Q);
     
    end
  
  initial 
    begin 
 		J= 1; K= 0;
 		#45 J= 0; K= 1; 
 		#69 J= 0; K= 0; 
 		#42  J= 1; K=1;
    	#7 J= 0; K= 1; 
 		#21 J= 0; K= 0; 
 		#18  J= 1; K=1;
    	#65 J= 0; K= 1; 
 		#11 J= 0; K= 0; 
 		#34  J= 1; K=1;
    end
  
  initial
    #500 $finish;
      
endmodule // half_adder_tb
