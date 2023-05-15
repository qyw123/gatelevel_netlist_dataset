
module odo_div_and ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n12, n13,
         n14, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n20) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n2) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n21) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n19) );
  GTECH_FJK3S clkp_div9_r_reg ( .J(n14), .K(n14), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .SD(n13), .Q(clkp_div9_r), .QN(n18) );
  GTECH_FJK3S clkn_div9_r_reg ( .J(n14), .K(n14), .TI(N16), .TE(N15), .CP(n12), 
        .CD(rstn), .SD(n13), .Q(clkn_div9_r) );
  GTECH_ZERO U24 ( .Z(n14) );
  GTECH_ONE U25 ( .Z(n13) );
  GTECH_NOT U26 ( .A(clk), .Z(n12) );
  GTECH_AND_NOT U27 ( .A(clkn_div9_r), .B(n18), .Z(clk_div9) );
  GTECH_OA21 U28 ( .A(n22), .B(n23), .C(n20), .Z(N8) );
  GTECH_NAND2 U29 ( .A(n2), .B(n24), .Z(n23) );
  GTECH_NOT U30 ( .A(n25), .Z(N16) );
  GTECH_OAI21 U31 ( .A(n26), .B(n27), .C(n25), .Z(N15) );
  GTECH_NAND4 U32 ( .A(n21), .B(n28), .C(n29), .D(n24), .Z(n25) );
  GTECH_NOT U33 ( .A(n29), .Z(n26) );
  GTECH_OAI21 U34 ( .A(n27), .B(n29), .C(n30), .Z(N11) );
  GTECH_OAI21 U35 ( .A(N9), .B(N10), .C(n24), .Z(n30) );
  GTECH_NOT U36 ( .A(n19), .Z(n24) );
  GTECH_NOT U37 ( .A(n28), .Z(N9) );
  GTECH_NAND3 U38 ( .A(n28), .B(n22), .C(n19), .Z(n27) );
  GTECH_NOT U39 ( .A(n21), .Z(n22) );
  GTECH_OAI21 U40 ( .A(n31), .B(n32), .C(n29), .Z(n28) );
  GTECH_XOR2 U41 ( .A(n29), .B(n21), .Z(N10) );
  GTECH_NAND2 U42 ( .A(n32), .B(n31), .Z(n29) );
  GTECH_NOT U43 ( .A(n2), .Z(n31) );
  GTECH_NOT U44 ( .A(n20), .Z(n32) );
endmodule

