
module CRC_32_parallel ( clk, rst_n, data_in, code_in, crc32_gen );
  input [7:0] data_in;
  input [31:0] code_in;
  output [31:0] crc32_gen;
  input clk, rst_n;
  wire   N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N43, n48, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182;

  GTECH_FD4S crc32_gen_reg_31_ ( .D(N43), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[31]) );
  GTECH_FD4S crc32_gen_reg_30_ ( .D(N42), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[30]) );
  GTECH_FD4S crc32_gen_reg_29_ ( .D(N41), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[29]) );
  GTECH_FD4S crc32_gen_reg_28_ ( .D(N40), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[28]) );
  GTECH_FD4S crc32_gen_reg_27_ ( .D(N39), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[27]) );
  GTECH_FD4S crc32_gen_reg_26_ ( .D(N38), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[26]) );
  GTECH_FD4S crc32_gen_reg_25_ ( .D(N37), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[25]) );
  GTECH_FD4S crc32_gen_reg_24_ ( .D(N36), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[24]) );
  GTECH_FD4S crc32_gen_reg_23_ ( .D(N35), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[23]) );
  GTECH_FD4S crc32_gen_reg_22_ ( .D(N34), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[22]) );
  GTECH_FD4S crc32_gen_reg_21_ ( .D(N33), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[21]) );
  GTECH_FD4S crc32_gen_reg_20_ ( .D(N32), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[20]) );
  GTECH_FD4S crc32_gen_reg_19_ ( .D(N31), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[19]) );
  GTECH_FD4S crc32_gen_reg_18_ ( .D(N30), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[18]) );
  GTECH_FD4S crc32_gen_reg_17_ ( .D(N29), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[17]) );
  GTECH_FD4S crc32_gen_reg_16_ ( .D(N28), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[16]) );
  GTECH_FD4S crc32_gen_reg_15_ ( .D(N27), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[15]) );
  GTECH_FD4S crc32_gen_reg_14_ ( .D(N26), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[14]) );
  GTECH_FD4S crc32_gen_reg_13_ ( .D(N25), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[13]) );
  GTECH_FD4S crc32_gen_reg_12_ ( .D(N24), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[12]) );
  GTECH_FD4S crc32_gen_reg_11_ ( .D(N23), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[11]) );
  GTECH_FD4S crc32_gen_reg_10_ ( .D(N22), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[10]) );
  GTECH_FD4S crc32_gen_reg_9_ ( .D(N21), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[9]) );
  GTECH_FD4S crc32_gen_reg_8_ ( .D(N20), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[8]) );
  GTECH_FD4S crc32_gen_reg_7_ ( .D(N19), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[7]) );
  GTECH_FD4S crc32_gen_reg_6_ ( .D(N18), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[6]) );
  GTECH_FD4S crc32_gen_reg_5_ ( .D(N17), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[5]) );
  GTECH_FD4S crc32_gen_reg_4_ ( .D(N16), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[4]) );
  GTECH_FD4S crc32_gen_reg_3_ ( .D(N15), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[3]) );
  GTECH_FD4S crc32_gen_reg_2_ ( .D(N14), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[2]) );
  GTECH_FD4S crc32_gen_reg_1_ ( .D(N13), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[1]) );
  GTECH_FD4S crc32_gen_reg_0_ ( .D(N12), .TI(n48), .TE(n48), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[0]) );
  GTECH_ZERO U114 ( .Z(n48) );
  GTECH_XOR2 U115 ( .A(code_in[23]), .B(n112), .Z(N43) );
  GTECH_XNOR3 U116 ( .A(code_in[22]), .B(n113), .C(n114), .Z(N42) );
  GTECH_XOR2 U117 ( .A(code_in[21]), .B(n115), .Z(N41) );
  GTECH_XNOR3 U118 ( .A(code_in[20]), .B(n116), .C(n117), .Z(N40) );
  GTECH_XNOR3 U119 ( .A(code_in[19]), .B(n118), .C(n119), .Z(N39) );
  GTECH_NOT U120 ( .A(n120), .Z(n118) );
  GTECH_XNOR3 U121 ( .A(code_in[18]), .B(n121), .C(n122), .Z(N38) );
  GTECH_XNOR3 U122 ( .A(code_in[17]), .B(n123), .C(n117), .Z(N37) );
  GTECH_XNOR3 U123 ( .A(code_in[16]), .B(n113), .C(n124), .Z(N36) );
  GTECH_XNOR3 U124 ( .A(code_in[15]), .B(n125), .C(n126), .Z(N35) );
  GTECH_XOR2 U125 ( .A(code_in[14]), .B(n127), .Z(N34) );
  GTECH_XOR2 U126 ( .A(code_in[13]), .B(n112), .Z(N33) );
  GTECH_XOR2 U127 ( .A(code_in[12]), .B(n128), .Z(N32) );
  GTECH_XOR2 U128 ( .A(code_in[11]), .B(n129), .Z(N31) );
  GTECH_XOR2 U129 ( .A(code_in[10]), .B(n130), .Z(N30) );
  GTECH_XNOR3 U130 ( .A(code_in[9]), .B(n116), .C(n119), .Z(N29) );
  GTECH_NOT U131 ( .A(n131), .Z(n116) );
  GTECH_XNOR3 U132 ( .A(code_in[30]), .B(code_in[29]), .C(n132), .Z(n131) );
  GTECH_XNOR3 U133 ( .A(code_in[8]), .B(n133), .C(n134), .Z(N28) );
  GTECH_XNOR3 U134 ( .A(code_in[7]), .B(n123), .C(n120), .Z(N27) );
  GTECH_XOR2 U135 ( .A(n135), .B(n136), .Z(n120) );
  GTECH_XOR4 U136 ( .A(n115), .B(n137), .C(code_in[6]), .D(n128), .Z(N26) );
  GTECH_NOT U137 ( .A(n114), .Z(n128) );
  GTECH_XOR2 U138 ( .A(n138), .B(data_in[4]), .Z(n114) );
  GTECH_NOT U139 ( .A(n139), .Z(n115) );
  GTECH_XOR2 U140 ( .A(n140), .B(n141), .Z(n139) );
  GTECH_XOR2 U141 ( .A(n142), .B(n143), .Z(N25) );
  GTECH_XOR4 U142 ( .A(code_in[5]), .B(code_in[29]), .C(n144), .D(n145), .Z(
        n142) );
  GTECH_XOR4 U143 ( .A(n132), .B(n143), .C(n146), .D(n133), .Z(N24) );
  GTECH_NOT U144 ( .A(n147), .Z(n133) );
  GTECH_XOR2 U145 ( .A(n122), .B(n148), .Z(n147) );
  GTECH_XNOR3 U146 ( .A(data_in[4]), .B(code_in[4]), .C(n149), .Z(n146) );
  GTECH_NOT U147 ( .A(n150), .Z(n132) );
  GTECH_XOR2 U148 ( .A(n151), .B(data_in[6]), .Z(n150) );
  GTECH_NOT U149 ( .A(data_in[5]), .Z(n151) );
  GTECH_XOR2 U150 ( .A(code_in[3]), .B(n152), .Z(N23) );
  GTECH_XNOR3 U151 ( .A(code_in[2]), .B(n112), .C(n153), .Z(N22) );
  GTECH_NOT U152 ( .A(n154), .Z(n112) );
  GTECH_XOR2 U153 ( .A(n155), .B(data_in[5]), .Z(n154) );
  GTECH_NOT U154 ( .A(code_in[29]), .Z(n155) );
  GTECH_XOR4 U155 ( .A(n143), .B(n156), .C(code_in[1]), .D(n148), .Z(N21) );
  GTECH_NOT U156 ( .A(n157), .Z(n148) );
  GTECH_NOT U157 ( .A(n134), .Z(n156) );
  GTECH_XOR2 U158 ( .A(n158), .B(data_in[5]), .Z(n134) );
  GTECH_NOT U159 ( .A(data_in[4]), .Z(n158) );
  GTECH_XOR2 U160 ( .A(code_in[0]), .B(n152), .Z(N20) );
  GTECH_NOT U161 ( .A(n159), .Z(n152) );
  GTECH_XOR4 U162 ( .A(data_in[0]), .B(code_in[24]), .C(n160), .D(n161), .Z(
        n159) );
  GTECH_XNOR3 U163 ( .A(code_in[29]), .B(n136), .C(n153), .Z(N19) );
  GTECH_XOR2 U164 ( .A(n162), .B(n123), .Z(n153) );
  GTECH_NOT U165 ( .A(n163), .Z(n136) );
  GTECH_XNOR3 U166 ( .A(data_in[7]), .B(data_in[5]), .C(code_in[31]), .Z(n163)
         );
  GTECH_XNOR3 U167 ( .A(n164), .B(n143), .C(n165), .Z(N18) );
  GTECH_XNOR3 U168 ( .A(n141), .B(n125), .C(n165), .Z(N17) );
  GTECH_XOR2 U169 ( .A(n145), .B(n166), .Z(n165) );
  GTECH_NOT U170 ( .A(n135), .Z(n166) );
  GTECH_XOR2 U171 ( .A(n157), .B(data_in[4]), .Z(n135) );
  GTECH_XOR2 U172 ( .A(n138), .B(code_in[29]), .Z(n157) );
  GTECH_NOT U173 ( .A(code_in[28]), .Z(n138) );
  GTECH_XOR2 U174 ( .A(n140), .B(data_in[5]), .Z(n145) );
  GTECH_NOT U175 ( .A(n144), .Z(n141) );
  GTECH_XOR2 U176 ( .A(n167), .B(n123), .Z(n144) );
  GTECH_NOT U177 ( .A(n168), .Z(n123) );
  GTECH_XOR2 U178 ( .A(n121), .B(n169), .Z(N16) );
  GTECH_NOT U179 ( .A(n162), .Z(n169) );
  GTECH_XOR2 U180 ( .A(n122), .B(n137), .Z(n162) );
  GTECH_NOT U181 ( .A(n170), .Z(n121) );
  GTECH_XNOR3 U182 ( .A(data_in[6]), .B(code_in[30]), .C(n171), .Z(n170) );
  GTECH_NOT U183 ( .A(n160), .Z(n171) );
  GTECH_XOR4 U184 ( .A(data_in[4]), .B(data_in[3]), .C(n172), .D(code_in[28]), 
        .Z(n160) );
  GTECH_XOR2 U185 ( .A(n143), .B(n129), .Z(N15) );
  GTECH_NOT U186 ( .A(n173), .Z(n129) );
  GTECH_XOR2 U187 ( .A(n168), .B(n113), .Z(n173) );
  GTECH_NOT U188 ( .A(n174), .Z(n113) );
  GTECH_XOR2 U189 ( .A(n175), .B(data_in[7]), .Z(n174) );
  GTECH_NOT U190 ( .A(code_in[31]), .Z(n175) );
  GTECH_XOR2 U191 ( .A(n172), .B(data_in[3]), .Z(n168) );
  GTECH_NOT U192 ( .A(code_in[27]), .Z(n172) );
  GTECH_NOT U193 ( .A(n124), .Z(n143) );
  GTECH_XOR2 U194 ( .A(n119), .B(n137), .Z(n124) );
  GTECH_XOR2 U195 ( .A(n125), .B(n130), .Z(N14) );
  GTECH_NOT U196 ( .A(n176), .Z(n130) );
  GTECH_XOR2 U197 ( .A(n177), .B(n137), .Z(n176) );
  GTECH_NOT U198 ( .A(n117), .Z(n137) );
  GTECH_XNOR2 U199 ( .A(data_in[2]), .B(code_in[26]), .Z(n117) );
  GTECH_XOR2 U200 ( .A(n125), .B(n178), .Z(N13) );
  GTECH_NOT U201 ( .A(n177), .Z(n178) );
  GTECH_XOR2 U202 ( .A(n140), .B(n164), .Z(n177) );
  GTECH_NOT U203 ( .A(n167), .Z(n164) );
  GTECH_XOR2 U204 ( .A(n149), .B(code_in[31]), .Z(n167) );
  GTECH_XOR2 U205 ( .A(n179), .B(data_in[7]), .Z(n140) );
  GTECH_NOT U206 ( .A(data_in[6]), .Z(n179) );
  GTECH_NOT U207 ( .A(n180), .Z(n125) );
  GTECH_XOR2 U208 ( .A(n122), .B(n161), .Z(n180) );
  GTECH_NOT U209 ( .A(n119), .Z(n161) );
  GTECH_XNOR2 U210 ( .A(data_in[1]), .B(code_in[25]), .Z(n119) );
  GTECH_XOR2 U211 ( .A(n127), .B(n181), .Z(N12) );
  GTECH_NOT U212 ( .A(n126), .Z(n181) );
  GTECH_XOR2 U213 ( .A(n149), .B(data_in[6]), .Z(n126) );
  GTECH_NOT U214 ( .A(code_in[30]), .Z(n149) );
  GTECH_NOT U215 ( .A(n122), .Z(n127) );
  GTECH_XOR2 U216 ( .A(n182), .B(data_in[0]), .Z(n122) );
  GTECH_NOT U217 ( .A(code_in[24]), .Z(n182) );
endmodule

