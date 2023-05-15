module array_multiplier16 ( 
    input               clk,
    input               I_reset_n,
    input               I_valid,
    input      [7:0]    I_a,
    input      [7:0]    I_b,
    output reg          O_valid,
    output reg [15:0]   O_c
);
                
//--- Main body of code ---  
always @(posedge clk or negedge I_reset_n)
begin
    if(~I_reset_n) 
    begin
        O_valid <= 1'b0;
        O_c     <= 16'b0;
    end 
    else
    begin
        O_valid <= I_valid;
        O_c     <= (({8{I_b[0]}} & I_a)     ) + 
                   (({8{I_b[1]}} & I_a) << 1) + 
                   (({8{I_b[2]}} & I_a) << 2) + 
                   (({8{I_b[3]}} & I_a) << 3) + 
                   (({8{I_b[4]}} & I_a) << 4) + 
                   (({8{I_b[5]}} & I_a) << 5) + 
                   (({8{I_b[6]}} & I_a) << 6) + 
                   (({8{I_b[7]}} & I_a) << 7)  
                   ;
    end
end

endmodule 