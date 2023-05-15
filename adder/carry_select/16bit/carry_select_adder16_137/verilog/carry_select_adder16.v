module carry_select_adder16 (
    input [15:0] a,
    input [15:0] b,
    input cin,
    output cout,
    output [15:0] sum
);
    wire [15:0] c_tmp;

    carry_select_adder4 first(.a(a[3-:4]), .b(b[3-:4]), 
            .cin(cin), .cout(c_tmp[0]), .sum(sum[3-:4]));

    genvar i;
    generate
        for(i=1;i<4;i=1+i)begin
            carry_select_adder4 my_adder(.a(a[(4*i+3)-:4]), .b(b[(4*i+3)-:4]), 
            .cin(c_tmp[i-1]), .cout(c_tmp[i]), .sum(sum[(4*i+3)-:4]));
        end
    endgenerate
    
    assign cout=c_tmp[3];

endmodule