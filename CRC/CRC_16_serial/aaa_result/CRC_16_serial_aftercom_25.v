
module CRC_16_serial ( clk, rst_n, crc );
  output [15:0] crc;
  input clk, rst_n;
  wire   n_Logic0_, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31,
         N32, N33, N34, N35, N36, N37, N47, N77, N78, N79, N80, N81, N82, N83,
         N84, N85, n17, n49, n50, n51, n104, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134;
  wire   [31:0] data_parallel;
  wire   [5:0] cnt;

  GTECH_FD4 data_parallel_reg_0_ ( .D(n_Logic0_), .CP(clk), .SD(rst_n), .Q(
        data_parallel[0]) );
  GTECH_FJK2S cnt_reg_0_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N77), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[0]), .QN(N77) );
  GTECH_FJK2S cnt_reg_5_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N82), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[5]), .QN(n17) );
  GTECH_FJK2S cnt_reg_4_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N81), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[4]), .QN(n106) );
  GTECH_FJK2S cnt_reg_3_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N80), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[3]), .QN(n109) );
  GTECH_FJK2S cnt_reg_2_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N79), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[2]), .QN(n108) );
  GTECH_FJK2S cnt_reg_1_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N78), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[1]), .QN(n107) );
  GTECH_FD4 data_parallel_reg_1_ ( .D(N7), .CP(clk), .SD(rst_n), .Q(
        data_parallel[1]) );
  GTECH_FD4 data_parallel_reg_2_ ( .D(N8), .CP(clk), .SD(rst_n), .Q(
        data_parallel[2]) );
  GTECH_FD2 data_parallel_reg_3_ ( .D(N9), .CP(clk), .CD(rst_n), .Q(
        data_parallel[3]) );
  GTECH_FD4 data_parallel_reg_4_ ( .D(N10), .CP(clk), .SD(rst_n), .Q(
        data_parallel[4]) );
  GTECH_FD4 data_parallel_reg_5_ ( .D(N11), .CP(clk), .SD(rst_n), .Q(
        data_parallel[5]) );
  GTECH_FD4 data_parallel_reg_6_ ( .D(N12), .CP(clk), .SD(rst_n), .Q(
        data_parallel[6]) );
  GTECH_FD2 data_parallel_reg_7_ ( .D(N13), .CP(clk), .CD(rst_n), .Q(
        data_parallel[7]) );
  GTECH_FD2 data_parallel_reg_8_ ( .D(N14), .CP(clk), .CD(rst_n), .Q(
        data_parallel[8]) );
  GTECH_FD2 data_parallel_reg_9_ ( .D(N15), .CP(clk), .CD(rst_n), .Q(
        data_parallel[9]) );
  GTECH_FD2 data_parallel_reg_10_ ( .D(N16), .CP(clk), .CD(rst_n), .Q(
        data_parallel[10]) );
  GTECH_FD2 data_parallel_reg_11_ ( .D(N17), .CP(clk), .CD(rst_n), .Q(
        data_parallel[11]) );
  GTECH_FD2 data_parallel_reg_12_ ( .D(N18), .CP(clk), .CD(rst_n), .Q(
        data_parallel[12]) );
  GTECH_FD4 data_parallel_reg_13_ ( .D(N19), .CP(clk), .SD(rst_n), .Q(
        data_parallel[13]) );
  GTECH_FD2 data_parallel_reg_14_ ( .D(N20), .CP(clk), .CD(rst_n), .Q(
        data_parallel[14]) );
  GTECH_FD2 data_parallel_reg_15_ ( .D(N21), .CP(clk), .CD(rst_n), .Q(
        data_parallel[15]) );
  GTECH_FD4 data_parallel_reg_16_ ( .D(N22), .CP(clk), .SD(rst_n), .Q(
        data_parallel[16]) );
  GTECH_FD4 data_parallel_reg_17_ ( .D(N23), .CP(clk), .SD(rst_n), .Q(
        data_parallel[17]) );
  GTECH_FD2 data_parallel_reg_18_ ( .D(N24), .CP(clk), .CD(rst_n), .Q(
        data_parallel[18]) );
  GTECH_FD2 data_parallel_reg_19_ ( .D(N25), .CP(clk), .CD(rst_n), .Q(
        data_parallel[19]) );
  GTECH_FD2 data_parallel_reg_20_ ( .D(N26), .CP(clk), .CD(rst_n), .Q(
        data_parallel[20]) );
  GTECH_FD4 data_parallel_reg_21_ ( .D(N27), .CP(clk), .SD(rst_n), .Q(
        data_parallel[21]) );
  GTECH_FD4 data_parallel_reg_22_ ( .D(N28), .CP(clk), .SD(rst_n), .Q(
        data_parallel[22]) );
  GTECH_FD4 data_parallel_reg_23_ ( .D(N29), .CP(clk), .SD(rst_n), .Q(
        data_parallel[23]) );
  GTECH_FD2 data_parallel_reg_24_ ( .D(N30), .CP(clk), .CD(rst_n), .Q(
        data_parallel[24]) );
  GTECH_FD4 data_parallel_reg_25_ ( .D(N31), .CP(clk), .SD(rst_n), .Q(
        data_parallel[25]) );
  GTECH_FD4 data_parallel_reg_26_ ( .D(N32), .CP(clk), .SD(rst_n), .Q(
        data_parallel[26]) );
  GTECH_FD2 data_parallel_reg_27_ ( .D(N33), .CP(clk), .CD(rst_n), .Q(
        data_parallel[27]) );
  GTECH_FD4 data_parallel_reg_28_ ( .D(N34), .CP(clk), .SD(rst_n), .Q(
        data_parallel[28]) );
  GTECH_FD2 data_parallel_reg_29_ ( .D(N35), .CP(clk), .CD(rst_n), .Q(
        data_parallel[29]) );
  GTECH_FD2 data_parallel_reg_30_ ( .D(N36), .CP(clk), .CD(rst_n), .Q(
        data_parallel[30]) );
  GTECH_FD4 data_parallel_reg_31_ ( .D(N37), .CP(clk), .SD(rst_n), .Q(
        data_parallel[31]) );
  GTECH_FD2 data_serial_reg ( .D(N6), .CP(clk), .CD(rst_n), .Q(n49) );
  GTECH_FJK2S tmpcrc_reg_0_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N83), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(crc[0]) );
  GTECH_FJK2S tmpcrc_reg_1_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[0]), .TE(
        N47), .CP(clk), .CD(rst_n), .Q(crc[1]) );
  GTECH_FJK2S tmpcrc_reg_2_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[1]), .TE(
        N47), .CP(clk), .CD(rst_n), .Q(crc[2]) );
  GTECH_FJK2S tmpcrc_reg_3_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[2]), .TE(
        N47), .CP(clk), .CD(rst_n), .Q(crc[3]) );
  GTECH_FJK2S tmpcrc_reg_4_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[3]), .TE(
        N47), .CP(clk), .CD(rst_n), .Q(crc[4]), .QN(n50) );
  GTECH_FJK2S tmpcrc_reg_5_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N84), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(crc[5]) );
  GTECH_FJK2S tmpcrc_reg_6_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[5]), .TE(
        N47), .CP(clk), .CD(rst_n), .Q(crc[6]) );
  GTECH_FJK2S tmpcrc_reg_7_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[6]), .TE(
        N47), .CP(clk), .CD(rst_n), .Q(crc[7]) );
  GTECH_FJK2S tmpcrc_reg_8_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[7]), .TE(
        N47), .CP(clk), .CD(rst_n), .Q(crc[8]) );
  GTECH_FJK2S tmpcrc_reg_9_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[8]), .TE(
        N47), .CP(clk), .CD(rst_n), .Q(crc[9]) );
  GTECH_FJK2S tmpcrc_reg_10_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[9]), .TE(
        N47), .CP(clk), .CD(rst_n), .Q(crc[10]) );
  GTECH_FJK2S tmpcrc_reg_11_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[10]), 
        .TE(N47), .CP(clk), .CD(rst_n), .Q(crc[11]), .QN(n51) );
  GTECH_FJK2S tmpcrc_reg_12_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N85), .TE(N47), .CP(clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S tmpcrc_reg_13_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[12]), 
        .TE(N47), .CP(clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S tmpcrc_reg_14_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[13]), 
        .TE(N47), .CP(clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S tmpcrc_reg_15_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[14]), 
        .TE(N47), .CP(clk), .CD(rst_n), .Q(crc[15]), .QN(n104) );
  GTECH_ZERO U80 ( .Z(n_Logic0_) );
  GTECH_AND2 U81 ( .A(n17), .B(data_parallel[2]), .Z(N9) );
  GTECH_MUX2 U82 ( .A(n110), .B(n111), .S(n51), .Z(N85) );
  GTECH_MUX2 U83 ( .A(n110), .B(n111), .S(n50), .Z(N84) );
  GTECH_NOT U84 ( .A(n112), .Z(n111) );
  GTECH_AO21 U85 ( .A(n113), .B(n114), .C(n104), .Z(n112) );
  GTECH_NAND2 U86 ( .A(n115), .B(n116), .Z(n110) );
  GTECH_NOT U87 ( .A(n104), .Z(n116) );
  GTECH_AO21 U88 ( .A(n49), .B(n117), .C(n118), .Z(N83) );
  GTECH_OAI22 U89 ( .A(n114), .B(n119), .C(n104), .D(n113), .Z(n118) );
  GTECH_XOR2 U90 ( .A(n104), .B(n49), .Z(n119) );
  GTECH_XOR2 U91 ( .A(n120), .B(n17), .Z(N82) );
  GTECH_OR_NOT U92 ( .A(n121), .B(n122), .Z(n120) );
  GTECH_XOR2 U93 ( .A(n121), .B(n106), .Z(N81) );
  GTECH_NAND2 U94 ( .A(n123), .B(n124), .Z(n121) );
  GTECH_NOT U95 ( .A(n125), .Z(n123) );
  GTECH_XOR2 U96 ( .A(n125), .B(n109), .Z(N80) );
  GTECH_NAND3 U97 ( .A(n126), .B(n127), .C(n128), .Z(n125) );
  GTECH_AND2 U98 ( .A(n17), .B(data_parallel[1]), .Z(N8) );
  GTECH_XOR2 U99 ( .A(n129), .B(n108), .Z(N79) );
  GTECH_NAND2 U100 ( .A(n126), .B(n128), .Z(n129) );
  GTECH_XOR2 U101 ( .A(n107), .B(N77), .Z(N78) );
  GTECH_AND2 U102 ( .A(n17), .B(data_parallel[0]), .Z(N7) );
  GTECH_AND2 U103 ( .A(n17), .B(data_parallel[31]), .Z(N6) );
  GTECH_NAND3 U104 ( .A(n130), .B(n122), .C(n131), .Z(N47) );
  GTECH_NOT U105 ( .A(n113), .Z(n131) );
  GTECH_NAND2 U106 ( .A(n115), .B(n114), .Z(n113) );
  GTECH_NAND2 U107 ( .A(n115), .B(n132), .Z(n114) );
  GTECH_AO21 U108 ( .A(n106), .B(n133), .C(n17), .Z(n132) );
  GTECH_NOT U109 ( .A(n130), .Z(n133) );
  GTECH_NOT U110 ( .A(n117), .Z(n115) );
  GTECH_OAI22 U111 ( .A(n134), .B(n122), .C(n134), .D(n130), .Z(n117) );
  GTECH_NOT U112 ( .A(n17), .Z(n134) );
  GTECH_NOT U113 ( .A(n106), .Z(n122) );
  GTECH_OR4 U114 ( .A(n127), .B(n124), .C(n128), .D(n126), .Z(n130) );
  GTECH_NOT U115 ( .A(n107), .Z(n126) );
  GTECH_NOT U116 ( .A(N77), .Z(n128) );
  GTECH_NOT U117 ( .A(n109), .Z(n124) );
  GTECH_NOT U118 ( .A(n108), .Z(n127) );
  GTECH_AND2 U119 ( .A(n17), .B(data_parallel[30]), .Z(N37) );
  GTECH_AND2 U120 ( .A(n17), .B(data_parallel[29]), .Z(N36) );
  GTECH_AND2 U121 ( .A(n17), .B(data_parallel[28]), .Z(N35) );
  GTECH_AND2 U122 ( .A(n17), .B(data_parallel[27]), .Z(N34) );
  GTECH_AND2 U123 ( .A(n17), .B(data_parallel[26]), .Z(N33) );
  GTECH_AND2 U124 ( .A(n17), .B(data_parallel[25]), .Z(N32) );
  GTECH_AND2 U125 ( .A(n17), .B(data_parallel[24]), .Z(N31) );
  GTECH_AND2 U126 ( .A(n17), .B(data_parallel[23]), .Z(N30) );
  GTECH_AND2 U127 ( .A(n17), .B(data_parallel[22]), .Z(N29) );
  GTECH_AND2 U128 ( .A(n17), .B(data_parallel[21]), .Z(N28) );
  GTECH_AND2 U129 ( .A(n17), .B(data_parallel[20]), .Z(N27) );
  GTECH_AND2 U130 ( .A(n17), .B(data_parallel[19]), .Z(N26) );
  GTECH_AND2 U131 ( .A(n17), .B(data_parallel[18]), .Z(N25) );
  GTECH_AND2 U132 ( .A(n17), .B(data_parallel[17]), .Z(N24) );
  GTECH_AND2 U133 ( .A(n17), .B(data_parallel[16]), .Z(N23) );
  GTECH_AND2 U134 ( .A(n17), .B(data_parallel[15]), .Z(N22) );
  GTECH_AND2 U135 ( .A(n17), .B(data_parallel[14]), .Z(N21) );
  GTECH_AND2 U136 ( .A(n17), .B(data_parallel[13]), .Z(N20) );
  GTECH_AND2 U137 ( .A(n17), .B(data_parallel[12]), .Z(N19) );
  GTECH_AND2 U138 ( .A(n17), .B(data_parallel[11]), .Z(N18) );
  GTECH_AND2 U139 ( .A(n17), .B(data_parallel[10]), .Z(N17) );
  GTECH_AND2 U140 ( .A(n17), .B(data_parallel[9]), .Z(N16) );
  GTECH_AND2 U141 ( .A(n17), .B(data_parallel[8]), .Z(N15) );
  GTECH_AND2 U142 ( .A(n17), .B(data_parallel[7]), .Z(N14) );
  GTECH_AND2 U143 ( .A(n17), .B(data_parallel[6]), .Z(N13) );
  GTECH_AND2 U144 ( .A(n17), .B(data_parallel[5]), .Z(N12) );
  GTECH_AND2 U145 ( .A(n17), .B(data_parallel[4]), .Z(N11) );
  GTECH_AND2 U146 ( .A(n17), .B(data_parallel[3]), .Z(N10) );
endmodule

