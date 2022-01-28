// testbench for 4x1 multiplexer

`include "4x1_mux.v"

module test_mux;
 
  reg [3:0] a = 4'b0010; 
  reg [3:0] b = 4'b1001;
  reg [3:0] c = 4'b1110;
  reg [3:0] d = 4'b0011;
  
  reg s0=1'b0, s1=1'b0;
  
  wire [3:0] out;
  
  
  mux_4x1 mux_test (
    .a(a),
    .b(b),
    .c(c), 
    .d(d), 
    .s0(s0),
    .s1(s1),
    .out(out)
  );
 
  
  initial
    begin
      
      $dumpfile("dump.vcd"); 
      $dumpvars(1, a, b, c, d, s0, s1, out);
      
      s0 = 1'b0;
      s1 = 1'b1;
      #5;
      
      s0 = 1'b1;
      s1 = 1'b1;
      #5;
      
      s0 = 1'b0;
      s1 = 1'b0;
      #5;
      
      s0 = 1'b1;
      s1 = 1'b0;
      #5;
    end 
 
endmodule // half_adder_tb
