
module half_divisor ( rstn, clk, clk_div3p5 );
  input rstn, clk;
  output clk_div3p5;
  wire   N8, N9, N10, N11, clk_ave_r, N12, clk_adjust_r, N14, n2, n3, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n16) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n15) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n17) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n18) );
  GTECH_FD2 clk_ave_r_reg ( .D(N12), .CP(clk), .CD(rstn), .Q(clk_ave_r), .QN(
        n2) );
  GTECH_FD2 clk_adjust_r_reg ( .D(N14), .CP(n14), .CD(rstn), .Q(clk_adjust_r), 
        .QN(n3) );
  GTECH_NOT U21 ( .A(clk), .Z(n14) );
  GTECH_NAND2 U22 ( .A(n3), .B(n2), .Z(clk_div3p5) );
  GTECH_MUX2 U23 ( .A(N8), .B(n19), .S(n15), .Z(N9) );
  GTECH_NOT U24 ( .A(n20), .Z(N8) );
  GTECH_MUX2 U25 ( .A(N12), .B(n21), .S(n18), .Z(N14) );
  GTECH_AND3 U26 ( .A(n15), .B(n19), .C(n17), .Z(n21) );
  GTECH_NOT U27 ( .A(n22), .Z(N12) );
  GTECH_NAND3 U28 ( .A(n17), .B(n15), .C(n16), .Z(n22) );
  GTECH_OAI21 U29 ( .A(n16), .B(n23), .C(n24), .Z(N11) );
  GTECH_OAI21 U30 ( .A(n16), .B(n25), .C(n26), .Z(n24) );
  GTECH_NOT U31 ( .A(n17), .Z(n26) );
  GTECH_OAI21 U32 ( .A(n18), .B(n20), .C(n27), .Z(N10) );
  GTECH_MUX2 U33 ( .A(n28), .B(n29), .S(n18), .Z(n27) );
  GTECH_NAND2 U34 ( .A(n28), .B(n19), .Z(n29) );
  GTECH_NOT U35 ( .A(n16), .Z(n19) );
  GTECH_NAND2 U36 ( .A(n16), .B(n23), .Z(n20) );
  GTECH_NAND2 U37 ( .A(n17), .B(n30), .Z(n23) );
  GTECH_NOT U38 ( .A(n25), .Z(n30) );
  GTECH_NAND2 U39 ( .A(n31), .B(n28), .Z(n25) );
  GTECH_NOT U40 ( .A(n15), .Z(n28) );
  GTECH_NOT U41 ( .A(n18), .Z(n31) );
endmodule

