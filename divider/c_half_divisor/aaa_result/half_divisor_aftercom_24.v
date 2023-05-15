
module half_divisor ( rstn, clk, clk_div3p5 );
  input rstn, clk;
  output clk_div3p5;
  wire   N8, N9, N10, N11, clk_ave_r, N12, clk_adjust_r, N14, n2, n3, n4, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n19) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n18) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n20) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n2) );
  GTECH_FD2 clk_ave_r_reg ( .D(N12), .CP(clk), .CD(rstn), .Q(clk_ave_r), .QN(
        n3) );
  GTECH_FD2 clk_adjust_r_reg ( .D(N14), .CP(n17), .CD(rstn), .Q(clk_adjust_r), 
        .QN(n4) );
  GTECH_NOT U23 ( .A(clk), .Z(n17) );
  GTECH_NAND2 U24 ( .A(n4), .B(n3), .Z(clk_div3p5) );
  GTECH_MUX2 U25 ( .A(N8), .B(n21), .S(n18), .Z(N9) );
  GTECH_NOT U26 ( .A(n22), .Z(N8) );
  GTECH_MUX2 U27 ( .A(N12), .B(n23), .S(n2), .Z(N14) );
  GTECH_NOR3 U28 ( .A(n24), .B(n19), .C(n25), .Z(n23) );
  GTECH_NOT U29 ( .A(n26), .Z(N12) );
  GTECH_OR3 U30 ( .A(n25), .B(n24), .C(n21), .Z(n26) );
  GTECH_OAI21 U31 ( .A(n19), .B(n27), .C(n28), .Z(N11) );
  GTECH_OAI21 U32 ( .A(n19), .B(n29), .C(n24), .Z(n28) );
  GTECH_NOT U33 ( .A(n20), .Z(n24) );
  GTECH_OAI21 U34 ( .A(n2), .B(n22), .C(n30), .Z(N10) );
  GTECH_MUX2 U35 ( .A(n25), .B(n31), .S(n2), .Z(n30) );
  GTECH_NAND2 U36 ( .A(n25), .B(n21), .Z(n31) );
  GTECH_NOT U37 ( .A(n19), .Z(n21) );
  GTECH_NAND2 U38 ( .A(n19), .B(n27), .Z(n22) );
  GTECH_NAND2 U39 ( .A(n20), .B(n32), .Z(n27) );
  GTECH_NOT U40 ( .A(n29), .Z(n32) );
  GTECH_NAND2 U41 ( .A(n33), .B(n25), .Z(n29) );
  GTECH_NOT U42 ( .A(n18), .Z(n25) );
  GTECH_NOT U43 ( .A(n2), .Z(n33) );
endmodule

