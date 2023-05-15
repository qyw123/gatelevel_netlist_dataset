
module counter10 ( clk, reset, q );
  output [3:0] q;
  input clk, reset;
  wire   N7, N8, N9, N10, n18, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35;

  GTECH_FD2 q_reg_0_ ( .D(N7), .CP(clk), .CD(n18), .Q(q[0]) );
  GTECH_FD2 q_reg_3_ ( .D(N10), .CP(clk), .CD(n18), .Q(q[3]) );
  GTECH_FD2 q_reg_1_ ( .D(N8), .CP(clk), .CD(n18), .Q(q[1]) );
  GTECH_FD2 q_reg_2_ ( .D(N9), .CP(clk), .CD(n18), .Q(q[2]) );
  GTECH_ONE U20 ( .Z(n18) );
  GTECH_NOR3 U21 ( .A(n23), .B(reset), .C(q[3]), .Z(N9) );
  GTECH_XOR2 U22 ( .A(n24), .B(q[2]), .Z(n23) );
  GTECH_AND4 U23 ( .A(n25), .B(n24), .C(n26), .D(n27), .Z(N8) );
  GTECH_NOT U24 ( .A(reset), .Z(n27) );
  GTECH_NOR3 U25 ( .A(n28), .B(reset), .C(q[0]), .Z(N7) );
  GTECH_OA21 U26 ( .A(q[2]), .B(q[1]), .C(q[3]), .Z(n28) );
  GTECH_AND2 U27 ( .A(n29), .B(n30), .Z(N10) );
  GTECH_MUX2 U28 ( .A(n31), .B(n32), .S(q[2]), .Z(n30) );
  GTECH_AND2 U29 ( .A(n33), .B(n26), .Z(n32) );
  GTECH_NOT U30 ( .A(q[3]), .Z(n26) );
  GTECH_NOT U31 ( .A(n24), .Z(n33) );
  GTECH_AND2 U32 ( .A(q[3]), .B(n24), .Z(n31) );
  GTECH_AOI21 U33 ( .A(n25), .B(n24), .C(reset), .Z(n29) );
  GTECH_NAND2 U34 ( .A(q[1]), .B(q[0]), .Z(n24) );
  GTECH_NAND2 U35 ( .A(n34), .B(n35), .Z(n25) );
  GTECH_NOT U36 ( .A(q[0]), .Z(n35) );
  GTECH_NOT U37 ( .A(q[1]), .Z(n34) );
endmodule

