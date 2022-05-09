// Moore state Machine for toggle flip-flop
module toggle_flip_flop_fsm
     #( parameter s0=0,
        parameter s1=1 )

      ( input clk,
        input reset,
        output reg out
      );

    reg next_state;
    reg current_state;

    // Next state logic [only depend on the current state]
    always @(current_state)
      begin
          case(current_state)
              s0 : next_state = s1;
              s1 : next_state = s0;
              default : next_state = s0;
          endcase
      end

    // During reset condition s0 is assigned to 'current_state'.
    // During normal operation the 'next_state' is assigned to 'current_state'.

    always @(posedge clk or negedge reset)
      begin
          if (reset==0)
              current_state <= s0;
          else
              current_state <= next_state;
      end

    // Output Combinational Logic
    always @(current_state)
      begin
          case (current_state)
            s0 : out = 1'b0;
            s1 : out = 1'b1;
            default : out = 1'b0;
            endcase
      end
endmodule

