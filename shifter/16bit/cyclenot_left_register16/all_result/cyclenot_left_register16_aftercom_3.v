
module cyclenot_left_register16 ( din, i_rst, i_load, i_clk, dout );
  input [15:0] din;
  output [15:0] dout;
  input i_rst, i_load, i_clk;
  wire   N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18,
         N19, n20, n21;

  GTECH_FD1 dout_mid_reg_0_ ( .D(N4), .CP(i_clk), .Q(dout[0]) );
  GTECH_FD1 dout_mid_reg_1_ ( .D(N5), .CP(i_clk), .Q(dout[1]) );
  GTECH_FD1 dout_mid_reg_2_ ( .D(N6), .CP(i_clk), .Q(dout[2]) );
  GTECH_FD1 dout_mid_reg_3_ ( .D(N7), .CP(i_clk), .Q(dout[3]) );
  GTECH_FD1 dout_mid_reg_4_ ( .D(N8), .CP(i_clk), .Q(dout[4]) );
  GTECH_FD1 dout_mid_reg_5_ ( .D(N9), .CP(i_clk), .Q(dout[5]) );
  GTECH_FD1 dout_mid_reg_6_ ( .D(N10), .CP(i_clk), .Q(dout[6]) );
  GTECH_FD1 dout_mid_reg_7_ ( .D(N11), .CP(i_clk), .Q(dout[7]) );
  GTECH_FD1 dout_mid_reg_8_ ( .D(N12), .CP(i_clk), .Q(dout[8]) );
  GTECH_FD1 dout_mid_reg_9_ ( .D(N13), .CP(i_clk), .Q(dout[9]) );
  GTECH_FD1 dout_mid_reg_10_ ( .D(N14), .CP(i_clk), .Q(dout[10]) );
  GTECH_FD1 dout_mid_reg_11_ ( .D(N15), .CP(i_clk), .Q(dout[11]) );
  GTECH_FD1 dout_mid_reg_12_ ( .D(N16), .CP(i_clk), .Q(dout[12]) );
  GTECH_FD1 dout_mid_reg_13_ ( .D(N17), .CP(i_clk), .Q(dout[13]) );
  GTECH_FD1 dout_mid_reg_14_ ( .D(N18), .CP(i_clk), .Q(dout[14]) );
  GTECH_FD1 dout_mid_reg_15_ ( .D(N19), .CP(i_clk), .Q(dout[15]) );
  GTECH_AO22 U21 ( .A(din[5]), .B(n20), .C(n21), .D(dout[4]), .Z(N9) );
  GTECH_AO22 U22 ( .A(din[4]), .B(n20), .C(n21), .D(dout[3]), .Z(N8) );
  GTECH_AO22 U23 ( .A(din[3]), .B(n20), .C(n21), .D(dout[2]), .Z(N7) );
  GTECH_AO22 U24 ( .A(din[2]), .B(n20), .C(n21), .D(dout[1]), .Z(N6) );
  GTECH_AO22 U25 ( .A(din[1]), .B(n20), .C(n21), .D(dout[0]), .Z(N5) );
  GTECH_AND2 U26 ( .A(din[0]), .B(n20), .Z(N4) );
  GTECH_AO22 U27 ( .A(din[15]), .B(n20), .C(n21), .D(dout[14]), .Z(N19) );
  GTECH_AO22 U28 ( .A(din[14]), .B(n20), .C(n21), .D(dout[13]), .Z(N18) );
  GTECH_AO22 U29 ( .A(din[13]), .B(n20), .C(n21), .D(dout[12]), .Z(N17) );
  GTECH_AO22 U30 ( .A(din[12]), .B(n20), .C(n21), .D(dout[11]), .Z(N16) );
  GTECH_AO22 U31 ( .A(din[11]), .B(n20), .C(n21), .D(dout[10]), .Z(N15) );
  GTECH_AO22 U32 ( .A(din[10]), .B(n20), .C(n21), .D(dout[9]), .Z(N14) );
  GTECH_AO22 U33 ( .A(din[9]), .B(n20), .C(n21), .D(dout[8]), .Z(N13) );
  GTECH_AO22 U34 ( .A(din[8]), .B(n20), .C(n21), .D(dout[7]), .Z(N12) );
  GTECH_AO22 U35 ( .A(din[7]), .B(n20), .C(n21), .D(dout[6]), .Z(N11) );
  GTECH_AO22 U36 ( .A(din[6]), .B(n20), .C(n21), .D(dout[5]), .Z(N10) );
  GTECH_NOR2 U37 ( .A(i_rst), .B(i_load), .Z(n21) );
  GTECH_AND_NOT U38 ( .A(i_load), .B(i_rst), .Z(n20) );
endmodule

