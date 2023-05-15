
module half_divisor ( rstn, clk, clk_div3p5 );
  input rstn, clk;
  output clk_div3p5;
  wire   N8, N9, N10, N11, clk_ave_r, N12, clk_adjust_r, N14, n2, n3, n14, n15,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37;
  wire   [3:0] cnt;

  GTECH_FD2S cnt_reg_0_ ( .D(N8), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), .Q(
        cnt[0]), .QN(n22) );
  GTECH_FD2S cnt_reg_1_ ( .D(N9), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), .Q(
        cnt[1]), .QN(n21) );
  GTECH_FD2S cnt_reg_3_ ( .D(N11), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), 
        .Q(cnt[3]), .QN(n23) );
  GTECH_FD2S cnt_reg_2_ ( .D(N10), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), 
        .Q(cnt[2]), .QN(n24) );
  GTECH_FD2S clk_ave_r_reg ( .D(N12), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), 
        .Q(clk_ave_r), .QN(n2) );
  GTECH_FD2S clk_adjust_r_reg ( .D(N14), .TI(n15), .TE(n15), .CP(n14), .CD(
        rstn), .Q(clk_adjust_r), .QN(n3) );
  GTECH_ZERO U27 ( .Z(n15) );
  GTECH_NOT U28 ( .A(clk), .Z(n14) );
  GTECH_NAND2 U29 ( .A(n3), .B(n2), .Z(clk_div3p5) );
  GTECH_MUX2 U30 ( .A(N8), .B(n25), .S(n21), .Z(N9) );
  GTECH_NOT U31 ( .A(n26), .Z(N8) );
  GTECH_MUX2 U32 ( .A(N12), .B(n27), .S(n24), .Z(N14) );
  GTECH_AND3 U33 ( .A(n21), .B(n25), .C(n23), .Z(n27) );
  GTECH_NOT U34 ( .A(n28), .Z(N12) );
  GTECH_NAND3 U35 ( .A(n23), .B(n21), .C(n22), .Z(n28) );
  GTECH_OAI21 U36 ( .A(n22), .B(n29), .C(n30), .Z(N11) );
  GTECH_OAI21 U37 ( .A(n22), .B(n31), .C(n32), .Z(n30) );
  GTECH_NOT U38 ( .A(n23), .Z(n32) );
  GTECH_OAI21 U39 ( .A(n24), .B(n26), .C(n33), .Z(N10) );
  GTECH_MUX2 U40 ( .A(n34), .B(n35), .S(n24), .Z(n33) );
  GTECH_NAND2 U41 ( .A(n34), .B(n25), .Z(n35) );
  GTECH_NOT U42 ( .A(n22), .Z(n25) );
  GTECH_NAND2 U43 ( .A(n22), .B(n29), .Z(n26) );
  GTECH_NAND2 U44 ( .A(n23), .B(n36), .Z(n29) );
  GTECH_NOT U45 ( .A(n31), .Z(n36) );
  GTECH_NAND2 U46 ( .A(n37), .B(n34), .Z(n31) );
  GTECH_NOT U47 ( .A(n21), .Z(n34) );
  GTECH_NOT U48 ( .A(n24), .Z(n37) );
endmodule

