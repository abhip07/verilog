
// Testcase for D-Flip Flop in Verilog

`include "d_flip_flop.v"

module flip_flop_tb;
 
  reg D; reg clk;

  wire Q;
  
  integer i;
  
  D_flip_flop test_flip_flop(
    .D(D),
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
      
      $monitor("[%0t] clk = %d D = %d Q = %d", $time, clk, D, Q);
     
    end
  
  initial 
    begin 
 		D= 0;
      for(int i=0; i!=25; i=i+1)
        #20 D = ~D;
    end
  
  initial
    #500 $finish;
      
endmodule
