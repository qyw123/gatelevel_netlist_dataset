
module even_divisor ( rstn, clk, clk_div2, clk_div4, clk_div10 );
  input rstn, clk;
  output clk_div2, clk_div4, clk_div10;
  wire   N10, N11, N12, N13, N14, N15, n3, n4, n5, n16, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30;
  wire   [3:0] cnt;

  GTECH_FJK2 clk_div2_r_reg ( .J(n16), .K(n16), .CP(clk), .CD(rstn), .Q(
        clk_div2) );
  GTECH_FJK2 clk_div4_r_reg ( .J(n16), .K(n16), .CP(clk_div2), .CD(rstn), .Q(
        clk_div4) );
  GTECH_FD2 cnt_reg_0_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n3) );
  GTECH_FD2 cnt_reg_1_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n4) );
  GTECH_FD2 cnt_reg_2_ ( .D(N12), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n20) );
  GTECH_FD2 cnt_reg_3_ ( .D(N13), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n5) );
  GTECH_FJK2S clk_div10_r_reg ( .J(1'b0), .K(1'b0), .TI(N14), .TE(N15), .CP(
        clk), .CD(rstn), .Q(clk_div10), .QN(N14) );
  GTECH_ONE U20 ( .Z(n16) );
  GTECH_MUX2 U21 ( .A(n21), .B(n22), .S(n5), .Z(N13) );
  GTECH_AND3 U22 ( .A(n23), .B(n24), .C(n25), .Z(n22) );
  GTECH_OR_NOT U23 ( .A(n26), .B(n24), .Z(n21) );
  GTECH_NOT U24 ( .A(n20), .Z(n24) );
  GTECH_MUX2 U25 ( .A(n26), .B(n27), .S(n20), .Z(N12) );
  GTECH_AND2 U26 ( .A(n25), .B(n23), .Z(n27) );
  GTECH_OAI21 U27 ( .A(N15), .B(n23), .C(n28), .Z(n26) );
  GTECH_NOT U28 ( .A(n29), .Z(N15) );
  GTECH_XOR2 U29 ( .A(n4), .B(n3), .Z(N11) );
  GTECH_NOT U30 ( .A(n28), .Z(N10) );
  GTECH_NAND2 U31 ( .A(n3), .B(n29), .Z(n28) );
  GTECH_OR4 U32 ( .A(n23), .B(n30), .C(n20), .D(n25), .Z(n29) );
  GTECH_NOT U33 ( .A(n3), .Z(n25) );
  GTECH_NOT U34 ( .A(n5), .Z(n30) );
  GTECH_NOT U35 ( .A(n4), .Z(n23) );
endmodule

