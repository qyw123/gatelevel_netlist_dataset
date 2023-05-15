module carry_ahead_adder16 (
    input [15:0] a,
    input [15:0] b,
    input cin,
    output cout,
    output [15:0] sum,
    output Gm,
    output Pm
);
    wire [3:0] c_tmp, g_tmp, p_tmp;

    carry_ahead_adder4 my_adder4(.a(a[3-:4]), .b(b[3-:4]), .cin(cin), 
            .cout(), .sum(sum[3-:4]), .Gm(g_tmp[0]), .Pm(p_tmp[0]));

    genvar i;
    generate
        for(i=1; i<4; i=i+1)begin
            carry_ahead_adder4 my_adder4(.a(a[(i*4+3)-:4]), .b(b[(i*4+3)-:4]), .cin(c_tmp[i]), 
            .cout(), .sum(sum[(i*4+3)-:4]), .Gm(g_tmp[i]), .Pm(p_tmp[i]));
        end
    endgenerate

    carry_ahead_adder4_cla CLA_2(.G(g_tmp), .P(p_tmp), .C_in(cin), .Ci(c_tmp), .Gm(Gm), .Pm(Pm));

    assign cout=c_tmp[3];

    endmodule