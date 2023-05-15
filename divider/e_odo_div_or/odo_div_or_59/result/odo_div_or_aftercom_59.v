
module odo_div_or ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n3, n4, n13,
         n14, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33;
  wire   [3:0] cnt;

  GTECH_FD2S cnt_reg_0_ ( .D(N8), .TI(n14), .TE(n14), .CP(clk), .CD(rstn), .Q(
        cnt[0]), .QN(n22) );
  GTECH_FD2S cnt_reg_1_ ( .D(N9), .TI(n14), .TE(n14), .CP(clk), .CD(rstn), .Q(
        cnt[1]), .QN(n3) );
  GTECH_FD2S cnt_reg_2_ ( .D(N10), .TI(n14), .TE(n14), .CP(clk), .CD(rstn), 
        .Q(cnt[2]), .QN(n21) );
  GTECH_FD2S cnt_reg_3_ ( .D(N11), .TI(n14), .TE(n14), .CP(clk), .CD(rstn), 
        .Q(cnt[3]), .QN(n20) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n14), .K(n14), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r), .QN(n4) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n14), .K(n14), .TI(N16), .TE(N15), .CP(n13), 
        .CD(rstn), .Q(clkn_div9_r), .QN(n2) );
  GTECH_ZERO U25 ( .Z(n14) );
  GTECH_NOT U26 ( .A(clk), .Z(n13) );
  GTECH_NAND2 U27 ( .A(n4), .B(n2), .Z(clk_div9) );
  GTECH_NOT U28 ( .A(n23), .Z(N9) );
  GTECH_AND2 U29 ( .A(n22), .B(n24), .Z(N8) );
  GTECH_NAND3 U30 ( .A(n3), .B(n25), .C(n21), .Z(n24) );
  GTECH_NOT U31 ( .A(n26), .Z(N16) );
  GTECH_NAND2 U32 ( .A(n26), .B(n27), .Z(N15) );
  GTECH_NAND3 U33 ( .A(n28), .B(n21), .C(n20), .Z(n27) );
  GTECH_NAND4 U34 ( .A(n23), .B(n21), .C(n29), .D(n25), .Z(n26) );
  GTECH_NOT U35 ( .A(n20), .Z(n25) );
  GTECH_MUX2 U36 ( .A(n30), .B(n31), .S(n20), .Z(N11) );
  GTECH_AND_NOT U37 ( .A(n28), .B(n21), .Z(n31) );
  GTECH_OR_NOT U38 ( .A(N10), .B(n23), .Z(n30) );
  GTECH_XNOR2 U39 ( .A(n3), .B(n22), .Z(n23) );
  GTECH_XNOR2 U40 ( .A(n21), .B(n28), .Z(N10) );
  GTECH_NOT U41 ( .A(n29), .Z(n28) );
  GTECH_NAND2 U42 ( .A(n32), .B(n33), .Z(n29) );
  GTECH_NOT U43 ( .A(n22), .Z(n33) );
  GTECH_NOT U44 ( .A(n3), .Z(n32) );
endmodule

