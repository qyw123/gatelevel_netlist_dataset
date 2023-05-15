
module odo_div_and ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n3, n5, n14,
         n15, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n2) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n3) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n18) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n17) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n15), .K(n15), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n15), .K(n15), .TI(N16), .TE(N15), .CP(n14), 
        .CD(rstn), .Q(clkn_div9_r), .QN(n5) );
  GTECH_ZERO U21 ( .Z(n15) );
  GTECH_NOT U22 ( .A(clk), .Z(n14) );
  GTECH_AND_NOT U23 ( .A(clkp_div9_r), .B(n5), .Z(clk_div9) );
  GTECH_NOT U24 ( .A(n19), .Z(N9) );
  GTECH_OA21 U25 ( .A(n20), .B(n21), .C(n2), .Z(N8) );
  GTECH_NAND2 U26 ( .A(n3), .B(n22), .Z(n21) );
  GTECH_AO21 U27 ( .A(n23), .B(n24), .C(N16), .Z(N15) );
  GTECH_NOT U28 ( .A(n25), .Z(N16) );
  GTECH_NAND4 U29 ( .A(n18), .B(n19), .C(n24), .D(n22), .Z(n25) );
  GTECH_NOT U30 ( .A(n17), .Z(n22) );
  GTECH_NOT U31 ( .A(n26), .Z(n23) );
  GTECH_OAI22 U32 ( .A(n26), .B(n24), .C(n17), .D(n27), .Z(N11) );
  GTECH_AND_NOT U33 ( .A(n19), .B(N10), .Z(n27) );
  GTECH_NAND3 U34 ( .A(n19), .B(n20), .C(n17), .Z(n26) );
  GTECH_NOT U35 ( .A(n18), .Z(n20) );
  GTECH_AO21 U36 ( .A(n3), .B(n2), .C(n28), .Z(n19) );
  GTECH_NOT U37 ( .A(n24), .Z(n28) );
  GTECH_XOR2 U38 ( .A(n24), .B(n18), .Z(N10) );
  GTECH_NAND2 U39 ( .A(n29), .B(n30), .Z(n24) );
  GTECH_NOT U40 ( .A(n3), .Z(n30) );
  GTECH_NOT U41 ( .A(n2), .Z(n29) );
endmodule

