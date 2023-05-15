
module even_divisor ( rstn, clk, clk_div2, clk_div4, clk_div10 );
  input rstn, clk;
  output clk_div2, clk_div4, clk_div10;
  wire   N10, N11, N12, N13, N14, N15, n3, n4, n5, n20, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33;
  wire   [3:0] cnt;

  GTECH_FJK2 clk_div2_r_reg ( .J(n20), .K(n20), .CP(clk), .CD(rstn), .Q(
        clk_div2) );
  GTECH_FJK2 clk_div4_r_reg ( .J(n20), .K(n20), .CP(clk_div2), .CD(rstn), .Q(
        clk_div4) );
  GTECH_FD2S cnt_reg_0_ ( .D(N10), .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), 
        .Q(cnt[0]), .QN(n3) );
  GTECH_FD2S cnt_reg_1_ ( .D(N11), .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), 
        .Q(cnt[1]), .QN(n4) );
  GTECH_FD2S cnt_reg_2_ ( .D(N12), .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), 
        .Q(cnt[2]), .QN(n24) );
  GTECH_FD2S cnt_reg_3_ ( .D(N13), .TI(1'b0), .TE(1'b0), .CP(clk), .CD(rstn), 
        .Q(cnt[3]), .QN(n5) );
  GTECH_FJK2S clk_div10_r_reg ( .J(1'b0), .K(1'b0), .TI(N14), .TE(N15), .CP(
        clk), .CD(rstn), .Q(clk_div10), .QN(N14) );
  GTECH_ONE U24 ( .Z(n20) );
  GTECH_MUX2 U25 ( .A(n25), .B(n26), .S(n5), .Z(N13) );
  GTECH_AND3 U26 ( .A(n27), .B(n28), .C(n29), .Z(n26) );
  GTECH_OR_NOT U27 ( .A(n30), .B(n28), .Z(n25) );
  GTECH_MUX2 U28 ( .A(n30), .B(n31), .S(n24), .Z(N12) );
  GTECH_AND2 U29 ( .A(n29), .B(n27), .Z(n31) );
  GTECH_NOT U30 ( .A(n3), .Z(n29) );
  GTECH_OAI21 U31 ( .A(N15), .B(n27), .C(n32), .Z(n30) );
  GTECH_NOT U32 ( .A(n4), .Z(n27) );
  GTECH_NOT U33 ( .A(n33), .Z(N15) );
  GTECH_XOR2 U34 ( .A(n4), .B(n3), .Z(N11) );
  GTECH_NOT U35 ( .A(n32), .Z(N10) );
  GTECH_NAND2 U36 ( .A(n3), .B(n33), .Z(n32) );
  GTECH_NAND4 U37 ( .A(n5), .B(n4), .C(n3), .D(n28), .Z(n33) );
  GTECH_NOT U38 ( .A(n24), .Z(n28) );
endmodule

