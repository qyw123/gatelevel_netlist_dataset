
module cyclenot_left_register16 ( din, i_rst, i_load, i_clk, dout );
  input [15:0] din;
  output [15:0] dout;
  input i_rst, i_load, i_clk;
  wire   N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18,
         N19, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n21, n22, n23;

  GTECH_FD1 dout_mid_reg_0_ ( .D(N4), .CP(i_clk), .Q(dout[0]), .QN(n2) );
  GTECH_FD1 dout_mid_reg_1_ ( .D(N5), .CP(i_clk), .Q(dout[1]), .QN(n3) );
  GTECH_FD1 dout_mid_reg_2_ ( .D(N6), .CP(i_clk), .Q(dout[2]), .QN(n4) );
  GTECH_FD1 dout_mid_reg_3_ ( .D(N7), .CP(i_clk), .Q(dout[3]), .QN(n5) );
  GTECH_FD1 dout_mid_reg_4_ ( .D(N8), .CP(i_clk), .Q(dout[4]), .QN(n6) );
  GTECH_FD1 dout_mid_reg_5_ ( .D(N9), .CP(i_clk), .Q(dout[5]), .QN(n7) );
  GTECH_FD1 dout_mid_reg_6_ ( .D(N10), .CP(i_clk), .Q(dout[6]), .QN(n8) );
  GTECH_FD1 dout_mid_reg_7_ ( .D(N11), .CP(i_clk), .Q(dout[7]), .QN(n9) );
  GTECH_FD1 dout_mid_reg_8_ ( .D(N12), .CP(i_clk), .Q(dout[8]), .QN(n10) );
  GTECH_FD1 dout_mid_reg_9_ ( .D(N13), .CP(i_clk), .Q(dout[9]), .QN(n11) );
  GTECH_FD1 dout_mid_reg_10_ ( .D(N14), .CP(i_clk), .Q(dout[10]), .QN(n12) );
  GTECH_FD1 dout_mid_reg_11_ ( .D(N15), .CP(i_clk), .Q(dout[11]), .QN(n13) );
  GTECH_FD1 dout_mid_reg_12_ ( .D(N16), .CP(i_clk), .Q(dout[12]), .QN(n14) );
  GTECH_FD1 dout_mid_reg_13_ ( .D(N17), .CP(i_clk), .Q(dout[13]), .QN(n15) );
  GTECH_FD1 dout_mid_reg_14_ ( .D(N18), .CP(i_clk), .Q(dout[14]), .QN(n16) );
  GTECH_FD1 dout_mid_reg_15_ ( .D(N19), .CP(i_clk), .Q(dout[15]) );
  GTECH_OAI2N2 U22 ( .A(n6), .B(n21), .C(din[5]), .D(n22), .Z(N9) );
  GTECH_OAI2N2 U23 ( .A(n5), .B(n21), .C(din[4]), .D(n22), .Z(N8) );
  GTECH_OAI2N2 U24 ( .A(n4), .B(n21), .C(din[3]), .D(n22), .Z(N7) );
  GTECH_OAI2N2 U25 ( .A(n3), .B(n21), .C(din[2]), .D(n22), .Z(N6) );
  GTECH_OAI2N2 U26 ( .A(n2), .B(n21), .C(din[1]), .D(n22), .Z(N5) );
  GTECH_AND2 U27 ( .A(din[0]), .B(n22), .Z(N4) );
  GTECH_OAI2N2 U28 ( .A(n16), .B(n21), .C(din[15]), .D(n22), .Z(N19) );
  GTECH_OAI2N2 U29 ( .A(n15), .B(n21), .C(din[14]), .D(n22), .Z(N18) );
  GTECH_OAI2N2 U30 ( .A(n14), .B(n21), .C(din[13]), .D(n22), .Z(N17) );
  GTECH_OAI2N2 U31 ( .A(n13), .B(n21), .C(din[12]), .D(n22), .Z(N16) );
  GTECH_OAI2N2 U32 ( .A(n12), .B(n21), .C(din[11]), .D(n22), .Z(N15) );
  GTECH_OAI2N2 U33 ( .A(n11), .B(n21), .C(din[10]), .D(n22), .Z(N14) );
  GTECH_OAI2N2 U34 ( .A(n10), .B(n21), .C(din[9]), .D(n22), .Z(N13) );
  GTECH_OAI2N2 U35 ( .A(n9), .B(n21), .C(din[8]), .D(n22), .Z(N12) );
  GTECH_OAI2N2 U36 ( .A(n8), .B(n21), .C(din[7]), .D(n22), .Z(N11) );
  GTECH_OAI2N2 U37 ( .A(n7), .B(n21), .C(din[6]), .D(n22), .Z(N10) );
  GTECH_NOR2 U38 ( .A(n23), .B(i_rst), .Z(n22) );
  GTECH_OR_NOT U39 ( .A(i_rst), .B(n23), .Z(n21) );
  GTECH_NOT U40 ( .A(i_load), .Z(n23) );
endmodule

