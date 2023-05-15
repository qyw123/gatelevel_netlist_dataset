module shift_reg2 (
  input clk,
  input reset,
  input enable,
  input [7:0] data_in,
  input [2:0] shift_direction,
  output reg [7:0] data_out
);

reg [7:0] shift_reg;
wire [7:0] shift_in;

assign shift_in = (shift_direction == 3'b000) ? {1'b0, shift_reg[7:1]} :
                 (shift_direction == 3'b001) ? {data_in, shift_reg[7:1]} :
                 (shift_direction == 3'b010) ? {shift_reg[6:0], 1'b0} :
                 (shift_direction == 3'b011) ? {shift_reg[6:0], data_in} :
                 (shift_direction == 3'b100) ? {shift_reg[5:0], 2'b00, shift_reg[7:6]} :
                 (shift_direction == 3'b101) ? {shift_reg[5:0], data_in[7:6], shift_reg[7:2]} :
                 (shift_direction == 3'b110) ? {shift_reg[4:0], 3'b000, shift_reg[7:5]} :
                                              {shift_reg[2:0], data_in[7:3]};

always @(posedge clk or posedge reset) begin
  if (reset) begin
    shift_reg <= 8'b0;
  end else if (enable) begin
    shift_reg <= shift_in;
  end
end

assign data_out = shift_reg;

endmodule