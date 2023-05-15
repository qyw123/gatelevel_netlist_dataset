
module odo_div_or ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n3, n5, n13,
         n14, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n2) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n3) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n17) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n16) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n14), .K(n14), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n14), .K(n14), .TI(N16), .TE(N15), .CP(n13), 
        .CD(rstn), .Q(clkn_div9_r), .QN(n5) );
  GTECH_ZERO U20 ( .Z(n14) );
  GTECH_NOT U21 ( .A(clk), .Z(n13) );
  GTECH_OR_NOT U22 ( .A(clkp_div9_r), .B(n5), .Z(clk_div9) );
  GTECH_NOT U23 ( .A(n18), .Z(N9) );
  GTECH_AND2 U24 ( .A(n2), .B(n19), .Z(N8) );
  GTECH_OR3 U25 ( .A(n16), .B(n20), .C(n21), .Z(n19) );
  GTECH_NOT U26 ( .A(n22), .Z(N16) );
  GTECH_OAI21 U27 ( .A(n23), .B(n24), .C(n22), .Z(N15) );
  GTECH_NAND4 U28 ( .A(n17), .B(n18), .C(n25), .D(n23), .Z(n22) );
  GTECH_OR_NOT U29 ( .A(n21), .B(n26), .Z(n24) );
  GTECH_NOT U30 ( .A(n16), .Z(n23) );
  GTECH_MUX2 U31 ( .A(n27), .B(n28), .S(n16), .Z(N11) );
  GTECH_AND2 U32 ( .A(n26), .B(n21), .Z(n28) );
  GTECH_NOT U33 ( .A(n17), .Z(n21) );
  GTECH_NOT U34 ( .A(n25), .Z(n26) );
  GTECH_OR_NOT U35 ( .A(N10), .B(n18), .Z(n27) );
  GTECH_OAI21 U36 ( .A(n29), .B(n20), .C(n25), .Z(n18) );
  GTECH_NOT U37 ( .A(n2), .Z(n29) );
  GTECH_XOR2 U38 ( .A(n25), .B(n17), .Z(N10) );
  GTECH_OR_NOT U39 ( .A(n2), .B(n20), .Z(n25) );
  GTECH_NOT U40 ( .A(n3), .Z(n20) );
endmodule

