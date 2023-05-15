module ripple_carry_adder4(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output cout,
    output [3:0] sum
);
    wire [3:0] c;

    adder1 first(.a(a[0]), .b(b[0]), .cin(cin), 
                .cout(c[0]), .sum(sum[0]), .g(), .p());

    genvar i;
    generate
        for(i=1;i<4;i=i+1)begin
            adder1 my_adder(.a(a[i]), .b(b[i]), .cin(c[i-1]), 
                            .cout(c[i]), .sum(sum[i]), .g(), .p());
        end
    endgenerate

    assign cout=c[3];

endmodule