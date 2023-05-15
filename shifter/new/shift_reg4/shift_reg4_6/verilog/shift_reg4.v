module shift_reg4 (
  input clk,
  input reset,
  input enable,
  input [7:0] data_in,
  input [1:0] shift_direction,
  output reg [7:0] data_out
);

reg [7:0] shift_reg;

always @(posedge clk or posedge reset) begin
  if (reset) begin
    shift_reg <= 8'h00;
  end else if (enable) begin
    if (shift_direction == 2'b00) begin
      shift_reg <= {shift_reg[6:0], 1'b0};
    end else if (shift_direction == 2'b01) begin
      shift_reg <= {data_in, shift_reg[6:0]};
    end else if (shift_direction == 2'b10) begin
      shift_reg <= {1'b0, shift_reg[7:1]};
    end else begin
      shift_reg <= {shift_reg[7:1], data_in};
    end
  end
end

assign data_out = shift_reg;

endmodule