/*
4x1 multiplexer in verilog

  Here all inputs are 4 bits wide and selection line has
  2 bits for selecting one of the 4 inputs

*/

module mux_4x1(a, b, c, d, s0, s1, out);
  
  input [3:0] a;
  input [3:0] b;
  input [3:0] c;
  input [3:0] d;
  input s0, s1; // select lines
  output [3:0] out;
    
  assign out = s0 ?(s1 ? d:c):(s1 ? b:a);

endmodule

  
