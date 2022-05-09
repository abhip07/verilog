// Implementation of an 8-bit barrel shifter

module barrel_shifter(
        input [7:0]d_in,     // Input Data
        input [2:0]n_bits,   // Number of bits to shift
        output [7:0]d_out    // Output Data
);

/*
-> Here, We will divide the barrel shifter in 3 stages.
-> We will shift different number of bits at different stages.

*/

wire [7:0] tmp1, tmp2;

// Shifting by 0 or 1 bits
assign tmp1 = n_bits[0] ? {d_in[0], d_in[7:1]} : d_in;

// Shifting by 0 or 2 bits
assign tmp2 = n_bits[1] ? {tmp1[1:0], tmp1[7:2]} : tmp1;

// Shifting by 0 or 4 bits

assign d_out = n_bits[2] ? {tmp2[3:0], tmp2[7:4]} : tmp2;

endmodule
