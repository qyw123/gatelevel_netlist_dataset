
module counter10 ( clk, reset, q );
  output [3:0] q;
  input clk, reset;
  wire   N7, N8, N9, N10, n19, n20, n21, n22, n23, n24, n25, n26;

  GTECH_FD1 q_reg_0_ ( .D(N7), .CP(clk), .Q(q[0]) );
  GTECH_FD1 q_reg_3_ ( .D(N10), .CP(clk), .Q(q[3]) );
  GTECH_FD1 q_reg_1_ ( .D(N8), .CP(clk), .Q(q[1]) );
  GTECH_FD1 q_reg_2_ ( .D(N9), .CP(clk), .Q(q[2]) );
  GTECH_NOR3 U16 ( .A(n19), .B(reset), .C(q[3]), .Z(N9) );
  GTECH_XOR2 U17 ( .A(n20), .B(q[2]), .Z(n19) );
  GTECH_NOR3 U18 ( .A(n21), .B(reset), .C(q[3]), .Z(N8) );
  GTECH_NOR3 U19 ( .A(n22), .B(reset), .C(q[0]), .Z(N7) );
  GTECH_OA21 U20 ( .A(q[2]), .B(q[1]), .C(q[3]), .Z(n22) );
  GTECH_AND2 U21 ( .A(n23), .B(n21), .Z(N10) );
  GTECH_OAI21 U22 ( .A(q[1]), .B(q[0]), .C(n20), .Z(n21) );
  GTECH_NOR2 U23 ( .A(n24), .B(reset), .Z(n23) );
  GTECH_MUX2 U24 ( .A(n25), .B(n26), .S(q[3]), .Z(n24) );
  GTECH_OR_NOT U25 ( .A(q[2]), .B(n20), .Z(n26) );
  GTECH_OR_NOT U26 ( .A(n20), .B(q[2]), .Z(n25) );
  GTECH_NAND2 U27 ( .A(q[1]), .B(q[0]), .Z(n20) );
endmodule

