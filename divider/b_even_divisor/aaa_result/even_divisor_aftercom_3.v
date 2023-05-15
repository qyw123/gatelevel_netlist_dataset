
module even_divisor ( rstn, clk, clk_div2, clk_div4, clk_div10 );
  input rstn, clk;
  output clk_div2, clk_div4, clk_div10;
  wire   N10, N11, N12, N13, N14, N15, n3, n4, n5, n15, n16, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29;
  wire   [3:0] cnt;

  GTECH_FJK2 clk_div2_r_reg ( .J(n16), .K(n16), .CP(clk), .CD(rstn), .Q(
        clk_div2) );
  GTECH_FJK2 clk_div4_r_reg ( .J(n16), .K(n16), .CP(clk_div2), .CD(rstn), .Q(
        clk_div4) );
  GTECH_FD2 cnt_reg_0_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n3) );
  GTECH_FD2 cnt_reg_1_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n4) );
  GTECH_FD2 cnt_reg_2_ ( .D(N12), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n20) );
  GTECH_FD2 cnt_reg_3_ ( .D(N13), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n5) );
  GTECH_FJK2S clk_div10_r_reg ( .J(n15), .K(n15), .TI(N14), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clk_div10), .QN(N14) );
  GTECH_ONE U20 ( .Z(n16) );
  GTECH_ZERO U21 ( .Z(n15) );
  GTECH_MUX2 U22 ( .A(n21), .B(n22), .S(n5), .Z(N13) );
  GTECH_AND3 U23 ( .A(n23), .B(n24), .C(n25), .Z(n22) );
  GTECH_OR2 U24 ( .A(n20), .B(n26), .Z(n21) );
  GTECH_MUX2 U25 ( .A(n26), .B(n27), .S(n20), .Z(N12) );
  GTECH_AND2 U26 ( .A(n25), .B(n23), .Z(n27) );
  GTECH_NOT U27 ( .A(n3), .Z(n25) );
  GTECH_OAI21 U28 ( .A(N15), .B(n23), .C(n28), .Z(n26) );
  GTECH_NOT U29 ( .A(n4), .Z(n23) );
  GTECH_NOT U30 ( .A(n29), .Z(N15) );
  GTECH_XOR2 U31 ( .A(n4), .B(n3), .Z(N11) );
  GTECH_NOT U32 ( .A(n28), .Z(N10) );
  GTECH_NAND2 U33 ( .A(n3), .B(n29), .Z(n28) );
  GTECH_NAND4 U34 ( .A(n5), .B(n4), .C(n3), .D(n24), .Z(n29) );
  GTECH_NOT U35 ( .A(n20), .Z(n24) );
endmodule

