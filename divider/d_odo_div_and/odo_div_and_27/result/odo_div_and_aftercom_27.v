
module odo_div_and ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n3, n4, n5,
         n14, n15, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n2) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n3) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n4) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(n5) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n15), .K(n15), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n15), .K(n15), .TI(N16), .TE(N15), .CP(n14), 
        .CD(rstn), .Q(clkn_div9_r) );
  GTECH_ZERO U19 ( .Z(n15) );
  GTECH_NOT U20 ( .A(clk), .Z(n14) );
  GTECH_AND2 U21 ( .A(clkp_div9_r), .B(clkn_div9_r), .Z(clk_div9) );
  GTECH_AND2 U22 ( .A(n2), .B(n18), .Z(N8) );
  GTECH_NAND3 U23 ( .A(n4), .B(n3), .C(n5), .Z(n18) );
  GTECH_AO21 U24 ( .A(n19), .B(n20), .C(N16), .Z(N15) );
  GTECH_NOT U25 ( .A(n21), .Z(N16) );
  GTECH_OR4 U26 ( .A(n22), .B(n23), .C(n24), .D(N9), .Z(n21) );
  GTECH_NOT U27 ( .A(n25), .Z(N9) );
  GTECH_NOT U28 ( .A(n20), .Z(n24) );
  GTECH_NOT U29 ( .A(n26), .Z(n19) );
  GTECH_OAI22 U30 ( .A(n26), .B(n20), .C(n27), .D(n23), .Z(N11) );
  GTECH_AND_NOT U31 ( .A(n25), .B(N10), .Z(n27) );
  GTECH_NAND3 U32 ( .A(n22), .B(n23), .C(n25), .Z(n26) );
  GTECH_XOR2 U33 ( .A(n28), .B(n3), .Z(n25) );
  GTECH_NOT U34 ( .A(n5), .Z(n23) );
  GTECH_NOT U35 ( .A(n4), .Z(n22) );
  GTECH_XOR2 U36 ( .A(n20), .B(n4), .Z(N10) );
  GTECH_NAND2 U37 ( .A(n29), .B(n28), .Z(n20) );
  GTECH_NOT U38 ( .A(n2), .Z(n28) );
  GTECH_NOT U39 ( .A(n3), .Z(n29) );
endmodule

