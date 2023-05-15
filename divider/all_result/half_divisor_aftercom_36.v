
module half_divisor ( rstn, clk, clk_div3p5 );
  input rstn, clk;
  output clk_div3p5;
  wire   N8, N9, N10, N11, clk_ave_r, N12, clk_adjust_r, N14, n2, n3, n4, n5,
         n6, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n19) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n2) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n3) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n4) );
  GTECH_FD2 clk_ave_r_reg ( .D(N12), .CP(clk), .CD(rstn), .Q(clk_ave_r), .QN(
        n5) );
  GTECH_FD2 clk_adjust_r_reg ( .D(N14), .CP(n18), .CD(rstn), .Q(clk_adjust_r), 
        .QN(n6) );
  GTECH_NOT U22 ( .A(clk), .Z(n18) );
  GTECH_NAND2 U23 ( .A(n6), .B(n5), .Z(clk_div3p5) );
  GTECH_MUX2 U24 ( .A(N8), .B(n20), .S(n2), .Z(N9) );
  GTECH_MUX2 U25 ( .A(N12), .B(n21), .S(n4), .Z(N14) );
  GTECH_AND3 U26 ( .A(n2), .B(n20), .C(n3), .Z(n21) );
  GTECH_NOT U27 ( .A(n22), .Z(N12) );
  GTECH_NAND3 U28 ( .A(n3), .B(n2), .C(n19), .Z(n22) );
  GTECH_OAI2N2 U29 ( .A(n3), .B(n23), .C(n24), .D(n20), .Z(N11) );
  GTECH_NOT U30 ( .A(n25), .Z(n24) );
  GTECH_AND2 U31 ( .A(n26), .B(n20), .Z(n23) );
  GTECH_AO21 U32 ( .A(N8), .B(n27), .C(n28), .Z(N10) );
  GTECH_MUX2 U33 ( .A(n2), .B(n29), .S(n4), .Z(n28) );
  GTECH_AND2 U34 ( .A(n20), .B(n30), .Z(n29) );
  GTECH_NOT U35 ( .A(n19), .Z(n20) );
  GTECH_NOT U36 ( .A(n31), .Z(N8) );
  GTECH_NAND2 U37 ( .A(n19), .B(n25), .Z(n31) );
  GTECH_NAND2 U38 ( .A(n3), .B(n26), .Z(n25) );
  GTECH_NOT U39 ( .A(n32), .Z(n26) );
  GTECH_NAND2 U40 ( .A(n27), .B(n30), .Z(n32) );
  GTECH_NOT U41 ( .A(n2), .Z(n30) );
  GTECH_NOT U42 ( .A(n4), .Z(n27) );
endmodule

