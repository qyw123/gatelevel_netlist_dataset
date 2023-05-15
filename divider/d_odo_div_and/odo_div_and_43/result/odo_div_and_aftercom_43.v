
module odo_div_and ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n3, n4, n16,
         n17, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n2) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n3) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n4) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n19) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n17), .K(n17), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n17), .K(n17), .TI(N16), .TE(N15), .CP(n16), 
        .CD(rstn), .Q(clkn_div9_r) );
  GTECH_ZERO U22 ( .Z(n17) );
  GTECH_NOT U23 ( .A(clk), .Z(n16) );
  GTECH_AND2 U24 ( .A(clkp_div9_r), .B(clkn_div9_r), .Z(clk_div9) );
  GTECH_OA21 U25 ( .A(n19), .B(n20), .C(n2), .Z(N8) );
  GTECH_NAND2 U26 ( .A(n4), .B(n3), .Z(n20) );
  GTECH_NOT U27 ( .A(n21), .Z(N16) );
  GTECH_OAI21 U28 ( .A(n22), .B(n23), .C(n21), .Z(N15) );
  GTECH_NAND4 U29 ( .A(n24), .B(n4), .C(n25), .D(n26), .Z(n21) );
  GTECH_OAI21 U30 ( .A(n23), .B(n25), .C(n27), .Z(N11) );
  GTECH_OAI21 U31 ( .A(N9), .B(N10), .C(n26), .Z(n27) );
  GTECH_OR3 U32 ( .A(n4), .B(N9), .C(n26), .Z(n23) );
  GTECH_NOT U33 ( .A(n19), .Z(n26) );
  GTECH_NOT U34 ( .A(n24), .Z(N9) );
  GTECH_XNOR2 U35 ( .A(n3), .B(n2), .Z(n24) );
  GTECH_XNOR2 U36 ( .A(n4), .B(n22), .Z(N10) );
  GTECH_NOT U37 ( .A(n25), .Z(n22) );
  GTECH_NAND2 U38 ( .A(n28), .B(n29), .Z(n25) );
  GTECH_NOT U39 ( .A(n3), .Z(n29) );
  GTECH_NOT U40 ( .A(n2), .Z(n28) );
endmodule

