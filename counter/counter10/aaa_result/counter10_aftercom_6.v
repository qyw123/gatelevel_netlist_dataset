
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
  GTECH_AND4 U20 ( .A(n25), .B(n26), .C(n21), .D(n22), .Z(N8) );
  GTECH_NOT U21 ( .A(q[3]), .Z(n21) );
  GTECH_AND3 U22 ( .A(n27), .B(n22), .C(n28), .Z(N7) );
  GTECH_OAI21 U23 ( .A(q[2]), .B(q[1]), .C(q[3]), .Z(n28) );
  GTECH_NOT U24 ( .A(reset), .Z(n22) );
  GTECH_AND2 U25 ( .A(n29), .B(n30), .Z(N10) );
  GTECH_AOI21 U26 ( .A(n25), .B(n26), .C(reset), .Z(n30) );
  GTECH_NAND2 U27 ( .A(n31), .B(n27), .Z(n25) );
  GTECH_NOT U28 ( .A(q[0]), .Z(n27) );
  GTECH_NOT U29 ( .A(q[1]), .Z(n31) );
  GTECH_OA21 U30 ( .A(n32), .B(q[3]), .C(n33), .Z(n29) );
  GTECH_OAI21 U31 ( .A(q[2]), .B(n24), .C(q[3]), .Z(n33) );
  GTECH_NOT U32 ( .A(n26), .Z(n24) );
  GTECH_AND_NOT U33 ( .A(q[2]), .B(n26), .Z(n32) );
  GTECH_NAND2 U34 ( .A(q[1]), .B(q[0]), .Z(n26) );
endmodule

