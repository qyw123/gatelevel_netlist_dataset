module shift_reg1 (
  input clk,
  input reset,
  input enable,
  input [7:0] data_in,
  input [2:0] shift_direction,
  output reg [7:0] data_out
);

reg [7:0] shift_reg;

always @(posedge clk or posedge reset) begin
  if (reset) begin
    shift_reg <= 8'b0;
  end else if (enable) begin
    case (shift_direction)
      3'b000: shift_reg <= {shift_reg[6:0], data_in};
      3'b001: shift_reg <= {shift_reg[7], shift_reg[6:0], data_in};
      3'b010: shift_reg <= {shift_reg[5:0], data_in, shift_reg[7:6]};
      3'b011: shift_reg <= {shift_reg[4:0], data_in, shift_reg[7:5]};
      3'b100: shift_reg <= {shift_reg[3:0], data_in, shift_reg[7:4]};
      3'b101: shift_reg <= {shift_reg[2:0], data_in, shift_reg[7:3]};
      3'b110: shift_reg <= {shift_reg[1:0], data_in, shift_reg[7:2]};
      3'b111: shift_reg <= {data_in, shift_reg[7:3]};
    endcase
  end
end

assign data_out = shift_reg;

endmodule