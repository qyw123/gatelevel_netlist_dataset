
module half_divisor ( rstn, clk, clk_div3p5 );
  input rstn, clk;
  output clk_div3p5;
  wire   N8, N9, N10, N11, clk_ave_r, N12, clk_adjust_r, N14, n2, n3, n5, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n18) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n19) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n2) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n3) );
  GTECH_FD2 clk_ave_r_reg ( .D(N12), .CP(clk), .CD(rstn), .Q(clk_ave_r) );
  GTECH_FD2 clk_adjust_r_reg ( .D(N14), .CP(n17), .CD(rstn), .Q(clk_adjust_r), 
        .QN(n5) );
  GTECH_NOT U22 ( .A(clk), .Z(n17) );
  GTECH_OR_NOT U23 ( .A(clk_ave_r), .B(n5), .Z(clk_div3p5) );
  GTECH_OAI22 U24 ( .A(n18), .B(n20), .C(n2), .D(n21), .Z(N9) );
  GTECH_NOT U25 ( .A(n21), .Z(N8) );
  GTECH_OAI21 U26 ( .A(n3), .B(n22), .C(n23), .Z(N14) );
  GTECH_NAND4 U27 ( .A(n2), .B(n24), .C(n19), .D(n3), .Z(n23) );
  GTECH_NOT U28 ( .A(n22), .Z(N12) );
  GTECH_NAND3 U29 ( .A(n19), .B(n2), .C(n18), .Z(n22) );
  GTECH_OAI22 U30 ( .A(n18), .B(n25), .C(n19), .D(n26), .Z(N11) );
  GTECH_AND3 U31 ( .A(n20), .B(n27), .C(n24), .Z(n26) );
  GTECH_OAI21 U32 ( .A(n3), .B(n21), .C(n28), .Z(N10) );
  GTECH_OA21 U33 ( .A(n3), .B(n20), .C(n29), .Z(n28) );
  GTECH_NAND3 U34 ( .A(n24), .B(n20), .C(n3), .Z(n29) );
  GTECH_NOT U35 ( .A(n18), .Z(n24) );
  GTECH_OR_NOT U36 ( .A(n30), .B(n18), .Z(n21) );
  GTECH_NOT U37 ( .A(n25), .Z(n30) );
  GTECH_NAND3 U38 ( .A(n20), .B(n27), .C(n19), .Z(n25) );
  GTECH_NOT U39 ( .A(n3), .Z(n27) );
  GTECH_NOT U40 ( .A(n2), .Z(n20) );
endmodule

