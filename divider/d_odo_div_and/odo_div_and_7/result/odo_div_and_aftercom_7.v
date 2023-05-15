
module odo_div_and ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n12, n13, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;
  wire   [3:0] cnt;

  GTECH_FD2 cnt_reg_0_ ( .D(N8), .CP(clk), .CD(rstn), .Q(cnt[0]), .QN(n17) );
  GTECH_FD2 cnt_reg_1_ ( .D(N9), .CP(clk), .CD(rstn), .Q(cnt[1]), .QN(n18) );
  GTECH_FD2 cnt_reg_2_ ( .D(N10), .CP(clk), .CD(rstn), .Q(cnt[2]), .QN(n16) );
  GTECH_FD2 cnt_reg_3_ ( .D(N11), .CP(clk), .CD(rstn), .Q(cnt[3]), .QN(n15) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(n13), .K(n13), .TI(N16), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clkp_div9_r) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(n13), .K(n13), .TI(N16), .TE(N15), .CP(n12), 
        .CD(rstn), .Q(clkn_div9_r) );
  GTECH_ZERO U21 ( .Z(n13) );
  GTECH_NOT U22 ( .A(clk), .Z(n12) );
  GTECH_AND2 U23 ( .A(clkp_div9_r), .B(clkn_div9_r), .Z(clk_div9) );
  GTECH_OA21 U24 ( .A(n15), .B(n19), .C(n17), .Z(N8) );
  GTECH_NAND2 U25 ( .A(n16), .B(n18), .Z(n19) );
  GTECH_NOT U26 ( .A(n20), .Z(N16) );
  GTECH_OAI21 U27 ( .A(n21), .B(n22), .C(n20), .Z(N15) );
  GTECH_NAND4 U28 ( .A(n23), .B(n16), .C(n24), .D(n25), .Z(n20) );
  GTECH_NOT U29 ( .A(n24), .Z(n21) );
  GTECH_OAI21 U30 ( .A(n22), .B(n24), .C(n26), .Z(N11) );
  GTECH_OAI21 U31 ( .A(N9), .B(N10), .C(n25), .Z(n26) );
  GTECH_OR3 U32 ( .A(n16), .B(N9), .C(n25), .Z(n22) );
  GTECH_NOT U33 ( .A(n15), .Z(n25) );
  GTECH_NOT U34 ( .A(n23), .Z(N9) );
  GTECH_XOR2 U35 ( .A(n27), .B(n18), .Z(n23) );
  GTECH_XOR2 U36 ( .A(n24), .B(n16), .Z(N10) );
  GTECH_NAND2 U37 ( .A(n27), .B(n28), .Z(n24) );
  GTECH_NOT U38 ( .A(n18), .Z(n28) );
  GTECH_NOT U39 ( .A(n17), .Z(n27) );
endmodule

