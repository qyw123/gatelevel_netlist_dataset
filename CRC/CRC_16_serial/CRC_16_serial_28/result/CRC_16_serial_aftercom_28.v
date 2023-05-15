
module CRC_16_serial ( clk, rst_n, crc );
  output [15:0] crc;
  input clk, rst_n;
  wire   n_Logic0_, data_serial, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N47, N77, N78, N79, N80, N81,
         N82, N83, N84, N85, n17, n49, n50, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149;
  wire   [31:0] data_parallel;
  wire   [5:0] cnt;

  GTECH_FD4 data_parallel_reg_0_ ( .D(n_Logic0_), .CP(clk), .SD(rst_n), .Q(
        data_parallel[0]) );
  GTECH_FJK2S cnt_reg_0_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N77), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[0]), .QN(N77) );
  GTECH_FJK2S cnt_reg_5_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N82), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[5]), .QN(n17) );
  GTECH_FJK2S cnt_reg_4_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N81), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[4]), .QN(n124) );
  GTECH_FJK2S cnt_reg_3_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N80), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[3]), .QN(n123) );
  GTECH_FJK2S cnt_reg_2_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N79), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[2]), .QN(n122) );
  GTECH_FJK2S cnt_reg_1_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N78), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[1]), .QN(n121) );
  GTECH_FD4 data_parallel_reg_1_ ( .D(N7), .CP(clk), .SD(rst_n), .Q(
        data_parallel[1]) );
  GTECH_FD4 data_parallel_reg_2_ ( .D(N8), .CP(clk), .SD(rst_n), .Q(
        data_parallel[2]) );
  GTECH_FD2S data_parallel_reg_3_ ( .D(N9), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[3]) );
  GTECH_FD4 data_parallel_reg_4_ ( .D(N10), .CP(clk), .SD(rst_n), .Q(
        data_parallel[4]) );
  GTECH_FD4 data_parallel_reg_5_ ( .D(N11), .CP(clk), .SD(rst_n), .Q(
        data_parallel[5]) );
  GTECH_FD4 data_parallel_reg_6_ ( .D(N12), .CP(clk), .SD(rst_n), .Q(
        data_parallel[6]) );
  GTECH_FD2S data_parallel_reg_7_ ( .D(N13), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[7]) );
  GTECH_FD2S data_parallel_reg_8_ ( .D(N14), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[8]) );
  GTECH_FD2S data_parallel_reg_9_ ( .D(N15), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[9]) );
  GTECH_FD2S data_parallel_reg_10_ ( .D(N16), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[10]) );
  GTECH_FD2S data_parallel_reg_11_ ( .D(N17), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[11]) );
  GTECH_FD2S data_parallel_reg_12_ ( .D(N18), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[12]) );
  GTECH_FD4 data_parallel_reg_13_ ( .D(N19), .CP(clk), .SD(rst_n), .Q(
        data_parallel[13]) );
  GTECH_FD2S data_parallel_reg_14_ ( .D(N20), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[14]) );
  GTECH_FD2S data_parallel_reg_15_ ( .D(N21), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[15]) );
  GTECH_FD4 data_parallel_reg_16_ ( .D(N22), .CP(clk), .SD(rst_n), .Q(
        data_parallel[16]) );
  GTECH_FD4 data_parallel_reg_17_ ( .D(N23), .CP(clk), .SD(rst_n), .Q(
        data_parallel[17]) );
  GTECH_FD2S data_parallel_reg_18_ ( .D(N24), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[18]) );
  GTECH_FD2S data_parallel_reg_19_ ( .D(N25), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[19]) );
  GTECH_FD2S data_parallel_reg_20_ ( .D(N26), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[20]) );
  GTECH_FD4 data_parallel_reg_21_ ( .D(N27), .CP(clk), .SD(rst_n), .Q(
        data_parallel[21]) );
  GTECH_FD4 data_parallel_reg_22_ ( .D(N28), .CP(clk), .SD(rst_n), .Q(
        data_parallel[22]) );
  GTECH_FD4 data_parallel_reg_23_ ( .D(N29), .CP(clk), .SD(rst_n), .Q(
        data_parallel[23]) );
  GTECH_FD2S data_parallel_reg_24_ ( .D(N30), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[24]) );
  GTECH_FD4 data_parallel_reg_25_ ( .D(N31), .CP(clk), .SD(rst_n), .Q(
        data_parallel[25]) );
  GTECH_FD4 data_parallel_reg_26_ ( .D(N32), .CP(clk), .SD(rst_n), .Q(
        data_parallel[26]) );
  GTECH_FD2S data_parallel_reg_27_ ( .D(N33), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[27]) );
  GTECH_FD4 data_parallel_reg_28_ ( .D(N34), .CP(clk), .SD(rst_n), .Q(
        data_parallel[28]) );
  GTECH_FD2S data_parallel_reg_29_ ( .D(N35), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[29]) );
  GTECH_FD2S data_parallel_reg_30_ ( .D(N36), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[30]) );
  GTECH_FD4 data_parallel_reg_31_ ( .D(N37), .CP(clk), .SD(rst_n), .Q(
        data_parallel[31]) );
  GTECH_FD2S data_serial_reg ( .D(N6), .TI(n_Logic0_), .TE(n_Logic0_), .CP(clk), .CD(rst_n), .Q(data_serial), .QN(n49) );
  GTECH_FJK2S tmpcrc_reg_0_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N83), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(crc[0]) );
  GTECH_FJK2S tmpcrc_reg_1_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[0]), .TE(
        N47), .CP(clk), .CD(rst_n), .Q(crc[1]) );
  GTECH_FJK2S tmpcrc_reg_2_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[1]), .TE(
        N47), .CP(clk), .CD(rst_n), .Q(crc[2]) );
  GTECH_FJK2S tmpcrc_reg_3_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[2]), .TE(
        N47), .CP(clk), .CD(rst_n), .Q(crc[3]) );
  GTECH_FJK2S tmpcrc_reg_4_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[3]), .TE(
        N47), .CP(clk), .CD(rst_n), .Q(crc[4]), .QN(n120) );
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
        .TE(N47), .CP(clk), .CD(rst_n), .Q(crc[11]), .QN(n119) );
  GTECH_FJK2S tmpcrc_reg_12_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N85), .TE(N47), .CP(clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S tmpcrc_reg_13_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[12]), 
        .TE(N47), .CP(clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S tmpcrc_reg_14_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[13]), 
        .TE(N47), .CP(clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S tmpcrc_reg_15_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[14]), 
        .TE(N47), .CP(clk), .CD(rst_n), .Q(crc[15]), .QN(n50) );
  GTECH_ZERO U96 ( .Z(n_Logic0_) );
  GTECH_AND2 U97 ( .A(n17), .B(data_parallel[2]), .Z(N9) );
  GTECH_XOR2 U98 ( .A(n125), .B(n119), .Z(N85) );
  GTECH_XOR2 U99 ( .A(n125), .B(n120), .Z(N84) );
  GTECH_NOT U100 ( .A(n126), .Z(N83) );
  GTECH_AOI222 U101 ( .A(n127), .B(n128), .C(n129), .D(n130), .E(n50), .F(n131), .Z(n126) );
  GTECH_NOT U102 ( .A(n130), .Z(n131) );
  GTECH_NAND2 U103 ( .A(n132), .B(n128), .Z(n130) );
  GTECH_NOT U104 ( .A(n133), .Z(n132) );
  GTECH_NOT U105 ( .A(n125), .Z(n129) );
  GTECH_NAND2 U106 ( .A(n134), .B(n135), .Z(n125) );
  GTECH_NOT U107 ( .A(n50), .Z(n134) );
  GTECH_NOT U108 ( .A(n49), .Z(n128) );
  GTECH_NOT U109 ( .A(n135), .Z(n127) );
  GTECH_NAND2 U110 ( .A(n17), .B(n136), .Z(n135) );
  GTECH_XOR2 U111 ( .A(n137), .B(n17), .Z(N82) );
  GTECH_OR_NOT U112 ( .A(n138), .B(n139), .Z(n137) );
  GTECH_XOR2 U113 ( .A(n138), .B(n124), .Z(N81) );
  GTECH_NAND2 U114 ( .A(n140), .B(n141), .Z(n138) );
  GTECH_NOT U115 ( .A(n123), .Z(n141) );
  GTECH_NOT U116 ( .A(n142), .Z(n140) );
  GTECH_XOR2 U117 ( .A(n142), .B(n123), .Z(N80) );
  GTECH_NAND3 U118 ( .A(n143), .B(n144), .C(n145), .Z(n142) );
  GTECH_NOT U119 ( .A(n122), .Z(n143) );
  GTECH_AND2 U120 ( .A(n17), .B(data_parallel[1]), .Z(N8) );
  GTECH_XOR2 U121 ( .A(n146), .B(n122), .Z(N79) );
  GTECH_NAND2 U122 ( .A(n144), .B(n145), .Z(n146) );
  GTECH_NOT U123 ( .A(n121), .Z(n145) );
  GTECH_NOT U124 ( .A(N77), .Z(n144) );
  GTECH_XOR2 U125 ( .A(N77), .B(n121), .Z(N78) );
  GTECH_AND2 U126 ( .A(n17), .B(data_parallel[0]), .Z(N7) );
  GTECH_AND2 U127 ( .A(n17), .B(data_parallel[31]), .Z(N6) );
  GTECH_NAND2 U128 ( .A(n147), .B(n133), .Z(N47) );
  GTECH_OAI22 U129 ( .A(n148), .B(n139), .C(n17), .D(n124), .Z(n133) );
  GTECH_NOT U130 ( .A(n149), .Z(n148) );
  GTECH_NOT U131 ( .A(n136), .Z(n147) );
  GTECH_NAND2 U132 ( .A(n139), .B(n149), .Z(n136) );
  GTECH_NAND4 U133 ( .A(N77), .B(n123), .C(n122), .D(n121), .Z(n149) );
  GTECH_NOT U134 ( .A(n124), .Z(n139) );
  GTECH_AND2 U135 ( .A(n17), .B(data_parallel[30]), .Z(N37) );
  GTECH_AND2 U136 ( .A(n17), .B(data_parallel[29]), .Z(N36) );
  GTECH_AND2 U137 ( .A(n17), .B(data_parallel[28]), .Z(N35) );
  GTECH_AND2 U138 ( .A(n17), .B(data_parallel[27]), .Z(N34) );
  GTECH_AND2 U139 ( .A(n17), .B(data_parallel[26]), .Z(N33) );
  GTECH_AND2 U140 ( .A(n17), .B(data_parallel[25]), .Z(N32) );
  GTECH_AND2 U141 ( .A(n17), .B(data_parallel[24]), .Z(N31) );
  GTECH_AND2 U142 ( .A(n17), .B(data_parallel[23]), .Z(N30) );
  GTECH_AND2 U143 ( .A(n17), .B(data_parallel[22]), .Z(N29) );
  GTECH_AND2 U144 ( .A(n17), .B(data_parallel[21]), .Z(N28) );
  GTECH_AND2 U145 ( .A(n17), .B(data_parallel[20]), .Z(N27) );
  GTECH_AND2 U146 ( .A(n17), .B(data_parallel[19]), .Z(N26) );
  GTECH_AND2 U147 ( .A(n17), .B(data_parallel[18]), .Z(N25) );
  GTECH_AND2 U148 ( .A(n17), .B(data_parallel[17]), .Z(N24) );
  GTECH_AND2 U149 ( .A(n17), .B(data_parallel[16]), .Z(N23) );
  GTECH_AND2 U150 ( .A(n17), .B(data_parallel[15]), .Z(N22) );
  GTECH_AND2 U151 ( .A(n17), .B(data_parallel[14]), .Z(N21) );
  GTECH_AND2 U152 ( .A(n17), .B(data_parallel[13]), .Z(N20) );
  GTECH_AND2 U153 ( .A(n17), .B(data_parallel[12]), .Z(N19) );
  GTECH_AND2 U154 ( .A(n17), .B(data_parallel[11]), .Z(N18) );
  GTECH_AND2 U155 ( .A(n17), .B(data_parallel[10]), .Z(N17) );
  GTECH_AND2 U156 ( .A(n17), .B(data_parallel[9]), .Z(N16) );
  GTECH_AND2 U157 ( .A(n17), .B(data_parallel[8]), .Z(N15) );
  GTECH_AND2 U158 ( .A(n17), .B(data_parallel[7]), .Z(N14) );
  GTECH_AND2 U159 ( .A(n17), .B(data_parallel[6]), .Z(N13) );
  GTECH_AND2 U160 ( .A(n17), .B(data_parallel[5]), .Z(N12) );
  GTECH_AND2 U161 ( .A(n17), .B(data_parallel[4]), .Z(N11) );
  GTECH_AND2 U162 ( .A(n17), .B(data_parallel[3]), .Z(N10) );
endmodule

