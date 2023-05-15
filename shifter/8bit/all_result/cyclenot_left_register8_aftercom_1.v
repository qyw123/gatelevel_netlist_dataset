
module cyclenot_left_register8 ( din, i_rst, i_load, i_clk, dout );
  input [7:0] din;
  output [7:0] dout;
  input i_rst, i_load, i_clk;
  wire   N4, N5, N6, N7, N8, N9, N10, N11, n11, n20, n21;

  GTECH_FD2 dout_mid_reg_0_ ( .D(N4), .CP(i_clk), .CD(n11), .Q(dout[0]) );
  GTECH_FD2 dout_mid_reg_1_ ( .D(N5), .CP(i_clk), .CD(n11), .Q(dout[1]) );
  GTECH_FD2 dout_mid_reg_2_ ( .D(N6), .CP(i_clk), .CD(n11), .Q(dout[2]) );
  GTECH_FD2 dout_mid_reg_3_ ( .D(N7), .CP(i_clk), .CD(n11), .Q(dout[3]) );
  GTECH_FD2 dout_mid_reg_4_ ( .D(N8), .CP(i_clk), .CD(n11), .Q(dout[4]) );
  GTECH_FD2 dout_mid_reg_5_ ( .D(N9), .CP(i_clk), .CD(n11), .Q(dout[5]) );
  GTECH_FD2 dout_mid_reg_6_ ( .D(N10), .CP(i_clk), .CD(n11), .Q(dout[6]) );
  GTECH_FD2 dout_mid_reg_7_ ( .D(N11), .CP(i_clk), .CD(n11), .Q(dout[7]) );
  GTECH_ONE U21 ( .Z(n11) );
  GTECH_AO22 U22 ( .A(din[5]), .B(n20), .C(n21), .D(dout[4]), .Z(N9) );
  GTECH_AO22 U23 ( .A(din[4]), .B(n20), .C(n21), .D(dout[3]), .Z(N8) );
  GTECH_AO22 U24 ( .A(din[3]), .B(n20), .C(n21), .D(dout[2]), .Z(N7) );
  GTECH_AO22 U25 ( .A(din[2]), .B(n20), .C(n21), .D(dout[1]), .Z(N6) );
  GTECH_AO22 U26 ( .A(din[1]), .B(n20), .C(n21), .D(dout[0]), .Z(N5) );
  GTECH_AND2 U27 ( .A(din[0]), .B(n20), .Z(N4) );
  GTECH_AO22 U28 ( .A(din[7]), .B(n20), .C(n21), .D(dout[6]), .Z(N11) );
  GTECH_AO22 U29 ( .A(din[6]), .B(n20), .C(n21), .D(dout[5]), .Z(N10) );
  GTECH_NOR2 U30 ( .A(i_rst), .B(i_load), .Z(n21) );
  GTECH_AND_NOT U31 ( .A(i_load), .B(i_rst), .Z(n20) );
endmodule

