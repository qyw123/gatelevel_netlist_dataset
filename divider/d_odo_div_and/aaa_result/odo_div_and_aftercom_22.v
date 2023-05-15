
module odo_div_and ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n10, n11, n12,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n19) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n20) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n18) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n17) );
  GTECH_FJK3S clkp_div9_r_reg ( .J(n12), .K(n12), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .SD(n11), .Q(clkp_div9_r) );
  GTECH_FJK3S clkn_div9_r_reg ( .J(n12), .K(n12), .TI(N16), .TE(N15), .CP(n10), 
        .CD(rstn), .SD(n11), .Q(clkn_div9_r) );
  GTECH_ZERO U23 ( .Z(n12) );
  GTECH_ONE U24 ( .Z(n11) );
  GTECH_NOT U25 ( .A(clk), .Z(n10) );
  GTECH_AND2 U26 ( .A(clkn_div9_r), .B(clkp_div9_r), .Z(clk_div9) );
  GTECH_OA21 U27 ( .A(n17), .B(n21), .C(n19), .Z(N8) );
  GTECH_NAND2 U28 ( .A(n18), .B(n20), .Z(n21) );
  GTECH_NOT U29 ( .A(n22), .Z(N16) );
  GTECH_OAI21 U30 ( .A(n23), .B(n24), .C(n22), .Z(N15) );
  GTECH_NAND4 U31 ( .A(n25), .B(n18), .C(n26), .D(n27), .Z(n22) );
  GTECH_NOT U32 ( .A(n26), .Z(n23) );
  GTECH_OAI21 U33 ( .A(n24), .B(n26), .C(n28), .Z(N11) );
  GTECH_OAI21 U34 ( .A(N9), .B(N10), .C(n27), .Z(n28) );
  GTECH_OR3 U35 ( .A(n18), .B(N9), .C(n27), .Z(n24) );
  GTECH_NOT U36 ( .A(n17), .Z(n27) );
  GTECH_NOT U37 ( .A(n25), .Z(N9) );
  GTECH_XOR2 U38 ( .A(n29), .B(n20), .Z(n25) );
  GTECH_XOR2 U39 ( .A(n26), .B(n18), .Z(N10) );
  GTECH_NAND2 U40 ( .A(n29), .B(n30), .Z(n26) );
  GTECH_NOT U41 ( .A(n20), .Z(n30) );
  GTECH_NOT U42 ( .A(n19), .Z(n29) );
endmodule

