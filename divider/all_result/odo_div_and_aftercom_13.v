
module odo_div_and ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n3, n4, n14,
         n15, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34;
  wire   [3:0] cnt;

  GTECH_FD2S cnt_reg_0_ ( .D(N8), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), .Q(
        cnt[0]), .QN(n22) );
  GTECH_FD2S cnt_reg_1_ ( .D(N9), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), .Q(
        cnt[1]), .QN(n3) );
  GTECH_FD2S cnt_reg_2_ ( .D(N10), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), 
        .Q(cnt[2]), .QN(n23) );
  GTECH_FD2S cnt_reg_3_ ( .D(N11), .TI(n15), .TE(n15), .CP(clk), .CD(rstn), 
        .Q(cnt[3]), .QN(n21) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n15), .K(n15), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r), .QN(n4) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n15), .K(n15), .TI(N16), .TE(N15), .CP(n14), 
        .CD(rstn), .Q(clkn_div9_r) );
  GTECH_ZERO U26 ( .Z(n15) );
  GTECH_NOT U27 ( .A(clk), .Z(n14) );
  GTECH_AND_NOT U28 ( .A(clkn_div9_r), .B(n4), .Z(clk_div9) );
  GTECH_OA21 U29 ( .A(n24), .B(n25), .C(n22), .Z(N8) );
  GTECH_NAND2 U30 ( .A(n3), .B(n26), .Z(n25) );
  GTECH_NOT U31 ( .A(n27), .Z(N16) );
  GTECH_OAI21 U32 ( .A(n28), .B(n29), .C(n27), .Z(N15) );
  GTECH_NAND4 U33 ( .A(n23), .B(n30), .C(n31), .D(n26), .Z(n27) );
  GTECH_NOT U34 ( .A(n31), .Z(n28) );
  GTECH_OAI21 U35 ( .A(n29), .B(n31), .C(n32), .Z(N11) );
  GTECH_OAI21 U36 ( .A(N9), .B(N10), .C(n26), .Z(n32) );
  GTECH_NOT U37 ( .A(n21), .Z(n26) );
  GTECH_NOT U38 ( .A(n30), .Z(N9) );
  GTECH_NAND3 U39 ( .A(n30), .B(n24), .C(n21), .Z(n29) );
  GTECH_NOT U40 ( .A(n23), .Z(n24) );
  GTECH_OAI21 U41 ( .A(n33), .B(n34), .C(n31), .Z(n30) );
  GTECH_XOR2 U42 ( .A(n31), .B(n23), .Z(N10) );
  GTECH_NAND2 U43 ( .A(n34), .B(n33), .Z(n31) );
  GTECH_NOT U44 ( .A(n22), .Z(n33) );
  GTECH_NOT U45 ( .A(n3), .Z(n34) );
endmodule

