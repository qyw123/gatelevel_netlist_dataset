
module half_divisor ( rstn, clk, clk_div3p5 );
  input rstn, clk;
  output clk_div3p5;
  wire   N8, N9, N10, N11, clk_ave_r, N12, clk_adjust_r, N14, n2, n3, n4, n5,
         n6, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;
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
  GTECH_NAND3 U27 ( .A(n3), .B(n2), .C(n18), .Z(n21) );
  GTECH_OAI22 U28 ( .A(n18), .B(n22), .C(n3), .D(n23), .Z(N11) );
  GTECH_AND3 U29 ( .A(n24), .B(n25), .C(n19), .Z(n23) );
  GTECH_AO21 U30 ( .A(N8), .B(n25), .C(n26), .Z(N10) );
  GTECH_MUX2 U31 ( .A(n2), .B(n27), .S(n4), .Z(n26) );
  GTECH_AND2 U32 ( .A(n19), .B(n24), .Z(n27) );
  GTECH_NOT U33 ( .A(n18), .Z(n19) );
  GTECH_NOT U34 ( .A(n28), .Z(N8) );
  GTECH_NAND2 U35 ( .A(n18), .B(n22), .Z(n28) );
  GTECH_NAND3 U36 ( .A(n24), .B(n25), .C(n3), .Z(n22) );
  GTECH_NOT U37 ( .A(n4), .Z(n25) );
  GTECH_NOT U38 ( .A(n2), .Z(n24) );
endmodule

