
module half_divisor ( rstn, clk, clk_div3p5 );
  input rstn, clk;
  output clk_div3p5;
  wire   N8, N9, N10, N11, clk_ave_r, N12, clk_adjust_r, N14, n3, n4, n5, n17,
         n18, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36;
  wire   [3:0] cnt;

  GTECH_FD2S cnt_reg_0_ ( .D(N8), .TI(n18), .TE(n18), .CP(clk), .CD(rstn), .Q(
        cnt[0]), .QN(n24) );
  GTECH_FD2S cnt_reg_3_ ( .D(N11), .TI(n18), .TE(n18), .CP(clk), .CD(rstn), 
        .Q(cnt[3]), .QN(n25) );
  GTECH_FD2S cnt_reg_1_ ( .D(N9), .TI(n18), .TE(n18), .CP(clk), .CD(rstn), .Q(
        cnt[1]), .QN(n3) );
  GTECH_FD2S cnt_reg_2_ ( .D(N10), .TI(n18), .TE(n18), .CP(clk), .CD(rstn), 
        .Q(cnt[2]), .QN(n4) );
  GTECH_FD2S clk_ave_r_reg ( .D(N12), .TI(n18), .TE(n18), .CP(clk), .CD(rstn), 
        .Q(clk_ave_r), .QN(n5) );
  GTECH_FD2S clk_adjust_r_reg ( .D(N14), .TI(n18), .TE(n18), .CP(n17), .CD(
        rstn), .Q(clk_adjust_r) );
  GTECH_ZERO U28 ( .Z(n18) );
  GTECH_NOT U29 ( .A(clk), .Z(n17) );
  GTECH_OR_NOT U30 ( .A(clk_adjust_r), .B(n5), .Z(clk_div3p5) );
  GTECH_MUX2 U31 ( .A(N8), .B(n26), .S(n3), .Z(N9) );
  GTECH_NOT U32 ( .A(n27), .Z(N8) );
  GTECH_MUX2 U33 ( .A(N12), .B(n28), .S(n4), .Z(N14) );
  GTECH_AND3 U34 ( .A(n3), .B(n26), .C(n25), .Z(n28) );
  GTECH_NOT U35 ( .A(n29), .Z(N12) );
  GTECH_NAND3 U36 ( .A(n25), .B(n3), .C(n24), .Z(n29) );
  GTECH_OAI22 U37 ( .A(n24), .B(n30), .C(n25), .D(n31), .Z(N11) );
  GTECH_AND3 U38 ( .A(n32), .B(n33), .C(n26), .Z(n31) );
  GTECH_OAI21 U39 ( .A(n4), .B(n27), .C(n34), .Z(N10) );
  GTECH_MUX2 U40 ( .A(n32), .B(n35), .S(n4), .Z(n34) );
  GTECH_OR_NOT U41 ( .A(n3), .B(n26), .Z(n35) );
  GTECH_NOT U42 ( .A(n24), .Z(n26) );
  GTECH_OR_NOT U43 ( .A(n36), .B(n24), .Z(n27) );
  GTECH_NOT U44 ( .A(n30), .Z(n36) );
  GTECH_NAND3 U45 ( .A(n32), .B(n33), .C(n25), .Z(n30) );
  GTECH_NOT U46 ( .A(n4), .Z(n33) );
  GTECH_NOT U47 ( .A(n3), .Z(n32) );
endmodule
