
module gates(a, b, c1, c2, c3, c4, c5, c6, c7);
  input a, b;
  output c1, c2, c3, c4, c5, c6, c7;

  // logical AND
  and AND(c1, a, b);
  or OR(c2, a, b);
  not NOT(c3, a);
  nand NAND(c4, a, b);
  nor NOR(c5, a, b);
  xor XOR(c6, a, b);
  xnor XNOR(c7, a, b);

endmodule

