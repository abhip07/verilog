// testbench for 2x1 mux

`include "2x1_mux.v"

module mux_2x1_tb();
  
  reg [3:0]in1 = 4'b0011;
  reg [3:0]in2 = 4'b1011;
  
  reg select = 1'b0;
  
  wire [3:0]out;
  
  mux_2x1 mux_test(
  			
    .select(select),
    .in1(in1),
    .in2(in2),
    .out(out)  
  );
  
  
  initial
    
    begin
      
      $dumpfile("dump.vcd"); 
      $dumpvars(0, mux_test);
      
      select = 1'b1;
      in1 = 4'b0010;
      #5;
      
      select = 1'b0;
      in1 = 4'b1111;
      in2 = 4'b1110;
      #5;
      
      select = 1'b1;
      in1 = 4'b1100;
      in2 = 4'b0011;
      #5;
      
      select = 1'b0;
      #5;
      
    end
  
endmodule
      