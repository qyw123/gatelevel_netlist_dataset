
module even_divisor ( rstn, clk, clk_div2, clk_div4, clk_div10 );
  input rstn, clk;
  output clk_div2, clk_div4, clk_div10;
  wire   N10, N11, N12, N13, N14, N15, n3, n4, n13, n18, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32;
  wire   [3:0] cnt;

  GTECH_FJK2 clk_div2_r_reg ( .J(n18), .K(n18), .CP(clk), .CD(rstn), .Q(
        clk_div2) );
  GTECH_FJK2 clk_div4_r_reg ( .J(n18), .K(n18), .CP(clk_div2), .CD(rstn), .Q(
        clk_div4) );
  GTECH_FD2S cnt_reg_0_ ( .D(N10), .TI(n13), .TE(n13), .CP(clk), .CD(rstn), 
        .Q(cnt[0]), .QN(n3) );
  GTECH_FD2S cnt_reg_1_ ( .D(N11), .TI(n13), .TE(n13), .CP(clk), .CD(rstn), 
        .Q(cnt[1]), .QN(n23) );
  GTECH_FD2S cnt_reg_2_ ( .D(N12), .TI(n13), .TE(n13), .CP(clk), .CD(rstn), 
        .Q(cnt[2]), .QN(n22) );
  GTECH_FD2S cnt_reg_3_ ( .D(N13), .TI(n13), .TE(n13), .CP(clk), .CD(rstn), 
        .Q(cnt[3]), .QN(n4) );
  GTECH_FJK2S clk_div10_r_reg ( .J(n13), .K(n13), .TI(N14), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clk_div10), .QN(N14) );
  GTECH_ONE U23 ( .Z(n18) );
  GTECH_ZERO U24 ( .Z(n13) );
  GTECH_NOT U25 ( .A(n24), .Z(N15) );
  GTECH_MUX2 U26 ( .A(n25), .B(n26), .S(n4), .Z(N13) );
  GTECH_AND3 U27 ( .A(n27), .B(n28), .C(n29), .Z(n26) );
  GTECH_OR_NOT U28 ( .A(n30), .B(n28), .Z(n25) );
  GTECH_MUX2 U29 ( .A(n30), .B(n31), .S(n22), .Z(N12) );
  GTECH_AND2 U30 ( .A(n29), .B(n27), .Z(n31) );
  GTECH_NOT U31 ( .A(n3), .Z(n27) );
  GTECH_NOT U32 ( .A(n23), .Z(n29) );
  GTECH_AO21 U33 ( .A(n23), .B(n24), .C(N10), .Z(n30) );
  GTECH_XOR2 U34 ( .A(n3), .B(n23), .Z(N11) );
  GTECH_NOT U35 ( .A(n32), .Z(N10) );
  GTECH_NAND2 U36 ( .A(n3), .B(n24), .Z(n32) );
  GTECH_NAND4 U37 ( .A(n4), .B(n3), .C(n23), .D(n28), .Z(n24) );
  GTECH_NOT U38 ( .A(n22), .Z(n28) );
endmodule

