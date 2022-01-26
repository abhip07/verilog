// Code your testbench here
// or browse Examples
// half adder test

`include "half_adder.v"

module half_adder_tb;

  reg in1;
  reg in2;
  wire sum_out;
  wire carry_out;

  half_adder half_adder_inst
    (
      .a(in1),
      .b(in2),
      .sum(sum_out),
      .carry(carry_out)
     );

  initial
    begin
      
      $dumpfile("gates_wave.vcd");
      $dumpvars(0, half_adder_inst);
      
      in1 = 1'b0;
      in2 = 1'b0;
      #10;
      in1 = 1'b0;
      in2 = 1'b1;
      #10;
      in1 = 1'b1;
      in2 = 1'b0;
      #10;
      in1 = 1'b1;
      in2 = 1'b1;
      #10;
    end

endmodule // half_adder_tb
