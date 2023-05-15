
module half_divisor ( rstn, clk, clk_div3p5 );
  input rstn, clk;
  output clk_div3p5;
  wire   N8, N9, N10, N11, clk_ave_r, N12, clk_adjust_r, N14, n2, n3, n4, n5,
         n6, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n18) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n2) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n3) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n4) );
  GTECH_FD2 clk_ave_r_reg ( .D(N12), .CP(clk), .CD(rstn), .Q(clk_ave_r), .QN(
        n5) );
  GTECH_FD2 clk_adjust_r_reg ( .D(N14), .CP(n17), .CD(rstn), .Q(clk_adjust_r), 
        .QN(n6) );
  GTECH_NOT U21 ( .A(clk), .Z(n17) );
  GTECH_NAND2 U22 ( .A(n6), .B(n5), .Z(clk_div3p5) );
  GTECH_MUX2 U23 ( .A(N8), .B(n19), .S(n2), .Z(N9) );
  GTECH_MUX2 U24 ( .A(N12), .B(n20), .S(n4), .Z(N14) );
  GTECH_AND3 U25 ( .A(n2), .B(n19), .C(n3), .Z(n20) );
  GTECH_NOT U26 ( .A(n21), .Z(N12) );
  GTECH_OR3 U27 ( .A(n22), .B(n23), .C(n19), .Z(n21) );
  GTECH_NOT U28 ( .A(n3), .Z(n23) );
  GTECH_OAI22 U29 ( .A(n18), .B(n24), .C(n3), .D(n25), .Z(N11) );
  GTECH_AND2 U30 ( .A(n26), .B(n19), .Z(n25) );
  GTECH_AO21 U31 ( .A(N8), .B(n27), .C(n28), .Z(N10) );
  GTECH_MUX2 U32 ( .A(n2), .B(n29), .S(n4), .Z(n28) );
  GTECH_AND2 U33 ( .A(n19), .B(n22), .Z(n29) );
  GTECH_NOT U34 ( .A(n18), .Z(n19) );
  GTECH_NOT U35 ( .A(n30), .Z(N8) );
  GTECH_NAND2 U36 ( .A(n18), .B(n24), .Z(n30) );
  GTECH_NAND2 U37 ( .A(n3), .B(n26), .Z(n24) );
  GTECH_NOT U38 ( .A(n31), .Z(n26) );
  GTECH_NAND2 U39 ( .A(n27), .B(n22), .Z(n31) );
  GTECH_NOT U40 ( .A(n2), .Z(n22) );
  GTECH_NOT U41 ( .A(n4), .Z(n27) );
endmodule

