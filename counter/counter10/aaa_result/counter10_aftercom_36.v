
module counter10 ( clk, reset, q );
  output [3:0] q;
  input clk, reset;
  wire   N7, N8, N9, N10, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31;

  GTECH_FD1 q_reg_0_ ( .D(N7), .CP(clk), .Q(q[0]) );
  GTECH_FD1 q_reg_3_ ( .D(N10), .CP(clk), .Q(q[3]) );
  GTECH_FD1 q_reg_1_ ( .D(N8), .CP(clk), .Q(q[1]) );
  GTECH_FD1 q_reg_2_ ( .D(N9), .CP(clk), .Q(q[2]) );
  GTECH_AND2 U16 ( .A(n19), .B(n20), .Z(N9) );
  GTECH_XNOR2 U17 ( .A(q[2]), .B(n21), .Z(n20) );
  GTECH_AND2 U18 ( .A(n19), .B(n22), .Z(N8) );
  GTECH_XOR2 U19 ( .A(q[1]), .B(q[0]), .Z(n22) );
  GTECH_AND3 U20 ( .A(n23), .B(n24), .C(n25), .Z(N7) );
  GTECH_OAI21 U21 ( .A(q[2]), .B(q[1]), .C(q[3]), .Z(n25) );
  GTECH_AOI222 U22 ( .A(n21), .B(n26), .C(n27), .D(n28), .E(q[2]), .F(n29), 
        .Z(N10) );
  GTECH_OR_NOT U23 ( .A(n21), .B(n19), .Z(n29) );
  GTECH_NOT U24 ( .A(n30), .Z(n19) );
  GTECH_OR_NOT U25 ( .A(reset), .B(n31), .Z(n30) );
  GTECH_NOT U26 ( .A(q[3]), .Z(n31) );
  GTECH_NOT U27 ( .A(q[2]), .Z(n28) );
  GTECH_NAND3 U28 ( .A(n21), .B(n24), .C(q[3]), .Z(n27) );
  GTECH_NOT U29 ( .A(reset), .Z(n24) );
  GTECH_OR_NOT U30 ( .A(q[1]), .B(n23), .Z(n26) );
  GTECH_OR_NOT U31 ( .A(n23), .B(q[1]), .Z(n21) );
  GTECH_NOT U32 ( .A(q[0]), .Z(n23) );
endmodule

