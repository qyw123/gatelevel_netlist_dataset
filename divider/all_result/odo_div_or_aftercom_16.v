
module odo_div_or ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n3, n5, n15,
         n16, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n2) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n3) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n19) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n18) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n16), .K(n16), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n16), .K(n16), .TI(N16), .TE(N15), .CP(n15), 
        .CD(rstn), .Q(clkn_div9_r), .QN(n5) );
  GTECH_ZERO U22 ( .Z(n16) );
  GTECH_NOT U23 ( .A(clk), .Z(n15) );
  GTECH_OR_NOT U24 ( .A(clkp_div9_r), .B(n5), .Z(clk_div9) );
  GTECH_NOT U25 ( .A(n20), .Z(N9) );
  GTECH_AND2 U26 ( .A(n2), .B(n21), .Z(N8) );
  GTECH_NAND3 U27 ( .A(n3), .B(n22), .C(n19), .Z(n21) );
  GTECH_NOT U28 ( .A(n23), .Z(N16) );
  GTECH_OAI21 U29 ( .A(n22), .B(n24), .C(n23), .Z(N15) );
  GTECH_NAND4 U30 ( .A(n20), .B(n19), .C(n25), .D(n22), .Z(n23) );
  GTECH_OR_NOT U31 ( .A(n25), .B(n19), .Z(n24) );
  GTECH_OAI21 U32 ( .A(n26), .B(n18), .C(n27), .Z(N11) );
  GTECH_OR3 U33 ( .A(n25), .B(n19), .C(n22), .Z(n27) );
  GTECH_NOT U34 ( .A(n18), .Z(n22) );
  GTECH_AND_NOT U35 ( .A(n20), .B(N10), .Z(n26) );
  GTECH_XOR2 U36 ( .A(n28), .B(n3), .Z(n20) );
  GTECH_XOR2 U37 ( .A(n25), .B(n19), .Z(N10) );
  GTECH_OR_NOT U38 ( .A(n3), .B(n28), .Z(n25) );
  GTECH_NOT U39 ( .A(n2), .Z(n28) );
endmodule

