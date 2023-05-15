
module odo_div_or ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n3, n4, n14,
         n15, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n19) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n2) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n18) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n17) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n15), .K(n15), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r), .QN(n3) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n15), .K(n15), .TI(N16), .TE(N15), .CP(n14), 
        .CD(rstn), .Q(clkn_div9_r), .QN(n4) );
  GTECH_ZERO U22 ( .Z(n15) );
  GTECH_NOT U23 ( .A(clk), .Z(n14) );
  GTECH_NAND2 U24 ( .A(n4), .B(n3), .Z(clk_div9) );
  GTECH_AND2 U25 ( .A(n19), .B(n20), .Z(N8) );
  GTECH_NAND3 U26 ( .A(n2), .B(n21), .C(n18), .Z(n20) );
  GTECH_NOT U27 ( .A(n17), .Z(n21) );
  GTECH_NOT U28 ( .A(n22), .Z(N16) );
  GTECH_NAND2 U29 ( .A(n22), .B(n23), .Z(N15) );
  GTECH_NAND3 U30 ( .A(n24), .B(n18), .C(n17), .Z(n23) );
  GTECH_OR4 U31 ( .A(n25), .B(N9), .C(n17), .D(n24), .Z(n22) );
  GTECH_NOT U32 ( .A(n26), .Z(N9) );
  GTECH_MUX2 U33 ( .A(n27), .B(n28), .S(n17), .Z(N11) );
  GTECH_AND2 U34 ( .A(n24), .B(n25), .Z(n28) );
  GTECH_NOT U35 ( .A(n18), .Z(n25) );
  GTECH_NOT U36 ( .A(n29), .Z(n24) );
  GTECH_NAND2 U37 ( .A(n30), .B(n26), .Z(n27) );
  GTECH_XOR2 U38 ( .A(n31), .B(n2), .Z(n26) );
  GTECH_NOT U39 ( .A(N10), .Z(n30) );
  GTECH_XOR2 U40 ( .A(n29), .B(n18), .Z(N10) );
  GTECH_NAND2 U41 ( .A(n31), .B(n32), .Z(n29) );
  GTECH_NOT U42 ( .A(n2), .Z(n32) );
  GTECH_NOT U43 ( .A(n19), .Z(n31) );
endmodule

