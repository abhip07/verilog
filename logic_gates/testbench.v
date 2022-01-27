 // Testcases for logic gates

`timescale 1ns / 1ns

`include "gates.v"

module Test;

  // inputs
  reg x;
  reg y;

  // outputs
  wire w1;
  wire w2;
  wire w3;
  wire w4;
  wire w5;
  wire w6;
  wire w7;

  gates Gates(
    .a(x),
    .b(y),
    .c1(w1),
    .c2(w2),
    .c3(w3),
    .c4(w4),
    .c5(w5),
    .c6(w6),
    .c7(w7)
    );

  initial
    begin

      // creating a simulation file
      $dumpfile("gates_wave.vcd");
      $dumpvars(1, w1, w2, w3, w4, w5, w6, w7, x, y);

      x = 0;
      y = 1;

      #10

      x = 1;
      y = 0;
      
      #10

      x = 1;
      y = 1;

	  #10
      x = 0;
      y = 0;

      #10

      x = 1;
      y = 0;
      
      #10

      x = 1;
      y = 1;

	  #10
      $display("Test complete");

    end
endmodule


