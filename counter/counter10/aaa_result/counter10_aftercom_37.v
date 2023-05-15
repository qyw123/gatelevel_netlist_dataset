
module counter10 ( clk, reset, q );
  output [3:0] q;
  input clk, reset;
  wire   N7, N8, N9, N10, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31;

  GTECH_FD1 q_reg_0_ ( .D(N7), .CP(clk), .Q(q[0]) );
  GTECH_FD1 q_reg_3_ ( .D(N10), .CP(clk), .Q(q[3]) );
  GTECH_FD1 q_reg_1_ ( .D(N8), .CP(clk), .Q(q[1]) );
  GTECH_FD1 q_reg_2_ ( .D(N9), .CP(clk), .Q(q[2]) );
  GTECH_AND_NOT U16 ( .A(n19), .B(n20), .Z(N9) );
  GTECH_XOR2 U17 ( .A(n21), .B(q[2]), .Z(n20) );
  GTECH_AND_NOT U18 ( .A(n19), .B(n22), .Z(N8) );
  GTECH_XOR2 U19 ( .A(n23), .B(q[1]), .Z(n22) );
  GTECH_AND3 U20 ( .A(n23), .B(n24), .C(n25), .Z(N7) );
  GTECH_OAI21 U21 ( .A(q[2]), .B(q[1]), .C(q[3]), .Z(n25) );
  GTECH_AND_NOT U22 ( .A(n26), .B(n27), .Z(N10) );
  GTECH_OA21 U23 ( .A(q[1]), .B(q[0]), .C(n21), .Z(n27) );
  GTECH_MUX2 U24 ( .A(n28), .B(n29), .S(q[2]), .Z(n26) );
  GTECH_AND_NOT U25 ( .A(n19), .B(n21), .Z(n29) );
  GTECH_NOT U26 ( .A(n30), .Z(n19) );
  GTECH_OR_NOT U27 ( .A(reset), .B(n31), .Z(n30) );
  GTECH_NOT U28 ( .A(q[3]), .Z(n31) );
  GTECH_AND3 U29 ( .A(n24), .B(q[3]), .C(n21), .Z(n28) );
  GTECH_OR_NOT U30 ( .A(n23), .B(q[1]), .Z(n21) );
  GTECH_NOT U31 ( .A(q[0]), .Z(n23) );
  GTECH_NOT U32 ( .A(reset), .Z(n24) );
endmodule

