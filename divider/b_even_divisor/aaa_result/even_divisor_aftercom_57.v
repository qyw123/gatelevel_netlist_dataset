
module even_divisor ( rstn, clk, clk_div2, clk_div4, clk_div10 );
  input rstn, clk;
  output clk_div2, clk_div4, clk_div10;
  wire   N10, N11, N12, N13, N14, N15, n3, n11, n12, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28;
  wire   [3:0] cnt;

  GTECH_FJK2 clk_div2_r_reg ( .J(n12), .K(n12), .CP(clk), .CD(rstn), .Q(
        clk_div2) );
  GTECH_FJK2 clk_div4_r_reg ( .J(n12), .K(n12), .CP(clk_div2), .CD(rstn), .Q(
        clk_div4) );
  GTECH_FD2 cnt_reg_0_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n19) );
  GTECH_FD2 cnt_reg_1_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n18) );
  GTECH_FD2 cnt_reg_2_ ( .D(N12), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n17) );
  GTECH_FD2 cnt_reg_3_ ( .D(N13), .CP(clk), .CD(rstn), .Q(n3) );
  GTECH_FJK2S clk_div10_r_reg ( .J(n11), .K(n11), .TI(N14), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clk_div10), .QN(N14) );
  GTECH_ONE U18 ( .Z(n12) );
  GTECH_ZERO U19 ( .Z(n11) );
  GTECH_MUX2 U20 ( .A(n20), .B(n21), .S(n3), .Z(N13) );
  GTECH_OR2 U21 ( .A(n22), .B(n17), .Z(n21) );
  GTECH_NOR3 U22 ( .A(n18), .B(n17), .C(n19), .Z(n20) );
  GTECH_MUX2 U23 ( .A(n22), .B(n23), .S(n17), .Z(N12) );
  GTECH_AND_NOT U24 ( .A(n24), .B(n19), .Z(n23) );
  GTECH_OAI21 U25 ( .A(N15), .B(n24), .C(n25), .Z(n22) );
  GTECH_NOT U26 ( .A(n18), .Z(n24) );
  GTECH_XOR2 U27 ( .A(n19), .B(n18), .Z(N11) );
  GTECH_NOT U28 ( .A(n25), .Z(N10) );
  GTECH_OR_NOT U29 ( .A(N15), .B(n19), .Z(n25) );
  GTECH_NOT U30 ( .A(n26), .Z(N15) );
  GTECH_NAND4 U31 ( .A(n19), .B(n18), .C(n27), .D(n28), .Z(n26) );
  GTECH_NOT U32 ( .A(n3), .Z(n28) );
  GTECH_NOT U33 ( .A(n17), .Z(n27) );
endmodule

