module bcd_adder8( 
    input [7:0] a, b,
    input cin,
    output cout,
    output [7:0] sum 
);
    
    wire[1:0]	cout_1;
    
    generate
        genvar i;
        for(i = 0; i <= 1; i = i + 1)begin:adder
            if(i == 0)begin
                bcd_fadd u_bcd_fadd(
                    .a		(a[3:0]		),
                    .b		(b[3:0]		),
                    .cin	(cin		),
                    .sum	(sum[3:0]	),
                    .cout	(cout_1[0]	)
                );
            end
            else begin
                bcd_fadd ui_bcd_fadd(
                    .a		(a[4 * i + 3: 4 * i]	),
                    .b		(b[4 * i + 3: 4 * i]	),
                    .cin	(cout_1[i - 1]          ),
                    .sum	(sum[4 * i + 3: 4 * i]  ),
                    .cout	(cout_1[i]              )
                );
            end
        end
        assign cout = cout_1[1];
    endgenerate
                    
endmodule