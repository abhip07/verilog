// Implementation of half substrctor using structural modeling in  verilog

module half_sub(a, b, sub, borrow);
  input a;
  input b;
  output sub;
  output borrow;
  
  assign sub = a ^ b;
  assign borrow = ~a & b;
  
endmodule
