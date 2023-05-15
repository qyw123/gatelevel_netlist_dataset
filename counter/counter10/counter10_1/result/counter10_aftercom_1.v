
module counter10 ( clk, reset, q );
  output [3:0] q;
  input clk, reset;
  wire   N7, N8, N9, N10, n20, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37;

  GTECH_FD2 q_reg_0_ ( .D(N7), .CP(clk), .CD(n20), .Q(q[0]) );
  GTECH_FD2 q_reg_3_ ( .D(N10), .CP(clk), .CD(n20), .Q(q[3]) );
  GTECH_FD2 q_reg_2_ ( .D(N9), .CP(clk), .CD(n20), .Q(q[2]) );
  GTECH_FD2 q_reg_1_ ( .D(N8), .CP(clk), .CD(n20), .Q(q[1]) );
  GTECH_ONE U22 ( .Z(n20) );
  GTECH_NOR3 U23 ( .A(reset), .B(q[3]), .C(n25), .Z(N9) );
  GTECH_XOR2 U24 ( .A(n26), .B(q[2]), .Z(n25) );
  GTECH_NOR4 U25 ( .A(reset), .B(q[3]), .C(n27), .D(n28), .Z(N8) );
  GTECH_AND3 U26 ( .A(n29), .B(n30), .C(n31), .Z(N7) );
  GTECH_OAI21 U27 ( .A(q[2]), .B(q[1]), .C(q[3]), .Z(n31) );
  GTECH_AND2 U28 ( .A(n32), .B(n33), .Z(N10) );
  GTECH_MUX2 U29 ( .A(n34), .B(n35), .S(q[3]), .Z(n33) );
  GTECH_AND_NOT U30 ( .A(n26), .B(q[2]), .Z(n35) );
  GTECH_AND2 U31 ( .A(n27), .B(q[2]), .Z(n34) );
  GTECH_OA21 U32 ( .A(n27), .B(n28), .C(n30), .Z(n32) );
  GTECH_NOT U33 ( .A(reset), .Z(n30) );
  GTECH_NOT U34 ( .A(n36), .Z(n28) );
  GTECH_NAND2 U35 ( .A(n37), .B(n29), .Z(n36) );
  GTECH_NOT U36 ( .A(q[0]), .Z(n29) );
  GTECH_NOT U37 ( .A(q[1]), .Z(n37) );
  GTECH_NOT U38 ( .A(n26), .Z(n27) );
  GTECH_NAND2 U39 ( .A(q[1]), .B(q[0]), .Z(n26) );
endmodule

