// Code your design here
module full_adder(a, b, carry_in, sum, carry_out);
  
  input a;
  input b;
  input carry_in;
  output sum;
  output carry_out;
  
  wire w1;
  wire w2;
  wire w3;
  
  /*
  
  We know in Full Adder 
  sum = a ^ b ^ carry_in;
  and 
  carry_out = (a ^ b) & carry_in | (a & b);
  
  */
  
  assign w1 = a ^ b;
  assign w2 = w1 & carry_in;
  assign w3 = a & b;
  
  assign sum = w1 ^ carry_in;
  
  assign carry_out = w2 | w3;
  
  
endmodule