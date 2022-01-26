// Code your design here
// Half Adder in Verilog HDL
module half_adder
  (
   a,
   b,
   sum,
   carry
   );

  input  a;
  input  b;
  output sum;
  output carry;

  assign sum   = a ^ b;  // bitwise xor
  assign carry = a & b;  // bitwise and

endmodule // half_adder