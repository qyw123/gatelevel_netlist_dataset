module adder1 (
    input  a,
    input  b,
    input cin,
    output cout,
    output  sum,
    output g,
    output p
);

    assign {cout,sum}=a+b+cin;
    assign g=a&b;
    assign p=a^b;
    
endmodule

