
module odo_div_and ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n11, n12, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n16) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n17) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n15) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n14) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n12), .K(n12), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n12), .K(n12), .TI(N16), .TE(N15), .CP(n11), 
        .CD(rstn), .Q(clkn_div9_r) );
  GTECH_ZERO U20 ( .Z(n12) );
  GTECH_NOT U21 ( .A(clk), .Z(n11) );
  GTECH_AND2 U22 ( .A(clkp_div9_r), .B(clkn_div9_r), .Z(clk_div9) );
  GTECH_OA21 U23 ( .A(n14), .B(n18), .C(n16), .Z(N8) );
  GTECH_NAND2 U24 ( .A(n15), .B(n17), .Z(n18) );
  GTECH_AO21 U25 ( .A(n19), .B(n20), .C(N16), .Z(N15) );
  GTECH_NOT U26 ( .A(n21), .Z(N16) );
  GTECH_NAND4 U27 ( .A(n15), .B(n22), .C(n20), .D(n23), .Z(n21) );
  GTECH_NOT U28 ( .A(n24), .Z(n19) );
  GTECH_OAI22 U29 ( .A(n24), .B(n20), .C(n14), .D(n25), .Z(N11) );
  GTECH_AND_NOT U30 ( .A(n22), .B(N10), .Z(n25) );
  GTECH_OR3 U31 ( .A(n15), .B(N9), .C(n23), .Z(n24) );
  GTECH_NOT U32 ( .A(n14), .Z(n23) );
  GTECH_NOT U33 ( .A(n22), .Z(N9) );
  GTECH_AO21 U34 ( .A(n17), .B(n16), .C(n26), .Z(n22) );
  GTECH_NOT U35 ( .A(n20), .Z(n26) );
  GTECH_XOR2 U36 ( .A(n20), .B(n15), .Z(N10) );
  GTECH_NAND2 U37 ( .A(n27), .B(n28), .Z(n20) );
  GTECH_NOT U38 ( .A(n17), .Z(n28) );
  GTECH_NOT U39 ( .A(n16), .Z(n27) );
endmodule

