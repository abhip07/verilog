// Code your testbench here
// or browse Examples
// Testbench for barrel shifter

`include "barrel_shifter.v"

module tb_barrel_shifter;

    reg [7:0]d_in;
    reg [2:0] n_bits;
    wire [7:0] d_out;

    // creating an instance of barrel shifter module
    barrel_shifter test_barrel_shifter(
        .d_in(d_in),
        .n_bits(n_bits),
        .d_out(d_out)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, test_barrel_shifter);
        $monitor("d_in = %b n_bits = %b d_out = %b", d_in, n_bits, d_out);
    end


    initial begin

      d_in = 8'd57;
      n_bits = 3'b101;
      #10;

      n_bits = 3'b010;
      #10;

      n_bits = 3'b011;
      #10;

      n_bits = 3'b110;
      #10;

      n_bits = 3'b111;
      #10;
		
      d_in = 8'd69;
      n_bits = 3'b100;
      #10;
      
      n_bits = 3'b001;
      #10;
    end

endmodule

