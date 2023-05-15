
module half_divisor ( rstn, clk, clk_div3p5 );
  input rstn, clk;
  output clk_div3p5;
  wire   N8, N9, N10, N11, clk_ave_r, N12, clk_adjust_r, N14, n2, n3, n4, n14,
         n15, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35;
  wire   [3:0] cnt;

  GTECH_FD2S cnt_reg_0_ ( .D(N8), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), .Q(
        cnt[0]), .QN(n3) );
  GTECH_FD2S cnt_reg_1_ ( .D(N9), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), .Q(
        cnt[1]), .QN(n21) );
  GTECH_FD2S cnt_reg_3_ ( .D(N11), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), 
        .Q(cnt[3]), .QN(n23) );
  GTECH_FD2S cnt_reg_2_ ( .D(N10), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), 
        .Q(cnt[2]), .QN(n22) );
  GTECH_FD2S clk_ave_r_reg ( .D(N12), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), 
        .Q(clk_ave_r), .QN(n4) );
  GTECH_FD2S clk_adjust_r_reg ( .D(N14), .TI(n15), .TE(n15), .CP(n14), .CD(
        rstn), .Q(clk_adjust_r), .QN(n2) );
  GTECH_ZERO U26 ( .Z(n15) );
  GTECH_NOT U27 ( .A(clk), .Z(n14) );
  GTECH_NAND2 U28 ( .A(n4), .B(n2), .Z(clk_div3p5) );
  GTECH_MUX2 U29 ( .A(N8), .B(n24), .S(n21), .Z(N9) );
  GTECH_NOT U30 ( .A(n25), .Z(N8) );
  GTECH_MUX2 U31 ( .A(N12), .B(n26), .S(n22), .Z(N14) );
  GTECH_AND3 U32 ( .A(n21), .B(n24), .C(n23), .Z(n26) );
  GTECH_NOT U33 ( .A(n27), .Z(N12) );
  GTECH_NAND3 U34 ( .A(n23), .B(n21), .C(n3), .Z(n27) );
  GTECH_OAI22 U35 ( .A(n28), .B(n23), .C(n3), .D(n29), .Z(N11) );
  GTECH_NOR2 U36 ( .A(n3), .B(n30), .Z(n28) );
  GTECH_OAI21 U37 ( .A(n22), .B(n25), .C(n31), .Z(N10) );
  GTECH_MUX2 U38 ( .A(n32), .B(n33), .S(n22), .Z(n31) );
  GTECH_NAND2 U39 ( .A(n32), .B(n24), .Z(n33) );
  GTECH_NOT U40 ( .A(n3), .Z(n24) );
  GTECH_NAND2 U41 ( .A(n3), .B(n29), .Z(n25) );
  GTECH_NAND2 U42 ( .A(n23), .B(n34), .Z(n29) );
  GTECH_NOT U43 ( .A(n30), .Z(n34) );
  GTECH_NAND2 U44 ( .A(n35), .B(n32), .Z(n30) );
  GTECH_NOT U45 ( .A(n21), .Z(n32) );
  GTECH_NOT U46 ( .A(n22), .Z(n35) );
endmodule

