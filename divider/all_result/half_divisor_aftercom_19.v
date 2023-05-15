
module half_divisor ( rstn, clk, clk_div3p5 );
  input rstn, clk;
  output clk_div3p5;
  wire   N8, N9, N10, N11, clk_ave_r, N12, clk_adjust_r, N14, n2, n4, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n17) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n19) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n2) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n18) );
  GTECH_FD2 clk_ave_r_reg ( .D(N12), .CP(clk), .CD(rstn), .Q(clk_ave_r) );
  GTECH_FD2 clk_adjust_r_reg ( .D(N14), .CP(n16), .CD(rstn), .Q(clk_adjust_r), 
        .QN(n4) );
  GTECH_NOT U22 ( .A(clk), .Z(n16) );
  GTECH_OR_NOT U23 ( .A(clk_ave_r), .B(n4), .Z(clk_div3p5) );
  GTECH_MUX2 U24 ( .A(N8), .B(n20), .S(n18), .Z(N9) );
  GTECH_NOT U25 ( .A(n21), .Z(N8) );
  GTECH_MUX2 U26 ( .A(N12), .B(n22), .S(n19), .Z(N14) );
  GTECH_AND3 U27 ( .A(n18), .B(n20), .C(n2), .Z(n22) );
  GTECH_NOT U28 ( .A(n23), .Z(N12) );
  GTECH_OR3 U29 ( .A(n24), .B(n25), .C(n20), .Z(n23) );
  GTECH_OAI22 U30 ( .A(n17), .B(n26), .C(n2), .D(n27), .Z(N11) );
  GTECH_NOR3 U31 ( .A(n18), .B(n19), .C(n17), .Z(n27) );
  GTECH_OAI21 U32 ( .A(n19), .B(n21), .C(n28), .Z(N10) );
  GTECH_MUX2 U33 ( .A(n24), .B(n29), .S(n19), .Z(n28) );
  GTECH_OR_NOT U34 ( .A(n18), .B(n20), .Z(n29) );
  GTECH_NOT U35 ( .A(n17), .Z(n20) );
  GTECH_NOT U36 ( .A(n18), .Z(n24) );
  GTECH_OR_NOT U37 ( .A(n30), .B(n17), .Z(n21) );
  GTECH_NOT U38 ( .A(n26), .Z(n30) );
  GTECH_OR3 U39 ( .A(n19), .B(n18), .C(n25), .Z(n26) );
  GTECH_NOT U40 ( .A(n2), .Z(n25) );
endmodule

