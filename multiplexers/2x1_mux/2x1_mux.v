// 2x1 mux using dataflow modeling

module mux_2x1(select, in1, in2, out);
 
  input [3:0] in1;
  input [3:0]in2;
  input select;
  
  output [3:0]out;
  
  // if select=1 assign out to 2nd input
  assign out = select ? in2 : in1;
  
endmodule