
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
  GTECH_AND2 U22 ( .A(n15), .B(n18), .Z(N8) );
  GTECH_NAND3 U23 ( .A(n2), .B(n19), .C(n17), .Z(n18) );
  GTECH_NOT U24 ( .A(n20), .Z(N16) );
  GTECH_NAND2 U25 ( .A(n20), .B(n21), .Z(N15) );
  GTECH_NAND3 U26 ( .A(n22), .B(n17), .C(n16), .Z(n21) );
  GTECH_NOT U27 ( .A(n23), .Z(n22) );
  GTECH_NAND4 U28 ( .A(n24), .B(n17), .C(n23), .D(n19), .Z(n20) );
  GTECH_OAI21 U29 ( .A(n23), .B(n25), .C(n26), .Z(N11) );
  GTECH_OAI21 U30 ( .A(N9), .B(N10), .C(n19), .Z(n26) );
  GTECH_NOT U31 ( .A(n16), .Z(n19) );
  GTECH_NOT U32 ( .A(n24), .Z(N9) );
  GTECH_XOR2 U33 ( .A(n27), .B(n2), .Z(n24) );
  GTECH_OR_NOT U34 ( .A(n17), .B(n16), .Z(n25) );
  GTECH_XOR2 U35 ( .A(n23), .B(n17), .Z(N10) );
  GTECH_NAND2 U36 ( .A(n27), .B(n28), .Z(n23) );
  GTECH_NOT U37 ( .A(n2), .Z(n28) );
  GTECH_NOT U38 ( .A(n15), .Z(n27) );
endmodule

