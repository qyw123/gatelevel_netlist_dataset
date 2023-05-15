
module odo_div_or ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n3, n4, n12,
         n13, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n16) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n2) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n17) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n15) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n13), .K(n13), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r), .QN(n3) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n13), .K(n13), .TI(N16), .TE(N15), .CP(n12), 
        .CD(rstn), .Q(clkn_div9_r), .QN(n4) );
  GTECH_ZERO U20 ( .Z(n13) );
  GTECH_NOT U21 ( .A(clk), .Z(n12) );
  GTECH_NAND2 U22 ( .A(n4), .B(n3), .Z(clk_div9) );
  GTECH_OA21 U23 ( .A(n18), .B(n19), .C(n16), .Z(N8) );
  GTECH_OR_NOT U24 ( .A(n15), .B(n2), .Z(n18) );
  GTECH_NOT U25 ( .A(n20), .Z(N16) );
  GTECH_NAND2 U26 ( .A(n20), .B(n21), .Z(N15) );
  GTECH_NAND3 U27 ( .A(n22), .B(n17), .C(n15), .Z(n21) );
  GTECH_OR4 U28 ( .A(n19), .B(N9), .C(n15), .D(n22), .Z(n20) );
  GTECH_NOT U29 ( .A(n23), .Z(N9) );
  GTECH_NOT U30 ( .A(n17), .Z(n19) );
  GTECH_MUX2 U31 ( .A(n24), .B(n25), .S(n15), .Z(N11) );
  GTECH_AND_NOT U32 ( .A(n22), .B(n17), .Z(n25) );
  GTECH_NOT U33 ( .A(n26), .Z(n22) );
  GTECH_OR_NOT U34 ( .A(N10), .B(n23), .Z(n24) );
  GTECH_XOR2 U35 ( .A(n27), .B(n2), .Z(n23) );
  GTECH_XOR2 U36 ( .A(n26), .B(n17), .Z(N10) );
  GTECH_NAND2 U37 ( .A(n27), .B(n28), .Z(n26) );
  GTECH_NOT U38 ( .A(n2), .Z(n28) );
  GTECH_NOT U39 ( .A(n16), .Z(n27) );
endmodule

