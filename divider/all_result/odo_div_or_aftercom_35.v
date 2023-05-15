
module odo_div_or ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n10, n13,
         n11, n16, n12, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34;
  wire   [3:0] cnt;

  GTECH_FD2S cnt_reg_0_ ( .D(N8), .TI(n12), .TE(n12), .CP(clk), .CD(rstn), .Q(
        cnt[0]), .QN(n21) );
  GTECH_FD2S cnt_reg_1_ ( .D(N9), .TI(n12), .TE(n12), .CP(clk), .CD(rstn), .Q(
        cnt[1]), .QN(n2) );
  GTECH_FD2S cnt_reg_2_ ( .D(N10), .TI(n12), .TE(n12), .CP(clk), .CD(rstn), 
        .Q(cnt[2]), .QN(n23) );
  GTECH_FD2S cnt_reg_3_ ( .D(N11), .TI(n12), .TE(n12), .CP(clk), .CD(rstn), 
        .Q(cnt[3]), .QN(n22) );
  GTECH_FJK3S clkp_div9_r_reg ( .J(n12), .K(n12), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .SD(n11), .Q(clkp_div9_r), .QN(n16) );
  GTECH_FJK3S clkn_div9_r_reg ( .J(n12), .K(n12), .TI(N16), .TE(N15), .CP(n10), 
        .CD(rstn), .SD(n11), .Q(clkn_div9_r), .QN(n13) );
  GTECH_ZERO U26 ( .Z(n12) );
  GTECH_ONE U27 ( .Z(n11) );
  GTECH_NOT U28 ( .A(clk), .Z(n10) );
  GTECH_NAND2 U29 ( .A(n16), .B(n13), .Z(clk_div9) );
  GTECH_NOT U30 ( .A(n24), .Z(N9) );
  GTECH_AND2 U31 ( .A(n21), .B(n25), .Z(N8) );
  GTECH_NAND3 U32 ( .A(n2), .B(n26), .C(n23), .Z(n25) );
  GTECH_NOT U33 ( .A(n27), .Z(N16) );
  GTECH_NAND2 U34 ( .A(n27), .B(n28), .Z(N15) );
  GTECH_NAND3 U35 ( .A(n29), .B(n23), .C(n22), .Z(n28) );
  GTECH_NAND4 U36 ( .A(n24), .B(n23), .C(n30), .D(n26), .Z(n27) );
  GTECH_NOT U37 ( .A(n22), .Z(n26) );
  GTECH_MUX2 U38 ( .A(n31), .B(n32), .S(n22), .Z(N11) );
  GTECH_AND_NOT U39 ( .A(n29), .B(n23), .Z(n32) );
  GTECH_NOT U40 ( .A(n30), .Z(n29) );
  GTECH_OR_NOT U41 ( .A(N10), .B(n24), .Z(n31) );
  GTECH_XOR2 U42 ( .A(n33), .B(n21), .Z(n24) );
  GTECH_XOR2 U43 ( .A(n30), .B(n23), .Z(N10) );
  GTECH_NAND2 U44 ( .A(n33), .B(n34), .Z(n30) );
  GTECH_NOT U45 ( .A(n21), .Z(n34) );
  GTECH_NOT U46 ( .A(n2), .Z(n33) );
endmodule

