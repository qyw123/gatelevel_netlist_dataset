
module odo_div_or ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n3, n4, n5,
         n13, n14, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n2) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n3) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n17) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n16) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n14), .K(n14), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r), .QN(n4) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n14), .K(n14), .TI(N16), .TE(N15), .CP(n13), 
        .CD(rstn), .Q(clkn_div9_r), .QN(n5) );
  GTECH_ZERO U20 ( .Z(n14) );
  GTECH_NOT U21 ( .A(clk), .Z(n13) );
  GTECH_NAND2 U22 ( .A(n5), .B(n4), .Z(clk_div9) );
  GTECH_AND2 U23 ( .A(n2), .B(n18), .Z(N8) );
  GTECH_NAND3 U24 ( .A(n3), .B(n19), .C(n17), .Z(n18) );
  GTECH_NOT U25 ( .A(n16), .Z(n19) );
  GTECH_NOT U26 ( .A(n20), .Z(N16) );
  GTECH_NAND2 U27 ( .A(n20), .B(n21), .Z(N15) );
  GTECH_NAND3 U28 ( .A(n22), .B(n17), .C(n16), .Z(n21) );
  GTECH_OR4 U29 ( .A(n23), .B(N9), .C(n16), .D(n22), .Z(n20) );
  GTECH_NOT U30 ( .A(n24), .Z(N9) );
  GTECH_MUX2 U31 ( .A(n25), .B(n26), .S(n16), .Z(N11) );
  GTECH_AND2 U32 ( .A(n22), .B(n23), .Z(n26) );
  GTECH_NOT U33 ( .A(n17), .Z(n23) );
  GTECH_OR_NOT U34 ( .A(N10), .B(n24), .Z(n25) );
  GTECH_XNOR2 U35 ( .A(n3), .B(n2), .Z(n24) );
  GTECH_XNOR2 U36 ( .A(n17), .B(n22), .Z(N10) );
  GTECH_NOT U37 ( .A(n27), .Z(n22) );
  GTECH_NAND2 U38 ( .A(n28), .B(n29), .Z(n27) );
  GTECH_NOT U39 ( .A(n3), .Z(n29) );
  GTECH_NOT U40 ( .A(n2), .Z(n28) );
endmodule

