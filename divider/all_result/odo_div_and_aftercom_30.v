
module odo_div_and ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n3, n14,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n2) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n17) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n18) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n3) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(1'b0), .K(1'b0), .TI(N16), .TE(N15), .CP(
        clk), .CD(rstn), .Q(clkp_div9_r) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(1'b0), .K(1'b0), .TI(N16), .TE(N15), .CP(
        n14), .CD(rstn), .Q(clkn_div9_r) );
  GTECH_NOT U21 ( .A(clk), .Z(n14) );
  GTECH_AND2 U22 ( .A(clkp_div9_r), .B(clkn_div9_r), .Z(clk_div9) );
  GTECH_AND2 U23 ( .A(n2), .B(n19), .Z(N8) );
  GTECH_NAND3 U24 ( .A(n17), .B(n20), .C(n18), .Z(n19) );
  GTECH_NOT U25 ( .A(n21), .Z(N16) );
  GTECH_OAI21 U26 ( .A(n22), .B(n23), .C(n21), .Z(N15) );
  GTECH_OR4 U27 ( .A(N9), .B(n24), .C(n3), .D(n22), .Z(n21) );
  GTECH_NOT U28 ( .A(n25), .Z(n22) );
  GTECH_OAI21 U29 ( .A(n23), .B(n25), .C(n26), .Z(N11) );
  GTECH_OAI21 U30 ( .A(N9), .B(N10), .C(n20), .Z(n26) );
  GTECH_NOT U31 ( .A(n3), .Z(n20) );
  GTECH_NOT U32 ( .A(n27), .Z(N9) );
  GTECH_NAND3 U33 ( .A(n27), .B(n24), .C(n3), .Z(n23) );
  GTECH_NOT U34 ( .A(n18), .Z(n24) );
  GTECH_OAI21 U35 ( .A(n28), .B(n29), .C(n25), .Z(n27) );
  GTECH_XOR2 U36 ( .A(n25), .B(n18), .Z(N10) );
  GTECH_NAND2 U37 ( .A(n28), .B(n29), .Z(n25) );
  GTECH_NOT U38 ( .A(n2), .Z(n29) );
  GTECH_NOT U39 ( .A(n17), .Z(n28) );
endmodule

