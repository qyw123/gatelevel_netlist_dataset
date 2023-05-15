
module odo_div_and ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n11, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n16) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n17) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n15) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n14) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(1'b0), .K(1'b0), .TI(N16), .TE(N15), .CP(
        clk), .CD(rstn), .Q(clkp_div9_r) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(1'b0), .K(1'b0), .TI(N16), .TE(N15), .CP(
        n11), .CD(rstn), .Q(clkn_div9_r) );
  GTECH_NOT U20 ( .A(clk), .Z(n11) );
  GTECH_AND2 U21 ( .A(clkp_div9_r), .B(clkn_div9_r), .Z(clk_div9) );
  GTECH_NOT U22 ( .A(n18), .Z(N9) );
  GTECH_AND2 U23 ( .A(n16), .B(n19), .Z(N8) );
  GTECH_NAND3 U24 ( .A(n17), .B(n20), .C(n15), .Z(n19) );
  GTECH_AO21 U25 ( .A(n21), .B(n22), .C(N16), .Z(N15) );
  GTECH_NOT U26 ( .A(n23), .Z(N16) );
  GTECH_NAND4 U27 ( .A(n15), .B(n18), .C(n22), .D(n20), .Z(n23) );
  GTECH_NOT U28 ( .A(n14), .Z(n20) );
  GTECH_NOT U29 ( .A(n24), .Z(n21) );
  GTECH_OAI22 U30 ( .A(n24), .B(n22), .C(n14), .D(n25), .Z(N11) );
  GTECH_AND_NOT U31 ( .A(n18), .B(N10), .Z(n25) );
  GTECH_NAND3 U32 ( .A(n18), .B(n26), .C(n14), .Z(n24) );
  GTECH_NOT U33 ( .A(n15), .Z(n26) );
  GTECH_AO21 U34 ( .A(n17), .B(n16), .C(n27), .Z(n18) );
  GTECH_NOT U35 ( .A(n22), .Z(n27) );
  GTECH_XOR2 U36 ( .A(n22), .B(n15), .Z(N10) );
  GTECH_NAND2 U37 ( .A(n28), .B(n29), .Z(n22) );
  GTECH_NOT U38 ( .A(n16), .Z(n29) );
  GTECH_NOT U39 ( .A(n17), .Z(n28) );
endmodule

