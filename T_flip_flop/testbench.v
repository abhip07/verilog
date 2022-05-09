

// Testcase for T-Flip Flop in Verilog

`include "t_flip_flop.v"

module flip_flop_tb;
 
  reg T, clk, reset;

  wire Q;
  
  integer i;
  
  T_flip_flop test_flip_flop(
    .T(T),
    .reset(reset),
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
      reset = 0;
      for(i=0; i!=10; i=i+1)
        begin
        #50 reset = ~reset;        
        end

    end
  
  initial
    
    begin
      
      $dumpfile("dump.vcd");
      $dumpvars(0, test_flip_flop);
      
      $monitor("[%0t] clk = %d T = %d Q = %d", $time, clk, T, Q);
     
    end
  
  initial 
    begin 
 		T= 0;
      for(i=0; i!=20; i=i+1)
        #25 T = ~T;
    
    end
  
  initial
    #500 $finish;
      
endmodule