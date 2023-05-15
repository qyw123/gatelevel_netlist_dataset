
module odo_div_and ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n3, n4, n14,
         n15, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32;
  wire   [3:0] cnt;

  GTECH_FD2S cnt_reg_0_ ( .D(N8), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), .Q(
        cnt[0]), .QN(n3) );
  GTECH_FD2S cnt_reg_1_ ( .D(N9), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), .Q(
        cnt[1]), .QN(n4) );
  GTECH_FD2S cnt_reg_2_ ( .D(N10), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), 
        .Q(cnt[2]), .QN(n22) );
  GTECH_FD2S cnt_reg_3_ ( .D(N11), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), 
        .Q(cnt[3]), .QN(n21) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n15), .K(n15), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n15), .K(n15), .TI(N16), .TE(N15), .CP(n14), 
        .CD(rstn), .Q(clkn_div9_r) );
  GTECH_ZERO U25 ( .Z(n15) );
  GTECH_NOT U26 ( .A(clk), .Z(n14) );
  GTECH_AND2 U27 ( .A(clkn_div9_r), .B(clkp_div9_r), .Z(clk_div9) );
  GTECH_AND2 U28 ( .A(n3), .B(n23), .Z(N8) );
  GTECH_NAND3 U29 ( .A(n4), .B(n24), .C(n22), .Z(n23) );
  GTECH_NOT U30 ( .A(n25), .Z(N16) );
  GTECH_OAI21 U31 ( .A(n26), .B(n27), .C(n25), .Z(N15) );
  GTECH_NAND4 U32 ( .A(n28), .B(n22), .C(n29), .D(n24), .Z(n25) );
  GTECH_NOT U33 ( .A(n29), .Z(n26) );
  GTECH_OAI21 U34 ( .A(n27), .B(n29), .C(n30), .Z(N11) );
  GTECH_OAI21 U35 ( .A(N9), .B(N10), .C(n24), .Z(n30) );
  GTECH_NOT U36 ( .A(n21), .Z(n24) );
  GTECH_NOT U37 ( .A(n28), .Z(N9) );
  GTECH_NAND3 U38 ( .A(n28), .B(n31), .C(n21), .Z(n27) );
  GTECH_NOT U39 ( .A(n22), .Z(n31) );
  GTECH_XOR2 U40 ( .A(n32), .B(n4), .Z(n28) );
  GTECH_XOR2 U41 ( .A(n29), .B(n22), .Z(N10) );
  GTECH_OR_NOT U42 ( .A(n4), .B(n32), .Z(n29) );
  GTECH_NOT U43 ( .A(n3), .Z(n32) );
endmodule

