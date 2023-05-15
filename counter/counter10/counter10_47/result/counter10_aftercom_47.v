
module counter10 ( clk, reset, q );
  output [3:0] q;
  input clk, reset;
  wire   N7, N8, N9, N10, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31;

  GTECH_FD1 q_reg_0_ ( .D(N7), .CP(clk), .Q(q[0]) );
  GTECH_FD1 q_reg_3_ ( .D(N10), .CP(clk), .Q(q[3]) );
  GTECH_FD1 q_reg_1_ ( .D(N8), .CP(clk), .Q(q[1]) );
  GTECH_FD1 q_reg_2_ ( .D(N9), .CP(clk), .Q(q[2]) );
  GTECH_NOR3 U16 ( .A(n19), .B(reset), .C(q[3]), .Z(N9) );
  GTECH_XOR2 U17 ( .A(n20), .B(q[2]), .Z(n19) );
  GTECH_AND4 U18 ( .A(n21), .B(n20), .C(n22), .D(n23), .Z(N8) );
  GTECH_NOT U19 ( .A(reset), .Z(n23) );
  GTECH_NOR3 U20 ( .A(n24), .B(reset), .C(q[0]), .Z(N7) );
  GTECH_OA21 U21 ( .A(q[2]), .B(q[1]), .C(q[3]), .Z(n24) );
  GTECH_AND_NOT U22 ( .A(n25), .B(n26), .Z(N10) );
  GTECH_MUX2 U23 ( .A(n27), .B(n28), .S(q[2]), .Z(n26) );
  GTECH_NAND2 U24 ( .A(n29), .B(n22), .Z(n28) );
  GTECH_NOT U25 ( .A(q[3]), .Z(n22) );
  GTECH_NOT U26 ( .A(n20), .Z(n29) );
  GTECH_NAND2 U27 ( .A(q[3]), .B(n20), .Z(n27) );
  GTECH_AOI21 U28 ( .A(n21), .B(n20), .C(reset), .Z(n25) );
  GTECH_NAND2 U29 ( .A(q[1]), .B(q[0]), .Z(n20) );
  GTECH_NAND2 U30 ( .A(n30), .B(n31), .Z(n21) );
  GTECH_NOT U31 ( .A(q[0]), .Z(n31) );
  GTECH_NOT U32 ( .A(q[1]), .Z(n30) );
endmodule

