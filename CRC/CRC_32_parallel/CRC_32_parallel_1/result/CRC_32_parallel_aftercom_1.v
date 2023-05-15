
module CRC_32_parallel ( clk, rst_n, data_in, code_in, crc32_gen );
  input [7:0] data_in;
  input [31:0] code_in;
  output [31:0] crc32_gen;
  input clk, rst_n;
  wire   N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N43, n46, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180;

  GTECH_FD4S crc32_gen_reg_31_ ( .D(N43), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[31]) );
  GTECH_FD4S crc32_gen_reg_30_ ( .D(N42), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[30]) );
  GTECH_FD4S crc32_gen_reg_29_ ( .D(N41), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[29]) );
  GTECH_FD4S crc32_gen_reg_28_ ( .D(N40), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[28]) );
  GTECH_FD4S crc32_gen_reg_27_ ( .D(N39), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[27]) );
  GTECH_FD4S crc32_gen_reg_26_ ( .D(N38), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[26]) );
  GTECH_FD4S crc32_gen_reg_25_ ( .D(N37), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[25]) );
  GTECH_FD4S crc32_gen_reg_24_ ( .D(N36), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[24]) );
  GTECH_FD4S crc32_gen_reg_23_ ( .D(N35), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[23]) );
  GTECH_FD4S crc32_gen_reg_22_ ( .D(N34), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[22]) );
  GTECH_FD4S crc32_gen_reg_21_ ( .D(N33), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[21]) );
  GTECH_FD4S crc32_gen_reg_20_ ( .D(N32), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[20]) );
  GTECH_FD4S crc32_gen_reg_19_ ( .D(N31), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[19]) );
  GTECH_FD4S crc32_gen_reg_18_ ( .D(N30), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[18]) );
  GTECH_FD4S crc32_gen_reg_17_ ( .D(N29), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[17]) );
  GTECH_FD4S crc32_gen_reg_16_ ( .D(N28), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[16]) );
  GTECH_FD4S crc32_gen_reg_15_ ( .D(N27), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[15]) );
  GTECH_FD4S crc32_gen_reg_14_ ( .D(N26), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[14]) );
  GTECH_FD4S crc32_gen_reg_13_ ( .D(N25), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[13]) );
  GTECH_FD4S crc32_gen_reg_12_ ( .D(N24), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[12]) );
  GTECH_FD4S crc32_gen_reg_11_ ( .D(N23), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[11]) );
  GTECH_FD4S crc32_gen_reg_10_ ( .D(N22), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[10]) );
  GTECH_FD4S crc32_gen_reg_9_ ( .D(N21), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[9]) );
  GTECH_FD4S crc32_gen_reg_8_ ( .D(N20), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[8]) );
  GTECH_FD4S crc32_gen_reg_7_ ( .D(N19), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[7]) );
  GTECH_FD4S crc32_gen_reg_6_ ( .D(N18), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[6]) );
  GTECH_FD4S crc32_gen_reg_5_ ( .D(N17), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[5]) );
  GTECH_FD4S crc32_gen_reg_4_ ( .D(N16), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[4]) );
  GTECH_FD4S crc32_gen_reg_3_ ( .D(N15), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[3]) );
  GTECH_FD4S crc32_gen_reg_2_ ( .D(N14), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[2]) );
  GTECH_FD4S crc32_gen_reg_1_ ( .D(N13), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[1]) );
  GTECH_FD4S crc32_gen_reg_0_ ( .D(N12), .TI(n46), .TE(n46), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[0]) );
  GTECH_ZERO U112 ( .Z(n46) );
  GTECH_XOR2 U113 ( .A(code_in[23]), .B(n110), .Z(N43) );
  GTECH_XOR3 U114 ( .A(code_in[22]), .B(n111), .C(n112), .Z(N42) );
  GTECH_XOR3 U115 ( .A(code_in[21]), .B(n113), .C(n114), .Z(N41) );
  GTECH_XOR3 U116 ( .A(code_in[20]), .B(n115), .C(n116), .Z(N40) );
  GTECH_XOR3 U117 ( .A(code_in[19]), .B(n117), .C(n118), .Z(N39) );
  GTECH_XOR3 U118 ( .A(code_in[18]), .B(n119), .C(n120), .Z(N38) );
  GTECH_XOR3 U119 ( .A(code_in[17]), .B(n121), .C(n116), .Z(N37) );
  GTECH_XOR3 U120 ( .A(code_in[16]), .B(n111), .C(n122), .Z(N36) );
  GTECH_XOR3 U121 ( .A(code_in[15]), .B(n123), .C(n124), .Z(N35) );
  GTECH_XOR2 U122 ( .A(code_in[14]), .B(n120), .Z(N34) );
  GTECH_XOR2 U123 ( .A(code_in[13]), .B(n110), .Z(N33) );
  GTECH_XOR2 U124 ( .A(code_in[12]), .B(n112), .Z(N32) );
  GTECH_XOR2 U125 ( .A(code_in[11]), .B(n125), .Z(N31) );
  GTECH_XOR2 U126 ( .A(code_in[10]), .B(n126), .Z(N30) );
  GTECH_XOR3 U127 ( .A(code_in[9]), .B(n115), .C(n118), .Z(N29) );
  GTECH_NOT U128 ( .A(n127), .Z(n115) );
  GTECH_XOR3 U129 ( .A(code_in[30]), .B(code_in[29]), .C(n128), .Z(n127) );
  GTECH_XOR3 U130 ( .A(code_in[8]), .B(n129), .C(n130), .Z(N28) );
  GTECH_NOT U131 ( .A(n131), .Z(n130) );
  GTECH_NOT U132 ( .A(n132), .Z(n129) );
  GTECH_XOR3 U133 ( .A(code_in[7]), .B(n121), .C(n117), .Z(N27) );
  GTECH_NOT U134 ( .A(n133), .Z(n117) );
  GTECH_XOR3 U135 ( .A(code_in[31]), .B(n134), .C(n135), .Z(n133) );
  GTECH_XOR3 U136 ( .A(n114), .B(n116), .C(n136), .Z(N26) );
  GTECH_XOR3 U137 ( .A(code_in[6]), .B(n112), .C(n113), .Z(n136) );
  GTECH_NOT U138 ( .A(n137), .Z(n112) );
  GTECH_XOR2 U139 ( .A(n138), .B(data_in[4]), .Z(n137) );
  GTECH_NOT U140 ( .A(n139), .Z(n114) );
  GTECH_XOR2 U141 ( .A(n140), .B(n122), .Z(N25) );
  GTECH_XNOR4 U142 ( .A(code_in[29]), .B(n113), .C(n141), .D(code_in[5]), .Z(
        n140) );
  GTECH_XOR3 U143 ( .A(n122), .B(n142), .C(n128), .Z(N24) );
  GTECH_XOR2 U144 ( .A(n143), .B(data_in[6]), .Z(n128) );
  GTECH_XNOR4 U145 ( .A(code_in[4]), .B(n144), .C(n132), .D(data_in[4]), .Z(
        n142) );
  GTECH_XOR2 U146 ( .A(n145), .B(n146), .Z(n132) );
  GTECH_XOR2 U147 ( .A(code_in[3]), .B(n147), .Z(N23) );
  GTECH_XNOR4 U148 ( .A(code_in[2]), .B(n110), .C(n148), .D(n121), .Z(N22) );
  GTECH_NOT U149 ( .A(n149), .Z(n110) );
  GTECH_XOR2 U150 ( .A(n150), .B(data_in[5]), .Z(n149) );
  GTECH_NOT U151 ( .A(code_in[29]), .Z(n150) );
  GTECH_XNOR4 U152 ( .A(code_in[1]), .B(n146), .C(n131), .D(n122), .Z(N21) );
  GTECH_XOR2 U153 ( .A(n151), .B(data_in[5]), .Z(n131) );
  GTECH_NOT U154 ( .A(data_in[4]), .Z(n151) );
  GTECH_NOT U155 ( .A(n152), .Z(n146) );
  GTECH_XOR2 U156 ( .A(code_in[0]), .B(n147), .Z(N20) );
  GTECH_NOT U157 ( .A(n153), .Z(n147) );
  GTECH_XNOR4 U158 ( .A(n118), .B(n154), .C(data_in[0]), .D(code_in[24]), .Z(
        n153) );
  GTECH_NOT U159 ( .A(n155), .Z(n154) );
  GTECH_XOR3 U160 ( .A(n134), .B(n156), .C(n157), .Z(N19) );
  GTECH_XOR3 U161 ( .A(code_in[31]), .B(code_in[29]), .C(n121), .Z(n157) );
  GTECH_NOT U162 ( .A(n158), .Z(n134) );
  GTECH_XOR2 U163 ( .A(n143), .B(data_in[7]), .Z(n158) );
  GTECH_NOT U164 ( .A(data_in[5]), .Z(n143) );
  GTECH_XOR3 U165 ( .A(n159), .B(n122), .C(n160), .Z(N18) );
  GTECH_XOR3 U166 ( .A(n113), .B(n123), .C(n160), .Z(N17) );
  GTECH_NOT U167 ( .A(n161), .Z(n160) );
  GTECH_XOR2 U168 ( .A(n141), .B(n162), .Z(n161) );
  GTECH_NOT U169 ( .A(n135), .Z(n162) );
  GTECH_XOR2 U170 ( .A(n152), .B(data_in[4]), .Z(n135) );
  GTECH_XOR2 U171 ( .A(n138), .B(code_in[29]), .Z(n152) );
  GTECH_NOT U172 ( .A(code_in[28]), .Z(n138) );
  GTECH_XOR2 U173 ( .A(n139), .B(data_in[5]), .Z(n141) );
  GTECH_NOT U174 ( .A(n163), .Z(n113) );
  GTECH_XOR2 U175 ( .A(n164), .B(n121), .Z(n163) );
  GTECH_NOT U176 ( .A(n165), .Z(n121) );
  GTECH_XOR2 U177 ( .A(n119), .B(n156), .Z(N16) );
  GTECH_NOT U178 ( .A(n148), .Z(n156) );
  GTECH_XOR2 U179 ( .A(n145), .B(n116), .Z(n148) );
  GTECH_NOT U180 ( .A(n166), .Z(n119) );
  GTECH_XOR3 U181 ( .A(data_in[6]), .B(code_in[30]), .C(n155), .Z(n166) );
  GTECH_XNOR4 U182 ( .A(code_in[28]), .B(code_in[27]), .C(data_in[4]), .D(
        data_in[3]), .Z(n155) );
  GTECH_XOR2 U183 ( .A(n122), .B(n125), .Z(N15) );
  GTECH_NOT U184 ( .A(n167), .Z(n125) );
  GTECH_XOR2 U185 ( .A(n165), .B(n111), .Z(n167) );
  GTECH_NOT U186 ( .A(n168), .Z(n111) );
  GTECH_XOR2 U187 ( .A(n169), .B(data_in[7]), .Z(n168) );
  GTECH_NOT U188 ( .A(code_in[31]), .Z(n169) );
  GTECH_XOR2 U189 ( .A(n170), .B(data_in[3]), .Z(n165) );
  GTECH_NOT U190 ( .A(code_in[27]), .Z(n170) );
  GTECH_NOT U191 ( .A(n171), .Z(n122) );
  GTECH_XOR2 U192 ( .A(n172), .B(n116), .Z(n171) );
  GTECH_XOR2 U193 ( .A(n123), .B(n126), .Z(N14) );
  GTECH_NOT U194 ( .A(n173), .Z(n126) );
  GTECH_XOR2 U195 ( .A(n174), .B(n116), .Z(n173) );
  GTECH_NOT U196 ( .A(n175), .Z(n116) );
  GTECH_XNOR2 U197 ( .A(data_in[2]), .B(code_in[26]), .Z(n175) );
  GTECH_XOR2 U198 ( .A(n123), .B(n176), .Z(N13) );
  GTECH_NOT U199 ( .A(n174), .Z(n176) );
  GTECH_XOR2 U200 ( .A(n139), .B(n159), .Z(n174) );
  GTECH_NOT U201 ( .A(n164), .Z(n159) );
  GTECH_XOR2 U202 ( .A(n144), .B(code_in[31]), .Z(n164) );
  GTECH_XOR2 U203 ( .A(n177), .B(data_in[7]), .Z(n139) );
  GTECH_NOT U204 ( .A(data_in[6]), .Z(n177) );
  GTECH_NOT U205 ( .A(n178), .Z(n123) );
  GTECH_XOR2 U206 ( .A(n145), .B(n118), .Z(n178) );
  GTECH_NOT U207 ( .A(n172), .Z(n118) );
  GTECH_XNOR2 U208 ( .A(data_in[1]), .B(code_in[25]), .Z(n172) );
  GTECH_XOR2 U209 ( .A(n120), .B(n124), .Z(N12) );
  GTECH_NOT U210 ( .A(n179), .Z(n124) );
  GTECH_XOR2 U211 ( .A(n144), .B(data_in[6]), .Z(n179) );
  GTECH_NOT U212 ( .A(code_in[30]), .Z(n144) );
  GTECH_NOT U213 ( .A(n145), .Z(n120) );
  GTECH_XOR2 U214 ( .A(n180), .B(data_in[0]), .Z(n145) );
  GTECH_NOT U215 ( .A(code_in[24]), .Z(n180) );
endmodule

