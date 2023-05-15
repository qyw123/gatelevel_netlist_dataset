
module counter10 ( clk, reset, q );
  output [3:0] q;
  input clk, reset;
  wire   N7, N8, N9, N10, n21, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39;

  GTECH_FD2 q_reg_0_ ( .D(N7), .CP(clk), .CD(n21), .Q(q[0]) );
  GTECH_FD2 q_reg_3_ ( .D(N10), .CP(clk), .CD(n21), .Q(q[3]) );
  GTECH_FD2 q_reg_1_ ( .D(N8), .CP(clk), .CD(n21), .Q(q[1]) );
  GTECH_FD2 q_reg_2_ ( .D(N9), .CP(clk), .CD(n21), .Q(q[2]) );
  GTECH_ONE U24 ( .Z(n21) );
  GTECH_AND2 U25 ( .A(n27), .B(n28), .Z(N9) );
  GTECH_XNOR2 U26 ( .A(q[2]), .B(n29), .Z(n28) );
  GTECH_AND2 U27 ( .A(n27), .B(n30), .Z(N8) );
  GTECH_XNOR2 U28 ( .A(q[1]), .B(n31), .Z(n30) );
  GTECH_AND3 U29 ( .A(n31), .B(n32), .C(n33), .Z(N7) );
  GTECH_OAI21 U30 ( .A(q[2]), .B(q[1]), .C(q[3]), .Z(n33) );
  GTECH_NOT U31 ( .A(q[0]), .Z(n31) );
  GTECH_AND2 U32 ( .A(n34), .B(n35), .Z(N10) );
  GTECH_OAI21 U33 ( .A(q[1]), .B(q[0]), .C(n29), .Z(n35) );
  GTECH_MUX2 U34 ( .A(n36), .B(n37), .S(q[2]), .Z(n34) );
  GTECH_AND_NOT U35 ( .A(n27), .B(n29), .Z(n37) );
  GTECH_NOT U36 ( .A(n38), .Z(n27) );
  GTECH_NAND2 U37 ( .A(n39), .B(n32), .Z(n38) );
  GTECH_NOT U38 ( .A(q[3]), .Z(n39) );
  GTECH_AND3 U39 ( .A(n32), .B(q[3]), .C(n29), .Z(n36) );
  GTECH_NAND2 U40 ( .A(q[1]), .B(q[0]), .Z(n29) );
  GTECH_NOT U41 ( .A(reset), .Z(n32) );
endmodule

