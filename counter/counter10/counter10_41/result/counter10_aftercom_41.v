
module counter10 ( clk, reset, q );
  output [3:0] q;
  input clk, reset;
  wire   N7, N8, N9, N10, n18, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36;

  GTECH_FD2 q_reg_0_ ( .D(N7), .CP(clk), .CD(n18), .Q(q[0]) );
  GTECH_FD2 q_reg_3_ ( .D(N10), .CP(clk), .CD(n18), .Q(q[3]) );
  GTECH_FD2 q_reg_1_ ( .D(N8), .CP(clk), .CD(n18), .Q(q[1]) );
  GTECH_FD2 q_reg_2_ ( .D(N9), .CP(clk), .CD(n18), .Q(q[2]) );
  GTECH_ONE U20 ( .Z(n18) );
  GTECH_AND2 U21 ( .A(n23), .B(n24), .Z(N9) );
  GTECH_XOR2 U22 ( .A(q[2]), .B(n25), .Z(n24) );
  GTECH_AND2 U23 ( .A(n23), .B(n26), .Z(N8) );
  GTECH_XOR2 U24 ( .A(q[1]), .B(q[0]), .Z(n26) );
  GTECH_AND3 U25 ( .A(n27), .B(n28), .C(n29), .Z(N7) );
  GTECH_OAI21 U26 ( .A(q[2]), .B(q[1]), .C(q[3]), .Z(n29) );
  GTECH_AND2 U27 ( .A(n30), .B(n31), .Z(N10) );
  GTECH_OAI21 U28 ( .A(q[1]), .B(q[0]), .C(n32), .Z(n31) );
  GTECH_MUX2 U29 ( .A(n33), .B(n34), .S(q[2]), .Z(n30) );
  GTECH_AND2 U30 ( .A(n23), .B(n25), .Z(n34) );
  GTECH_NOT U31 ( .A(n32), .Z(n25) );
  GTECH_NOT U32 ( .A(n35), .Z(n23) );
  GTECH_OR_NOT U33 ( .A(reset), .B(n36), .Z(n35) );
  GTECH_NOT U34 ( .A(q[3]), .Z(n36) );
  GTECH_AND3 U35 ( .A(n32), .B(n28), .C(q[3]), .Z(n33) );
  GTECH_NOT U36 ( .A(reset), .Z(n28) );
  GTECH_OR_NOT U37 ( .A(n27), .B(q[1]), .Z(n32) );
  GTECH_NOT U38 ( .A(q[0]), .Z(n27) );
endmodule

