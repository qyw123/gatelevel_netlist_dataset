
module counter10 ( clk, reset, q );
  output [3:0] q;
  input clk, reset;
  wire   N7, N8, N9, N10, n19, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36;

  GTECH_FD2 q_reg_0_ ( .D(N7), .CP(clk), .CD(n19), .Q(q[0]) );
  GTECH_FD2 q_reg_3_ ( .D(N10), .CP(clk), .CD(n19), .Q(q[3]) );
  GTECH_FD2 q_reg_2_ ( .D(N9), .CP(clk), .CD(n19), .Q(q[2]) );
  GTECH_FD2 q_reg_1_ ( .D(N8), .CP(clk), .CD(n19), .Q(q[1]) );
  GTECH_ONE U21 ( .Z(n19) );
  GTECH_AND3 U22 ( .A(n24), .B(n25), .C(n26), .Z(N9) );
  GTECH_XOR2 U23 ( .A(q[2]), .B(n27), .Z(n26) );
  GTECH_AND4 U24 ( .A(n28), .B(n29), .C(n24), .D(n25), .Z(N8) );
  GTECH_NOT U25 ( .A(q[3]), .Z(n24) );
  GTECH_AND3 U26 ( .A(n30), .B(n25), .C(n31), .Z(N7) );
  GTECH_OAI21 U27 ( .A(q[2]), .B(q[1]), .C(q[3]), .Z(n31) );
  GTECH_NOT U28 ( .A(reset), .Z(n25) );
  GTECH_NOR2 U29 ( .A(n32), .B(n33), .Z(N10) );
  GTECH_AO21 U30 ( .A(n28), .B(n29), .C(reset), .Z(n33) );
  GTECH_NAND2 U31 ( .A(n34), .B(n30), .Z(n28) );
  GTECH_NOT U32 ( .A(q[0]), .Z(n30) );
  GTECH_NOT U33 ( .A(q[1]), .Z(n34) );
  GTECH_MUX2 U34 ( .A(n35), .B(n36), .S(q[3]), .Z(n32) );
  GTECH_OR_NOT U35 ( .A(q[2]), .B(n29), .Z(n36) );
  GTECH_NAND2 U36 ( .A(n27), .B(q[2]), .Z(n35) );
  GTECH_NOT U37 ( .A(n29), .Z(n27) );
  GTECH_NAND2 U38 ( .A(q[1]), .B(q[0]), .Z(n29) );
endmodule

