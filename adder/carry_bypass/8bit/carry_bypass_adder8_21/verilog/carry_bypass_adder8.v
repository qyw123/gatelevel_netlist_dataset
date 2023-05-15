module carry_bypass_adder8 (
    input [7:0] a,
    input [7:0] b,
    input cin,
    output cout,
    output [7:0] sum
);
   wire [1:0] c_tmp;
   
    carry_bypass_adder4 first(.a(a[3-:4]), .b(b[3-:4]), 
            .cin(cin), .cout(c_tmp[0]), .sum(sum[3-:4]));

    carry_bypass_adder4 second(.a(a[7-:4]), .b(b[7-:4]), 
            .cin(c_tmp[0]), .cout(c_tmp[1]), .sum(sum[7-:4]));


    assign cout=c_tmp[1];
    
endmodule