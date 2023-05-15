
module counter10 ( clk, reset, q );
  output [3:0] q;
  input clk, reset;
  wire   N7, N8, N9, N10, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32;

  GTECH_FD1 q_reg_0_ ( .D(N7), .CP(clk), .Q(q[0]) );
  GTECH_FD1 q_reg_3_ ( .D(N10), .CP(clk), .Q(q[3]) );
  GTECH_FD1 q_reg_1_ ( .D(N8), .CP(clk), .Q(q[1]) );
  GTECH_FD1 q_reg_2_ ( .D(N9), .CP(clk), .Q(q[2]) );
  GTECH_NOR3 U17 ( .A(n20), .B(reset), .C(q[3]), .Z(N9) );
  GTECH_XOR2 U18 ( .A(n21), .B(q[2]), .Z(n20) );
  GTECH_AND4 U19 ( .A(n22), .B(n21), .C(n23), .D(n24), .Z(N8) );
  GTECH_NOT U20 ( .A(reset), .Z(n24) );
  GTECH_NOR3 U21 ( .A(n25), .B(reset), .C(q[0]), .Z(N7) );
  GTECH_OA21 U22 ( .A(q[2]), .B(q[1]), .C(q[3]), .Z(n25) );
  GTECH_AND2 U23 ( .A(n26), .B(n27), .Z(N10) );
  GTECH_MUX2 U24 ( .A(n28), .B(n29), .S(q[2]), .Z(n27) );
  GTECH_AND2 U25 ( .A(n30), .B(n23), .Z(n29) );
  GTECH_NOT U26 ( .A(q[3]), .Z(n23) );
  GTECH_NOT U27 ( .A(n21), .Z(n30) );
  GTECH_AND2 U28 ( .A(q[3]), .B(n21), .Z(n28) );
  GTECH_AOI21 U29 ( .A(n22), .B(n21), .C(reset), .Z(n26) );
  GTECH_NAND2 U30 ( .A(q[1]), .B(q[0]), .Z(n21) );
  GTECH_NAND2 U31 ( .A(n31), .B(n32), .Z(n22) );
  GTECH_NOT U32 ( .A(q[0]), .Z(n32) );
  GTECH_NOT U33 ( .A(q[1]), .Z(n31) );
endmodule

