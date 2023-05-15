
module counter10 ( clk, reset, q );
  output [3:0] q;
  input clk, reset;
  wire   N7, N8, N9, N10, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32;

  GTECH_FD1 q_reg_0_ ( .D(N7), .CP(clk), .Q(q[0]) );
  GTECH_FD1 q_reg_3_ ( .D(N10), .CP(clk), .Q(q[3]) );
  GTECH_FD1 q_reg_1_ ( .D(N8), .CP(clk), .Q(q[1]) );
  GTECH_FD1 q_reg_2_ ( .D(N9), .CP(clk), .Q(q[2]) );
  GTECH_AND3 U17 ( .A(n20), .B(n21), .C(n22), .Z(N9) );
  GTECH_XOR2 U18 ( .A(q[2]), .B(n23), .Z(n22) );
  GTECH_AND4 U19 ( .A(n24), .B(n25), .C(n20), .D(n21), .Z(N8) );
  GTECH_NOT U20 ( .A(q[3]), .Z(n20) );
  GTECH_AND3 U21 ( .A(n26), .B(n21), .C(n27), .Z(N7) );
  GTECH_OAI21 U22 ( .A(q[2]), .B(q[1]), .C(q[3]), .Z(n27) );
  GTECH_NOT U23 ( .A(reset), .Z(n21) );
  GTECH_NOR2 U24 ( .A(n28), .B(n29), .Z(N10) );
  GTECH_AO21 U25 ( .A(n24), .B(n25), .C(reset), .Z(n29) );
  GTECH_NAND2 U26 ( .A(n30), .B(n26), .Z(n24) );
  GTECH_NOT U27 ( .A(q[0]), .Z(n26) );
  GTECH_NOT U28 ( .A(q[1]), .Z(n30) );
  GTECH_MUX2 U29 ( .A(n31), .B(n32), .S(q[3]), .Z(n28) );
  GTECH_OR_NOT U30 ( .A(q[2]), .B(n25), .Z(n32) );
  GTECH_NAND2 U31 ( .A(n23), .B(q[2]), .Z(n31) );
  GTECH_NOT U32 ( .A(n25), .Z(n23) );
  GTECH_NAND2 U33 ( .A(q[1]), .B(q[0]), .Z(n25) );
endmodule

