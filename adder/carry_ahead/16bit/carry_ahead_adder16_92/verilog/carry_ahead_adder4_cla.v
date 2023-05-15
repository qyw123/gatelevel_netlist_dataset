//4位CLA部件
module carry_ahead_adder4_cla(
		input [3:0] P,
		input [3:0] G,
		input C_in,
		output [3:0] Ci,
		output Gm,
		output Pm
	);
assign Ci[0]=G[0]|P[0]&C_in;
assign Ci[1]=G[1]|P[1]&G[0]|P[1]&P[0]&C_in;
assign Ci[2]=G[2]|P[2]&G[1]|P[2]&P[1]&G[0]|P[2]&P[1]&P[0]&C_in;
assign Ci[3]=G[3]|P[3]&G[2]|P[3]&P[2]&G[1]|P[3]&P[2]&P[1]&G[0]|P[3]&P[2]&P[1]&P[0]&C_in;

assign Gm=G[3]|P[3]&G[2]|P[3]&P[2]&G[1]|P[3]&P[2]&P[1]&G[0];
assign Pm=P[3]&P[2]&P[1]&P[0];
endmodule
