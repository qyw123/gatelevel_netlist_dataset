module shift_reg3 (
  input clk,
  input reset,
  input enable,
  input [15:0] data_in,
  input [1:0] shift_direction,
  output reg [15:0] data_out
);

reg [15:0] shift_reg;

always @(posedge clk or posedge reset) begin
  if (reset) begin
    shift_reg <= 16'h0000;
  end else if (enable) begin
    case (shift_direction)
      2'b00: shift_reg <= {shift_reg[14:0], 1'b0};
      2'b01: shift_reg <= {data_in, shift_reg[14:0]};
      2'b10: shift_reg <= {1'b0, shift_reg[15:1]};
      2'b11: shift_reg <= {shift_reg[15:1], data_in};
    endcase
  end
end

assign data_out = shift_reg;

endmodule