
module counter10 ( clk, reset, q );
  output [3:0] q;
  input clk, reset;
  wire   N7, N8, N9, N10, n21, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39;

  GTECH_FD2 q_reg_0_ ( .D(N7), .CP(clk), .CD(n21), .Q(q[0]) );
  GTECH_FD2 q_reg_3_ ( .D(N10), .CP(clk), .CD(n21), .Q(q[3]) );
  GTECH_FD2 q_reg_1_ ( .D(N8), .CP(clk), .CD(n21), .Q(q[1]) );
  GTECH_FD2 q_reg_2_ ( .D(N9), .CP(clk), .CD(n21), .Q(q[2]) );
  GTECH_ONE U23 ( .Z(n21) );
  GTECH_AND3 U24 ( .A(n26), .B(n27), .C(n28), .Z(N9) );
  GTECH_XOR2 U25 ( .A(q[2]), .B(n29), .Z(n28) );
  GTECH_AND4 U26 ( .A(n30), .B(n31), .C(n26), .D(n27), .Z(N8) );
  GTECH_AND3 U27 ( .A(n32), .B(n27), .C(n33), .Z(N7) );
  GTECH_AO21 U28 ( .A(n34), .B(n35), .C(n26), .Z(n33) );
  GTECH_NOT U29 ( .A(q[3]), .Z(n26) );
  GTECH_NOT U30 ( .A(reset), .Z(n27) );
  GTECH_AND2 U31 ( .A(n36), .B(n37), .Z(N10) );
  GTECH_MUX2 U32 ( .A(n38), .B(n39), .S(q[3]), .Z(n37) );
  GTECH_AND2 U33 ( .A(n31), .B(n35), .Z(n39) );
  GTECH_NOT U34 ( .A(q[2]), .Z(n35) );
  GTECH_AND2 U35 ( .A(n29), .B(q[2]), .Z(n38) );
  GTECH_NOT U36 ( .A(n31), .Z(n29) );
  GTECH_AOI21 U37 ( .A(n30), .B(n31), .C(reset), .Z(n36) );
  GTECH_NAND2 U38 ( .A(q[1]), .B(q[0]), .Z(n31) );
  GTECH_NAND2 U39 ( .A(n34), .B(n32), .Z(n30) );
  GTECH_NOT U40 ( .A(q[0]), .Z(n32) );
  GTECH_NOT U41 ( .A(q[1]), .Z(n34) );
endmodule

