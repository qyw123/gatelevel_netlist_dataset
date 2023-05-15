
module counter10 ( clk, reset, q );
  output [3:0] q;
  input clk, reset;
  wire   N7, N8, N9, N10, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34;

  GTECH_FD1 q_reg_0_ ( .D(N7), .CP(clk), .Q(q[0]) );
  GTECH_FD1 q_reg_3_ ( .D(N10), .CP(clk), .Q(q[3]) );
  GTECH_FD1 q_reg_1_ ( .D(N8), .CP(clk), .Q(q[1]) );
  GTECH_FD1 q_reg_2_ ( .D(N9), .CP(clk), .Q(q[2]) );
  GTECH_AND3 U19 ( .A(n22), .B(n23), .C(n24), .Z(N9) );
  GTECH_XOR2 U20 ( .A(q[2]), .B(n25), .Z(n24) );
  GTECH_AND4 U21 ( .A(n26), .B(n27), .C(n22), .D(n23), .Z(N8) );
  GTECH_AND3 U22 ( .A(n28), .B(n23), .C(n29), .Z(N7) );
  GTECH_AO21 U23 ( .A(n30), .B(n31), .C(n22), .Z(n29) );
  GTECH_NOT U24 ( .A(reset), .Z(n23) );
  GTECH_AND3 U25 ( .A(n32), .B(n33), .C(n34), .Z(N10) );
  GTECH_AOI21 U26 ( .A(n26), .B(n27), .C(reset), .Z(n34) );
  GTECH_NAND2 U27 ( .A(n30), .B(n28), .Z(n26) );
  GTECH_NOT U28 ( .A(q[0]), .Z(n28) );
  GTECH_NOT U29 ( .A(q[1]), .Z(n30) );
  GTECH_AO21 U30 ( .A(n25), .B(q[2]), .C(q[3]), .Z(n33) );
  GTECH_NOT U31 ( .A(n27), .Z(n25) );
  GTECH_AO21 U32 ( .A(n27), .B(n31), .C(n22), .Z(n32) );
  GTECH_NOT U33 ( .A(q[3]), .Z(n22) );
  GTECH_NOT U34 ( .A(q[2]), .Z(n31) );
  GTECH_NAND2 U35 ( .A(q[1]), .B(q[0]), .Z(n27) );
endmodule

