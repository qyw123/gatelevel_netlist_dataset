
module even_divisor ( rstn, clk, clk_div2, clk_div4, clk_div10 );
  input rstn, clk;
  output clk_div2, clk_div4, clk_div10;
  wire   N10, N11, N12, N13, N14, N15, n3, n12, n13, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28;
  wire   [3:0] cnt;

  GTECH_FJK2 clk_div2_r_reg ( .J(n13), .K(n13), .CP(clk), .CD(rstn), .Q(
        clk_div2) );
  GTECH_FJK2 clk_div4_r_reg ( .J(n13), .K(n13), .CP(clk_div2), .CD(rstn), .Q(
        clk_div4) );
  GTECH_FD2 cnt_reg_0_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n19) );
  GTECH_FD2 cnt_reg_1_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n18) );
  GTECH_FD2 cnt_reg_2_ ( .D(N12), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n17) );
  GTECH_FD2 cnt_reg_3_ ( .D(N13), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n3) );
  GTECH_FJK2S clk_div10_r_reg ( .J(n12), .K(n12), .TI(N14), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clk_div10), .QN(N14) );
  GTECH_ONE U19 ( .Z(n13) );
  GTECH_ZERO U20 ( .Z(n12) );
  GTECH_NOT U21 ( .A(n20), .Z(N15) );
  GTECH_MUX2 U22 ( .A(n21), .B(n22), .S(n3), .Z(N13) );
  GTECH_AND3 U23 ( .A(n23), .B(n24), .C(n25), .Z(n22) );
  GTECH_OR_NOT U24 ( .A(n26), .B(n24), .Z(n21) );
  GTECH_MUX2 U25 ( .A(n26), .B(n27), .S(n17), .Z(N12) );
  GTECH_AND2 U26 ( .A(n25), .B(n23), .Z(n27) );
  GTECH_NOT U27 ( .A(n19), .Z(n23) );
  GTECH_AO21 U28 ( .A(n18), .B(n20), .C(N10), .Z(n26) );
  GTECH_XNOR2 U29 ( .A(n19), .B(n25), .Z(N11) );
  GTECH_NOT U30 ( .A(n18), .Z(n25) );
  GTECH_NOT U31 ( .A(n28), .Z(N10) );
  GTECH_NAND2 U32 ( .A(n19), .B(n20), .Z(n28) );
  GTECH_NAND4 U33 ( .A(n3), .B(n19), .C(n18), .D(n24), .Z(n20) );
  GTECH_NOT U34 ( .A(n17), .Z(n24) );
endmodule

