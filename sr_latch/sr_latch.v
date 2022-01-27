// Implementing SR latch with NAND gates in verilog

module SR_Latch(Q, Q_bar, S, R);
  
  input S, R;
  output Q, Q_bar;
  
  assign Q = ~(R & Q_bar);
  assign Q_bar = ~(S & Q);
  
endmodule
  
