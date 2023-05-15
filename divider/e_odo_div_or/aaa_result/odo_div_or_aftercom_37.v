
module odo_div_or ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n11, n14,
         n12, n13, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n20) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n2) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n19) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n18) );
  GTECH_FJK3S clkp_div9_r_reg ( .J(n13), .K(n13), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .SD(n12), .Q(clkp_div9_r), .QN(n17) );
  GTECH_FJK3S clkn_div9_r_reg ( .J(n13), .K(n13), .TI(N16), .TE(N15), .CP(n11), 
        .CD(rstn), .SD(n12), .Q(clkn_div9_r), .QN(n14) );
  GTECH_ZERO U23 ( .Z(n13) );
  GTECH_ONE U24 ( .Z(n12) );
  GTECH_NOT U25 ( .A(clk), .Z(n11) );
  GTECH_NAND2 U26 ( .A(n17), .B(n14), .Z(clk_div9) );
  GTECH_NOT U27 ( .A(n21), .Z(N9) );
  GTECH_AND2 U28 ( .A(n20), .B(n22), .Z(N8) );
  GTECH_NAND3 U29 ( .A(n2), .B(n23), .C(n19), .Z(n22) );
  GTECH_NOT U30 ( .A(n24), .Z(N16) );
  GTECH_NAND2 U31 ( .A(n24), .B(n25), .Z(N15) );
  GTECH_NAND3 U32 ( .A(n26), .B(n19), .C(n18), .Z(n25) );
  GTECH_NAND4 U33 ( .A(n21), .B(n19), .C(n27), .D(n23), .Z(n24) );
  GTECH_NOT U34 ( .A(n18), .Z(n23) );
  GTECH_MUX2 U35 ( .A(n28), .B(n29), .S(n18), .Z(N11) );
  GTECH_AND_NOT U36 ( .A(n26), .B(n19), .Z(n29) );
  GTECH_OR_NOT U37 ( .A(N10), .B(n21), .Z(n28) );
  GTECH_XNOR2 U38 ( .A(n20), .B(n2), .Z(n21) );
  GTECH_XNOR2 U39 ( .A(n19), .B(n26), .Z(N10) );
  GTECH_NOT U40 ( .A(n27), .Z(n26) );
  GTECH_NAND2 U41 ( .A(n30), .B(n31), .Z(n27) );
  GTECH_NOT U42 ( .A(n2), .Z(n31) );
  GTECH_NOT U43 ( .A(n20), .Z(n30) );
endmodule

