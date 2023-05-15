
module odo_div_or ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n3, n11,
         n14, n12, n13, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n2) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n3) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n19) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n18) );
  GTECH_FJK3S clkp_div9_r_reg ( .J(n13), .K(n13), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .SD(n12), .Q(clkp_div9_r), .QN(n17) );
  GTECH_FJK3S clkn_div9_r_reg ( .J(n13), .K(n13), .TI(N16), .TE(N15), .CP(n11), 
        .CD(rstn), .SD(n12), .Q(clkn_div9_r), .QN(n14) );
  GTECH_ZERO U22 ( .Z(n13) );
  GTECH_ONE U23 ( .Z(n12) );
  GTECH_NOT U24 ( .A(clk), .Z(n11) );
  GTECH_NAND2 U25 ( .A(n17), .B(n14), .Z(clk_div9) );
  GTECH_NOT U26 ( .A(n20), .Z(N9) );
  GTECH_AND2 U27 ( .A(n2), .B(n21), .Z(N8) );
  GTECH_NAND3 U28 ( .A(n3), .B(n22), .C(n19), .Z(n21) );
  GTECH_NOT U29 ( .A(n23), .Z(N16) );
  GTECH_NAND2 U30 ( .A(n23), .B(n24), .Z(N15) );
  GTECH_NAND3 U31 ( .A(n25), .B(n19), .C(n18), .Z(n24) );
  GTECH_NOT U32 ( .A(n26), .Z(n25) );
  GTECH_NAND4 U33 ( .A(n20), .B(n19), .C(n26), .D(n22), .Z(n23) );
  GTECH_NOT U34 ( .A(n18), .Z(n22) );
  GTECH_MUX2 U35 ( .A(n27), .B(n28), .S(n18), .Z(N11) );
  GTECH_NOR2 U36 ( .A(n19), .B(n26), .Z(n28) );
  GTECH_OR_NOT U37 ( .A(N10), .B(n20), .Z(n27) );
  GTECH_XOR2 U38 ( .A(n29), .B(n3), .Z(n20) );
  GTECH_XOR2 U39 ( .A(n26), .B(n19), .Z(N10) );
  GTECH_NAND2 U40 ( .A(n29), .B(n30), .Z(n26) );
  GTECH_NOT U41 ( .A(n3), .Z(n30) );
  GTECH_NOT U42 ( .A(n2), .Z(n29) );
endmodule

