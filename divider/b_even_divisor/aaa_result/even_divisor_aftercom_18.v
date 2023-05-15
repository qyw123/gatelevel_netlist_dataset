
module even_divisor ( rstn, clk, clk_div2, clk_div4, clk_div10 );
  input rstn, clk;
  output clk_div2, clk_div4, clk_div10;
  wire   N10, N11, N12, N13, N14, N15, n3, n12, n17, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34;
  wire   [3:0] cnt;

  GTECH_FJK2 clk_div2_r_reg ( .J(n17), .K(n17), .CP(clk), .CD(rstn), .Q(
        clk_div2) );
  GTECH_FJK2 clk_div4_r_reg ( .J(n17), .K(n17), .CP(clk_div2), .CD(rstn), .Q(
        clk_div4) );
  GTECH_FD2S cnt_reg_0_ ( .D(N10), .TI(n12), .TE(n12), .CP(clk), .CD(rstn), 
        .Q(cnt[0]), .QN(n24) );
  GTECH_FD2S cnt_reg_1_ ( .D(N11), .TI(n12), .TE(n12), .CP(clk), .CD(rstn), 
        .Q(cnt[1]), .QN(n23) );
  GTECH_FD2S cnt_reg_2_ ( .D(N12), .TI(n12), .TE(n12), .CP(clk), .CD(rstn), 
        .Q(cnt[2]), .QN(n22) );
  GTECH_FD2S cnt_reg_3_ ( .D(N13), .TI(n12), .TE(n12), .CP(clk), .CD(rstn), 
        .Q(n3) );
  GTECH_FJK2S clk_div10_r_reg ( .J(n12), .K(n12), .TI(N14), .TE(N15), .CP(clk), 
        .CD(rstn), .Q(clk_div10), .QN(N14) );
  GTECH_ONE U23 ( .Z(n17) );
  GTECH_ZERO U24 ( .Z(n12) );
  GTECH_MUX2 U25 ( .A(n25), .B(n26), .S(n3), .Z(N13) );
  GTECH_OR2 U26 ( .A(n27), .B(n22), .Z(n26) );
  GTECH_AND3 U27 ( .A(n28), .B(n29), .C(n30), .Z(n25) );
  GTECH_MUX2 U28 ( .A(n27), .B(n31), .S(n22), .Z(N12) );
  GTECH_AND2 U29 ( .A(n30), .B(n28), .Z(n31) );
  GTECH_NOT U30 ( .A(n24), .Z(n28) );
  GTECH_OAI21 U31 ( .A(N15), .B(n30), .C(n32), .Z(n27) );
  GTECH_NOT U32 ( .A(n23), .Z(n30) );
  GTECH_XOR2 U33 ( .A(n24), .B(n23), .Z(N11) );
  GTECH_NOT U34 ( .A(n32), .Z(N10) );
  GTECH_OR_NOT U35 ( .A(N15), .B(n24), .Z(n32) );
  GTECH_NOT U36 ( .A(n33), .Z(N15) );
  GTECH_NAND4 U37 ( .A(n24), .B(n23), .C(n29), .D(n34), .Z(n33) );
  GTECH_NOT U38 ( .A(n3), .Z(n34) );
  GTECH_NOT U39 ( .A(n22), .Z(n29) );
endmodule

