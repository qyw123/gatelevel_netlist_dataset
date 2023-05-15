
module odo_div_or ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n12, n15,
         n13, n14, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n19) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n2) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n21) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n20) );
  GTECH_FJK3S clkp_div9_r_reg ( .J(n14), .K(n14), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .SD(n13), .Q(clkp_div9_r), .QN(n18) );
  GTECH_FJK3S clkn_div9_r_reg ( .J(n14), .K(n14), .TI(N16), .TE(N15), .CP(n12), 
        .CD(rstn), .SD(n13), .Q(clkn_div9_r), .QN(n15) );
  GTECH_ZERO U24 ( .Z(n14) );
  GTECH_ONE U25 ( .Z(n13) );
  GTECH_NOT U26 ( .A(clk), .Z(n12) );
  GTECH_NAND2 U27 ( .A(n18), .B(n15), .Z(clk_div9) );
  GTECH_NOT U28 ( .A(n22), .Z(N9) );
  GTECH_AND2 U29 ( .A(n19), .B(n23), .Z(N8) );
  GTECH_NAND3 U30 ( .A(n2), .B(n24), .C(n21), .Z(n23) );
  GTECH_NOT U31 ( .A(n25), .Z(N16) );
  GTECH_NAND2 U32 ( .A(n25), .B(n26), .Z(N15) );
  GTECH_NAND3 U33 ( .A(n27), .B(n21), .C(n20), .Z(n26) );
  GTECH_NOT U34 ( .A(n28), .Z(n27) );
  GTECH_NAND4 U35 ( .A(n22), .B(n21), .C(n28), .D(n24), .Z(n25) );
  GTECH_NOT U36 ( .A(n20), .Z(n24) );
  GTECH_NOT U37 ( .A(n29), .Z(N11) );
  GTECH_MUX2 U38 ( .A(n30), .B(n31), .S(n20), .Z(n29) );
  GTECH_OR2 U39 ( .A(n21), .B(n28), .Z(n31) );
  GTECH_AND_NOT U40 ( .A(n22), .B(N10), .Z(n30) );
  GTECH_XOR2 U41 ( .A(n32), .B(n2), .Z(n22) );
  GTECH_XOR2 U42 ( .A(n28), .B(n21), .Z(N10) );
  GTECH_NAND2 U43 ( .A(n33), .B(n32), .Z(n28) );
  GTECH_NOT U44 ( .A(n19), .Z(n32) );
  GTECH_NOT U45 ( .A(n2), .Z(n33) );
endmodule

