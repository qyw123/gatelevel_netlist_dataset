module div(
    clk,
    rst_n,
    clk_div
);
    input clk,rst_n;
    output clk_div;

    reg [15:0] counter;

always @(posedge clk or negedge rst_n)
    if(!rst_n)
        counter <= 0;
    else if(counter==56817)
        counter <= 0;
    else
        counter <= counter+1;

assign clk_div = counter[15];
endmodule