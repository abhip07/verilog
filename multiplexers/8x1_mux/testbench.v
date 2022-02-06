// testbench for 2x1 mux

// timescale
// `timescale 1ns/1ps

`include "8x1_mux.v"

module mux_8x1_tb();
  
  reg in0 = 1'b1;
  reg in1 = 1'b0;
  reg in2 = 1'b0;
  reg in3 = 1'b1;
  reg in4 = 1'b1;
  reg in5 = 1'b0;
  reg in6 = 1'b1;
  reg in7 = 1'b1;
  
  reg [2:0] select;
  
  wire out;
  
  mux_8x1 mux_test(
  			
    .select(select),
    .in0(in0),
    .in1(in1),
    .in2(in2),
    .in3(in3), 
    .in4(in4),
    .in5(in5), 
    .in6(in6), 
    .in7(in7),
    .out(out)  
  );
  
  
  initial
    
    begin
      
      $dumpfile("dump.vcd"); 
      $dumpvars(0, mux_test);
      
      $monitor("At time = %t, Output = %d", $time, out);
      
      in0 = 1'b0;
      in5 = 1'b1;
      in6 = 1'b0;
      in7 = 1'b0;
      select = 3'b101;
      #3;
      
      in0 = 1'b0;
  	  in1 = 1'b1;
  	  in2 = 1'b1;
  	  in3 = 1'b1;
      select = 3'b100;
      #3;
      
      in0 = 1'b0;
  	  in1 = 1'b1;
  	  in2 = 1'b1;
      in7 = 1'b1;
      select = 3'b111;
      #3;
      
      in0 = 1'b0;
  	  in1 = 1'b0;
  	  in2 = 1'b1;
  	  in3 = 1'b1;
      select = 3'b110;
      #3;
      
  	  in3 = 1'b0;
      in4 = 1'b0;
      in5 = 1'b1;
      in6 = 1'b1;
      in7 = 1'b0;
      select = 3'b001;
      #3;
      
      in7 = 1'b1;
  	  in2 = 1'b0;
  	  in4 = 1'b0;
  	  in1 = 1'b1;
      in3 = 1'b1;
      select = 3'b010;
      #3;
      
    end
  
//  always #1 in0=~in0;
//  always #2 in1=~in1;
// 	always #3 in2=~in2;
// 	always #4 in3=~in3;
// 	always #5 in4=~in4;
// 	always #6 in5=~in5;
// 	always #7 in6=~in6;
// 	always #8 in7=~in7;
  
endmodule
      
