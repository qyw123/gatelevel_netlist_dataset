
module even_divisor ( rstn, clk, clk_div2, clk_div4, clk_div10 );
  input rstn, clk;
  output clk_div2, clk_div4, clk_div10;
  wire   N10, N11, N12, N13, N14, N15, n3, n4, n5, n14, n15, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29;
  wire   [3:0] cnt;

  GTECH_FJK2 clk_div2_r_reg ( .J(n15), .K(n15), .CP(clk), .CD(rstn), .Q(
        clk_div2) );
  GTECH_FJK2 clk_div4_r_reg ( .J(n15), .K(n15), .CP(clk_div2), .CD(rstn), .Q(
        clk_div4) );
  GTECH_FD2 cnt_reg_0_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n3) );
  GTECH_FD2 cnt_reg_1_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n4) );
  GTECH_FD2 cnt_reg_2_ ( .D(N12), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n19) );
  GTECH_FD2 cnt_reg_3_ ( .D(N13), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n5) );
  GTECH_FJK2S clk_div10_r_reg ( .J(n14), .K(n14), .TI(N14), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clk_div10), .QN(N14) );
  GTECH_ONE U19 ( .Z(n15) );
  GTECH_ZERO U20 ( .Z(n14) );
  GTECH_OAI21 U21 ( .A(n20), .B(n5), .C(n21), .Z(N13) );
  GTECH_NAND4 U22 ( .A(n22), .B(n23), .C(n24), .D(n5), .Z(n21) );
  GTECH_NOR2 U23 ( .A(n19), .B(n25), .Z(n20) );
  GTECH_OAI21 U24 ( .A(n19), .B(n26), .C(n27), .Z(N12) );
  GTECH_NAND3 U25 ( .A(n22), .B(n23), .C(n19), .Z(n27) );
  GTECH_NOT U26 ( .A(n3), .Z(n22) );
  GTECH_NOT U27 ( .A(n25), .Z(n26) );
  GTECH_OAI21 U28 ( .A(N15), .B(n23), .C(n28), .Z(n25) );
  GTECH_NOT U29 ( .A(n4), .Z(n23) );
  GTECH_NOT U30 ( .A(n29), .Z(N15) );
  GTECH_XOR2 U31 ( .A(n4), .B(n3), .Z(N11) );
  GTECH_NOT U32 ( .A(n28), .Z(N10) );
  GTECH_NAND2 U33 ( .A(n3), .B(n29), .Z(n28) );
  GTECH_NAND4 U34 ( .A(n5), .B(n4), .C(n3), .D(n24), .Z(n29) );
  GTECH_NOT U35 ( .A(n19), .Z(n24) );
endmodule

