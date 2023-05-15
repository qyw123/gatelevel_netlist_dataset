
module cyclenot_left_register8 ( din, i_rst, i_load, i_clk, dout );
  input [7:0] din;
  output [7:0] dout;
  input i_rst, i_load, i_clk;
  wire   N4, N5, N6, N7, N8, N9, N10, N11, n2, n3, n4, n5, n6, n7, n8, n13,
         n14, n15;

  GTECH_FD1 dout_mid_reg_0_ ( .D(N4), .CP(i_clk), .Q(dout[0]), .QN(n2) );
  GTECH_FD1 dout_mid_reg_1_ ( .D(N5), .CP(i_clk), .Q(dout[1]), .QN(n3) );
  GTECH_FD1 dout_mid_reg_2_ ( .D(N6), .CP(i_clk), .Q(dout[2]), .QN(n4) );
  GTECH_FD1 dout_mid_reg_3_ ( .D(N7), .CP(i_clk), .Q(dout[3]), .QN(n5) );
  GTECH_FD1 dout_mid_reg_4_ ( .D(N8), .CP(i_clk), .Q(dout[4]), .QN(n6) );
  GTECH_FD1 dout_mid_reg_5_ ( .D(N9), .CP(i_clk), .Q(dout[5]), .QN(n7) );
  GTECH_FD1 dout_mid_reg_6_ ( .D(N10), .CP(i_clk), .Q(dout[6]), .QN(n8) );
  GTECH_FD1 dout_mid_reg_7_ ( .D(N11), .CP(i_clk), .Q(dout[7]) );
  GTECH_OAI2N2 U14 ( .A(n6), .B(n13), .C(din[5]), .D(n14), .Z(N9) );
  GTECH_OAI2N2 U15 ( .A(n5), .B(n13), .C(din[4]), .D(n14), .Z(N8) );
  GTECH_OAI2N2 U16 ( .A(n4), .B(n13), .C(din[3]), .D(n14), .Z(N7) );
  GTECH_OAI2N2 U17 ( .A(n3), .B(n13), .C(din[2]), .D(n14), .Z(N6) );
  GTECH_OAI2N2 U18 ( .A(n2), .B(n13), .C(din[1]), .D(n14), .Z(N5) );
  GTECH_AND2 U19 ( .A(din[0]), .B(n14), .Z(N4) );
  GTECH_OAI2N2 U20 ( .A(n8), .B(n13), .C(din[7]), .D(n14), .Z(N11) );
  GTECH_OAI2N2 U21 ( .A(n7), .B(n13), .C(din[6]), .D(n14), .Z(N10) );
  GTECH_NOR2 U22 ( .A(n15), .B(i_rst), .Z(n14) );
  GTECH_OR_NOT U23 ( .A(i_rst), .B(n15), .Z(n13) );
  GTECH_NOT U24 ( .A(i_load), .Z(n15) );
endmodule

