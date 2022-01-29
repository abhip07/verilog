// Implementation of full substrctor using dataflow modeling

  
module full_sub(x, y, Bin, sub, Bout);
  input x;
  input y;
  input Bin; // borrow in
  output sub;
  output Bout;  // borrow out
  
  wire i, j, k; // for interconnections
  
  // substraction
  assign sub = x ^ y ^ Bin;
  
  // borrow
  assign i = ~x & y;
  assign j = y & Bin;
  assign k = ~x & Bin;
  
  assign Bout = i | j | k;
  
endmodule