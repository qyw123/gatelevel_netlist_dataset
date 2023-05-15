
module odo_div_or ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n3, n4, n5,
         n13, n14, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n2) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n3) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n16) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n17) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n14), .K(n14), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r), .QN(n4) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n14), .K(n14), .TI(N16), .TE(N15), .CP(n13), 
        .CD(rstn), .Q(clkn_div9_r), .QN(n5) );
  GTECH_ZERO U20 ( .Z(n14) );
  GTECH_NOT U21 ( .A(clk), .Z(n13) );
  GTECH_NAND2 U22 ( .A(n5), .B(n4), .Z(clk_div9) );
  GTECH_NOT U23 ( .A(n18), .Z(N9) );
  GTECH_ADD_AB U24 ( .A(n2), .B(n19), .COUT(N8) );
  GTECH_NAND3 U25 ( .A(n3), .B(n20), .C(n16), .Z(n19) );
  GTECH_NOT U26 ( .A(n21), .Z(N16) );
  GTECH_OAI21 U27 ( .A(n22), .B(n23), .C(n21), .Z(N15) );
  GTECH_NAND4 U28 ( .A(n18), .B(n16), .C(n22), .D(n20), .Z(n21) );
  GTECH_NOT U29 ( .A(n17), .Z(n20) );
  GTECH_NAND2 U30 ( .A(n16), .B(n17), .Z(n23) );
  GTECH_MUX2 U31 ( .A(n24), .B(n25), .S(n17), .Z(N11) );
  GTECH_NOR2 U32 ( .A(n16), .B(n22), .Z(n25) );
  GTECH_OR_NOT U33 ( .A(N10), .B(n18), .Z(n24) );
  GTECH_XOR2 U34 ( .A(n26), .B(n3), .Z(n18) );
  GTECH_XOR2 U35 ( .A(n22), .B(n16), .Z(N10) );
  GTECH_NAND2 U36 ( .A(n26), .B(n27), .Z(n22) );
  GTECH_NOT U37 ( .A(n3), .Z(n27) );
  GTECH_NOT U38 ( .A(n2), .Z(n26) );
endmodule

