
module half_divisor ( rstn, clk, clk_div3p5 );
  input rstn, clk;
  output clk_div3p5;
  wire   N8, N9, N10, N11, clk_ave_r, N12, clk_adjust_r, N14, n2, n3, n16, n17,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39;
  wire   [3:0] cnt;

  GTECH_FD2S cnt_reg_0_ ( .D(N8), .TI(n17), .TE(n17), .CP(clk), .CD(rstn), .Q(
        cnt[0]), .QN(n25) );
  GTECH_FD2S cnt_reg_1_ ( .D(N9), .TI(n17), .TE(n17), .CP(clk), .CD(rstn), .Q(
        cnt[1]), .QN(n23) );
  GTECH_FD2S cnt_reg_3_ ( .D(N11), .TI(n17), .TE(n17), .CP(clk), .CD(rstn), 
        .Q(cnt[3]), .QN(n26) );
  GTECH_FD2S cnt_reg_2_ ( .D(N10), .TI(n17), .TE(n17), .CP(clk), .CD(rstn), 
        .Q(cnt[2]), .QN(n24) );
  GTECH_FD2S clk_ave_r_reg ( .D(N12), .TI(n17), .TE(n17), .CP(clk), .CD(rstn), 
        .Q(clk_ave_r), .QN(n2) );
  GTECH_FD2S clk_adjust_r_reg ( .D(N14), .TI(n17), .TE(n17), .CP(n16), .CD(
        rstn), .Q(clk_adjust_r), .QN(n3) );
  GTECH_ZERO U29 ( .Z(n17) );
  GTECH_NOT U30 ( .A(clk), .Z(n16) );
  GTECH_NAND2 U31 ( .A(n3), .B(n2), .Z(clk_div3p5) );
  GTECH_MUX2 U32 ( .A(N8), .B(n27), .S(n23), .Z(N9) );
  GTECH_NOT U33 ( .A(n28), .Z(N8) );
  GTECH_MUX2 U34 ( .A(N12), .B(n29), .S(n24), .Z(N14) );
  GTECH_NOR3 U35 ( .A(n30), .B(n25), .C(n31), .Z(n29) );
  GTECH_NOT U36 ( .A(n32), .Z(N12) );
  GTECH_NAND3 U37 ( .A(n26), .B(n23), .C(n25), .Z(n32) );
  GTECH_OAI21 U38 ( .A(n25), .B(n33), .C(n34), .Z(N11) );
  GTECH_OAI21 U39 ( .A(n25), .B(n35), .C(n30), .Z(n34) );
  GTECH_NOT U40 ( .A(n26), .Z(n30) );
  GTECH_OAI21 U41 ( .A(n24), .B(n28), .C(n36), .Z(N10) );
  GTECH_MUX2 U42 ( .A(n31), .B(n37), .S(n24), .Z(n36) );
  GTECH_NAND2 U43 ( .A(n31), .B(n27), .Z(n37) );
  GTECH_NOT U44 ( .A(n25), .Z(n27) );
  GTECH_NAND2 U45 ( .A(n25), .B(n33), .Z(n28) );
  GTECH_NAND2 U46 ( .A(n26), .B(n38), .Z(n33) );
  GTECH_NOT U47 ( .A(n35), .Z(n38) );
  GTECH_NAND2 U48 ( .A(n39), .B(n31), .Z(n35) );
  GTECH_NOT U49 ( .A(n23), .Z(n31) );
  GTECH_NOT U50 ( .A(n24), .Z(n39) );
endmodule

