
module odo_div_or ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n3, n4, n12,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n15) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n2) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n17) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n16) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(1'b0), .K(1'b0), .TI(N16), .TE(N15), .CP(
        clk), .CD(rstn), .Q(clkp_div9_r), .QN(n3) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(1'b0), .K(1'b0), .TI(N16), .TE(N15), .CP(
        n12), .CD(rstn), .Q(clkn_div9_r), .QN(n4) );
  GTECH_NOT U20 ( .A(clk), .Z(n12) );
  GTECH_NAND2 U21 ( .A(n4), .B(n3), .Z(clk_div9) );
  GTECH_NOT U22 ( .A(n18), .Z(N9) );
  GTECH_AND2 U23 ( .A(n15), .B(n19), .Z(N8) );
  GTECH_NAND3 U24 ( .A(n2), .B(n20), .C(n17), .Z(n19) );
  GTECH_NOT U25 ( .A(n21), .Z(N16) );
  GTECH_NAND2 U26 ( .A(n21), .B(n22), .Z(N15) );
  GTECH_NAND3 U27 ( .A(n23), .B(n17), .C(n16), .Z(n22) );
  GTECH_NAND4 U28 ( .A(n18), .B(n17), .C(n24), .D(n20), .Z(n21) );
  GTECH_NOT U29 ( .A(n16), .Z(n20) );
  GTECH_MUX2 U30 ( .A(n25), .B(n26), .S(n16), .Z(N11) );
  GTECH_AND_NOT U31 ( .A(n23), .B(n17), .Z(n26) );
  GTECH_NOT U32 ( .A(n24), .Z(n23) );
  GTECH_OR_NOT U33 ( .A(N10), .B(n18), .Z(n25) );
  GTECH_XOR2 U34 ( .A(n27), .B(n2), .Z(n18) );
  GTECH_XOR2 U35 ( .A(n24), .B(n17), .Z(N10) );
  GTECH_NAND2 U36 ( .A(n27), .B(n28), .Z(n24) );
  GTECH_NOT U37 ( .A(n2), .Z(n28) );
  GTECH_NOT U38 ( .A(n15), .Z(n27) );
endmodule

