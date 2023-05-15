
module odo_div_or ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n3, n5, n15,
         n16, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n2) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n3) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n19) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n18) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n16), .K(n16), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n16), .K(n16), .TI(N16), .TE(N15), .CP(n15), 
        .CD(rstn), .Q(clkn_div9_r), .QN(n5) );
  GTECH_ZERO U22 ( .Z(n16) );
  GTECH_NOT U23 ( .A(clk), .Z(n15) );
  GTECH_OR_NOT U24 ( .A(clkp_div9_r), .B(n5), .Z(clk_div9) );
  GTECH_AND2 U25 ( .A(n2), .B(n20), .Z(N8) );
  GTECH_NAND3 U26 ( .A(n3), .B(n21), .C(n19), .Z(n20) );
  GTECH_NOT U27 ( .A(n22), .Z(N16) );
  GTECH_OAI21 U28 ( .A(n21), .B(n23), .C(n22), .Z(N15) );
  GTECH_OR4 U29 ( .A(n24), .B(N9), .C(n18), .D(n25), .Z(n22) );
  GTECH_NOT U30 ( .A(n26), .Z(N9) );
  GTECH_OR_NOT U31 ( .A(n24), .B(n25), .Z(n23) );
  GTECH_NOT U32 ( .A(n18), .Z(n21) );
  GTECH_MUX2 U33 ( .A(n27), .B(n28), .S(n18), .Z(N11) );
  GTECH_AND2 U34 ( .A(n25), .B(n24), .Z(n28) );
  GTECH_NOT U35 ( .A(n19), .Z(n24) );
  GTECH_NOT U36 ( .A(n29), .Z(n25) );
  GTECH_OR_NOT U37 ( .A(N10), .B(n26), .Z(n27) );
  GTECH_XOR2 U38 ( .A(n30), .B(n3), .Z(n26) );
  GTECH_XOR2 U39 ( .A(n29), .B(n19), .Z(N10) );
  GTECH_OR_NOT U40 ( .A(n3), .B(n30), .Z(n29) );
  GTECH_NOT U41 ( .A(n2), .Z(n30) );
endmodule

