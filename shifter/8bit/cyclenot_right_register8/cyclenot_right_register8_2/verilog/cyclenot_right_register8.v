module cyclenot_right_register8
    #(parameter MSB = 8)(
    input [MSB - 1 : 0] din,
    input i_rst,
    input i_load,
    input i_clk,
    output  [MSB - 1 : 0] dout
);

    reg [MSB - 1 : 0] dout_mid;

    always@(posedge i_clk) begin
        if(i_rst) begin
            dout_mid <= 'd0;
        end
        else if(i_load) begin
            dout_mid <= din;
        end
        else begin
            dout_mid <= {dout_mid[0], dout_mid[MSB - 1 : 1]};
        end
        end
    assign dout = dout_mid;


endmodule