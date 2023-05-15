module carry_select_adder4 (
    input [3:0] a,
    input [3:0] b,
    input cin,
    output cout,
    output [3:0] sum
);
    wire [3:0] sum_tmp0, sum_tmp1;
    wire cout_tmp0, cout_tmp1;

    ripple_carry_adder4 adder0(.a(a), .b(b), .cin(1'b0), .cout(cout_tmp0), .sum(sum_tmp0));
    ripple_carry_adder4 adder1(.a(a), .b(b), .cin(1'b1), .cout(cout_tmp1), .sum(sum_tmp1));

    assign sum=cin?sum_tmp1:sum_tmp0;
    assign cout=cin?cout_tmp1:sum_tmp0;
    
endmodule