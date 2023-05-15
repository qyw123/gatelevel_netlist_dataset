
module cyclenot_right_register16 ( din, i_rst, i_load, i_clk, dout );
  input [15:0] din;
  output [15:0] dout;
  input i_rst, i_load, i_clk;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n21, n22, n23;

  GTECH_FD1 dout_mid_reg_0_ ( .D(N3), .CP(i_clk), .Q(dout[0]), .QN(n2) );
  GTECH_FD1 dout_mid_reg_15_ ( .D(N18), .CP(i_clk), .Q(dout[15]), .QN(n3) );
  GTECH_FD1 dout_mid_reg_14_ ( .D(N17), .CP(i_clk), .Q(dout[14]), .QN(n4) );
  GTECH_FD1 dout_mid_reg_13_ ( .D(N16), .CP(i_clk), .Q(dout[13]), .QN(n5) );
  GTECH_FD1 dout_mid_reg_12_ ( .D(N15), .CP(i_clk), .Q(dout[12]), .QN(n6) );
  GTECH_FD1 dout_mid_reg_11_ ( .D(N14), .CP(i_clk), .Q(dout[11]), .QN(n7) );
  GTECH_FD1 dout_mid_reg_10_ ( .D(N13), .CP(i_clk), .Q(dout[10]), .QN(n8) );
  GTECH_FD1 dout_mid_reg_9_ ( .D(N12), .CP(i_clk), .Q(dout[9]), .QN(n9) );
  GTECH_FD1 dout_mid_reg_8_ ( .D(N11), .CP(i_clk), .Q(dout[8]), .QN(n10) );
  GTECH_FD1 dout_mid_reg_7_ ( .D(N10), .CP(i_clk), .Q(dout[7]), .QN(n11) );
  GTECH_FD1 dout_mid_reg_6_ ( .D(N9), .CP(i_clk), .Q(dout[6]), .QN(n12) );
  GTECH_FD1 dout_mid_reg_5_ ( .D(N8), .CP(i_clk), .Q(dout[5]), .QN(n13) );
  GTECH_FD1 dout_mid_reg_4_ ( .D(N7), .CP(i_clk), .Q(dout[4]), .QN(n14) );
  GTECH_FD1 dout_mid_reg_3_ ( .D(N6), .CP(i_clk), .Q(dout[3]), .QN(n15) );
  GTECH_FD1 dout_mid_reg_2_ ( .D(N5), .CP(i_clk), .Q(dout[2]), .QN(n16) );
  GTECH_FD1 dout_mid_reg_1_ ( .D(N4), .CP(i_clk), .Q(dout[1]), .QN(n17) );
  GTECH_OAI2N2 U22 ( .A(n11), .B(n21), .C(din[6]), .D(n22), .Z(N9) );
  GTECH_OAI2N2 U23 ( .A(n12), .B(n21), .C(din[5]), .D(n22), .Z(N8) );
  GTECH_OAI2N2 U24 ( .A(n13), .B(n21), .C(din[4]), .D(n22), .Z(N7) );
  GTECH_OAI2N2 U25 ( .A(n14), .B(n21), .C(din[3]), .D(n22), .Z(N6) );
  GTECH_OAI2N2 U26 ( .A(n15), .B(n21), .C(din[2]), .D(n22), .Z(N5) );
  GTECH_OAI2N2 U27 ( .A(n16), .B(n21), .C(din[1]), .D(n22), .Z(N4) );
  GTECH_OAI2N2 U28 ( .A(n17), .B(n21), .C(din[0]), .D(n22), .Z(N3) );
  GTECH_OAI2N2 U29 ( .A(n2), .B(n21), .C(din[15]), .D(n22), .Z(N18) );
  GTECH_OAI2N2 U30 ( .A(n3), .B(n21), .C(din[14]), .D(n22), .Z(N17) );
  GTECH_OAI2N2 U31 ( .A(n4), .B(n21), .C(din[13]), .D(n22), .Z(N16) );
  GTECH_OAI2N2 U32 ( .A(n5), .B(n21), .C(din[12]), .D(n22), .Z(N15) );
  GTECH_OAI2N2 U33 ( .A(n6), .B(n21), .C(din[11]), .D(n22), .Z(N14) );
  GTECH_OAI2N2 U34 ( .A(n7), .B(n21), .C(din[10]), .D(n22), .Z(N13) );
  GTECH_OAI2N2 U35 ( .A(n8), .B(n21), .C(din[9]), .D(n22), .Z(N12) );
  GTECH_OAI2N2 U36 ( .A(n9), .B(n21), .C(din[8]), .D(n22), .Z(N11) );
  GTECH_OAI2N2 U37 ( .A(n10), .B(n21), .C(din[7]), .D(n22), .Z(N10) );
  GTECH_AND2 U38 ( .A(n23), .B(i_load), .Z(n22) );
  GTECH_OR_NOT U39 ( .A(i_load), .B(n23), .Z(n21) );
  GTECH_NOT U40 ( .A(i_rst), .Z(n23) );
endmodule

