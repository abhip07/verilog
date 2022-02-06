// D flip flop in verilog using behavioural modeling

module D_flip_flop(D, clk , Q);
  
  input D, clk;
  
  output reg Q;
  
  always @(posedge clk)
  
    if(D==1)
      Q <= 1;
  
  else if(D==0)
      Q <= 0;
    
  	else 
      Q <= Q;
     
endmodule
