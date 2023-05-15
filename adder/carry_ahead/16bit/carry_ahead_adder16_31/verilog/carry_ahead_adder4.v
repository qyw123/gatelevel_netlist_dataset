module carry_ahead_adder4 (
    input [3:0] a,
    input [3:0] b,
    input cin,
    output cout,
    output [3:0] sum,
    output Gm,
    output Pm
);
    wire [3:0] c_tmp, g_tmp, p_tmp;

    adder1 first(.a(a[0]), .b(b[0]), .cin(cin), 
    .cout(), .sum(sum[0]), .g(g_tmp[0]), .p(p_tmp[0]));

    genvar i;
    generate
        for(i=1; i<4; i=1+i)begin
            adder1 my_adder(.a(a[i]), .b(b[i]), .cin(c_tmp[i-1]), 
            .cout(), .sum(sum[i]), .g(g_tmp[i]), .p(p_tmp[i]));
        end
    endgenerate

    carry_ahead_adder4_cla CLA_1(.G(g_tmp), .P(p_tmp), .C_in(cin), .Ci(c_tmp), .Gm(Gm), .Pm(Pm));

    assign cout=c_tmp[3];

endmodule