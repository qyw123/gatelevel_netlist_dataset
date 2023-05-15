module ripple_carry_adder8(
    input [7:0] a,
    input [7:0] b,
    input cin,
    output cout,
    output [7:0] sum
);
    wire [7:0] c;

    adder1 first(.a(a[0]), .b(b[0]), .cin(cin), 
                .cout(c[0]), .sum(sum[0]), .g(), .p());

    genvar i;
    generate
        for(i=1;i<8;i=i+1)begin
            adder1 my_adder(.a(a[i]), .b(b[i]), .cin(c[i-1]), 
                            .cout(c[i]), .sum(sum[i]), .g(), .p());
        end
    endgenerate

    assign cout=c[7];

endmodule