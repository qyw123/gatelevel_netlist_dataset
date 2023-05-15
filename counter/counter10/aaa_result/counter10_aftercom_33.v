
module counter10 ( clk, reset, q );
  output [3:0] q;
  input clk, reset;
  wire   N7, N8, N9, N10, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33;

  GTECH_FD1 q_reg_0_ ( .D(N7), .CP(clk), .Q(q[0]) );
  GTECH_FD1 q_reg_3_ ( .D(N10), .CP(clk), .Q(q[3]) );
  GTECH_FD1 q_reg_1_ ( .D(N8), .CP(clk), .Q(q[1]) );
  GTECH_FD1 q_reg_2_ ( .D(N9), .CP(clk), .Q(q[2]) );
  GTECH_AND3 U18 ( .A(n21), .B(n22), .C(n23), .Z(N9) );
  GTECH_XOR2 U19 ( .A(q[2]), .B(n24), .Z(n23) );
  GTECH_AND4 U20 ( .A(n25), .B(n26), .C(n21), .D(n22), .Z(N8) );
  GTECH_NOT U21 ( .A(reset), .Z(n22) );
  GTECH_NOR3 U22 ( .A(q[0]), .B(n27), .C(reset), .Z(N7) );
  GTECH_OA21 U23 ( .A(q[2]), .B(q[1]), .C(q[3]), .Z(n27) );
  GTECH_AND_NOT U24 ( .A(n28), .B(n29), .Z(N10) );
  GTECH_AO21 U25 ( .A(n25), .B(n26), .C(reset), .Z(n29) );
  GTECH_NAND2 U26 ( .A(n30), .B(n31), .Z(n25) );
  GTECH_NOT U27 ( .A(q[0]), .Z(n31) );
  GTECH_NOT U28 ( .A(q[1]), .Z(n30) );
  GTECH_MUX2 U29 ( .A(n32), .B(n33), .S(q[2]), .Z(n28) );
  GTECH_AND2 U30 ( .A(n24), .B(n21), .Z(n33) );
  GTECH_NOT U31 ( .A(q[3]), .Z(n21) );
  GTECH_NOT U32 ( .A(n26), .Z(n24) );
  GTECH_AND2 U33 ( .A(q[3]), .B(n26), .Z(n32) );
  GTECH_NAND2 U34 ( .A(q[1]), .B(q[0]), .Z(n26) );
endmodule

