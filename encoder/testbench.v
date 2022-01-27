// Code your testbench here
// or browse Examples
// Test for 16x4 Encoder in Verilog
`include "encoder.v"
 
module encoder_tb();
 
  reg [15:0] in;
  reg en;
  
  wire [3:0] out;
  
  encoder encoder_inst
    (
      .out(out),
      .input_16(in),
      .enable(en)    
     );
 
  
  initial
    begin
      
      $dumpfile("gates_wave.vcd");
      $dumpvars(0, encoder_inst);
      
      in = 16'h0000;
      en = 1;
      #10;
      
      in = 16'h0008;
      en = 1;
      #10;
      
      in = 16'h0005;
      en = 1;
      #10;
      
      in = 16'h0210;
      en = 1;
      #10;
      
      in = 16'h2020;
      en = 1;
      #10;
      
      in = 16'h0040;
      en = 1;
      #10;
      
      in = 16'h0680;
      en = 1;
      #10;
    end 
 
endmodule // half_adder_tb
