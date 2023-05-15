
module odo_div_and ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n3, n14,
         n15, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n2) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n3) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n18) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n17) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n15), .K(n15), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n15), .K(n15), .TI(N16), .TE(N15), .CP(n14), 
        .CD(rstn), .Q(clkn_div9_r) );
  GTECH_ZERO U21 ( .Z(n15) );
  GTECH_NOT U22 ( .A(clk), .Z(n14) );
  GTECH_AND2 U23 ( .A(clkp_div9_r), .B(clkn_div9_r), .Z(clk_div9) );
  GTECH_AND2 U24 ( .A(n2), .B(n19), .Z(N8) );
  GTECH_OR_NOT U25 ( .A(n17), .B(n20), .Z(n19) );
  GTECH_AND2 U26 ( .A(n3), .B(n18), .Z(n20) );
  GTECH_NOT U27 ( .A(n21), .Z(N16) );
  GTECH_OAI21 U28 ( .A(n22), .B(n23), .C(n21), .Z(N15) );
  GTECH_NAND4 U29 ( .A(n24), .B(n18), .C(n25), .D(n26), .Z(n21) );
  GTECH_NOT U30 ( .A(n25), .Z(n22) );
  GTECH_OAI21 U31 ( .A(n23), .B(n25), .C(n27), .Z(N11) );
  GTECH_OAI21 U32 ( .A(N9), .B(N10), .C(n26), .Z(n27) );
  GTECH_OR3 U33 ( .A(n18), .B(N9), .C(n26), .Z(n23) );
  GTECH_NOT U34 ( .A(n17), .Z(n26) );
  GTECH_NOT U35 ( .A(n24), .Z(N9) );
  GTECH_XOR2 U36 ( .A(n28), .B(n3), .Z(n24) );
  GTECH_XOR2 U37 ( .A(n25), .B(n18), .Z(N10) );
  GTECH_OR_NOT U38 ( .A(n3), .B(n28), .Z(n25) );
  GTECH_NOT U39 ( .A(n2), .Z(n28) );
endmodule

