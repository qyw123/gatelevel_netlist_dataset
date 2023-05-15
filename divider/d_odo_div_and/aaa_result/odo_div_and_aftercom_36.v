
module odo_div_and ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n3, n4, n13,
         n14, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32;
  wire   [3:0] cnt;

  GTECH_FD2S cnt_reg_0_ ( .D(N8), .TI(n14), .TE(n14), .CP(clk), .CD(rstn), .Q(
        cnt[0]), .QN(n3) );
  GTECH_FD2S cnt_reg_1_ ( .D(N9), .TI(n14), .TE(n14), .CP(clk), .CD(rstn), .Q(
        cnt[1]), .QN(n4) );
  GTECH_FD2S cnt_reg_2_ ( .D(N10), .TI(n14), .TE(n14), .CP(clk), .CD(rstn), 
        .Q(cnt[2]), .QN(n21) );
  GTECH_FD2S cnt_reg_3_ ( .D(N11), .TI(n14), .TE(n14), .CP(clk), .CD(rstn), 
        .Q(cnt[3]), .QN(n20) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n14), .K(n14), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n14), .K(n14), .TI(N16), .TE(N15), .CP(n13), 
        .CD(rstn), .Q(clkn_div9_r) );
  GTECH_ZERO U24 ( .Z(n14) );
  GTECH_NOT U25 ( .A(clk), .Z(n13) );
  GTECH_AND2 U26 ( .A(clkn_div9_r), .B(clkp_div9_r), .Z(clk_div9) );
  GTECH_AND2 U27 ( .A(n3), .B(n22), .Z(N8) );
  GTECH_NAND3 U28 ( .A(n4), .B(n23), .C(n21), .Z(n22) );
  GTECH_NOT U29 ( .A(n24), .Z(N16) );
  GTECH_OAI21 U30 ( .A(n25), .B(n26), .C(n24), .Z(N15) );
  GTECH_NAND4 U31 ( .A(n27), .B(n21), .C(n28), .D(n23), .Z(n24) );
  GTECH_OAI21 U32 ( .A(n26), .B(n28), .C(n29), .Z(N11) );
  GTECH_OAI21 U33 ( .A(N9), .B(N10), .C(n23), .Z(n29) );
  GTECH_NOT U34 ( .A(n20), .Z(n23) );
  GTECH_NOT U35 ( .A(n27), .Z(N9) );
  GTECH_NAND3 U36 ( .A(n27), .B(n30), .C(n20), .Z(n26) );
  GTECH_NOT U37 ( .A(n21), .Z(n30) );
  GTECH_XNOR2 U38 ( .A(n4), .B(n3), .Z(n27) );
  GTECH_XNOR2 U39 ( .A(n21), .B(n25), .Z(N10) );
  GTECH_NOT U40 ( .A(n28), .Z(n25) );
  GTECH_NAND2 U41 ( .A(n31), .B(n32), .Z(n28) );
  GTECH_NOT U42 ( .A(n3), .Z(n32) );
  GTECH_NOT U43 ( .A(n4), .Z(n31) );
endmodule

