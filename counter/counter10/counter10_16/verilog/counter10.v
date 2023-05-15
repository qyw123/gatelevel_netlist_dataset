module counter10 (//一个从0到9(包括9)的十进制计数器，其周期为10。同步复位，复位应该将计数器重置为0。
    input clk,
    input reset,        // Synchronous active-high reset
    output reg [3:0] q);

    always @(posedge clk)begin
        if(reset || q >= 4'd9)begin
            q<=4'b0;
        end
        else begin
            q<=q+1'b1;
        end
    end
    
endmodule