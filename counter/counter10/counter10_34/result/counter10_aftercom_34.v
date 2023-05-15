
module counter10 ( clk, reset, q );
  output [3:0] q;
  input clk, reset;
  wire   N7, N8, N9, N10, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36;

  GTECH_FD1 q_reg_0_ ( .D(N7), .CP(clk), .Q(q[0]) );
  GTECH_FD1 q_reg_3_ ( .D(N10), .CP(clk), .Q(q[3]) );
  GTECH_FD1 q_reg_1_ ( .D(N8), .CP(clk), .Q(q[1]) );
  GTECH_FD1 q_reg_2_ ( .D(N9), .CP(clk), .Q(q[2]) );
  GTECH_AND3 U19 ( .A(n22), .B(n23), .C(n24), .Z(N9) );
  GTECH_XOR2 U20 ( .A(q[2]), .B(n25), .Z(n24) );
  GTECH_NOR4 U21 ( .A(reset), .B(q[3]), .C(n25), .D(n26), .Z(N8) );
  GTECH_AND3 U22 ( .A(n27), .B(n23), .C(n28), .Z(N7) );
  GTECH_AO21 U23 ( .A(n29), .B(n30), .C(n22), .Z(n28) );
  GTECH_NOT U24 ( .A(q[3]), .Z(n22) );
  GTECH_AND2 U25 ( .A(n31), .B(n32), .Z(N10) );
  GTECH_MUX2 U26 ( .A(n33), .B(n34), .S(q[3]), .Z(n32) );
  GTECH_AND2 U27 ( .A(n35), .B(n30), .Z(n34) );
  GTECH_NOT U28 ( .A(q[2]), .Z(n30) );
  GTECH_AND2 U29 ( .A(n25), .B(q[2]), .Z(n33) );
  GTECH_OA21 U30 ( .A(n26), .B(n25), .C(n23), .Z(n31) );
  GTECH_NOT U31 ( .A(reset), .Z(n23) );
  GTECH_NOT U32 ( .A(n35), .Z(n25) );
  GTECH_NAND2 U33 ( .A(q[1]), .B(q[0]), .Z(n35) );
  GTECH_NOT U34 ( .A(n36), .Z(n26) );
  GTECH_NAND2 U35 ( .A(n29), .B(n27), .Z(n36) );
  GTECH_NOT U36 ( .A(q[0]), .Z(n27) );
  GTECH_NOT U37 ( .A(q[1]), .Z(n29) );
endmodule

