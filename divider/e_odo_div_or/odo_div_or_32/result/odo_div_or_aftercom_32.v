
module odo_div_or ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n10, n13,
         n11, n12, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n17) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n2) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n19) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n18) );
  GTECH_FJK3S clkp_div9_r_reg ( .J(n12), .K(n12), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .SD(n11), .Q(clkp_div9_r), .QN(n16) );
  GTECH_FJK3S clkn_div9_r_reg ( .J(n12), .K(n12), .TI(N16), .TE(N15), .CP(n10), 
        .CD(rstn), .SD(n11), .Q(clkn_div9_r), .QN(n13) );
  GTECH_ZERO U22 ( .Z(n12) );
  GTECH_ONE U23 ( .Z(n11) );
  GTECH_NOT U24 ( .A(clk), .Z(n10) );
  GTECH_NAND2 U25 ( .A(n16), .B(n13), .Z(clk_div9) );
  GTECH_AND2 U26 ( .A(n17), .B(n20), .Z(N8) );
  GTECH_NAND3 U27 ( .A(n2), .B(n21), .C(n19), .Z(n20) );
  GTECH_NOT U28 ( .A(n18), .Z(n21) );
  GTECH_NOT U29 ( .A(n22), .Z(N16) );
  GTECH_NAND2 U30 ( .A(n22), .B(n23), .Z(N15) );
  GTECH_NAND3 U31 ( .A(n24), .B(n19), .C(n18), .Z(n23) );
  GTECH_OR4 U32 ( .A(n25), .B(N9), .C(n18), .D(n24), .Z(n22) );
  GTECH_NOT U33 ( .A(n26), .Z(N9) );
  GTECH_MUX2 U34 ( .A(n27), .B(n28), .S(n18), .Z(N11) );
  GTECH_AND2 U35 ( .A(n24), .B(n25), .Z(n28) );
  GTECH_NOT U36 ( .A(n19), .Z(n25) );
  GTECH_NOT U37 ( .A(n29), .Z(n24) );
  GTECH_OR_NOT U38 ( .A(N10), .B(n26), .Z(n27) );
  GTECH_XOR2 U39 ( .A(n30), .B(n2), .Z(n26) );
  GTECH_XOR2 U40 ( .A(n29), .B(n19), .Z(N10) );
  GTECH_NAND2 U41 ( .A(n30), .B(n31), .Z(n29) );
  GTECH_NOT U42 ( .A(n2), .Z(n31) );
  GTECH_NOT U43 ( .A(n17), .Z(n30) );
endmodule

