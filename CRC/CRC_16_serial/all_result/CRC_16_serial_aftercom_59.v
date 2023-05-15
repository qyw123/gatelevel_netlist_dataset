
module CRC_16_serial ( clk, rst_n, crc );
  output [15:0] crc;
  input clk, rst_n;
  wire   data_serial, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31,
         N32, N33, N34, N35, N36, N37, N47, N77, N78, N79, N80, N81, N82, N83,
         N84, N85, n17, n49, n50, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144;
  wire   [31:0] data_parallel;
  wire   [5:0] cnt;

  GTECH_FD4S data_parallel_reg_0_ ( .D(1'b0), .TI(1'b0), .TE(1'b0), .CP(clk), 
        .SD(rst_n), .Q(data_parallel[0]) );
  GTECH_FJK2S cnt_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N77), .TE(N47), .CP(clk), 
        .CD(rst_n), .Q(cnt[0]), .QN(N77) );
  GTECH_FJK2S cnt_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N82), .TE(N47), .CP(clk), 
        .CD(rst_n), .Q(cnt[5]), .QN(n17) );
  GTECH_FJK2S cnt_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N81), .TE(N47), .CP(clk), 
        .CD(rst_n), .Q(cnt[4]), .QN(n123) );
  GTECH_FJK2S cnt_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N80), .TE(N47), .CP(clk), 
        .CD(rst_n), .Q(cnt[3]), .QN(n122) );
  GTECH_FJK2S cnt_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N79), .TE(N47), .CP(clk), 
        .CD(rst_n), .Q(cnt[2]), .QN(n121) );
  GTECH_FJK2S cnt_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N78), .TE(N47), .CP(clk), 
        .CD(rst_n), .Q(cnt[1]), .QN(n120) );
  GTECH_FD4S data_parallel_reg_1_ ( .D(N7), .TI(1'b0), .TE(1'b0), .CP(clk), 
        .SD(rst_n), .Q(data_parallel[1]) );
  GTECH_FD4S data_parallel_reg_2_ ( .D(N8), .TI(1'b0), .TE(1'b0), .CP(clk), 
        .SD(rst_n), .Q(data_parallel[2]) );
  GTECH_FD2 data_parallel_reg_3_ ( .D(N9), .CP(clk), .CD(rst_n), .Q(
        data_parallel[3]) );
  GTECH_FD4S data_parallel_reg_4_ ( .D(N10), .TI(1'b0), .TE(1'b0), .CP(clk), 
        .SD(rst_n), .Q(data_parallel[4]) );
  GTECH_FD4S data_parallel_reg_5_ ( .D(N11), .TI(1'b0), .TE(1'b0), .CP(clk), 
        .SD(rst_n), .Q(data_parallel[5]) );
  GTECH_FD4S data_parallel_reg_6_ ( .D(N12), .TI(1'b0), .TE(1'b0), .CP(clk), 
        .SD(rst_n), .Q(data_parallel[6]) );
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
  GTECH_FD4S data_parallel_reg_13_ ( .D(N19), .TI(1'b0), .TE(1'b0), .CP(clk), 
        .SD(rst_n), .Q(data_parallel[13]) );
  GTECH_FD2 data_parallel_reg_14_ ( .D(N20), .CP(clk), .CD(rst_n), .Q(
        data_parallel[14]) );
  GTECH_FD2 data_parallel_reg_15_ ( .D(N21), .CP(clk), .CD(rst_n), .Q(
        data_parallel[15]) );
  GTECH_FD4S data_parallel_reg_16_ ( .D(N22), .TI(1'b0), .TE(1'b0), .CP(clk), 
        .SD(rst_n), .Q(data_parallel[16]) );
  GTECH_FD4S data_parallel_reg_17_ ( .D(N23), .TI(1'b0), .TE(1'b0), .CP(clk), 
        .SD(rst_n), .Q(data_parallel[17]) );
  GTECH_FD2 data_parallel_reg_18_ ( .D(N24), .CP(clk), .CD(rst_n), .Q(
        data_parallel[18]) );
  GTECH_FD2 data_parallel_reg_19_ ( .D(N25), .CP(clk), .CD(rst_n), .Q(
        data_parallel[19]) );
  GTECH_FD2 data_parallel_reg_20_ ( .D(N26), .CP(clk), .CD(rst_n), .Q(
        data_parallel[20]) );
  GTECH_FD4S data_parallel_reg_21_ ( .D(N27), .TI(1'b0), .TE(1'b0), .CP(clk), 
        .SD(rst_n), .Q(data_parallel[21]) );
  GTECH_FD4S data_parallel_reg_22_ ( .D(N28), .TI(1'b0), .TE(1'b0), .CP(clk), 
        .SD(rst_n), .Q(data_parallel[22]) );
  GTECH_FD4S data_parallel_reg_23_ ( .D(N29), .TI(1'b0), .TE(1'b0), .CP(clk), 
        .SD(rst_n), .Q(data_parallel[23]) );
  GTECH_FD2 data_parallel_reg_24_ ( .D(N30), .CP(clk), .CD(rst_n), .Q(
        data_parallel[24]) );
  GTECH_FD4S data_parallel_reg_25_ ( .D(N31), .TI(1'b0), .TE(1'b0), .CP(clk), 
        .SD(rst_n), .Q(data_parallel[25]) );
  GTECH_FD4S data_parallel_reg_26_ ( .D(N32), .TI(1'b0), .TE(1'b0), .CP(clk), 
        .SD(rst_n), .Q(data_parallel[26]) );
  GTECH_FD2 data_parallel_reg_27_ ( .D(N33), .CP(clk), .CD(rst_n), .Q(
        data_parallel[27]) );
  GTECH_FD4S data_parallel_reg_28_ ( .D(N34), .TI(1'b0), .TE(1'b0), .CP(clk), 
        .SD(rst_n), .Q(data_parallel[28]) );
  GTECH_FD2 data_parallel_reg_29_ ( .D(N35), .CP(clk), .CD(rst_n), .Q(
        data_parallel[29]) );
  GTECH_FD2 data_parallel_reg_30_ ( .D(N36), .CP(clk), .CD(rst_n), .Q(
        data_parallel[30]) );
  GTECH_FD4S data_parallel_reg_31_ ( .D(N37), .TI(1'b0), .TE(1'b0), .CP(clk), 
        .SD(rst_n), .Q(data_parallel[31]) );
  GTECH_FD2 data_serial_reg ( .D(N6), .CP(clk), .CD(rst_n), .Q(data_serial), 
        .QN(n49) );
  GTECH_FJK2S tmpcrc_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N83), .TE(N47), .CP(clk), 
        .CD(rst_n), .Q(crc[0]) );
  GTECH_FJK2S tmpcrc_reg_1_ ( .J(1'b0), .K(1'b0), .TI(crc[0]), .TE(N47), .CP(
        clk), .CD(rst_n), .Q(crc[1]) );
  GTECH_FJK2S tmpcrc_reg_2_ ( .J(1'b0), .K(1'b0), .TI(crc[1]), .TE(N47), .CP(
        clk), .CD(rst_n), .Q(crc[2]) );
  GTECH_FJK2S tmpcrc_reg_3_ ( .J(1'b0), .K(1'b0), .TI(crc[2]), .TE(N47), .CP(
        clk), .CD(rst_n), .Q(crc[3]) );
  GTECH_FJK2S tmpcrc_reg_4_ ( .J(1'b0), .K(1'b0), .TI(crc[3]), .TE(N47), .CP(
        clk), .CD(rst_n), .Q(crc[4]), .QN(n119) );
  GTECH_FJK2S tmpcrc_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N84), .TE(N47), .CP(clk), 
        .CD(rst_n), .Q(crc[5]) );
  GTECH_FJK2S tmpcrc_reg_6_ ( .J(1'b0), .K(1'b0), .TI(crc[5]), .TE(N47), .CP(
        clk), .CD(rst_n), .Q(crc[6]) );
  GTECH_FJK2S tmpcrc_reg_7_ ( .J(1'b0), .K(1'b0), .TI(crc[6]), .TE(N47), .CP(
        clk), .CD(rst_n), .Q(crc[7]) );
  GTECH_FJK2S tmpcrc_reg_8_ ( .J(1'b0), .K(1'b0), .TI(crc[7]), .TE(N47), .CP(
        clk), .CD(rst_n), .Q(crc[8]) );
  GTECH_FJK2S tmpcrc_reg_9_ ( .J(1'b0), .K(1'b0), .TI(crc[8]), .TE(N47), .CP(
        clk), .CD(rst_n), .Q(crc[9]) );
  GTECH_FJK2S tmpcrc_reg_10_ ( .J(1'b0), .K(1'b0), .TI(crc[9]), .TE(N47), .CP(
        clk), .CD(rst_n), .Q(crc[10]) );
  GTECH_FJK2S tmpcrc_reg_11_ ( .J(1'b0), .K(1'b0), .TI(crc[10]), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(crc[11]), .QN(n118) );
  GTECH_FJK2S tmpcrc_reg_12_ ( .J(1'b0), .K(1'b0), .TI(N85), .TE(N47), .CP(clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S tmpcrc_reg_13_ ( .J(1'b0), .K(1'b0), .TI(crc[12]), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S tmpcrc_reg_14_ ( .J(1'b0), .K(1'b0), .TI(crc[13]), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S tmpcrc_reg_15_ ( .J(1'b0), .K(1'b0), .TI(crc[14]), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(crc[15]), .QN(n50) );
  GTECH_AND2 U95 ( .A(n17), .B(data_parallel[2]), .Z(N9) );
  GTECH_XOR2 U96 ( .A(n124), .B(n118), .Z(N85) );
  GTECH_XOR2 U97 ( .A(n124), .B(n119), .Z(N84) );
  GTECH_OAI21 U98 ( .A(n49), .B(n125), .C(n126), .Z(N83) );
  GTECH_MUX2 U99 ( .A(n124), .B(n127), .S(n128), .Z(n126) );
  GTECH_AND_NOT U100 ( .A(n129), .B(n49), .Z(n128) );
  GTECH_NAND2 U101 ( .A(n127), .B(n125), .Z(n124) );
  GTECH_NOT U102 ( .A(n50), .Z(n127) );
  GTECH_NAND2 U103 ( .A(n17), .B(n130), .Z(n125) );
  GTECH_XOR2 U104 ( .A(n131), .B(n17), .Z(N82) );
  GTECH_OR_NOT U105 ( .A(n132), .B(n133), .Z(n131) );
  GTECH_XOR2 U106 ( .A(n132), .B(n123), .Z(N81) );
  GTECH_NAND2 U107 ( .A(n134), .B(n135), .Z(n132) );
  GTECH_NOT U108 ( .A(n122), .Z(n135) );
  GTECH_NOT U109 ( .A(n136), .Z(n134) );
  GTECH_XOR2 U110 ( .A(n136), .B(n122), .Z(N80) );
  GTECH_NAND3 U111 ( .A(n137), .B(n138), .C(n139), .Z(n136) );
  GTECH_NOT U112 ( .A(n121), .Z(n137) );
  GTECH_AND2 U113 ( .A(n17), .B(data_parallel[1]), .Z(N8) );
  GTECH_XOR2 U114 ( .A(n140), .B(n121), .Z(N79) );
  GTECH_NAND2 U115 ( .A(n138), .B(n139), .Z(n140) );
  GTECH_NOT U116 ( .A(n120), .Z(n139) );
  GTECH_NOT U117 ( .A(N77), .Z(n138) );
  GTECH_XOR2 U118 ( .A(N77), .B(n120), .Z(N78) );
  GTECH_AND2 U119 ( .A(n17), .B(data_parallel[0]), .Z(N7) );
  GTECH_AND2 U120 ( .A(n17), .B(data_parallel[31]), .Z(N6) );
  GTECH_NAND2 U121 ( .A(n141), .B(n142), .Z(N47) );
  GTECH_NOT U122 ( .A(n129), .Z(n142) );
  GTECH_MUX2 U123 ( .A(n17), .B(n143), .S(n123), .Z(n129) );
  GTECH_NOT U124 ( .A(n144), .Z(n143) );
  GTECH_NOT U125 ( .A(n130), .Z(n141) );
  GTECH_NAND2 U126 ( .A(n133), .B(n144), .Z(n130) );
  GTECH_NAND4 U127 ( .A(N77), .B(n122), .C(n121), .D(n120), .Z(n144) );
  GTECH_NOT U128 ( .A(n123), .Z(n133) );
  GTECH_AND2 U129 ( .A(n17), .B(data_parallel[30]), .Z(N37) );
  GTECH_AND2 U130 ( .A(n17), .B(data_parallel[29]), .Z(N36) );
  GTECH_AND2 U131 ( .A(n17), .B(data_parallel[28]), .Z(N35) );
  GTECH_AND2 U132 ( .A(n17), .B(data_parallel[27]), .Z(N34) );
  GTECH_AND2 U133 ( .A(n17), .B(data_parallel[26]), .Z(N33) );
  GTECH_AND2 U134 ( .A(n17), .B(data_parallel[25]), .Z(N32) );
  GTECH_AND2 U135 ( .A(n17), .B(data_parallel[24]), .Z(N31) );
  GTECH_AND2 U136 ( .A(n17), .B(data_parallel[23]), .Z(N30) );
  GTECH_AND2 U137 ( .A(n17), .B(data_parallel[22]), .Z(N29) );
  GTECH_AND2 U138 ( .A(n17), .B(data_parallel[21]), .Z(N28) );
  GTECH_AND2 U139 ( .A(n17), .B(data_parallel[20]), .Z(N27) );
  GTECH_AND2 U140 ( .A(n17), .B(data_parallel[19]), .Z(N26) );
  GTECH_AND2 U141 ( .A(n17), .B(data_parallel[18]), .Z(N25) );
  GTECH_AND2 U142 ( .A(n17), .B(data_parallel[17]), .Z(N24) );
  GTECH_AND2 U143 ( .A(n17), .B(data_parallel[16]), .Z(N23) );
  GTECH_AND2 U144 ( .A(n17), .B(data_parallel[15]), .Z(N22) );
  GTECH_AND2 U145 ( .A(n17), .B(data_parallel[14]), .Z(N21) );
  GTECH_AND2 U146 ( .A(n17), .B(data_parallel[13]), .Z(N20) );
  GTECH_AND2 U147 ( .A(n17), .B(data_parallel[12]), .Z(N19) );
  GTECH_AND2 U148 ( .A(n17), .B(data_parallel[11]), .Z(N18) );
  GTECH_AND2 U149 ( .A(n17), .B(data_parallel[10]), .Z(N17) );
  GTECH_AND2 U150 ( .A(n17), .B(data_parallel[9]), .Z(N16) );
  GTECH_AND2 U151 ( .A(n17), .B(data_parallel[8]), .Z(N15) );
  GTECH_AND2 U152 ( .A(n17), .B(data_parallel[7]), .Z(N14) );
  GTECH_AND2 U153 ( .A(n17), .B(data_parallel[6]), .Z(N13) );
  GTECH_AND2 U154 ( .A(n17), .B(data_parallel[5]), .Z(N12) );
  GTECH_AND2 U155 ( .A(n17), .B(data_parallel[4]), .Z(N11) );
  GTECH_AND2 U156 ( .A(n17), .B(data_parallel[3]), .Z(N10) );
endmodule

