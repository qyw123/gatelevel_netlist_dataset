
module odo_div_and ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n9, n10, n11,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n18) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n19) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n17) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n16) );
  GTECH_FJK3S clkp_div9_r_reg ( .J(n11), .K(n11), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .SD(n10), .Q(clkp_div9_r) );
  GTECH_FJK3S clkn_div9_r_reg ( .J(n11), .K(n11), .TI(N16), .TE(N15), .CP(n9), 
        .CD(rstn), .SD(n10), .Q(clkn_div9_r) );
  GTECH_ZERO U22 ( .Z(n11) );
  GTECH_ONE U23 ( .Z(n10) );
  GTECH_NOT U24 ( .A(clk), .Z(n9) );
  GTECH_AND2 U25 ( .A(clkn_div9_r), .B(clkp_div9_r), .Z(clk_div9) );
  GTECH_NOT U26 ( .A(n20), .Z(N9) );
  GTECH_AND2 U27 ( .A(n18), .B(n21), .Z(N8) );
  GTECH_NAND3 U28 ( .A(n19), .B(n22), .C(n17), .Z(n21) );
  GTECH_AO21 U29 ( .A(n23), .B(n24), .C(N16), .Z(N15) );
  GTECH_NOT U30 ( .A(n25), .Z(N16) );
  GTECH_NAND4 U31 ( .A(n17), .B(n20), .C(n24), .D(n22), .Z(n25) );
  GTECH_NOT U32 ( .A(n16), .Z(n22) );
  GTECH_NOT U33 ( .A(n26), .Z(n23) );
  GTECH_OAI22 U34 ( .A(n26), .B(n24), .C(n16), .D(n27), .Z(N11) );
  GTECH_AND_NOT U35 ( .A(n20), .B(N10), .Z(n27) );
  GTECH_NAND3 U36 ( .A(n20), .B(n28), .C(n16), .Z(n26) );
  GTECH_NOT U37 ( .A(n17), .Z(n28) );
  GTECH_AO21 U38 ( .A(n19), .B(n18), .C(n29), .Z(n20) );
  GTECH_NOT U39 ( .A(n24), .Z(n29) );
  GTECH_XOR2 U40 ( .A(n24), .B(n17), .Z(N10) );
  GTECH_NAND2 U41 ( .A(n30), .B(n31), .Z(n24) );
  GTECH_NOT U42 ( .A(n18), .Z(n31) );
  GTECH_NOT U43 ( .A(n19), .Z(n30) );
endmodule

