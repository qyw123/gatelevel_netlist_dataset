
module counter10 ( clk, reset, q );
  output [3:0] q;
  input clk, reset;
  wire   N7, N8, N9, N10, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33;

  GTECH_FD1 q_reg_0_ ( .D(N7), .CP(clk), .Q(q[0]) );
  GTECH_FD1 q_reg_3_ ( .D(N10), .CP(clk), .Q(q[3]) );
  GTECH_FD1 q_reg_2_ ( .D(N9), .CP(clk), .Q(q[2]) );
  GTECH_FD1 q_reg_1_ ( .D(N8), .CP(clk), .Q(q[1]) );
  GTECH_AND3 U18 ( .A(n21), .B(n22), .C(n23), .Z(N9) );
  GTECH_XOR2 U19 ( .A(q[2]), .B(n24), .Z(n23) );
  GTECH_NOT U20 ( .A(n25), .Z(n24) );
  GTECH_AND4 U21 ( .A(n26), .B(n25), .C(n21), .D(n22), .Z(N8) );
  GTECH_NOT U22 ( .A(q[3]), .Z(n21) );
  GTECH_AND3 U23 ( .A(n27), .B(n22), .C(n28), .Z(N7) );
  GTECH_OAI21 U24 ( .A(q[2]), .B(q[1]), .C(q[3]), .Z(n28) );
  GTECH_NOT U25 ( .A(reset), .Z(n22) );
  GTECH_AND_NOT U26 ( .A(n29), .B(n30), .Z(N10) );
  GTECH_AO21 U27 ( .A(n26), .B(n25), .C(reset), .Z(n30) );
  GTECH_NAND2 U28 ( .A(n31), .B(n27), .Z(n26) );
  GTECH_NOT U29 ( .A(q[0]), .Z(n27) );
  GTECH_NOT U30 ( .A(q[1]), .Z(n31) );
  GTECH_MUX2 U31 ( .A(n32), .B(n33), .S(q[3]), .Z(n29) );
  GTECH_AND_NOT U32 ( .A(n25), .B(q[2]), .Z(n33) );
  GTECH_AND_NOT U33 ( .A(q[2]), .B(n25), .Z(n32) );
  GTECH_NAND2 U34 ( .A(q[1]), .B(q[0]), .Z(n25) );
endmodule

