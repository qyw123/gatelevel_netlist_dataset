
module counter10 ( clk, reset, q );
  output [3:0] q;
  input clk, reset;
  wire   N7, N8, N9, N10, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35;

  GTECH_FD1 q_reg_0_ ( .D(N7), .CP(clk), .Q(q[0]) );
  GTECH_FD1 q_reg_3_ ( .D(N10), .CP(clk), .Q(q[3]) );
  GTECH_FD1 q_reg_1_ ( .D(N8), .CP(clk), .Q(q[1]) );
  GTECH_FD1 q_reg_2_ ( .D(N9), .CP(clk), .Q(q[2]) );
  GTECH_AND2 U20 ( .A(n23), .B(n24), .Z(N9) );
  GTECH_XNOR2 U21 ( .A(q[2]), .B(n25), .Z(n24) );
  GTECH_AND2 U22 ( .A(n23), .B(n26), .Z(N8) );
  GTECH_XNOR2 U23 ( .A(q[1]), .B(n27), .Z(n26) );
  GTECH_NOT U24 ( .A(n28), .Z(n23) );
  GTECH_AND3 U25 ( .A(n27), .B(n29), .C(n30), .Z(N7) );
  GTECH_OAI21 U26 ( .A(q[2]), .B(q[1]), .C(q[3]), .Z(n30) );
  GTECH_NOT U27 ( .A(q[0]), .Z(n27) );
  GTECH_AND2 U28 ( .A(n31), .B(n32), .Z(N10) );
  GTECH_OAI21 U29 ( .A(q[1]), .B(q[0]), .C(n25), .Z(n32) );
  GTECH_OA21 U30 ( .A(q[2]), .B(n33), .C(n34), .Z(n31) );
  GTECH_OAI21 U31 ( .A(n25), .B(n28), .C(q[2]), .Z(n34) );
  GTECH_NAND2 U32 ( .A(n35), .B(n29), .Z(n28) );
  GTECH_NOT U33 ( .A(q[3]), .Z(n35) );
  GTECH_AND3 U34 ( .A(n29), .B(q[3]), .C(n25), .Z(n33) );
  GTECH_NAND2 U35 ( .A(q[1]), .B(q[0]), .Z(n25) );
  GTECH_NOT U36 ( .A(reset), .Z(n29) );
endmodule

