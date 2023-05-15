
module CRC_16_serial ( clk, rst_n, crc );
  output [15:0] crc;
  input clk, rst_n;
  wire   n_Logic0_, data_serial, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N47, N77, N78, N79, N80, N81,
         N82, N83, N84, N85, n17, n49, n50, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161;
  wire   [31:0] data_parallel;
  wire   [5:0] cnt;

  GTECH_FD4S data_parallel_reg_0_ ( .D(n_Logic0_), .TI(n_Logic0_), .TE(
        n_Logic0_), .CP(clk), .SD(rst_n), .Q(data_parallel[0]) );
  GTECH_FJK2S cnt_reg_0_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N77), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[0]), .QN(N77) );
  GTECH_FJK2S cnt_reg_5_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N82), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[5]), .QN(n17) );
  GTECH_FJK2S cnt_reg_4_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N81), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[4]), .QN(n140) );
  GTECH_FJK2S cnt_reg_3_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N80), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[3]), .QN(n139) );
  GTECH_FJK2S cnt_reg_2_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N79), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[2]), .QN(n138) );
  GTECH_FJK2S cnt_reg_1_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N78), .TE(N47), 
        .CP(clk), .CD(rst_n), .Q(cnt[1]), .QN(n137) );
  GTECH_FD4S data_parallel_reg_1_ ( .D(N7), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[1]) );
  GTECH_FD4S data_parallel_reg_2_ ( .D(N8), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[2]) );
  GTECH_FD2S data_parallel_reg_3_ ( .D(N9), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[3]) );
  GTECH_FD4S data_parallel_reg_4_ ( .D(N10), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[4]) );
  GTECH_FD4S data_parallel_reg_5_ ( .D(N11), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[5]) );
  GTECH_FD4S data_parallel_reg_6_ ( .D(N12), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[6]) );
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
  GTECH_FD4S data_parallel_reg_13_ ( .D(N19), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[13]) );
  GTECH_FD2S data_parallel_reg_14_ ( .D(N20), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[14]) );
  GTECH_FD2S data_parallel_reg_15_ ( .D(N21), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[15]) );
  GTECH_FD4S data_parallel_reg_16_ ( .D(N22), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[16]) );
  GTECH_FD4S data_parallel_reg_17_ ( .D(N23), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[17]) );
  GTECH_FD2S data_parallel_reg_18_ ( .D(N24), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[18]) );
  GTECH_FD2S data_parallel_reg_19_ ( .D(N25), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[19]) );
  GTECH_FD2S data_parallel_reg_20_ ( .D(N26), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[20]) );
  GTECH_FD4S data_parallel_reg_21_ ( .D(N27), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[21]) );
  GTECH_FD4S data_parallel_reg_22_ ( .D(N28), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[22]) );
  GTECH_FD4S data_parallel_reg_23_ ( .D(N29), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[23]) );
  GTECH_FD2S data_parallel_reg_24_ ( .D(N30), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[24]) );
  GTECH_FD4S data_parallel_reg_25_ ( .D(N31), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[25]) );
  GTECH_FD4S data_parallel_reg_26_ ( .D(N32), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[26]) );
  GTECH_FD2S data_parallel_reg_27_ ( .D(N33), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[27]) );
  GTECH_FD4S data_parallel_reg_28_ ( .D(N34), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[28]) );
  GTECH_FD2S data_parallel_reg_29_ ( .D(N35), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[29]) );
  GTECH_FD2S data_parallel_reg_30_ ( .D(N36), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .CD(rst_n), .Q(data_parallel[30]) );
  GTECH_FD4S data_parallel_reg_31_ ( .D(N37), .TI(n_Logic0_), .TE(n_Logic0_), 
        .CP(clk), .SD(rst_n), .Q(data_parallel[31]) );
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
        N47), .CP(clk), .CD(rst_n), .Q(crc[4]), .QN(n136) );
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
        .TE(N47), .CP(clk), .CD(rst_n), .Q(crc[11]), .QN(n135) );
  GTECH_FJK2S tmpcrc_reg_12_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(N85), .TE(N47), .CP(clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S tmpcrc_reg_13_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[12]), 
        .TE(N47), .CP(clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S tmpcrc_reg_14_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[13]), 
        .TE(N47), .CP(clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S tmpcrc_reg_15_ ( .J(n_Logic0_), .K(n_Logic0_), .TI(crc[14]), 
        .TE(N47), .CP(clk), .CD(rst_n), .Q(crc[15]), .QN(n50) );
  GTECH_ZERO U112 ( .Z(n_Logic0_) );
  GTECH_AND2 U113 ( .A(n17), .B(data_parallel[2]), .Z(N9) );
  GTECH_XOR2 U114 ( .A(n141), .B(n135), .Z(N85) );
  GTECH_XOR2 U115 ( .A(n141), .B(n136), .Z(N84) );
  GTECH_OAI21 U116 ( .A(n49), .B(n142), .C(n143), .Z(N83) );
  GTECH_MUX2 U117 ( .A(n141), .B(n144), .S(n145), .Z(n143) );
  GTECH_AND_NOT U118 ( .A(n146), .B(n49), .Z(n145) );
  GTECH_NAND2 U119 ( .A(n144), .B(n142), .Z(n141) );
  GTECH_NOT U120 ( .A(n50), .Z(n144) );
  GTECH_NAND2 U121 ( .A(n17), .B(n147), .Z(n142) );
  GTECH_XOR2 U122 ( .A(n148), .B(n17), .Z(N82) );
  GTECH_OR_NOT U123 ( .A(n149), .B(n150), .Z(n148) );
  GTECH_XOR2 U124 ( .A(n149), .B(n140), .Z(N81) );
  GTECH_NAND2 U125 ( .A(n151), .B(n152), .Z(n149) );
  GTECH_NOT U126 ( .A(n139), .Z(n152) );
  GTECH_NOT U127 ( .A(n153), .Z(n151) );
  GTECH_XOR2 U128 ( .A(n153), .B(n139), .Z(N80) );
  GTECH_NAND3 U129 ( .A(n154), .B(n155), .C(n156), .Z(n153) );
  GTECH_NOT U130 ( .A(n138), .Z(n154) );
  GTECH_AND2 U131 ( .A(n17), .B(data_parallel[1]), .Z(N8) );
  GTECH_XOR2 U132 ( .A(n157), .B(n138), .Z(N79) );
  GTECH_NAND2 U133 ( .A(n155), .B(n156), .Z(n157) );
  GTECH_NOT U134 ( .A(n137), .Z(n156) );
  GTECH_NOT U135 ( .A(N77), .Z(n155) );
  GTECH_XOR2 U136 ( .A(N77), .B(n137), .Z(N78) );
  GTECH_AND2 U137 ( .A(n17), .B(data_parallel[0]), .Z(N7) );
  GTECH_AND2 U138 ( .A(n17), .B(data_parallel[31]), .Z(N6) );
  GTECH_NAND2 U139 ( .A(n158), .B(n159), .Z(N47) );
  GTECH_NOT U140 ( .A(n146), .Z(n159) );
  GTECH_MUX2 U141 ( .A(n17), .B(n160), .S(n140), .Z(n146) );
  GTECH_NOT U142 ( .A(n161), .Z(n160) );
  GTECH_NOT U143 ( .A(n147), .Z(n158) );
  GTECH_NAND2 U144 ( .A(n150), .B(n161), .Z(n147) );
  GTECH_NAND4 U145 ( .A(N77), .B(n139), .C(n138), .D(n137), .Z(n161) );
  GTECH_NOT U146 ( .A(n140), .Z(n150) );
  GTECH_AND2 U147 ( .A(n17), .B(data_parallel[30]), .Z(N37) );
  GTECH_AND2 U148 ( .A(n17), .B(data_parallel[29]), .Z(N36) );
  GTECH_AND2 U149 ( .A(n17), .B(data_parallel[28]), .Z(N35) );
  GTECH_AND2 U150 ( .A(n17), .B(data_parallel[27]), .Z(N34) );
  GTECH_AND2 U151 ( .A(n17), .B(data_parallel[26]), .Z(N33) );
  GTECH_AND2 U152 ( .A(n17), .B(data_parallel[25]), .Z(N32) );
  GTECH_AND2 U153 ( .A(n17), .B(data_parallel[24]), .Z(N31) );
  GTECH_AND2 U154 ( .A(n17), .B(data_parallel[23]), .Z(N30) );
  GTECH_AND2 U155 ( .A(n17), .B(data_parallel[22]), .Z(N29) );
  GTECH_AND2 U156 ( .A(n17), .B(data_parallel[21]), .Z(N28) );
  GTECH_AND2 U157 ( .A(n17), .B(data_parallel[20]), .Z(N27) );
  GTECH_AND2 U158 ( .A(n17), .B(data_parallel[19]), .Z(N26) );
  GTECH_AND2 U159 ( .A(n17), .B(data_parallel[18]), .Z(N25) );
  GTECH_AND2 U160 ( .A(n17), .B(data_parallel[17]), .Z(N24) );
  GTECH_AND2 U161 ( .A(n17), .B(data_parallel[16]), .Z(N23) );
  GTECH_AND2 U162 ( .A(n17), .B(data_parallel[15]), .Z(N22) );
  GTECH_AND2 U163 ( .A(n17), .B(data_parallel[14]), .Z(N21) );
  GTECH_AND2 U164 ( .A(n17), .B(data_parallel[13]), .Z(N20) );
  GTECH_AND2 U165 ( .A(n17), .B(data_parallel[12]), .Z(N19) );
  GTECH_AND2 U166 ( .A(n17), .B(data_parallel[11]), .Z(N18) );
  GTECH_AND2 U167 ( .A(n17), .B(data_parallel[10]), .Z(N17) );
  GTECH_AND2 U168 ( .A(n17), .B(data_parallel[9]), .Z(N16) );
  GTECH_AND2 U169 ( .A(n17), .B(data_parallel[8]), .Z(N15) );
  GTECH_AND2 U170 ( .A(n17), .B(data_parallel[7]), .Z(N14) );
  GTECH_AND2 U171 ( .A(n17), .B(data_parallel[6]), .Z(N13) );
  GTECH_AND2 U172 ( .A(n17), .B(data_parallel[5]), .Z(N12) );
  GTECH_AND2 U173 ( .A(n17), .B(data_parallel[4]), .Z(N11) );
  GTECH_AND2 U174 ( .A(n17), .B(data_parallel[3]), .Z(N10) );
endmodule

