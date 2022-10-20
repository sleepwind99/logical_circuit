module controller (
  input clk,
  input wait_, IR15, AC15, IR14,
  output [21:0] bus_controller
);
  wire [39:0] micro_instructions;
  wire [1:0] muxout;

  reg [3:0] state;
  reg [3:0] next_state;
  
  initial begin
    state=0;
  end  
  
  controllerROM rom(state, micro_instructions);

  always @ (posedge clk) state = next_state;
  // TODO: write codes to implement controller in lecture note, page 59
  assign bus_controller = micro_instructions[21:0];
  
  mux2_1 mymux1(wait_,IR15,micro_instructions[39],muxout[1]);
  mux2_1 mymux2(AC15,IR14,micro_instructions[38],muxout[0]);
  
  always @ (micro_instructions[37:22] or muxout)
    case(muxout)
      2'b00: next_state = micro_instructions[37:34];
      2'b01: next_state = micro_instructions[33:30];
      2'b10: next_state = micro_instructions[29:26];
      2'b11: next_state = micro_instructions[25:22];
    endcase
endmodule