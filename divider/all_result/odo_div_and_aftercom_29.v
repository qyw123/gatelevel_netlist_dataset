
module odo_div_and ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n3, n4, n5,
         n19, n20, n24, n25, n26, n27, n28, n29, n30, n31, n32;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n2) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(n3) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(n4) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n5) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n20), .K(n20), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n20), .K(n20), .TI(N16), .TE(N15), .CP(n19), 
        .CD(rstn), .Q(clkn_div9_r) );
  GTECH_ZERO U24 ( .Z(n20) );
  GTECH_NOT U25 ( .A(clk), .Z(n19) );
  GTECH_AND2 U26 ( .A(clkp_div9_r), .B(clkn_div9_r), .Z(clk_div9) );
  GTECH_AND2 U27 ( .A(n2), .B(n24), .Z(N8) );
  GTECH_OR3 U28 ( .A(n3), .B(n5), .C(n4), .Z(n24) );
  GTECH_NOT U29 ( .A(n25), .Z(N16) );
  GTECH_OAI21 U30 ( .A(n26), .B(n27), .C(n25), .Z(N15) );
  GTECH_OR4 U31 ( .A(N9), .B(n26), .C(n5), .D(n4), .Z(n25) );
  GTECH_NOT U32 ( .A(n28), .Z(N9) );
  GTECH_NOT U33 ( .A(n29), .Z(n26) );
  GTECH_OAI21 U34 ( .A(n27), .B(n29), .C(n30), .Z(N11) );
  GTECH_AO21 U35 ( .A(n31), .B(n28), .C(n5), .Z(n30) );
  GTECH_NAND3 U36 ( .A(n4), .B(n28), .C(n5), .Z(n27) );
  GTECH_OAI21 U37 ( .A(n3), .B(n32), .C(n29), .Z(n28) );
  GTECH_NOT U38 ( .A(n2), .Z(n32) );
  GTECH_NOT U39 ( .A(n31), .Z(N10) );
  GTECH_XOR2 U40 ( .A(n29), .B(n4), .Z(n31) );
  GTECH_OR_NOT U41 ( .A(n2), .B(n3), .Z(n29) );
endmodule

