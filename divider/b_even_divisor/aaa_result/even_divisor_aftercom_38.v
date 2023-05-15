
module even_divisor ( rstn, clk, clk_div2, clk_div4, clk_div10 );
  input rstn, clk;
  output clk_div2, clk_div4, clk_div10;
  wire   N10, N11, N12, N13, N14, N15, n3, n4, n14, n15, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28;
  wire   [3:0] cnt;

  GTECH_FJK2 clk_div2_r_reg ( .J(n15), .K(n15), .CP(clk), .CD(rstn), .Q(
        clk_div2) );
  GTECH_FJK2 clk_div4_r_reg ( .J(n15), .K(n15), .CP(clk_div2), .CD(rstn), .Q(
        clk_div4) );
  GTECH_FD2 cnt_reg_0_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n3) );
  GTECH_FD2 cnt_reg_1_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n20) );
  GTECH_FD2 cnt_reg_2_ ( .D(N12), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n19) );
  GTECH_FD2 cnt_reg_3_ ( .D(N13), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n4) );
  GTECH_FJK2S clk_div10_r_reg ( .J(n14), .K(n14), .TI(N14), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clk_div10), .QN(N14) );
  GTECH_ONE U20 ( .Z(n15) );
  GTECH_ZERO U21 ( .Z(n14) );
  GTECH_MUX2 U22 ( .A(n21), .B(n22), .S(n4), .Z(N13) );
  GTECH_NOR3 U23 ( .A(n20), .B(n3), .C(n19), .Z(n22) );
  GTECH_OR_NOT U24 ( .A(n23), .B(n24), .Z(n21) );
  GTECH_MUX2 U25 ( .A(n23), .B(n25), .S(n19), .Z(N12) );
  GTECH_AND_NOT U26 ( .A(n26), .B(n3), .Z(n25) );
  GTECH_OAI21 U27 ( .A(N15), .B(n26), .C(n27), .Z(n23) );
  GTECH_NOT U28 ( .A(n28), .Z(N15) );
  GTECH_XNOR2 U29 ( .A(n3), .B(n26), .Z(N11) );
  GTECH_NOT U30 ( .A(n20), .Z(n26) );
  GTECH_NOT U31 ( .A(n27), .Z(N10) );
  GTECH_NAND2 U32 ( .A(n3), .B(n28), .Z(n27) );
  GTECH_NAND4 U33 ( .A(n4), .B(n3), .C(n20), .D(n24), .Z(n28) );
  GTECH_NOT U34 ( .A(n19), .Z(n24) );
endmodule

