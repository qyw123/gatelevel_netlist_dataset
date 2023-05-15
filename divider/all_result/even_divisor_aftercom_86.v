
module even_divisor ( rstn, clk, clk_div2, clk_div4, clk_div10 );
  input rstn, clk;
  output clk_div2, clk_div4, clk_div10;
  wire   N10, N11, N12, N13, N14, N15, n3, n4, n13, n14, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29;
  wire   [3:0] cnt;

  GTECH_FJK2 clk_div2_r_reg ( .J(n14), .K(n14), .CP(clk), .CD(rstn), .Q(
        clk_div2) );
  GTECH_FJK2 clk_div4_r_reg ( .J(n14), .K(n14), .CP(clk_div2), .CD(rstn), .Q(
        clk_div4) );
  GTECH_FD2 cnt_reg_0_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n3) );
  GTECH_FD2 cnt_reg_1_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n19) );
  GTECH_FD2 cnt_reg_2_ ( .D(N12), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n18) );
  GTECH_FD2 cnt_reg_3_ ( .D(N13), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n4) );
  GTECH_FJK2S clk_div10_r_reg ( .J(n13), .K(n13), .TI(N14), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clk_div10), .QN(N14) );
  GTECH_ONE U19 ( .Z(n14) );
  GTECH_ZERO U20 ( .Z(n13) );
  GTECH_NOT U21 ( .A(n20), .Z(N15) );
  GTECH_NAND2 U22 ( .A(n21), .B(n22), .Z(N13) );
  GTECH_AO21 U23 ( .A(n23), .B(n24), .C(n4), .Z(n22) );
  GTECH_NAND4 U24 ( .A(n25), .B(n26), .C(n24), .D(n4), .Z(n21) );
  GTECH_OAI22 U25 ( .A(n24), .B(n27), .C(n18), .D(n23), .Z(N12) );
  GTECH_NOT U26 ( .A(n28), .Z(n23) );
  GTECH_AO21 U27 ( .A(n19), .B(n20), .C(N10), .Z(n28) );
  GTECH_NAND2 U28 ( .A(n25), .B(n26), .Z(n27) );
  GTECH_NOT U29 ( .A(n3), .Z(n26) );
  GTECH_NOT U30 ( .A(n19), .Z(n25) );
  GTECH_XOR2 U31 ( .A(n3), .B(n19), .Z(N11) );
  GTECH_NOT U32 ( .A(n29), .Z(N10) );
  GTECH_NAND2 U33 ( .A(n3), .B(n20), .Z(n29) );
  GTECH_NAND4 U34 ( .A(n4), .B(n3), .C(n19), .D(n24), .Z(n20) );
  GTECH_NOT U35 ( .A(n18), .Z(n24) );
endmodule

