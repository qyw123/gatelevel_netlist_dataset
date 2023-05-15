
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
         n174, n175, n176, n177, n178, n179, n180, n181;

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
  GTECH_XOR3 U116 ( .A(code_in[22]), .B(n113), .C(n114), .Z(N42) );
  GTECH_XOR3 U117 ( .A(code_in[21]), .B(n115), .C(n116), .Z(N41) );
  GTECH_XOR3 U118 ( .A(code_in[20]), .B(n117), .C(n118), .Z(N40) );
  GTECH_XOR3 U119 ( .A(code_in[19]), .B(n119), .C(n120), .Z(N39) );
  GTECH_XOR3 U120 ( .A(code_in[18]), .B(n121), .C(n122), .Z(N38) );
  GTECH_XOR3 U121 ( .A(code_in[17]), .B(n123), .C(n118), .Z(N37) );
  GTECH_XOR3 U122 ( .A(code_in[16]), .B(n113), .C(n124), .Z(N36) );
  GTECH_XOR3 U123 ( .A(code_in[15]), .B(n125), .C(n126), .Z(N35) );
  GTECH_XOR2 U124 ( .A(code_in[14]), .B(n122), .Z(N34) );
  GTECH_XOR2 U125 ( .A(code_in[13]), .B(n112), .Z(N33) );
  GTECH_XOR2 U126 ( .A(code_in[12]), .B(n114), .Z(N32) );
  GTECH_XOR2 U127 ( .A(code_in[11]), .B(n127), .Z(N31) );
  GTECH_XOR2 U128 ( .A(code_in[10]), .B(n128), .Z(N30) );
  GTECH_XOR3 U129 ( .A(code_in[9]), .B(n117), .C(n120), .Z(N29) );
  GTECH_NOT U130 ( .A(n129), .Z(n117) );
  GTECH_XOR3 U131 ( .A(code_in[30]), .B(code_in[29]), .C(n130), .Z(n129) );
  GTECH_XOR3 U132 ( .A(code_in[8]), .B(n131), .C(n132), .Z(N28) );
  GTECH_NOT U133 ( .A(n133), .Z(n131) );
  GTECH_XOR3 U134 ( .A(code_in[7]), .B(n123), .C(n119), .Z(N27) );
  GTECH_NOT U135 ( .A(n134), .Z(n119) );
  GTECH_XOR3 U136 ( .A(code_in[31]), .B(n135), .C(n136), .Z(n134) );
  GTECH_XOR3 U137 ( .A(n116), .B(n118), .C(n137), .Z(N26) );
  GTECH_XOR3 U138 ( .A(code_in[6]), .B(n114), .C(n115), .Z(n137) );
  GTECH_NOT U139 ( .A(n138), .Z(n114) );
  GTECH_XOR2 U140 ( .A(n139), .B(data_in[4]), .Z(n138) );
  GTECH_NOT U141 ( .A(n140), .Z(n116) );
  GTECH_XOR2 U142 ( .A(n141), .B(n124), .Z(N25) );
  GTECH_XOR4 U143 ( .A(code_in[29]), .B(code_in[5]), .C(n142), .D(n143), .Z(
        n141) );
  GTECH_XOR3 U144 ( .A(n124), .B(n130), .C(n144), .Z(N24) );
  GTECH_XOR4 U145 ( .A(code_in[4]), .B(code_in[30]), .C(n133), .D(data_in[4]), 
        .Z(n144) );
  GTECH_XOR2 U146 ( .A(n145), .B(n146), .Z(n133) );
  GTECH_XOR2 U147 ( .A(n147), .B(data_in[6]), .Z(n130) );
  GTECH_XOR2 U148 ( .A(code_in[3]), .B(n148), .Z(N23) );
  GTECH_XOR4 U149 ( .A(n123), .B(n149), .C(code_in[2]), .D(n112), .Z(N22) );
  GTECH_NOT U150 ( .A(n150), .Z(n112) );
  GTECH_XOR2 U151 ( .A(n151), .B(data_in[5]), .Z(n150) );
  GTECH_NOT U152 ( .A(code_in[29]), .Z(n151) );
  GTECH_XOR4 U153 ( .A(n124), .B(n132), .C(code_in[1]), .D(n146), .Z(N21) );
  GTECH_NOT U154 ( .A(n152), .Z(n146) );
  GTECH_NOT U155 ( .A(n153), .Z(n132) );
  GTECH_XOR2 U156 ( .A(n154), .B(data_in[5]), .Z(n153) );
  GTECH_NOT U157 ( .A(data_in[4]), .Z(n154) );
  GTECH_XOR2 U158 ( .A(code_in[0]), .B(n148), .Z(N20) );
  GTECH_NOT U159 ( .A(n155), .Z(n148) );
  GTECH_XOR4 U160 ( .A(data_in[0]), .B(code_in[24]), .C(n156), .D(n120), .Z(
        n155) );
  GTECH_XOR3 U161 ( .A(n135), .B(n149), .C(n157), .Z(N19) );
  GTECH_XOR3 U162 ( .A(code_in[31]), .B(code_in[29]), .C(n123), .Z(n157) );
  GTECH_NOT U163 ( .A(n158), .Z(n135) );
  GTECH_XOR2 U164 ( .A(n147), .B(data_in[7]), .Z(n158) );
  GTECH_NOT U165 ( .A(data_in[5]), .Z(n147) );
  GTECH_XOR3 U166 ( .A(n159), .B(n124), .C(n160), .Z(N18) );
  GTECH_XOR3 U167 ( .A(n115), .B(n125), .C(n160), .Z(N17) );
  GTECH_NOT U168 ( .A(n161), .Z(n160) );
  GTECH_XOR2 U169 ( .A(n143), .B(n162), .Z(n161) );
  GTECH_NOT U170 ( .A(n136), .Z(n162) );
  GTECH_XOR2 U171 ( .A(n152), .B(data_in[4]), .Z(n136) );
  GTECH_XOR2 U172 ( .A(n139), .B(code_in[29]), .Z(n152) );
  GTECH_NOT U173 ( .A(code_in[28]), .Z(n139) );
  GTECH_XOR2 U174 ( .A(n140), .B(data_in[5]), .Z(n143) );
  GTECH_NOT U175 ( .A(n142), .Z(n115) );
  GTECH_XOR2 U176 ( .A(n163), .B(n123), .Z(n142) );
  GTECH_NOT U177 ( .A(n164), .Z(n123) );
  GTECH_XOR2 U178 ( .A(n121), .B(n149), .Z(N16) );
  GTECH_NOT U179 ( .A(n165), .Z(n149) );
  GTECH_XOR2 U180 ( .A(n145), .B(n118), .Z(n165) );
  GTECH_NOT U181 ( .A(n166), .Z(n121) );
  GTECH_XOR3 U182 ( .A(data_in[6]), .B(code_in[30]), .C(n156), .Z(n166) );
  GTECH_XOR4 U183 ( .A(data_in[4]), .B(data_in[3]), .C(n167), .D(code_in[28]), 
        .Z(n156) );
  GTECH_XOR2 U184 ( .A(n124), .B(n127), .Z(N15) );
  GTECH_NOT U185 ( .A(n168), .Z(n127) );
  GTECH_XOR2 U186 ( .A(n164), .B(n113), .Z(n168) );
  GTECH_NOT U187 ( .A(n169), .Z(n113) );
  GTECH_XOR2 U188 ( .A(n170), .B(data_in[7]), .Z(n169) );
  GTECH_NOT U189 ( .A(code_in[31]), .Z(n170) );
  GTECH_XOR2 U190 ( .A(n167), .B(data_in[3]), .Z(n164) );
  GTECH_NOT U191 ( .A(code_in[27]), .Z(n167) );
  GTECH_NOT U192 ( .A(n171), .Z(n124) );
  GTECH_XOR2 U193 ( .A(n172), .B(n118), .Z(n171) );
  GTECH_XOR2 U194 ( .A(n125), .B(n128), .Z(N14) );
  GTECH_NOT U195 ( .A(n173), .Z(n128) );
  GTECH_XOR2 U196 ( .A(n174), .B(n118), .Z(n173) );
  GTECH_NOT U197 ( .A(n175), .Z(n118) );
  GTECH_XNOR2 U198 ( .A(data_in[2]), .B(code_in[26]), .Z(n175) );
  GTECH_XOR2 U199 ( .A(n125), .B(n176), .Z(N13) );
  GTECH_NOT U200 ( .A(n174), .Z(n176) );
  GTECH_XOR2 U201 ( .A(n140), .B(n159), .Z(n174) );
  GTECH_NOT U202 ( .A(n163), .Z(n159) );
  GTECH_XOR2 U203 ( .A(n177), .B(code_in[31]), .Z(n163) );
  GTECH_XOR2 U204 ( .A(n178), .B(data_in[7]), .Z(n140) );
  GTECH_NOT U205 ( .A(data_in[6]), .Z(n178) );
  GTECH_NOT U206 ( .A(n179), .Z(n125) );
  GTECH_XOR2 U207 ( .A(n145), .B(n120), .Z(n179) );
  GTECH_NOT U208 ( .A(n172), .Z(n120) );
  GTECH_XNOR2 U209 ( .A(data_in[1]), .B(code_in[25]), .Z(n172) );
  GTECH_XOR2 U210 ( .A(n122), .B(n126), .Z(N12) );
  GTECH_NOT U211 ( .A(n180), .Z(n126) );
  GTECH_XOR2 U212 ( .A(n177), .B(data_in[6]), .Z(n180) );
  GTECH_NOT U213 ( .A(code_in[30]), .Z(n177) );
  GTECH_NOT U214 ( .A(n145), .Z(n122) );
  GTECH_XOR2 U215 ( .A(n181), .B(data_in[0]), .Z(n145) );
  GTECH_NOT U216 ( .A(code_in[24]), .Z(n181) );
endmodule

