
module half_divisor ( rstn, clk, clk_div3p5 );
  input rstn, clk;
  output clk_div3p5;
  wire   N8, N9, N10, N11, clk_ave_r, N12, clk_adjust_r, N14, n2, n3, n4, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n2) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n15) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n17) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n16) );
  GTECH_FD2 clk_ave_r_reg ( .D(N12), .CP(clk), .CD(rstn), .Q(clk_ave_r), .QN(
        n3) );
  GTECH_FD2 clk_adjust_r_reg ( .D(N14), .CP(n14), .CD(rstn), .Q(clk_adjust_r), 
        .QN(n4) );
  GTECH_NOT U20 ( .A(clk), .Z(n14) );
  GTECH_NAND2 U21 ( .A(n4), .B(n3), .Z(clk_div3p5) );
  GTECH_OAI22 U22 ( .A(n2), .B(n18), .C(n15), .D(n19), .Z(N9) );
  GTECH_NOT U23 ( .A(n19), .Z(N8) );
  GTECH_OAI21 U24 ( .A(n16), .B(n20), .C(n21), .Z(N14) );
  GTECH_NAND4 U25 ( .A(n15), .B(n22), .C(n17), .D(n16), .Z(n21) );
  GTECH_NOT U26 ( .A(n20), .Z(N12) );
  GTECH_OR3 U27 ( .A(n18), .B(n23), .C(n22), .Z(n20) );
  GTECH_NOT U28 ( .A(n2), .Z(n22) );
  GTECH_OAI21 U29 ( .A(n2), .B(n24), .C(n25), .Z(N11) );
  GTECH_OAI21 U30 ( .A(n2), .B(n26), .C(n23), .Z(n25) );
  GTECH_NOT U31 ( .A(n17), .Z(n23) );
  GTECH_OAI21 U32 ( .A(n16), .B(n19), .C(n27), .Z(N10) );
  GTECH_OA21 U33 ( .A(n16), .B(n18), .C(n28), .Z(n27) );
  GTECH_OR3 U34 ( .A(n2), .B(n15), .C(n29), .Z(n28) );
  GTECH_NAND2 U35 ( .A(n2), .B(n24), .Z(n19) );
  GTECH_NAND2 U36 ( .A(n17), .B(n30), .Z(n24) );
  GTECH_NOT U37 ( .A(n26), .Z(n30) );
  GTECH_NAND2 U38 ( .A(n29), .B(n18), .Z(n26) );
  GTECH_NOT U39 ( .A(n15), .Z(n18) );
  GTECH_NOT U40 ( .A(n16), .Z(n29) );
endmodule

