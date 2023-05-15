
module odo_div_or ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n3, n4, n5, n15,
         n16, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34;
  wire   [3:0] cnt;

  GTECH_FD2S cnt_reg_0_ ( .D(N8), .TI(n16), .TE(n16), .CP(clk), .CD(rstn), .Q(
        cnt[0]), .QN(n3) );
  GTECH_FD2S cnt_reg_1_ ( .D(N9), .TI(n16), .TE(n16), .CP(clk), .CD(rstn), .Q(
        cnt[1]), .QN(n4) );
  GTECH_FD2S cnt_reg_2_ ( .D(N10), .TI(n16), .TE(n16), .CP(clk), .CD(rstn), 
        .Q(cnt[2]), .QN(n23) );
  GTECH_FD2S cnt_reg_3_ ( .D(N11), .TI(n16), .TE(n16), .CP(clk), .CD(rstn), 
        .Q(cnt[3]), .QN(n22) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n16), .K(n16), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r), .QN(n5) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n16), .K(n16), .TI(N16), .TE(N15), .CP(n15), 
        .CD(rstn), .Q(clkn_div9_r) );
  GTECH_ZERO U26 ( .Z(n16) );
  GTECH_NOT U27 ( .A(clk), .Z(n15) );
  GTECH_OR_NOT U28 ( .A(clkn_div9_r), .B(n5), .Z(clk_div9) );
  GTECH_NOT U29 ( .A(n24), .Z(N9) );
  GTECH_AND2 U30 ( .A(n3), .B(n25), .Z(N8) );
  GTECH_NAND3 U31 ( .A(n4), .B(n26), .C(n23), .Z(n25) );
  GTECH_NOT U32 ( .A(n27), .Z(N16) );
  GTECH_OAI21 U33 ( .A(n26), .B(n28), .C(n27), .Z(N15) );
  GTECH_NAND4 U34 ( .A(n24), .B(n23), .C(n29), .D(n26), .Z(n27) );
  GTECH_OR_NOT U35 ( .A(n30), .B(n31), .Z(n28) );
  GTECH_NOT U36 ( .A(n22), .Z(n26) );
  GTECH_MUX2 U37 ( .A(n32), .B(n33), .S(n22), .Z(N11) );
  GTECH_AND2 U38 ( .A(n31), .B(n30), .Z(n33) );
  GTECH_NOT U39 ( .A(n23), .Z(n30) );
  GTECH_NOT U40 ( .A(n29), .Z(n31) );
  GTECH_OR_NOT U41 ( .A(N10), .B(n24), .Z(n32) );
  GTECH_XOR2 U42 ( .A(n34), .B(n4), .Z(n24) );
  GTECH_XOR2 U43 ( .A(n29), .B(n23), .Z(N10) );
  GTECH_OR_NOT U44 ( .A(n4), .B(n34), .Z(n29) );
  GTECH_NOT U45 ( .A(n3), .Z(n34) );
endmodule

