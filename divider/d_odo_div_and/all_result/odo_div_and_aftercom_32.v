
module odo_div_and ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n11, n12, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33;
  wire   [3:0] cnt;

  GTECH_FD2S cnt_reg_0_ ( .D(N8), .TI(n12), .TE(n12), .CP(clk), .CD(rstn), .Q(
        cnt[0]), .QN(n20) );
  GTECH_FD2S cnt_reg_1_ ( .D(N9), .TI(n12), .TE(n12), .CP(clk), .CD(rstn), .Q(
        cnt[1]), .QN(n21) );
  GTECH_FD2S cnt_reg_2_ ( .D(N10), .TI(n12), .TE(n12), .CP(clk), .CD(rstn), 
        .Q(cnt[2]), .QN(n19) );
  GTECH_FD2S cnt_reg_3_ ( .D(N11), .TI(n12), .TE(n12), .CP(clk), .CD(rstn), 
        .Q(cnt[3]), .QN(n18) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n12), .K(n12), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n12), .K(n12), .TI(N16), .TE(N15), .CP(n11), 
        .CD(rstn), .Q(clkn_div9_r) );
  GTECH_ZERO U24 ( .Z(n12) );
  GTECH_NOT U25 ( .A(clk), .Z(n11) );
  GTECH_AND2 U26 ( .A(clkn_div9_r), .B(clkp_div9_r), .Z(clk_div9) );
  GTECH_NOT U27 ( .A(n22), .Z(N9) );
  GTECH_AND2 U28 ( .A(n20), .B(n23), .Z(N8) );
  GTECH_NAND3 U29 ( .A(n21), .B(n24), .C(n19), .Z(n23) );
  GTECH_AO21 U30 ( .A(n25), .B(n26), .C(N16), .Z(N15) );
  GTECH_NOT U31 ( .A(n27), .Z(N16) );
  GTECH_NAND4 U32 ( .A(n19), .B(n22), .C(n26), .D(n24), .Z(n27) );
  GTECH_NOT U33 ( .A(n18), .Z(n24) );
  GTECH_NOT U34 ( .A(n28), .Z(n25) );
  GTECH_OAI22 U35 ( .A(n28), .B(n26), .C(n18), .D(n29), .Z(N11) );
  GTECH_AND_NOT U36 ( .A(n22), .B(N10), .Z(n29) );
  GTECH_NAND3 U37 ( .A(n22), .B(n30), .C(n18), .Z(n28) );
  GTECH_NOT U38 ( .A(n19), .Z(n30) );
  GTECH_AO21 U39 ( .A(n21), .B(n20), .C(n31), .Z(n22) );
  GTECH_NOT U40 ( .A(n26), .Z(n31) );
  GTECH_XOR2 U41 ( .A(n26), .B(n19), .Z(N10) );
  GTECH_NAND2 U42 ( .A(n32), .B(n33), .Z(n26) );
  GTECH_NOT U43 ( .A(n20), .Z(n33) );
  GTECH_NOT U44 ( .A(n21), .Z(n32) );
endmodule

