// full adder testbench 

`include "full_adder.v"

module test_full_adder();
  
  reg in1 = 0;
  reg in2 = 0;
  reg c_in = 0;

  wire sum_out;
  wire c_out;
  
  full_adder full_adder(
    .a(in1),
    .b(in2),
    .carry_in(c_in),
    .sum(sum_out),
    .carry_out(c_out)
  );
  
  initial
    begin
      in1 = 1'b0;
      in2 = 1'b0;
      c_in = 1'b0;
      #10;
      
      in1 = 1'b0;
      in2 = 1'b0;
      c_in = 1'b1;
      #10;
      
      in1 = 1'b0;
      in2 = 1'b1;
      c_in = 1'b0;
      #10;
      
      in1 = 1'b0;
      in2 = 1'b1;
      c_in = 1'b1;
      #10;
      
      in1 = 1'b1;
      in2 = 1'b0;
      c_in = 1'b0;
      #10;
      
      in1 = 1'b1;
      in2 = 1'b0;
      c_in = 1'b1;
      #10;
      
      in1 = 1'b1;
      in2 = 1'b1;
      c_in = 1'b0;
      #10;
      
      in1 = 1'b1;
      in2 = 1'b1;
      c_in = 1'b1;
      #10;  
      
    end
endmodule  // full adder