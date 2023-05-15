
module counter10 ( clk, reset, q );
  output [3:0] q;
  input clk, reset;
  wire   N7, N8, N9, N10, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34;

  GTECH_FD1 q_reg_0_ ( .D(N7), .CP(clk), .Q(q[0]) );
  GTECH_FD1 q_reg_3_ ( .D(N10), .CP(clk), .Q(q[3]) );
  GTECH_FD1 q_reg_2_ ( .D(N9), .CP(clk), .Q(q[2]) );
  GTECH_FD1 q_reg_1_ ( .D(N8), .CP(clk), .Q(q[1]) );
  GTECH_AND3 U19 ( .A(n22), .B(n23), .C(n24), .Z(N9) );
  GTECH_XNOR2 U20 ( .A(q[2]), .B(n25), .Z(n24) );
  GTECH_AND4 U21 ( .A(n26), .B(n25), .C(n22), .D(n23), .Z(N8) );
  GTECH_NOT U22 ( .A(q[3]), .Z(n22) );
  GTECH_AND3 U23 ( .A(n27), .B(n23), .C(n28), .Z(N7) );
  GTECH_OAI21 U24 ( .A(q[2]), .B(q[1]), .C(q[3]), .Z(n28) );
  GTECH_NOT U25 ( .A(reset), .Z(n23) );
  GTECH_AND_NOT U26 ( .A(n29), .B(n30), .Z(N10) );
  GTECH_MUX2 U27 ( .A(n31), .B(n32), .S(q[3]), .Z(n30) );
  GTECH_OR_NOT U28 ( .A(q[2]), .B(n25), .Z(n32) );
  GTECH_NAND2 U29 ( .A(n33), .B(q[2]), .Z(n31) );
  GTECH_NOT U30 ( .A(n25), .Z(n33) );
  GTECH_AOI21 U31 ( .A(n26), .B(n25), .C(reset), .Z(n29) );
  GTECH_NAND2 U32 ( .A(q[1]), .B(q[0]), .Z(n25) );
  GTECH_NAND2 U33 ( .A(n34), .B(n27), .Z(n26) );
  GTECH_NOT U34 ( .A(q[0]), .Z(n27) );
  GTECH_NOT U35 ( .A(q[1]), .Z(n34) );
endmodule

