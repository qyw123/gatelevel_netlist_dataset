
module odo_div_and ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n4, n14,
         n15, n17, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(n2) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n20) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n19) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n17) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n15), .K(n15), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n15), .K(n15), .TI(N16), .TE(N15), .CP(n14), 
        .CD(rstn), .Q(clkn_div9_r), .QN(n4) );
  GTECH_ZERO U22 ( .Z(n15) );
  GTECH_NOT U23 ( .A(clk), .Z(n14) );
  GTECH_AND_NOT U24 ( .A(clkp_div9_r), .B(n4), .Z(clk_div9) );
  GTECH_AND_NOT U25 ( .A(n21), .B(n22), .Z(N8) );
  GTECH_AND3 U26 ( .A(n20), .B(n23), .C(n19), .Z(n22) );
  GTECH_NOT U27 ( .A(n24), .Z(N16) );
  GTECH_OAI21 U28 ( .A(n25), .B(n26), .C(n24), .Z(N15) );
  GTECH_NAND4 U29 ( .A(n19), .B(n27), .C(n28), .D(n23), .Z(n24) );
  GTECH_NOT U30 ( .A(N9), .Z(n27) );
  GTECH_NOT U31 ( .A(n28), .Z(n25) );
  GTECH_OAI21 U32 ( .A(n26), .B(n28), .C(n29), .Z(N11) );
  GTECH_OAI21 U33 ( .A(N9), .B(N10), .C(n23), .Z(n29) );
  GTECH_OR3 U34 ( .A(n19), .B(N9), .C(n23), .Z(n26) );
  GTECH_NOT U35 ( .A(n17), .Z(n23) );
  GTECH_XOR2 U36 ( .A(n21), .B(n20), .Z(N9) );
  GTECH_NOT U37 ( .A(n2), .Z(n21) );
  GTECH_XOR2 U38 ( .A(n28), .B(n19), .Z(N10) );
  GTECH_NAND2 U39 ( .A(n2), .B(n30), .Z(n28) );
  GTECH_NOT U40 ( .A(n20), .Z(n30) );
endmodule

