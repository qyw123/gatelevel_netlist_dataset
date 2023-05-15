
module odo_div_or ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n3, n4, n15,
         n16, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n18) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n2) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n20) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n19) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n16), .K(n16), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r), .QN(n3) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n16), .K(n16), .TI(N16), .TE(N15), .CP(n15), 
        .CD(rstn), .Q(clkn_div9_r), .QN(n4) );
  GTECH_ZERO U23 ( .Z(n16) );
  GTECH_NOT U24 ( .A(clk), .Z(n15) );
  GTECH_NAND2 U25 ( .A(n4), .B(n3), .Z(clk_div9) );
  GTECH_NOT U26 ( .A(n21), .Z(N9) );
  GTECH_AND2 U27 ( .A(n18), .B(n22), .Z(N8) );
  GTECH_OR3 U28 ( .A(n19), .B(n23), .C(n24), .Z(n22) );
  GTECH_NOT U29 ( .A(n25), .Z(N16) );
  GTECH_NAND2 U30 ( .A(n25), .B(n26), .Z(N15) );
  GTECH_OR3 U31 ( .A(n24), .B(n27), .C(n28), .Z(n26) );
  GTECH_NOT U32 ( .A(n20), .Z(n24) );
  GTECH_NAND4 U33 ( .A(n21), .B(n20), .C(n27), .D(n28), .Z(n25) );
  GTECH_NOT U34 ( .A(n19), .Z(n28) );
  GTECH_NOT U35 ( .A(n29), .Z(N11) );
  GTECH_MUX2 U36 ( .A(n30), .B(n31), .S(n19), .Z(n29) );
  GTECH_OR2 U37 ( .A(n27), .B(n20), .Z(n31) );
  GTECH_AND_NOT U38 ( .A(n21), .B(N10), .Z(n30) );
  GTECH_XOR2 U39 ( .A(n32), .B(n2), .Z(n21) );
  GTECH_XOR2 U40 ( .A(n27), .B(n20), .Z(N10) );
  GTECH_NAND2 U41 ( .A(n32), .B(n23), .Z(n27) );
  GTECH_NOT U42 ( .A(n2), .Z(n23) );
  GTECH_NOT U43 ( .A(n18), .Z(n32) );
endmodule

