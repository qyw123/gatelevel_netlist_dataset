
module even_divisor ( rstn, clk, clk_div2, clk_div4, clk_div10 );
  input rstn, clk;
  output clk_div2, clk_div4, clk_div10;
  wire   N10, N11, N12, N13, N14, N15, n3, n4, n5, n20, n15, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35;
  wire   [3:0] cnt;

  GTECH_FJK2S clk_div2_r_reg ( .J(n20), .K(n20), .TI(n15), .TE(n15), .CP(clk), 
        .CD(rstn), .Q(clk_div2) );
  GTECH_FJK2S clk_div4_r_reg ( .J(n20), .K(n20), .TI(n15), .TE(n15), .CP(
        clk_div2), .CD(rstn), .Q(clk_div4) );
  GTECH_FD2S cnt_reg_0_ ( .D(N10), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), 
        .Q(cnt[0]), .QN(n3) );
  GTECH_FD2S cnt_reg_1_ ( .D(N11), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), 
        .Q(cnt[1]), .QN(n4) );
  GTECH_FD2S cnt_reg_2_ ( .D(N12), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), 
        .Q(cnt[2]), .QN(n26) );
  GTECH_FD2S cnt_reg_3_ ( .D(N13), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), 
        .Q(cnt[3]), .QN(n5) );
  GTECH_FJK2S clk_div10_r_reg ( .J(n15), .K(n15), .TI(N14), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clk_div10), .QN(N14) );
  GTECH_ZERO U26 ( .Z(n15) );
  GTECH_ONE U27 ( .Z(n20) );
  GTECH_MUX2 U28 ( .A(n27), .B(n28), .S(n5), .Z(N13) );
  GTECH_AND3 U29 ( .A(n29), .B(n30), .C(n31), .Z(n28) );
  GTECH_OR_NOT U30 ( .A(n32), .B(n30), .Z(n27) );
  GTECH_MUX2 U31 ( .A(n32), .B(n33), .S(n26), .Z(N12) );
  GTECH_AND2 U32 ( .A(n31), .B(n29), .Z(n33) );
  GTECH_NOT U33 ( .A(n3), .Z(n31) );
  GTECH_OAI21 U34 ( .A(N15), .B(n29), .C(n34), .Z(n32) );
  GTECH_NOT U35 ( .A(n4), .Z(n29) );
  GTECH_NOT U36 ( .A(n35), .Z(N15) );
  GTECH_XOR2 U37 ( .A(n4), .B(n3), .Z(N11) );
  GTECH_NOT U38 ( .A(n34), .Z(N10) );
  GTECH_NAND2 U39 ( .A(n3), .B(n35), .Z(n34) );
  GTECH_NAND4 U40 ( .A(n5), .B(n4), .C(n3), .D(n30), .Z(n35) );
  GTECH_NOT U41 ( .A(n26), .Z(n30) );
endmodule

