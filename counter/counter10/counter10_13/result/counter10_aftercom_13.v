
module counter10 ( clk, reset, q );
  output [3:0] q;
  input clk, reset;
  wire   N7, N8, N9, N10, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37;

  GTECH_FD1 q_reg_0_ ( .D(N7), .CP(clk), .Q(q[0]) );
  GTECH_FD1 q_reg_3_ ( .D(N10), .CP(clk), .Q(q[3]) );
  GTECH_FD1 q_reg_1_ ( .D(N8), .CP(clk), .Q(q[1]) );
  GTECH_FD1 q_reg_2_ ( .D(N9), .CP(clk), .Q(q[2]) );
  GTECH_AND2 U21 ( .A(n24), .B(n25), .Z(N9) );
  GTECH_XNOR2 U22 ( .A(q[2]), .B(n26), .Z(n25) );
  GTECH_AND2 U23 ( .A(n24), .B(n27), .Z(N8) );
  GTECH_XNOR2 U24 ( .A(q[1]), .B(n28), .Z(n27) );
  GTECH_NOR3 U25 ( .A(q[0]), .B(n29), .C(reset), .Z(N7) );
  GTECH_OA21 U26 ( .A(q[2]), .B(q[1]), .C(q[3]), .Z(n29) );
  GTECH_OA21 U27 ( .A(n30), .B(n31), .C(n32), .Z(N10) );
  GTECH_MUX2 U28 ( .A(n33), .B(n34), .S(q[2]), .Z(n32) );
  GTECH_AND2 U29 ( .A(n24), .B(n31), .Z(n34) );
  GTECH_NOT U30 ( .A(n35), .Z(n24) );
  GTECH_NAND2 U31 ( .A(n36), .B(n37), .Z(n35) );
  GTECH_NOT U32 ( .A(q[3]), .Z(n36) );
  GTECH_AND3 U33 ( .A(n37), .B(q[3]), .C(n26), .Z(n33) );
  GTECH_NOT U34 ( .A(reset), .Z(n37) );
  GTECH_NOT U35 ( .A(n26), .Z(n31) );
  GTECH_NAND2 U36 ( .A(q[1]), .B(q[0]), .Z(n26) );
  GTECH_AND_NOT U37 ( .A(n28), .B(q[1]), .Z(n30) );
  GTECH_NOT U38 ( .A(q[0]), .Z(n28) );
endmodule

