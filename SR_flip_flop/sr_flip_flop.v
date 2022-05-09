// SR Flip FLop in Verilog using Behavioural Modeling
module sr_flip_flop(S, R, clk , Q);
  
  input S, R, clk;
  
  output reg Q;
  
  always @(posedge clk)
  
    if(S==1)
      Q <= 1;
  
  	else if(R==1)
      Q <= 0;
    
  	else if(S==0 & R==0)
      Q <= Q;
     
endmodule
