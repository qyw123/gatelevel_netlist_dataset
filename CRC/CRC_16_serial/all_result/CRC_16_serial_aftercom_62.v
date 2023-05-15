
module CRC_16_serial ( clk, rst_n, crc );
  output [15:0] crc;
  input clk, rst_n;
  wire   data_serial, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31,
         N32, N33, N34, N35, N36, N37, N47, N77, N78, N79, N80, N81, N82, N83,
         N84, N85, n48, n62, n74, n95, n110, n113, n116, n119, n122, n60, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146;
  wire   [31:0] data_parallel;
  wire   [5:0] cnt;

  GTECH_FD4 data_parallel_reg_0_ ( .D(1'b0), .CP(clk), .SD(rst_n), .Q(
        data_parallel[0]) );
  GTECH_FJK3S cnt_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N77), .TE(N47), .CP(clk), 
        .CD(rst_n), .SD(n60), .Q(cnt[0]), .QN(N77) );
  GTECH_FJK3S cnt_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N82), .TE(N47), .CP(clk), 
        .CD(rst_n), .SD(n60), .Q(cnt[5]), .QN(n122) );
  GTECH_FJK3S cnt_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N81), .TE(N47), .CP(clk), 
        .CD(rst_n), .SD(n60), .Q(cnt[4]), .QN(n119) );
  GTECH_FJK3S cnt_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N80), .TE(N47), .CP(clk), 
        .CD(rst_n), .SD(n60), .Q(cnt[3]), .QN(n116) );
  GTECH_FJK3S cnt_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N79), .TE(N47), .CP(clk), 
        .CD(rst_n), .SD(n60), .Q(cnt[2]), .QN(n113) );
  GTECH_FJK3S cnt_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N78), .TE(N47), .CP(clk), 
        .CD(rst_n), .SD(n60), .Q(cnt[1]), .QN(n110) );
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
  GTECH_FD2 data_serial_reg ( .D(N6), .CP(clk), .CD(rst_n), .Q(data_serial), 
        .QN(n48) );
  GTECH_FJK3S tmpcrc_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N83), .TE(N47), .CP(clk), 
        .CD(rst_n), .SD(n60), .Q(crc[0]) );
  GTECH_FJK3S tmpcrc_reg_1_ ( .J(1'b0), .K(1'b0), .TI(crc[0]), .TE(N47), .CP(
        clk), .CD(rst_n), .SD(n60), .Q(crc[1]) );
  GTECH_FJK3S tmpcrc_reg_2_ ( .J(1'b0), .K(1'b0), .TI(crc[1]), .TE(N47), .CP(
        clk), .CD(rst_n), .SD(n60), .Q(crc[2]) );
  GTECH_FJK3S tmpcrc_reg_3_ ( .J(1'b0), .K(1'b0), .TI(crc[2]), .TE(N47), .CP(
        clk), .CD(rst_n), .SD(n60), .Q(crc[3]) );
  GTECH_FJK3S tmpcrc_reg_4_ ( .J(1'b0), .K(1'b0), .TI(crc[3]), .TE(N47), .CP(
        clk), .CD(rst_n), .SD(n60), .Q(crc[4]), .QN(n95) );
  GTECH_FJK3S tmpcrc_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N84), .TE(N47), .CP(clk), 
        .CD(rst_n), .SD(n60), .Q(crc[5]) );
  GTECH_FJK3S tmpcrc_reg_6_ ( .J(1'b0), .K(1'b0), .TI(crc[5]), .TE(N47), .CP(
        clk), .CD(rst_n), .SD(n60), .Q(crc[6]) );
  GTECH_FJK3S tmpcrc_reg_7_ ( .J(1'b0), .K(1'b0), .TI(crc[6]), .TE(N47), .CP(
        clk), .CD(rst_n), .SD(n60), .Q(crc[7]) );
  GTECH_FJK3S tmpcrc_reg_8_ ( .J(1'b0), .K(1'b0), .TI(crc[7]), .TE(N47), .CP(
        clk), .CD(rst_n), .SD(n60), .Q(crc[8]) );
  GTECH_FJK3S tmpcrc_reg_9_ ( .J(1'b0), .K(1'b0), .TI(crc[8]), .TE(N47), .CP(
        clk), .CD(rst_n), .SD(n60), .Q(crc[9]) );
  GTECH_FJK3S tmpcrc_reg_10_ ( .J(1'b0), .K(1'b0), .TI(crc[9]), .TE(N47), .CP(
        clk), .CD(rst_n), .SD(n60), .Q(crc[10]) );
  GTECH_FJK3S tmpcrc_reg_11_ ( .J(1'b0), .K(1'b0), .TI(crc[10]), .TE(N47), 
        .CP(clk), .CD(rst_n), .SD(n60), .Q(crc[11]), .QN(n74) );
  GTECH_FJK3S tmpcrc_reg_12_ ( .J(1'b0), .K(1'b0), .TI(N85), .TE(N47), .CP(clk), .CD(rst_n), .SD(n60), .Q(crc[12]) );
  GTECH_FJK3S tmpcrc_reg_13_ ( .J(1'b0), .K(1'b0), .TI(crc[12]), .TE(N47), 
        .CP(clk), .CD(rst_n), .SD(n60), .Q(crc[13]) );
  GTECH_FJK3S tmpcrc_reg_14_ ( .J(1'b0), .K(1'b0), .TI(crc[13]), .TE(N47), 
        .CP(clk), .CD(rst_n), .SD(n60), .Q(crc[14]) );
  GTECH_FJK3S tmpcrc_reg_15_ ( .J(1'b0), .K(1'b0), .TI(crc[14]), .TE(N47), 
        .CP(clk), .CD(rst_n), .SD(n60), .Q(crc[15]), .QN(n62) );
  GTECH_ONE U101 ( .Z(n60) );
  GTECH_AND2 U102 ( .A(n122), .B(data_parallel[2]), .Z(N9) );
  GTECH_XOR2 U103 ( .A(n126), .B(n74), .Z(N85) );
  GTECH_XOR2 U104 ( .A(n126), .B(n95), .Z(N84) );
  GTECH_OAI21 U105 ( .A(n48), .B(n127), .C(n128), .Z(N83) );
  GTECH_MUX2 U106 ( .A(n126), .B(n129), .S(n130), .Z(n128) );
  GTECH_AND_NOT U107 ( .A(n131), .B(n48), .Z(n130) );
  GTECH_NAND2 U108 ( .A(n129), .B(n127), .Z(n126) );
  GTECH_NOT U109 ( .A(n62), .Z(n129) );
  GTECH_NAND2 U110 ( .A(n122), .B(n132), .Z(n127) );
  GTECH_XOR2 U111 ( .A(n133), .B(n122), .Z(N82) );
  GTECH_OR_NOT U112 ( .A(n134), .B(n135), .Z(n133) );
  GTECH_XOR2 U113 ( .A(n134), .B(n119), .Z(N81) );
  GTECH_NAND2 U114 ( .A(n136), .B(n137), .Z(n134) );
  GTECH_NOT U115 ( .A(n116), .Z(n137) );
  GTECH_NOT U116 ( .A(n138), .Z(n136) );
  GTECH_XOR2 U117 ( .A(n138), .B(n116), .Z(N80) );
  GTECH_NAND3 U118 ( .A(n139), .B(n140), .C(n141), .Z(n138) );
  GTECH_NOT U119 ( .A(n113), .Z(n139) );
  GTECH_AND2 U120 ( .A(n122), .B(data_parallel[1]), .Z(N8) );
  GTECH_XOR2 U121 ( .A(n142), .B(n113), .Z(N79) );
  GTECH_NAND2 U122 ( .A(n140), .B(n141), .Z(n142) );
  GTECH_NOT U123 ( .A(n110), .Z(n141) );
  GTECH_NOT U124 ( .A(N77), .Z(n140) );
  GTECH_XOR2 U125 ( .A(N77), .B(n110), .Z(N78) );
  GTECH_AND2 U126 ( .A(n122), .B(data_parallel[0]), .Z(N7) );
  GTECH_AND2 U127 ( .A(n122), .B(data_parallel[31]), .Z(N6) );
  GTECH_NAND2 U128 ( .A(n143), .B(n144), .Z(N47) );
  GTECH_NOT U129 ( .A(n131), .Z(n144) );
  GTECH_MUX2 U130 ( .A(n122), .B(n145), .S(n119), .Z(n131) );
  GTECH_NOT U131 ( .A(n146), .Z(n145) );
  GTECH_NOT U132 ( .A(n132), .Z(n143) );
  GTECH_NAND2 U133 ( .A(n135), .B(n146), .Z(n132) );
  GTECH_NAND4 U134 ( .A(N77), .B(n116), .C(n113), .D(n110), .Z(n146) );
  GTECH_NOT U135 ( .A(n119), .Z(n135) );
  GTECH_AND2 U136 ( .A(n122), .B(data_parallel[30]), .Z(N37) );
  GTECH_AND2 U137 ( .A(n122), .B(data_parallel[29]), .Z(N36) );
  GTECH_AND2 U138 ( .A(n122), .B(data_parallel[28]), .Z(N35) );
  GTECH_AND2 U139 ( .A(n122), .B(data_parallel[27]), .Z(N34) );
  GTECH_AND2 U140 ( .A(n122), .B(data_parallel[26]), .Z(N33) );
  GTECH_AND2 U141 ( .A(n122), .B(data_parallel[25]), .Z(N32) );
  GTECH_AND2 U142 ( .A(n122), .B(data_parallel[24]), .Z(N31) );
  GTECH_AND2 U143 ( .A(n122), .B(data_parallel[23]), .Z(N30) );
  GTECH_AND2 U144 ( .A(n122), .B(data_parallel[22]), .Z(N29) );
  GTECH_AND2 U145 ( .A(n122), .B(data_parallel[21]), .Z(N28) );
  GTECH_AND2 U146 ( .A(n122), .B(data_parallel[20]), .Z(N27) );
  GTECH_AND2 U147 ( .A(n122), .B(data_parallel[19]), .Z(N26) );
  GTECH_AND2 U148 ( .A(n122), .B(data_parallel[18]), .Z(N25) );
  GTECH_AND2 U149 ( .A(n122), .B(data_parallel[17]), .Z(N24) );
  GTECH_AND2 U150 ( .A(n122), .B(data_parallel[16]), .Z(N23) );
  GTECH_AND2 U151 ( .A(n122), .B(data_parallel[15]), .Z(N22) );
  GTECH_AND2 U152 ( .A(n122), .B(data_parallel[14]), .Z(N21) );
  GTECH_AND2 U153 ( .A(n122), .B(data_parallel[13]), .Z(N20) );
  GTECH_AND2 U154 ( .A(n122), .B(data_parallel[12]), .Z(N19) );
  GTECH_AND2 U155 ( .A(n122), .B(data_parallel[11]), .Z(N18) );
  GTECH_AND2 U156 ( .A(n122), .B(data_parallel[10]), .Z(N17) );
  GTECH_AND2 U157 ( .A(n122), .B(data_parallel[9]), .Z(N16) );
  GTECH_AND2 U158 ( .A(n122), .B(data_parallel[8]), .Z(N15) );
  GTECH_AND2 U159 ( .A(n122), .B(data_parallel[7]), .Z(N14) );
  GTECH_AND2 U160 ( .A(n122), .B(data_parallel[6]), .Z(N13) );
  GTECH_AND2 U161 ( .A(n122), .B(data_parallel[5]), .Z(N12) );
  GTECH_AND2 U162 ( .A(n122), .B(data_parallel[4]), .Z(N11) );
  GTECH_AND2 U163 ( .A(n122), .B(data_parallel[3]), .Z(N10) );
endmodule

