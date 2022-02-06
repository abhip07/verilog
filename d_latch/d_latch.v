module d_latch(D, enable, reset, Q);
  
  input D, enable, reset;
  
  output reg Q;
  
  always @(D or enable or reset)
  
  if (!reset)  // reset is active low
      Q <= 0;
  
  else
    
    if (enable)
    
    Q <= D;
  
    
  
endmodule