
module odo_div_or ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n2, n3, n4, n12,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32;
  wire   [3:0] cnt;

  GTECH_FD2S cnt_reg_0_ ( .D(N8), .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), 
        .Q(cnt[0]), .QN(n19) );
  GTECH_FD2S cnt_reg_1_ ( .D(N9), .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), 
        .Q(cnt[1]), .QN(n3) );
  GTECH_FD2S cnt_reg_2_ ( .D(N10), .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), 
        .Q(cnt[2]), .QN(n21) );
  GTECH_FD2S cnt_reg_3_ ( .D(N11), .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), 
        .Q(cnt[3]), .QN(n20) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(1'b0), .K(1'b0), .TI(N16), .TE(N15), .CP(
        clk), .CD(rstn), .Q(clkp_div9_r), .QN(n4) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(1'b0), .K(1'b0), .TI(N16), .TE(N15), .CP(
        n12), .CD(rstn), .Q(clkn_div9_r), .QN(n2) );
  GTECH_NOT U24 ( .A(clk), .Z(n12) );
  GTECH_NAND2 U25 ( .A(n4), .B(n2), .Z(clk_div9) );
  GTECH_NOT U26 ( .A(n22), .Z(N9) );
  GTECH_AND2 U27 ( .A(n19), .B(n23), .Z(N8) );
  GTECH_NAND3 U28 ( .A(n3), .B(n24), .C(n21), .Z(n23) );
  GTECH_NOT U29 ( .A(n25), .Z(N16) );
  GTECH_NAND2 U30 ( .A(n25), .B(n26), .Z(N15) );
  GTECH_NAND3 U31 ( .A(n27), .B(n21), .C(n20), .Z(n26) );
  GTECH_NAND4 U32 ( .A(n22), .B(n21), .C(n28), .D(n24), .Z(n25) );
  GTECH_NOT U33 ( .A(n20), .Z(n24) );
  GTECH_MUX2 U34 ( .A(n29), .B(n30), .S(n20), .Z(N11) );
  GTECH_AND_NOT U35 ( .A(n27), .B(n21), .Z(n30) );
  GTECH_NOT U36 ( .A(n28), .Z(n27) );
  GTECH_OR_NOT U37 ( .A(N10), .B(n22), .Z(n29) );
  GTECH_XOR2 U38 ( .A(n31), .B(n3), .Z(n22) );
  GTECH_XOR2 U39 ( .A(n28), .B(n21), .Z(N10) );
  GTECH_NAND2 U40 ( .A(n31), .B(n32), .Z(n28) );
  GTECH_NOT U41 ( .A(n3), .Z(n32) );
  GTECH_NOT U42 ( .A(n19), .Z(n31) );
endmodule

