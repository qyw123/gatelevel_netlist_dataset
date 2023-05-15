
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
  GTECH_AND3 U23 ( .A(n25), .B(n26), .C(n27), .Z(N9) );
  GTECH_XOR2 U24 ( .A(q[2]), .B(n28), .Z(n27) );
  GTECH_AND4 U25 ( .A(n29), .B(n30), .C(n25), .D(n26), .Z(N8) );
  GTECH_NOT U26 ( .A(q[3]), .Z(n25) );
  GTECH_AND3 U27 ( .A(n31), .B(n26), .C(n32), .Z(N7) );
  GTECH_OAI21 U28 ( .A(q[2]), .B(q[1]), .C(q[3]), .Z(n32) );
  GTECH_NOT U29 ( .A(reset), .Z(n26) );
  GTECH_AND2 U30 ( .A(n33), .B(n34), .Z(N10) );
  GTECH_AOI21 U31 ( .A(n29), .B(n30), .C(reset), .Z(n34) );
  GTECH_NAND2 U32 ( .A(n35), .B(n31), .Z(n29) );
  GTECH_NOT U33 ( .A(q[0]), .Z(n31) );
  GTECH_NOT U34 ( .A(q[1]), .Z(n35) );
  GTECH_OA21 U35 ( .A(n36), .B(q[3]), .C(n37), .Z(n33) );
  GTECH_OAI21 U36 ( .A(q[2]), .B(n28), .C(q[3]), .Z(n37) );
  GTECH_NOT U37 ( .A(n30), .Z(n28) );
  GTECH_AND_NOT U38 ( .A(q[2]), .B(n30), .Z(n36) );
  GTECH_NAND2 U39 ( .A(q[1]), .B(q[0]), .Z(n30) );
endmodule

