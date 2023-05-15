
module odo_div_or ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n3, n4, n13,
         n14, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n16) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n2) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n18) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n17) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n14), .K(n14), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r), .QN(n3) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n14), .K(n14), .TI(N16), .TE(N15), .CP(n13), 
        .CD(rstn), .Q(clkn_div9_r), .QN(n4) );
  GTECH_ZERO U21 ( .Z(n14) );
  GTECH_NOT U22 ( .A(clk), .Z(n13) );
  GTECH_NAND2 U23 ( .A(n4), .B(n3), .Z(clk_div9) );
  GTECH_NOT U24 ( .A(n19), .Z(N9) );
  GTECH_AND2 U25 ( .A(n16), .B(n20), .Z(N8) );
  GTECH_OR3 U26 ( .A(n17), .B(n21), .C(n22), .Z(n20) );
  GTECH_NOT U27 ( .A(n23), .Z(N16) );
  GTECH_NAND2 U28 ( .A(n23), .B(n24), .Z(N15) );
  GTECH_OR3 U29 ( .A(n22), .B(n25), .C(n26), .Z(n24) );
  GTECH_NAND4 U30 ( .A(n19), .B(n18), .C(n25), .D(n26), .Z(n23) );
  GTECH_NOT U31 ( .A(n17), .Z(n26) );
  GTECH_MUX2 U32 ( .A(n27), .B(n28), .S(n17), .Z(N11) );
  GTECH_AND_NOT U33 ( .A(n22), .B(n25), .Z(n28) );
  GTECH_NOT U34 ( .A(n18), .Z(n22) );
  GTECH_OR_NOT U35 ( .A(N10), .B(n19), .Z(n27) );
  GTECH_XOR2 U36 ( .A(n29), .B(n2), .Z(n19) );
  GTECH_XOR2 U37 ( .A(n25), .B(n18), .Z(N10) );
  GTECH_NAND2 U38 ( .A(n29), .B(n21), .Z(n25) );
  GTECH_NOT U39 ( .A(n2), .Z(n21) );
  GTECH_NOT U40 ( .A(n16), .Z(n29) );
endmodule

