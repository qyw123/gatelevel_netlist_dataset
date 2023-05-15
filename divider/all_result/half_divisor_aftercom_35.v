
module half_divisor ( rstn, clk, clk_div3p5 );
  input rstn, clk;
  output clk_div3p5;
  wire   N8, N9, N10, N11, clk_ave_r, N12, clk_adjust_r, N14, n2, n3, n4, n5,
         n6, n17, n18, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34;
  wire   [3:0] cnt;

  GTECH_FD2S cnt_reg_0_ ( .D(N8), .TI(n18), .TE(n18), .CP(clk), .CD(rstn), .Q(
        cnt[0]), .QN(n24) );
  GTECH_FD2S cnt_reg_1_ ( .D(N9), .TI(n18), .TE(n18), .CP(clk), .CD(rstn), .Q(
        cnt[1]), .QN(n3) );
  GTECH_FD2S cnt_reg_3_ ( .D(N11), .TI(n18), .TE(n18), .CP(clk), .CD(rstn), 
        .Q(cnt[3]), .QN(n4) );
  GTECH_FD2S cnt_reg_2_ ( .D(N10), .TI(n18), .TE(n18), .CP(clk), .CD(rstn), 
        .Q(cnt[2]), .QN(n5) );
  GTECH_FD2S clk_ave_r_reg ( .D(N12), .TI(n18), .TE(n18), .CP(clk), .CD(rstn), 
        .Q(clk_ave_r), .QN(n6) );
  GTECH_FD2S clk_adjust_r_reg ( .D(N14), .TI(n18), .TE(n18), .CP(n17), .CD(
        rstn), .Q(clk_adjust_r), .QN(n2) );
  GTECH_ZERO U27 ( .Z(n18) );
  GTECH_NOT U28 ( .A(clk), .Z(n17) );
  GTECH_NAND2 U29 ( .A(n6), .B(n2), .Z(clk_div3p5) );
  GTECH_MUX2 U30 ( .A(N8), .B(n25), .S(n3), .Z(N9) );
  GTECH_MUX2 U31 ( .A(N12), .B(n26), .S(n5), .Z(N14) );
  GTECH_AND3 U32 ( .A(n3), .B(n25), .C(n4), .Z(n26) );
  GTECH_NOT U33 ( .A(n27), .Z(N12) );
  GTECH_NAND3 U34 ( .A(n4), .B(n3), .C(n24), .Z(n27) );
  GTECH_OAI22 U35 ( .A(n24), .B(n28), .C(n4), .D(n29), .Z(N11) );
  GTECH_AND3 U36 ( .A(n30), .B(n31), .C(n25), .Z(n29) );
  GTECH_AO21 U37 ( .A(N8), .B(n31), .C(n32), .Z(N10) );
  GTECH_MUX2 U38 ( .A(n3), .B(n33), .S(n5), .Z(n32) );
  GTECH_AND2 U39 ( .A(n25), .B(n30), .Z(n33) );
  GTECH_NOT U40 ( .A(n24), .Z(n25) );
  GTECH_NOT U41 ( .A(n34), .Z(N8) );
  GTECH_NAND2 U42 ( .A(n24), .B(n28), .Z(n34) );
  GTECH_NAND3 U43 ( .A(n30), .B(n31), .C(n4), .Z(n28) );
  GTECH_NOT U44 ( .A(n5), .Z(n31) );
  GTECH_NOT U45 ( .A(n3), .Z(n30) );
endmodule

