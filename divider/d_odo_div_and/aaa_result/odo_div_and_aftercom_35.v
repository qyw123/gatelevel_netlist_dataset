
module odo_div_and ( rstn, clk, clk_div9 );
  input rstn, clk;
  output clk_div9;
  wire   N8, N9, N10, N11, clkp_div9_r, clkn_div9_r, N15, N16, n3, n13, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33;
  wire   [3:0] cnt;

  GTECH_FD2S cnt_reg_0_ ( .D(N8), .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), 
        .Q(cnt[0]), .QN(n20) );
  GTECH_FD2S cnt_reg_1_ ( .D(N9), .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), 
        .Q(cnt[1]), .QN(n3) );
  GTECH_FD2S cnt_reg_2_ ( .D(N10), .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), 
        .Q(cnt[2]), .QN(n22) );
  GTECH_FD2S cnt_reg_3_ ( .D(N11), .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), 
        .Q(cnt[3]), .QN(n21) );
  GTECH_FJK2S clkp_div9_r_reg ( .J(1'b0), .K(1'b0), .TI(N16), .TE(N15), .CP(
        clk), .CD(rstn), .Q(clkp_div9_r) );
  GTECH_FJK2S clkn_div9_r_reg ( .J(1'b0), .K(1'b0), .TI(N16), .TE(N15), .CP(
        n13), .CD(rstn), .Q(clkn_div9_r) );
  GTECH_NOT U25 ( .A(clk), .Z(n13) );
  GTECH_AND2 U26 ( .A(clkn_div9_r), .B(clkp_div9_r), .Z(clk_div9) );
  GTECH_AND2 U27 ( .A(n20), .B(n23), .Z(N8) );
  GTECH_NAND3 U28 ( .A(n3), .B(n24), .C(n22), .Z(n23) );
  GTECH_NOT U29 ( .A(n25), .Z(N16) );
  GTECH_OAI21 U30 ( .A(n26), .B(n27), .C(n25), .Z(N15) );
  GTECH_NAND4 U31 ( .A(n28), .B(n22), .C(n29), .D(n24), .Z(n25) );
  GTECH_NOT U32 ( .A(n29), .Z(n26) );
  GTECH_OAI21 U33 ( .A(n27), .B(n29), .C(n30), .Z(N11) );
  GTECH_OAI21 U34 ( .A(N9), .B(N10), .C(n24), .Z(n30) );
  GTECH_NOT U35 ( .A(n21), .Z(n24) );
  GTECH_NOT U36 ( .A(n28), .Z(N9) );
  GTECH_NAND3 U37 ( .A(n28), .B(n31), .C(n21), .Z(n27) );
  GTECH_NOT U38 ( .A(n22), .Z(n31) );
  GTECH_XOR2 U39 ( .A(n32), .B(n3), .Z(n28) );
  GTECH_XOR2 U40 ( .A(n29), .B(n22), .Z(N10) );
  GTECH_NAND2 U41 ( .A(n32), .B(n33), .Z(n29) );
  GTECH_NOT U42 ( .A(n3), .Z(n33) );
  GTECH_NOT U43 ( .A(n20), .Z(n32) );
endmodule

