
module odo_div_and ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n13, n14,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n16) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n2) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n18) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n17) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n14), .K(n14), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n14), .K(n14), .TI(N16), .TE(N15), .CP(n13), 
        .CD(rstn), .Q(clkn_div9_r) );
  GTECH_ZERO U21 ( .Z(n14) );
  GTECH_NOT U22 ( .A(clk), .Z(n13) );
  GTECH_AND2 U23 ( .A(clkp_div9_r), .B(clkn_div9_r), .Z(clk_div9) );
  GTECH_AND2 U24 ( .A(n16), .B(n19), .Z(N8) );
  GTECH_NAND3 U25 ( .A(n2), .B(n20), .C(n18), .Z(n19) );
  GTECH_NOT U26 ( .A(n21), .Z(N16) );
  GTECH_OAI21 U27 ( .A(n22), .B(n23), .C(n21), .Z(N15) );
  GTECH_NAND4 U28 ( .A(n24), .B(n18), .C(n25), .D(n20), .Z(n21) );
  GTECH_NOT U29 ( .A(n25), .Z(n22) );
  GTECH_OAI21 U30 ( .A(n23), .B(n25), .C(n26), .Z(N11) );
  GTECH_OAI21 U31 ( .A(N9), .B(N10), .C(n20), .Z(n26) );
  GTECH_NOT U32 ( .A(n17), .Z(n20) );
  GTECH_NOT U33 ( .A(n24), .Z(N9) );
  GTECH_NAND3 U34 ( .A(n24), .B(n27), .C(n17), .Z(n23) );
  GTECH_NOT U35 ( .A(n18), .Z(n27) );
  GTECH_XOR2 U36 ( .A(n28), .B(n2), .Z(n24) );
  GTECH_XOR2 U37 ( .A(n25), .B(n18), .Z(N10) );
  GTECH_NAND2 U38 ( .A(n28), .B(n29), .Z(n25) );
  GTECH_NOT U39 ( .A(n2), .Z(n29) );
  GTECH_NOT U40 ( .A(n16), .Z(n28) );
endmodule

