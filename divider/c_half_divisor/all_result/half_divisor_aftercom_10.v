
module half_divisor ( rstn, clk, clk_div3p5 );
  input rstn, clk;
  output clk_div3p5;
  wire   N8, N9, N10, N11, clk_ave_r, N12, clk_adjust_r, N14, n2, n3, n5, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n17) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n18) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n2) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n3) );
  GTECH_FD2 clk_ave_r_reg ( .D(N12), .CP(clk), .CD(rstn), .Q(clk_ave_r) );
  GTECH_FD2 clk_adjust_r_reg ( .D(N14), .CP(n16), .CD(rstn), .Q(clk_adjust_r), 
        .QN(n5) );
  GTECH_NOT U21 ( .A(clk), .Z(n16) );
  GTECH_OR_NOT U22 ( .A(clk_ave_r), .B(n5), .Z(clk_div3p5) );
  GTECH_MUX2 U23 ( .A(N8), .B(n19), .S(n2), .Z(N9) );
  GTECH_NOT U24 ( .A(n20), .Z(N8) );
  GTECH_MUX2 U25 ( .A(N12), .B(n21), .S(n3), .Z(N14) );
  GTECH_AND3 U26 ( .A(n2), .B(n19), .C(n18), .Z(n21) );
  GTECH_NOT U27 ( .A(n22), .Z(N12) );
  GTECH_NAND3 U28 ( .A(n18), .B(n2), .C(n17), .Z(n22) );
  GTECH_OAI22 U29 ( .A(n17), .B(n23), .C(n18), .D(n24), .Z(N11) );
  GTECH_AND3 U30 ( .A(n25), .B(n26), .C(n19), .Z(n24) );
  GTECH_OAI21 U31 ( .A(n3), .B(n20), .C(n27), .Z(N10) );
  GTECH_MUX2 U32 ( .A(n25), .B(n28), .S(n3), .Z(n27) );
  GTECH_OR_NOT U33 ( .A(n2), .B(n19), .Z(n28) );
  GTECH_NOT U34 ( .A(n17), .Z(n19) );
  GTECH_OR_NOT U35 ( .A(n29), .B(n17), .Z(n20) );
  GTECH_NOT U36 ( .A(n23), .Z(n29) );
  GTECH_NAND3 U37 ( .A(n25), .B(n26), .C(n18), .Z(n23) );
  GTECH_NOT U38 ( .A(n3), .Z(n26) );
  GTECH_NOT U39 ( .A(n2), .Z(n25) );
endmodule

