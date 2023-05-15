module ripple_carry_adder16(
    input [15:0] a,
    input [15:0] b,
    input cin,
    output cout,
    output [15:0] sum
);
    wire [15:0] c;

    adder1 first(.a(a[0]), .b(b[0]), .cin(cin), 
                .cout(c[0]), .sum(sum[0]), .g(), .p());

    genvar i;
    generate
        for(i=1;i<16;i=i+1)begin
            adder1 my_adder(.a(a[i]), .b(b[i]), .cin(c[i-1]), 
                            .cout(c[i]), .sum(sum[i]), .g(), .p());
        end
    endgenerate

    assign cout=c[15];

endmodule