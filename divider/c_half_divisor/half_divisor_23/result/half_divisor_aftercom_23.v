
module half_divisor ( rstn, clk, clk_div3p5 );
  input rstn, clk;
  output clk_div3p5;
  wire   N8, N9, N10, N11, clk_ave_r, N12, clk_adjust_r, N14, n2, n3, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n19) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n17) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n20) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n18) );
  GTECH_FD2 clk_ave_r_reg ( .D(N12), .CP(clk), .CD(rstn), .Q(clk_ave_r), .QN(
        n2) );
  GTECH_FD2 clk_adjust_r_reg ( .D(N14), .CP(n16), .CD(rstn), .Q(clk_adjust_r), 
        .QN(n3) );
  GTECH_NOT U23 ( .A(clk), .Z(n16) );
  GTECH_NAND2 U24 ( .A(n3), .B(n2), .Z(clk_div3p5) );
  GTECH_OAI22 U25 ( .A(n19), .B(n21), .C(n17), .D(n22), .Z(N9) );
  GTECH_NOT U26 ( .A(n22), .Z(N8) );
  GTECH_OAI21 U27 ( .A(n18), .B(n23), .C(n24), .Z(N14) );
  GTECH_NAND4 U28 ( .A(n17), .B(n25), .C(n20), .D(n18), .Z(n24) );
  GTECH_NOT U29 ( .A(n23), .Z(N12) );
  GTECH_NAND3 U30 ( .A(n20), .B(n17), .C(n19), .Z(n23) );
  GTECH_OAI22 U31 ( .A(n26), .B(n20), .C(n19), .D(n27), .Z(N11) );
  GTECH_NOR2 U32 ( .A(n19), .B(n28), .Z(n26) );
  GTECH_OAI21 U33 ( .A(n18), .B(n22), .C(n29), .Z(N10) );
  GTECH_OA21 U34 ( .A(n18), .B(n21), .C(n30), .Z(n29) );
  GTECH_NAND3 U35 ( .A(n21), .B(n25), .C(n18), .Z(n30) );
  GTECH_NOT U36 ( .A(n19), .Z(n25) );
  GTECH_NAND2 U37 ( .A(n19), .B(n27), .Z(n22) );
  GTECH_NAND2 U38 ( .A(n20), .B(n31), .Z(n27) );
  GTECH_NOT U39 ( .A(n28), .Z(n31) );
  GTECH_NAND2 U40 ( .A(n32), .B(n21), .Z(n28) );
  GTECH_NOT U41 ( .A(n17), .Z(n21) );
  GTECH_NOT U42 ( .A(n18), .Z(n32) );
endmodule

