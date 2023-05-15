
module counter10 ( clk, reset, q );
  output [3:0] q;
  input clk, reset;
  wire   N7, N8, N9, N10, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32;

  GTECH_FD1 q_reg_0_ ( .D(N7), .CP(clk), .Q(q[0]) );
  GTECH_FD1 q_reg_3_ ( .D(N10), .CP(clk), .Q(q[3]) );
  GTECH_FD1 q_reg_2_ ( .D(N9), .CP(clk), .Q(q[2]) );
  GTECH_FD1 q_reg_1_ ( .D(N8), .CP(clk), .Q(q[1]) );
  GTECH_NOR3 U17 ( .A(reset), .B(q[3]), .C(n20), .Z(N9) );
  GTECH_XOR2 U18 ( .A(n21), .B(q[2]), .Z(n20) );
  GTECH_NOR4 U19 ( .A(reset), .B(q[3]), .C(n22), .D(n23), .Z(N8) );
  GTECH_AND3 U20 ( .A(n24), .B(n25), .C(n26), .Z(N7) );
  GTECH_OAI21 U21 ( .A(q[2]), .B(q[1]), .C(q[3]), .Z(n26) );
  GTECH_NOR2 U22 ( .A(n27), .B(n28), .Z(N10) );
  GTECH_OAI21 U23 ( .A(n22), .B(n23), .C(n25), .Z(n28) );
  GTECH_NOT U24 ( .A(reset), .Z(n25) );
  GTECH_NOT U25 ( .A(n29), .Z(n23) );
  GTECH_NAND2 U26 ( .A(n30), .B(n24), .Z(n29) );
  GTECH_NOT U27 ( .A(q[0]), .Z(n24) );
  GTECH_NOT U28 ( .A(q[1]), .Z(n30) );
  GTECH_MUX2 U29 ( .A(n31), .B(n32), .S(q[3]), .Z(n27) );
  GTECH_OR_NOT U30 ( .A(q[2]), .B(n21), .Z(n32) );
  GTECH_NAND2 U31 ( .A(n22), .B(q[2]), .Z(n31) );
  GTECH_NOT U32 ( .A(n21), .Z(n22) );
  GTECH_NAND2 U33 ( .A(q[1]), .B(q[0]), .Z(n21) );
endmodule

