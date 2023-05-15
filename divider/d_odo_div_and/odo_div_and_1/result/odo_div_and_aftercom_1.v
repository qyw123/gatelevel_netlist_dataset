
module odo_div_and ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n3, n13,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n2) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n3) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n17) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n16) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(1'b0), .K(1'b0), .TI(N16), .TE(N15), .CP(
        clk), .CD(rstn), .Q(clkp_div9_r) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(1'b0), .K(1'b0), .TI(N16), .TE(N15), .CP(
        n13), .CD(rstn), .Q(clkn_div9_r) );
  GTECH_NOT U20 ( .A(clk), .Z(n13) );
  GTECH_AND2 U21 ( .A(clkp_div9_r), .B(clkn_div9_r), .Z(clk_div9) );
  GTECH_AND2 U22 ( .A(n2), .B(n18), .Z(N8) );
  GTECH_NAND3 U23 ( .A(n3), .B(n19), .C(n17), .Z(n18) );
  GTECH_NOT U24 ( .A(n20), .Z(N16) );
  GTECH_OAI21 U25 ( .A(n21), .B(n22), .C(n20), .Z(N15) );
  GTECH_NAND4 U26 ( .A(n23), .B(n17), .C(n24), .D(n19), .Z(n20) );
  GTECH_OAI21 U27 ( .A(n22), .B(n24), .C(n25), .Z(N11) );
  GTECH_OAI21 U28 ( .A(N9), .B(N10), .C(n19), .Z(n25) );
  GTECH_NOT U29 ( .A(n16), .Z(n19) );
  GTECH_NOT U30 ( .A(n23), .Z(N9) );
  GTECH_NAND3 U31 ( .A(n23), .B(n26), .C(n16), .Z(n22) );
  GTECH_NOT U32 ( .A(n17), .Z(n26) );
  GTECH_XNOR2 U33 ( .A(n3), .B(n2), .Z(n23) );
  GTECH_XNOR2 U34 ( .A(n17), .B(n21), .Z(N10) );
  GTECH_NOT U35 ( .A(n24), .Z(n21) );
  GTECH_NAND2 U36 ( .A(n27), .B(n28), .Z(n24) );
  GTECH_NOT U37 ( .A(n2), .Z(n28) );
  GTECH_NOT U38 ( .A(n3), .Z(n27) );
endmodule

