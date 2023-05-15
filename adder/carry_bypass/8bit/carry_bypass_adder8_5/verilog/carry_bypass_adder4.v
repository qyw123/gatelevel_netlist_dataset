module carry_bypass_adder4 (
    input [3:0] a,
    input [3:0] b,
    input cin,
    output cout,
    output [3:0] sum
);
    wire [3:0] sel_tmp;
    wire cout_tmp0, cout_tmp1;

    ripple_carry_adder4 adder(.a(a), .b(b), .cin(cin), .cout(cout_tmp0), .sum(sum));

    assign cout_tmp1=cin;
    assign sel_tmp=a^b;
    assign cout=(&sel_tmp)?cout_tmp1:cout_tmp0;
    
endmodule