
module cyclenot_right_register8 ( din, i_rst, i_load, i_clk, dout );
  input [7:0] din;
  output [7:0] dout;
  input i_rst, i_load, i_clk;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, n2, n3, n4, n5, n6, n7, n8, n9, n13,
         n21, n22, n23;

  GTECH_FD2 dout_mid_reg_0_ ( .D(N3), .CP(i_clk), .CD(n13), .Q(dout[0]), .QN(
        n2) );
  GTECH_FD2 dout_mid_reg_7_ ( .D(N10), .CP(i_clk), .CD(n13), .Q(dout[7]), .QN(
        n3) );
  GTECH_FD2 dout_mid_reg_6_ ( .D(N9), .CP(i_clk), .CD(n13), .Q(dout[6]), .QN(
        n4) );
  GTECH_FD2 dout_mid_reg_5_ ( .D(N8), .CP(i_clk), .CD(n13), .Q(dout[5]), .QN(
        n5) );
  GTECH_FD2 dout_mid_reg_4_ ( .D(N7), .CP(i_clk), .CD(n13), .Q(dout[4]), .QN(
        n6) );
  GTECH_FD2 dout_mid_reg_3_ ( .D(N6), .CP(i_clk), .CD(n13), .Q(dout[3]), .QN(
        n7) );
  GTECH_FD2 dout_mid_reg_2_ ( .D(N5), .CP(i_clk), .CD(n13), .Q(dout[2]), .QN(
        n8) );
  GTECH_FD2 dout_mid_reg_1_ ( .D(N4), .CP(i_clk), .CD(n13), .Q(dout[1]), .QN(
        n9) );
  GTECH_ONE U22 ( .Z(n13) );
  GTECH_OAI2N2 U23 ( .A(n3), .B(n21), .C(din[6]), .D(n22), .Z(N9) );
  GTECH_OAI2N2 U24 ( .A(n4), .B(n21), .C(din[5]), .D(n22), .Z(N8) );
  GTECH_OAI2N2 U25 ( .A(n5), .B(n21), .C(din[4]), .D(n22), .Z(N7) );
  GTECH_OAI2N2 U26 ( .A(n6), .B(n21), .C(din[3]), .D(n22), .Z(N6) );
  GTECH_OAI2N2 U27 ( .A(n7), .B(n21), .C(din[2]), .D(n22), .Z(N5) );
  GTECH_OAI2N2 U28 ( .A(n8), .B(n21), .C(din[1]), .D(n22), .Z(N4) );
  GTECH_OAI2N2 U29 ( .A(n9), .B(n21), .C(din[0]), .D(n22), .Z(N3) );
  GTECH_OAI2N2 U30 ( .A(n2), .B(n21), .C(din[7]), .D(n22), .Z(N10) );
  GTECH_AND_NOT U31 ( .A(i_load), .B(i_rst), .Z(n22) );
  GTECH_OR_NOT U32 ( .A(i_load), .B(n23), .Z(n21) );
  GTECH_NOT U33 ( .A(i_rst), .Z(n23) );
endmodule

