// T (Toggle) flip flop in verilog using behavioural modeling

module T_flip_flop(T, reset, clk , Q);
  
  input T, reset, clk;
  
  output reg Q;
  
  always @(posedge clk)
    
    if (!reset)  // reset is active low
      Q <= 0;
      
  	else
      
      if(T)
        Q <= ~Q;
        
      else
        Q <= Q;
     
endmodule