
module CRC_16_serial ( clk, rst_n, crc );
  output [15:0] crc;
  input clk, rst_n;
  wire   n_Logic0_, data_serial, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N47, N77, N78, N79, N80, N81,
         N82, N83, N84, N85, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144;
  wire   [31:0] data_parallel;
  wire   [5:0] cnt;

  GTECH_FD4S data_parallel_reg_0_ ( .D(n_Logic0_), .TI(n_Logic0_), .TE(
        n_Logic0_), .CP(clk), .SD(rst_n), .Q(data_parallel[0]), .QN(n16) );
  GTECH_FJK2S cnt_reg_0_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N77), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[0]), .QN(N77) );
  GTECH_FJK2S cnt_reg_5_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N82), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[5]), .QN(n17) );
  GTECH_FJK2S cnt_reg_4_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N81), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[4]), .QN(n123) );
  GTECH_FJK2S cnt_reg_3_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N80), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[3]), .QN(n122) );
  GTECH_FJK2S cnt_reg_2_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N79), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[2]), .QN(n121) );
  GTECH_FJK2S cnt_reg_1_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N78), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[1]), .QN(n120) );
  GTECH_FD4S data_parallel_reg_1_ ( .D(N7), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[1]), .QN(n18) );
  GTECH_FD4S data_parallel_reg_2_ ( .D(N8), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[2]), .QN(n19) );
  GTECH_FD2 data_parallel_reg_3_ ( .D(N9), .CP(clk), .CD(rst_n), .Q(
        data_parallel[3]), .QN(n20) );
  GTECH_FD4S data_parallel_reg_4_ ( .D(N10), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[4]), .QN(n21) );
  GTECH_FD4S data_parallel_reg_5_ ( .D(N11), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[5]), .QN(n22) );
  GTECH_FD4S data_parallel_reg_6_ ( .D(N12), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[6]), .QN(n23) );
  GTECH_FD2 data_parallel_reg_7_ ( .D(N13), .CP(clk), .CD(rst_n), .Q(
        data_parallel[7]), .QN(n24) );
  GTECH_FD2 data_parallel_reg_8_ ( .D(N14), .CP(clk), .CD(rst_n), .Q(
        data_parallel[8]), .QN(n25) );
  GTECH_FD2 data_parallel_reg_9_ ( .D(N15), .CP(clk), .CD(rst_n), .Q(
        data_parallel[9]), .QN(n26) );
  GTECH_FD2 data_parallel_reg_10_ ( .D(N16), .CP(clk), .CD(rst_n), .Q(
        data_parallel[10]), .QN(n27) );
  GTECH_FD2 data_parallel_reg_11_ ( .D(N17), .CP(clk), .CD(rst_n), .Q(
        data_parallel[11]), .QN(n28) );
  GTECH_FD2 data_parallel_reg_12_ ( .D(N18), .CP(clk), .CD(rst_n), .Q(
        data_parallel[12]), .QN(n29) );
  GTECH_FD4S data_parallel_reg_13_ ( .D(N19), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[13]), .QN(n30) );
  GTECH_FD2 data_parallel_reg_14_ ( .D(N20), .CP(clk), .CD(rst_n), .Q(
        data_parallel[14]), .QN(n31) );
  GTECH_FD2 data_parallel_reg_15_ ( .D(N21), .CP(clk), .CD(rst_n), .Q(
        data_parallel[15]), .QN(n32) );
  GTECH_FD4S data_parallel_reg_16_ ( .D(N22), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[16]), .QN(n33) );
  GTECH_FD4S data_parallel_reg_17_ ( .D(N23), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[17]), .QN(n34) );
  GTECH_FD2 data_parallel_reg_18_ ( .D(N24), .CP(clk), .CD(rst_n), .Q(
        data_parallel[18]), .QN(n35) );
  GTECH_FD2 data_parallel_reg_19_ ( .D(N25), .CP(clk), .CD(rst_n), .Q(
        data_parallel[19]), .QN(n36) );
  GTECH_FD2 data_parallel_reg_20_ ( .D(N26), .CP(clk), .CD(rst_n), .Q(
        data_parallel[20]), .QN(n37) );
  GTECH_FD4S data_parallel_reg_21_ ( .D(N27), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[21]), .QN(n38) );
  GTECH_FD4S data_parallel_reg_22_ ( .D(N28), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[22]), .QN(n39) );
  GTECH_FD4S data_parallel_reg_23_ ( .D(N29), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[23]), .QN(n40) );
  GTECH_FD2 data_parallel_reg_24_ ( .D(N30), .CP(clk), .CD(rst_n), .Q(
        data_parallel[24]), .QN(n41) );
  GTECH_FD4S data_parallel_reg_25_ ( .D(N31), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[25]), .QN(n42) );
  GTECH_FD4S data_parallel_reg_26_ ( .D(N32), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[26]), .QN(n43) );
  GTECH_FD2 data_parallel_reg_27_ ( .D(N33), .CP(clk), .CD(rst_n), .Q(
        data_parallel[27]), .QN(n44) );
  GTECH_FD4S data_parallel_reg_28_ ( .D(N34), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[28]), .QN(n45) );
  GTECH_FD2 data_parallel_reg_29_ ( .D(N35), .CP(clk), .CD(rst_n), .Q(
        data_parallel[29]), .QN(n46) );
  GTECH_FD2 data_parallel_reg_30_ ( .D(N36), .CP(clk), .CD(rst_n), .Q(
        data_parallel[30]), .QN(n47) );
  GTECH_FD4S data_parallel_reg_31_ ( .D(N37), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[31]), .QN(n48) );
  GTECH_FD2 data_serial_reg ( .D(N6), .CP(clk), .CD(rst_n), .Q(data_serial), 
        .QN(n49) );
  GTECH_FJK2S tmpcrc_reg_0_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N83), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(crc[0]) );
  GTECH_FJK2S tmpcrc_reg_1_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[0]), .TE(
        N47), .CP(clk), .CD(rst_n), .Q(crc[1]) );
  GTECH_FJK2S tmpcrc_reg_2_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[1]), .TE(
        N47), .CP(clk), .CD(rst_n), .Q(crc[2]) );
  GTECH_FJK2S tmpcrc_reg_3_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[2]), .TE(
        N47), .CP(clk), .CD(rst_n), .Q(crc[3]) );
  GTECH_FJK2S tmpcrc_reg_4_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[3]), .TE(
        N47), .CP(clk), .CD(rst_n), .Q(crc[4]), .QN(n119) );
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
        .TE(N47), .CP(clk), .CD(rst_n), .Q(crc[11]), .QN(n118) );
  GTECH_FJK2S tmpcrc_reg_12_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N85), .TE(N47), .CP(clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S tmpcrc_reg_13_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[12]), 
        .TE(N47), .CP(clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S tmpcrc_reg_14_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[13]), 
        .TE(N47), .CP(clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S tmpcrc_reg_15_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[14]), 
        .TE(N47), .CP(clk), .CD(rst_n), .Q(crc[15]), .QN(n50) );
  GTECH_ZERO U95 ( .Z(n_Logic0_) );
  GTECH_AND_NOT U96 ( .A(n17), .B(n19), .Z(N9) );
  GTECH_XOR2 U97 ( .A(n124), .B(n118), .Z(N85) );
  GTECH_XOR2 U98 ( .A(n124), .B(n119), .Z(N84) );
  GTECH_OAI21 U99 ( .A(n49), .B(n125), .C(n126), .Z(N83) );
  GTECH_MUX2 U100 ( .A(n124), .B(n127), .S(n128), .Z(n126) );
  GTECH_AND_NOT U101 ( .A(n129), .B(n49), .Z(n128) );
  GTECH_NAND2 U102 ( .A(n127), .B(n125), .Z(n124) );
  GTECH_NOT U103 ( .A(n50), .Z(n127) );
  GTECH_NAND2 U104 ( .A(n17), .B(n130), .Z(n125) );
  GTECH_XOR2 U105 ( .A(n131), .B(n17), .Z(N82) );
  GTECH_OR_NOT U106 ( .A(n132), .B(n133), .Z(n131) );
  GTECH_XOR2 U107 ( .A(n132), .B(n123), .Z(N81) );
  GTECH_NAND2 U108 ( .A(n134), .B(n135), .Z(n132) );
  GTECH_NOT U109 ( .A(n122), .Z(n135) );
  GTECH_NOT U110 ( .A(n136), .Z(n134) );
  GTECH_XOR2 U111 ( .A(n136), .B(n122), .Z(N80) );
  GTECH_NAND3 U112 ( .A(n137), .B(n138), .C(n139), .Z(n136) );
  GTECH_NOT U113 ( .A(n121), .Z(n137) );
  GTECH_AND_NOT U114 ( .A(n17), .B(n18), .Z(N8) );
  GTECH_XOR2 U115 ( .A(n140), .B(n121), .Z(N79) );
  GTECH_NAND2 U116 ( .A(n138), .B(n139), .Z(n140) );
  GTECH_NOT U117 ( .A(n120), .Z(n139) );
  GTECH_NOT U118 ( .A(N77), .Z(n138) );
  GTECH_XOR2 U119 ( .A(N77), .B(n120), .Z(N78) );
  GTECH_AND_NOT U120 ( .A(n17), .B(n16), .Z(N7) );
  GTECH_AND_NOT U121 ( .A(n17), .B(n48), .Z(N6) );
  GTECH_NAND2 U122 ( .A(n141), .B(n142), .Z(N47) );
  GTECH_NOT U123 ( .A(n129), .Z(n142) );
  GTECH_MUX2 U124 ( .A(n17), .B(n143), .S(n123), .Z(n129) );
  GTECH_NOT U125 ( .A(n144), .Z(n143) );
  GTECH_NOT U126 ( .A(n130), .Z(n141) );
  GTECH_NAND2 U127 ( .A(n133), .B(n144), .Z(n130) );
  GTECH_NAND4 U128 ( .A(N77), .B(n122), .C(n121), .D(n120), .Z(n144) );
  GTECH_NOT U129 ( .A(n123), .Z(n133) );
  GTECH_AND_NOT U130 ( .A(n17), .B(n47), .Z(N37) );
  GTECH_AND_NOT U131 ( .A(n17), .B(n46), .Z(N36) );
  GTECH_AND_NOT U132 ( .A(n17), .B(n45), .Z(N35) );
  GTECH_AND_NOT U133 ( .A(n17), .B(n44), .Z(N34) );
  GTECH_AND_NOT U134 ( .A(n17), .B(n43), .Z(N33) );
  GTECH_AND_NOT U135 ( .A(n17), .B(n42), .Z(N32) );
  GTECH_AND_NOT U136 ( .A(n17), .B(n41), .Z(N31) );
  GTECH_AND_NOT U137 ( .A(n17), .B(n40), .Z(N30) );
  GTECH_AND_NOT U138 ( .A(n17), .B(n39), .Z(N29) );
  GTECH_AND_NOT U139 ( .A(n17), .B(n38), .Z(N28) );
  GTECH_AND_NOT U140 ( .A(n17), .B(n37), .Z(N27) );
  GTECH_AND_NOT U141 ( .A(n17), .B(n36), .Z(N26) );
  GTECH_AND_NOT U142 ( .A(n17), .B(n35), .Z(N25) );
  GTECH_AND_NOT U143 ( .A(n17), .B(n34), .Z(N24) );
  GTECH_AND_NOT U144 ( .A(n17), .B(n33), .Z(N23) );
  GTECH_AND_NOT U145 ( .A(n17), .B(n32), .Z(N22) );
  GTECH_AND_NOT U146 ( .A(n17), .B(n31), .Z(N21) );
  GTECH_AND_NOT U147 ( .A(n17), .B(n30), .Z(N20) );
  GTECH_AND_NOT U148 ( .A(n17), .B(n29), .Z(N19) );
  GTECH_AND_NOT U149 ( .A(n17), .B(n28), .Z(N18) );
  GTECH_AND_NOT U150 ( .A(n17), .B(n27), .Z(N17) );
  GTECH_AND_NOT U151 ( .A(n17), .B(n26), .Z(N16) );
  GTECH_AND_NOT U152 ( .A(n17), .B(n25), .Z(N15) );
  GTECH_AND_NOT U153 ( .A(n17), .B(n24), .Z(N14) );
  GTECH_AND_NOT U154 ( .A(n17), .B(n23), .Z(N13) );
  GTECH_AND_NOT U155 ( .A(n17), .B(n22), .Z(N12) );
  GTECH_AND_NOT U156 ( .A(n17), .B(n21), .Z(N11) );
  GTECH_AND_NOT U157 ( .A(n17), .B(n20), .Z(N10) );
endmodule

