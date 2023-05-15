
module odo_div_or ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n3, n12,
         n13, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n16) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n17) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n18) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n15) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n13), .K(n13), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r), .QN(n2) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n13), .K(n13), .TI(N16), .TE(N15), .CP(n12), 
        .CD(rstn), .Q(clkn_div9_r), .QN(n3) );
  GTECH_ZERO U21 ( .Z(n13) );
  GTECH_NOT U22 ( .A(clk), .Z(n12) );
  GTECH_NAND2 U23 ( .A(n3), .B(n2), .Z(clk_div9) );
  GTECH_NOT U24 ( .A(n19), .Z(N9) );
  GTECH_AND_NOT U25 ( .A(n16), .B(n20), .Z(N8) );
  GTECH_AND3 U26 ( .A(n17), .B(n21), .C(n18), .Z(n20) );
  GTECH_NOT U27 ( .A(n22), .Z(N16) );
  GTECH_NAND2 U28 ( .A(n22), .B(n23), .Z(N15) );
  GTECH_NAND3 U29 ( .A(n24), .B(n18), .C(n15), .Z(n23) );
  GTECH_NAND4 U30 ( .A(n19), .B(n18), .C(n25), .D(n21), .Z(n22) );
  GTECH_NOT U31 ( .A(n15), .Z(n21) );
  GTECH_MUX2 U32 ( .A(n26), .B(n27), .S(n15), .Z(N11) );
  GTECH_AND_NOT U33 ( .A(n24), .B(n18), .Z(n27) );
  GTECH_OR_NOT U34 ( .A(N10), .B(n19), .Z(n26) );
  GTECH_XNOR2 U35 ( .A(n17), .B(n16), .Z(n19) );
  GTECH_XNOR2 U36 ( .A(n18), .B(n24), .Z(N10) );
  GTECH_NOT U37 ( .A(n25), .Z(n24) );
  GTECH_NAND2 U38 ( .A(n28), .B(n29), .Z(n25) );
  GTECH_NOT U39 ( .A(n17), .Z(n29) );
  GTECH_NOT U40 ( .A(n16), .Z(n28) );
endmodule

