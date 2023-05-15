module bcd_fadd (
	input [3:0]	a, 
	input [3:0]	b,
    input cin,
	output reg	[3:0] sum,
	output reg	cout 				
);

reg	[4:0] sum_r	;
 
always @ (a or b) begin
		sum_r = a + b+cin;        
end
 
always @ (sum_r) begin
		if (sum_r >4'd9) begin
			sum  = sum_r - 4'd10;
			cout = 1'b1;
		end
		else begin
			sum = sum_r;
			cout = 1'b0;
		end        
end
endmodule
