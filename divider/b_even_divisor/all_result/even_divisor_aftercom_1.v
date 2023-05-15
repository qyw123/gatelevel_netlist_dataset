
module even_divisor ( rstn, clk, clk_div2, clk_div4, clk_div10 );
  input rstn, clk;
  output clk_div2, clk_div4, clk_div10;
  wire   N10, N11, N12, N13, N14, N15, n3, n4, n5, n16, n15, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32;
  wire   [3:0] cnt;

  GTECH_FJK2S clk_div2_r_reg ( .J(n16), .K(n16), .TI(n15), .TE(n15), .CP(clk), 
        .CD(rstn), .Q(clk_div2) );
  GTECH_FJK2S clk_div4_r_reg ( .J(n16), .K(n16), .TI(n15), .TE(n15), .CP(
        clk_div2), .CD(rstn), .Q(clk_div4) );
  GTECH_FD2 cnt_reg_0_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n3) );
  GTECH_FD2 cnt_reg_1_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n4) );
  GTECH_FD2 cnt_reg_2_ ( .D(N12), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n22) );
  GTECH_FD2 cnt_reg_3_ ( .D(N13), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n5) );
  GTECH_FJK2S clk_div10_r_reg ( .J(n15), .K(n15), .TI(N14), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clk_div10), .QN(N14) );
  GTECH_ZERO U22 ( .Z(n15) );
  GTECH_ONE U23 ( .Z(n16) );
  GTECH_OAI21 U24 ( .A(n23), .B(n5), .C(n24), .Z(N13) );
  GTECH_NAND4 U25 ( .A(n25), .B(n26), .C(n27), .D(n5), .Z(n24) );
  GTECH_NOR2 U26 ( .A(n22), .B(n28), .Z(n23) );
  GTECH_OAI21 U27 ( .A(n22), .B(n29), .C(n30), .Z(N12) );
  GTECH_NAND3 U28 ( .A(n25), .B(n26), .C(n22), .Z(n30) );
  GTECH_NOT U29 ( .A(n3), .Z(n25) );
  GTECH_NOT U30 ( .A(n28), .Z(n29) );
  GTECH_OAI21 U31 ( .A(N15), .B(n26), .C(n31), .Z(n28) );
  GTECH_NOT U32 ( .A(n4), .Z(n26) );
  GTECH_NOT U33 ( .A(n32), .Z(N15) );
  GTECH_XOR2 U34 ( .A(n4), .B(n3), .Z(N11) );
  GTECH_NOT U35 ( .A(n31), .Z(N10) );
  GTECH_NAND2 U36 ( .A(n3), .B(n32), .Z(n31) );
  GTECH_NAND4 U37 ( .A(n5), .B(n4), .C(n3), .D(n27), .Z(n32) );
  GTECH_NOT U38 ( .A(n22), .Z(n27) );
endmodule

