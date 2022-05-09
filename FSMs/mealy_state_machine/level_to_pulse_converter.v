// Verilog Implementation of Mealy State Machine
/*
                # 1101 SEQUENCE DETECTOR #

->  Here, the hardware design is expected to detect when a fixed
    pattern 1101 is detected in a continuous stream of binary bits as input.

*/

module level_to_pulse #(
        parameter s0 = 0,
        parameter s1 = 1)

    (   input clk,
        input reset,
        input input_data,
        output reg out
    );

    reg current_state;
    reg next_state;

    // next state logic block [Depend on current_state & input_data]
    always @(current_state)
      begin
        case(current_state)
          s0 : next_state = (input_data) ? s1 : s0;
          s1 : next_state = (input_data) ? s1 : s0;
          default : next_state = s0;
        endcase
      end

    // current state logic block
    always @(posedge clk or negedge reset)
      if (~reset)
        current_state = s0;
      else
        current_state = next_state;

    // output logic block [Depend on current_state & input_data]
    always @(current_state, input_data)
      case (current_state)
        s0 : out = (input_data) ? 1 : 0;
        s1 : out = 0;
      endcase

endmodule
