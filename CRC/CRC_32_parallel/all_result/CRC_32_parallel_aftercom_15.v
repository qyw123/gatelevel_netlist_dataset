
module CRC_32_parallel ( clk, rst_n, data_in, code_in, crc32_gen );
  input [7:0] data_in;
  input [31:0] code_in;
  output [31:0] crc32_gen;
  input clk, rst_n;
  wire   N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N43, n51, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186;

  GTECH_FD4S crc32_gen_reg_31_ ( .D(N43), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[31]) );
  GTECH_FD4S crc32_gen_reg_30_ ( .D(N42), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[30]) );
  GTECH_FD4S crc32_gen_reg_29_ ( .D(N41), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[29]) );
  GTECH_FD4S crc32_gen_reg_28_ ( .D(N40), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[28]) );
  GTECH_FD4S crc32_gen_reg_27_ ( .D(N39), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[27]) );
  GTECH_FD4S crc32_gen_reg_26_ ( .D(N38), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[26]) );
  GTECH_FD4S crc32_gen_reg_25_ ( .D(N37), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[25]) );
  GTECH_FD4S crc32_gen_reg_24_ ( .D(N36), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[24]) );
  GTECH_FD4S crc32_gen_reg_23_ ( .D(N35), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[23]) );
  GTECH_FD4S crc32_gen_reg_22_ ( .D(N34), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[22]) );
  GTECH_FD4S crc32_gen_reg_21_ ( .D(N33), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[21]) );
  GTECH_FD4S crc32_gen_reg_20_ ( .D(N32), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[20]) );
  GTECH_FD4S crc32_gen_reg_19_ ( .D(N31), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[19]) );
  GTECH_FD4S crc32_gen_reg_18_ ( .D(N30), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[18]) );
  GTECH_FD4S crc32_gen_reg_17_ ( .D(N29), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[17]) );
  GTECH_FD4S crc32_gen_reg_16_ ( .D(N28), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[16]) );
  GTECH_FD4S crc32_gen_reg_15_ ( .D(N27), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[15]) );
  GTECH_FD4S crc32_gen_reg_14_ ( .D(N26), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[14]) );
  GTECH_FD4S crc32_gen_reg_13_ ( .D(N25), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[13]) );
  GTECH_FD4S crc32_gen_reg_12_ ( .D(N24), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[12]) );
  GTECH_FD4S crc32_gen_reg_11_ ( .D(N23), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[11]) );
  GTECH_FD4S crc32_gen_reg_10_ ( .D(N22), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[10]) );
  GTECH_FD4S crc32_gen_reg_9_ ( .D(N21), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[9]) );
  GTECH_FD4S crc32_gen_reg_8_ ( .D(N20), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[8]) );
  GTECH_FD4S crc32_gen_reg_7_ ( .D(N19), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[7]) );
  GTECH_FD4S crc32_gen_reg_6_ ( .D(N18), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[6]) );
  GTECH_FD4S crc32_gen_reg_5_ ( .D(N17), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[5]) );
  GTECH_FD4S crc32_gen_reg_4_ ( .D(N16), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[4]) );
  GTECH_FD4S crc32_gen_reg_3_ ( .D(N15), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[3]) );
  GTECH_FD4S crc32_gen_reg_2_ ( .D(N14), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[2]) );
  GTECH_FD4S crc32_gen_reg_1_ ( .D(N13), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[1]) );
  GTECH_FD4S crc32_gen_reg_0_ ( .D(N12), .TI(n51), .TE(n51), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[0]) );
  GTECH_ZERO U117 ( .Z(n51) );
  GTECH_XOR2 U118 ( .A(code_in[23]), .B(n115), .Z(N43) );
  GTECH_XOR3 U119 ( .A(code_in[22]), .B(n116), .C(n117), .Z(N42) );
  GTECH_XOR3 U120 ( .A(code_in[21]), .B(n118), .C(n119), .Z(N41) );
  GTECH_XOR3 U121 ( .A(code_in[20]), .B(n120), .C(n121), .Z(N40) );
  GTECH_XOR3 U122 ( .A(code_in[19]), .B(n122), .C(n123), .Z(N39) );
  GTECH_XOR3 U123 ( .A(code_in[18]), .B(n124), .C(n125), .Z(N38) );
  GTECH_XOR3 U124 ( .A(code_in[17]), .B(n126), .C(n121), .Z(N37) );
  GTECH_XOR3 U125 ( .A(code_in[16]), .B(n116), .C(n127), .Z(N36) );
  GTECH_XOR3 U126 ( .A(code_in[15]), .B(n128), .C(n129), .Z(N35) );
  GTECH_XOR2 U127 ( .A(code_in[14]), .B(n125), .Z(N34) );
  GTECH_XOR2 U128 ( .A(code_in[13]), .B(n115), .Z(N33) );
  GTECH_XOR2 U129 ( .A(code_in[12]), .B(n117), .Z(N32) );
  GTECH_XOR2 U130 ( .A(code_in[11]), .B(n130), .Z(N31) );
  GTECH_XOR2 U131 ( .A(code_in[10]), .B(n131), .Z(N30) );
  GTECH_XOR3 U132 ( .A(code_in[9]), .B(n120), .C(n123), .Z(N29) );
  GTECH_NOT U133 ( .A(n132), .Z(n120) );
  GTECH_XOR3 U134 ( .A(code_in[30]), .B(code_in[29]), .C(n133), .Z(n132) );
  GTECH_XOR3 U135 ( .A(code_in[8]), .B(n134), .C(n135), .Z(N28) );
  GTECH_NOT U136 ( .A(n136), .Z(n134) );
  GTECH_XOR3 U137 ( .A(code_in[7]), .B(n126), .C(n122), .Z(N27) );
  GTECH_NOT U138 ( .A(n137), .Z(n122) );
  GTECH_XOR3 U139 ( .A(code_in[31]), .B(n138), .C(n139), .Z(n137) );
  GTECH_XOR3 U140 ( .A(n119), .B(n121), .C(n140), .Z(N26) );
  GTECH_XOR3 U141 ( .A(code_in[6]), .B(n117), .C(n118), .Z(n140) );
  GTECH_NOT U142 ( .A(n141), .Z(n117) );
  GTECH_XOR2 U143 ( .A(n142), .B(data_in[4]), .Z(n141) );
  GTECH_NOT U144 ( .A(n143), .Z(n119) );
  GTECH_XOR2 U145 ( .A(n144), .B(n127), .Z(N25) );
  GTECH_XOR4 U146 ( .A(code_in[29]), .B(code_in[5]), .C(n145), .D(n146), .Z(
        n144) );
  GTECH_XOR3 U147 ( .A(n127), .B(n133), .C(n147), .Z(N24) );
  GTECH_XOR4 U148 ( .A(code_in[4]), .B(code_in[30]), .C(n136), .D(data_in[4]), 
        .Z(n147) );
  GTECH_XOR2 U149 ( .A(n148), .B(n149), .Z(n136) );
  GTECH_XOR2 U150 ( .A(n150), .B(data_in[6]), .Z(n133) );
  GTECH_XOR2 U151 ( .A(code_in[3]), .B(n151), .Z(N23) );
  GTECH_XOR4 U152 ( .A(n126), .B(n152), .C(code_in[2]), .D(n115), .Z(N22) );
  GTECH_NOT U153 ( .A(n153), .Z(n115) );
  GTECH_XOR2 U154 ( .A(n154), .B(data_in[5]), .Z(n153) );
  GTECH_NOT U155 ( .A(code_in[29]), .Z(n154) );
  GTECH_XOR4 U156 ( .A(n127), .B(n135), .C(code_in[1]), .D(n149), .Z(N21) );
  GTECH_NOT U157 ( .A(n155), .Z(n149) );
  GTECH_NOT U158 ( .A(n156), .Z(n135) );
  GTECH_XOR2 U159 ( .A(n157), .B(data_in[5]), .Z(n156) );
  GTECH_NOT U160 ( .A(data_in[4]), .Z(n157) );
  GTECH_XOR2 U161 ( .A(code_in[0]), .B(n151), .Z(N20) );
  GTECH_NOT U162 ( .A(n158), .Z(n151) );
  GTECH_XOR4 U163 ( .A(data_in[0]), .B(code_in[24]), .C(n159), .D(n123), .Z(
        n158) );
  GTECH_XOR3 U164 ( .A(n138), .B(n152), .C(n160), .Z(N19) );
  GTECH_XOR3 U165 ( .A(code_in[31]), .B(code_in[29]), .C(n126), .Z(n160) );
  GTECH_NOT U166 ( .A(n161), .Z(n126) );
  GTECH_NOT U167 ( .A(n162), .Z(n138) );
  GTECH_XOR2 U168 ( .A(n150), .B(data_in[7]), .Z(n162) );
  GTECH_NOT U169 ( .A(data_in[5]), .Z(n150) );
  GTECH_XOR3 U170 ( .A(n163), .B(n127), .C(n164), .Z(N18) );
  GTECH_XOR3 U171 ( .A(n118), .B(n128), .C(n164), .Z(N17) );
  GTECH_NOT U172 ( .A(n165), .Z(n164) );
  GTECH_XOR2 U173 ( .A(n146), .B(n166), .Z(n165) );
  GTECH_NOT U174 ( .A(n139), .Z(n166) );
  GTECH_XOR2 U175 ( .A(n155), .B(data_in[4]), .Z(n139) );
  GTECH_XOR2 U176 ( .A(n142), .B(code_in[29]), .Z(n155) );
  GTECH_NOT U177 ( .A(code_in[28]), .Z(n142) );
  GTECH_XOR2 U178 ( .A(n143), .B(data_in[5]), .Z(n146) );
  GTECH_NOT U179 ( .A(n145), .Z(n118) );
  GTECH_XOR2 U180 ( .A(n161), .B(n163), .Z(n145) );
  GTECH_XOR2 U181 ( .A(n124), .B(n152), .Z(N16) );
  GTECH_NOT U182 ( .A(n167), .Z(n152) );
  GTECH_XOR2 U183 ( .A(n148), .B(n121), .Z(n167) );
  GTECH_NOT U184 ( .A(n168), .Z(n124) );
  GTECH_XOR3 U185 ( .A(data_in[6]), .B(code_in[30]), .C(n159), .Z(n168) );
  GTECH_XOR4 U186 ( .A(data_in[4]), .B(data_in[3]), .C(n169), .D(code_in[28]), 
        .Z(n159) );
  GTECH_XOR2 U187 ( .A(n127), .B(n130), .Z(N15) );
  GTECH_NOT U188 ( .A(n170), .Z(n130) );
  GTECH_XOR2 U189 ( .A(n161), .B(n116), .Z(n170) );
  GTECH_NOT U190 ( .A(n171), .Z(n116) );
  GTECH_XOR2 U191 ( .A(n172), .B(data_in[7]), .Z(n171) );
  GTECH_NOT U192 ( .A(code_in[31]), .Z(n172) );
  GTECH_XOR2 U193 ( .A(n169), .B(data_in[3]), .Z(n161) );
  GTECH_NOT U194 ( .A(code_in[27]), .Z(n169) );
  GTECH_NOT U195 ( .A(n173), .Z(n127) );
  GTECH_XOR2 U196 ( .A(n174), .B(n121), .Z(n173) );
  GTECH_XOR2 U197 ( .A(n128), .B(n131), .Z(N14) );
  GTECH_NOT U198 ( .A(n175), .Z(n131) );
  GTECH_XOR2 U199 ( .A(n176), .B(n121), .Z(n175) );
  GTECH_NOT U200 ( .A(n177), .Z(n121) );
  GTECH_XOR2 U201 ( .A(n178), .B(data_in[2]), .Z(n177) );
  GTECH_NOT U202 ( .A(code_in[26]), .Z(n178) );
  GTECH_XOR2 U203 ( .A(n128), .B(n179), .Z(N13) );
  GTECH_NOT U204 ( .A(n176), .Z(n179) );
  GTECH_XOR2 U205 ( .A(n143), .B(n163), .Z(n176) );
  GTECH_NOT U206 ( .A(n180), .Z(n163) );
  GTECH_XOR2 U207 ( .A(n181), .B(code_in[31]), .Z(n180) );
  GTECH_XOR2 U208 ( .A(n182), .B(data_in[7]), .Z(n143) );
  GTECH_NOT U209 ( .A(data_in[6]), .Z(n182) );
  GTECH_NOT U210 ( .A(n183), .Z(n128) );
  GTECH_XOR2 U211 ( .A(n148), .B(n123), .Z(n183) );
  GTECH_NOT U212 ( .A(n174), .Z(n123) );
  GTECH_XOR2 U213 ( .A(n184), .B(data_in[1]), .Z(n174) );
  GTECH_NOT U214 ( .A(code_in[25]), .Z(n184) );
  GTECH_XOR2 U215 ( .A(n125), .B(n129), .Z(N12) );
  GTECH_NOT U216 ( .A(n185), .Z(n129) );
  GTECH_XOR2 U217 ( .A(n181), .B(data_in[6]), .Z(n185) );
  GTECH_NOT U218 ( .A(code_in[30]), .Z(n181) );
  GTECH_NOT U219 ( .A(n148), .Z(n125) );
  GTECH_XOR2 U220 ( .A(n186), .B(data_in[0]), .Z(n148) );
  GTECH_NOT U221 ( .A(code_in[24]), .Z(n186) );
endmodule

