
module even_divisor ( rstn, clk, clk_div2, clk_div4, clk_div10 );
  input rstn, clk;
  output clk_div2, clk_div4, clk_div10;
  wire   N10, N11, N12, N13, N14, N15, n3, n13, n12, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31;
  wire   [3:0] cnt;

  GTECH_FJK2 clk_div2_r_reg ( .J(n12), .K(n12), .CP(clk), .CD(rstn), .Q(
        clk_div2) );
  GTECH_FJK2 clk_div4_r_reg ( .J(n12), .K(n12), .CP(clk_div2), .CD(rstn), .Q(
        clk_div4) );
  GTECH_FD2 cnt_reg_0_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n21) );
  GTECH_FD2 cnt_reg_1_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n20) );
  GTECH_FD2 cnt_reg_2_ ( .D(N12), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n19) );
  GTECH_FD2 cnt_reg_3_ ( .D(N13), .CP(clk), .CD(rstn), .Q(n3) );
  GTECH_FJK3S clk_div10_r_reg ( .J(n13), .K(n13), .TI(N14), .TE(N15), .CP(clk), 
        .CD(rstn), .SD(n12), .Q(clk_div10), .QN(N14) );
  GTECH_ONE U20 ( .Z(n12) );
  GTECH_ZERO U21 ( .Z(n13) );
  GTECH_MUX2 U22 ( .A(n22), .B(n23), .S(n3), .Z(N13) );
  GTECH_OR2 U23 ( .A(n24), .B(n19), .Z(n23) );
  GTECH_AND3 U24 ( .A(n25), .B(n26), .C(n27), .Z(n22) );
  GTECH_MUX2 U25 ( .A(n24), .B(n28), .S(n19), .Z(N12) );
  GTECH_AND2 U26 ( .A(n27), .B(n25), .Z(n28) );
  GTECH_NOT U27 ( .A(n21), .Z(n25) );
  GTECH_OAI21 U28 ( .A(N15), .B(n27), .C(n29), .Z(n24) );
  GTECH_NOT U29 ( .A(n20), .Z(n27) );
  GTECH_XOR2 U30 ( .A(n21), .B(n20), .Z(N11) );
  GTECH_NOT U31 ( .A(n29), .Z(N10) );
  GTECH_OR_NOT U32 ( .A(N15), .B(n21), .Z(n29) );
  GTECH_NOT U33 ( .A(n30), .Z(N15) );
  GTECH_NAND4 U34 ( .A(n21), .B(n20), .C(n26), .D(n31), .Z(n30) );
  GTECH_NOT U35 ( .A(n3), .Z(n31) );
  GTECH_NOT U36 ( .A(n19), .Z(n26) );
endmodule

