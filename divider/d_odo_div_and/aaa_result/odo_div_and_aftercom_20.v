
module odo_div_and ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n11, n12,
         n13, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35;
  wire   [3:0] cnt;

  GTECH_FD2S cnt_reg_0_ ( .D(N8), .TI(n13), .TE(n13), .CP(clk), .CD(rstn), .Q(
        cnt[0]), .QN(n22) );
  GTECH_FD2S cnt_reg_1_ ( .D(N9), .TI(n13), .TE(n13), .CP(clk), .CD(rstn), .Q(
        cnt[1]), .QN(n2) );
  GTECH_FD2S cnt_reg_2_ ( .D(N10), .TI(n13), .TE(n13), .CP(clk), .CD(rstn), 
        .Q(cnt[2]), .QN(n24) );
  GTECH_FD2S cnt_reg_3_ ( .D(N11), .TI(n13), .TE(n13), .CP(clk), .CD(rstn), 
        .Q(cnt[3]), .QN(n23) );
  GTECH_FJK3S clkp_div9_r_reg ( .J(n13), .K(n13), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .SD(n12), .Q(clkp_div9_r) );
  GTECH_FJK3S clkn_div9_r_reg ( .J(n13), .K(n13), .TI(N16), .TE(N15), .CP(n11), 
        .CD(rstn), .SD(n12), .Q(clkn_div9_r) );
  GTECH_ZERO U27 ( .Z(n13) );
  GTECH_ONE U28 ( .Z(n12) );
  GTECH_NOT U29 ( .A(clk), .Z(n11) );
  GTECH_AND2 U30 ( .A(clkn_div9_r), .B(clkp_div9_r), .Z(clk_div9) );
  GTECH_AND2 U31 ( .A(n22), .B(n25), .Z(N8) );
  GTECH_NAND3 U32 ( .A(n2), .B(n26), .C(n24), .Z(n25) );
  GTECH_NOT U33 ( .A(n27), .Z(N16) );
  GTECH_OAI21 U34 ( .A(n28), .B(n29), .C(n27), .Z(N15) );
  GTECH_NAND4 U35 ( .A(n30), .B(n24), .C(n31), .D(n26), .Z(n27) );
  GTECH_NOT U36 ( .A(n31), .Z(n28) );
  GTECH_OAI21 U37 ( .A(n29), .B(n31), .C(n32), .Z(N11) );
  GTECH_OAI21 U38 ( .A(N9), .B(N10), .C(n26), .Z(n32) );
  GTECH_NOT U39 ( .A(n23), .Z(n26) );
  GTECH_NOT U40 ( .A(n30), .Z(N9) );
  GTECH_NAND3 U41 ( .A(n30), .B(n33), .C(n23), .Z(n29) );
  GTECH_NOT U42 ( .A(n24), .Z(n33) );
  GTECH_XOR2 U43 ( .A(n34), .B(n22), .Z(n30) );
  GTECH_XOR2 U44 ( .A(n31), .B(n24), .Z(N10) );
  GTECH_NAND2 U45 ( .A(n34), .B(n35), .Z(n31) );
  GTECH_NOT U46 ( .A(n22), .Z(n35) );
  GTECH_NOT U47 ( .A(n2), .Z(n34) );
endmodule

