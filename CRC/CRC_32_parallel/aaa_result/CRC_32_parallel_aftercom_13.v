
module CRC_32_parallel ( clk, rst_n, data_in, code_in, crc32_gen );
  input [7:0] data_in;
  input [31:0] code_in;
  output [31:0] crc32_gen;
  input clk, rst_n;
  wire   N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N43, n44, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169;

  GTECH_FD4S crc32_gen_reg_31_ ( .D(N43), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[31]) );
  GTECH_FD4S crc32_gen_reg_30_ ( .D(N42), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[30]) );
  GTECH_FD4S crc32_gen_reg_29_ ( .D(N41), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[29]) );
  GTECH_FD4S crc32_gen_reg_28_ ( .D(N40), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[28]) );
  GTECH_FD4S crc32_gen_reg_27_ ( .D(N39), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[27]) );
  GTECH_FD4S crc32_gen_reg_26_ ( .D(N38), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[26]) );
  GTECH_FD4S crc32_gen_reg_25_ ( .D(N37), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[25]) );
  GTECH_FD4S crc32_gen_reg_24_ ( .D(N36), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[24]) );
  GTECH_FD4S crc32_gen_reg_23_ ( .D(N35), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[23]) );
  GTECH_FD4S crc32_gen_reg_22_ ( .D(N34), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[22]) );
  GTECH_FD4S crc32_gen_reg_21_ ( .D(N33), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[21]) );
  GTECH_FD4S crc32_gen_reg_20_ ( .D(N32), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[20]) );
  GTECH_FD4S crc32_gen_reg_19_ ( .D(N31), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[19]) );
  GTECH_FD4S crc32_gen_reg_18_ ( .D(N30), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[18]) );
  GTECH_FD4S crc32_gen_reg_17_ ( .D(N29), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[17]) );
  GTECH_FD4S crc32_gen_reg_16_ ( .D(N28), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[16]) );
  GTECH_FD4S crc32_gen_reg_15_ ( .D(N27), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[15]) );
  GTECH_FD4S crc32_gen_reg_14_ ( .D(N26), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[14]) );
  GTECH_FD4S crc32_gen_reg_13_ ( .D(N25), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[13]) );
  GTECH_FD4S crc32_gen_reg_12_ ( .D(N24), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[12]) );
  GTECH_FD4S crc32_gen_reg_11_ ( .D(N23), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[11]) );
  GTECH_FD4S crc32_gen_reg_10_ ( .D(N22), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[10]) );
  GTECH_FD4S crc32_gen_reg_9_ ( .D(N21), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[9]) );
  GTECH_FD4S crc32_gen_reg_8_ ( .D(N20), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[8]) );
  GTECH_FD4S crc32_gen_reg_7_ ( .D(N19), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[7]) );
  GTECH_FD4S crc32_gen_reg_6_ ( .D(N18), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[6]) );
  GTECH_FD4S crc32_gen_reg_5_ ( .D(N17), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[5]) );
  GTECH_FD4S crc32_gen_reg_4_ ( .D(N16), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[4]) );
  GTECH_FD4S crc32_gen_reg_3_ ( .D(N15), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[3]) );
  GTECH_FD4S crc32_gen_reg_2_ ( .D(N14), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[2]) );
  GTECH_FD4S crc32_gen_reg_1_ ( .D(N13), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[1]) );
  GTECH_FD4S crc32_gen_reg_0_ ( .D(N12), .TI(n44), .TE(n44), .CP(clk), .SD(
        rst_n), .Q(crc32_gen[0]) );
  GTECH_ZERO U110 ( .Z(n44) );
  GTECH_XNOR2 U111 ( .A(code_in[23]), .B(n108), .Z(N43) );
  GTECH_XOR3 U112 ( .A(code_in[22]), .B(n109), .C(n110), .Z(N42) );
  GTECH_XOR3 U113 ( .A(code_in[21]), .B(n111), .C(n112), .Z(N41) );
  GTECH_XOR3 U114 ( .A(code_in[20]), .B(n113), .C(n114), .Z(N40) );
  GTECH_XOR3 U115 ( .A(code_in[19]), .B(n115), .C(n116), .Z(N39) );
  GTECH_XOR3 U116 ( .A(code_in[18]), .B(n117), .C(n118), .Z(N38) );
  GTECH_XOR3 U117 ( .A(code_in[17]), .B(n119), .C(n114), .Z(N37) );
  GTECH_XOR3 U118 ( .A(code_in[16]), .B(n109), .C(n120), .Z(N36) );
  GTECH_XOR3 U119 ( .A(code_in[15]), .B(n121), .C(n122), .Z(N35) );
  GTECH_XNOR2 U120 ( .A(code_in[14]), .B(n123), .Z(N34) );
  GTECH_XNOR2 U121 ( .A(code_in[13]), .B(n108), .Z(N33) );
  GTECH_XNOR2 U122 ( .A(code_in[12]), .B(n124), .Z(N32) );
  GTECH_XNOR2 U123 ( .A(code_in[11]), .B(n125), .Z(N31) );
  GTECH_XNOR2 U124 ( .A(code_in[10]), .B(n126), .Z(N30) );
  GTECH_XOR3 U125 ( .A(code_in[9]), .B(n113), .C(n116), .Z(N29) );
  GTECH_NOT U126 ( .A(n127), .Z(n113) );
  GTECH_XOR3 U127 ( .A(code_in[30]), .B(code_in[29]), .C(n128), .Z(n127) );
  GTECH_XOR3 U128 ( .A(code_in[8]), .B(n129), .C(n130), .Z(N28) );
  GTECH_NOT U129 ( .A(n131), .Z(n129) );
  GTECH_XOR3 U130 ( .A(code_in[7]), .B(n119), .C(n115), .Z(N27) );
  GTECH_NOT U131 ( .A(n132), .Z(n115) );
  GTECH_XOR3 U132 ( .A(code_in[31]), .B(n133), .C(n134), .Z(n132) );
  GTECH_XOR3 U133 ( .A(n112), .B(n114), .C(n135), .Z(N26) );
  GTECH_XOR3 U134 ( .A(code_in[6]), .B(n110), .C(n111), .Z(n135) );
  GTECH_NOT U135 ( .A(n124), .Z(n110) );
  GTECH_XNOR2 U136 ( .A(data_in[4]), .B(code_in[28]), .Z(n124) );
  GTECH_XOR3 U137 ( .A(n120), .B(n136), .C(n137), .Z(N25) );
  GTECH_XOR3 U138 ( .A(code_in[5]), .B(code_in[29]), .C(n111), .Z(n137) );
  GTECH_XOR3 U139 ( .A(n120), .B(n128), .C(n138), .Z(N24) );
  GTECH_XOR4 U140 ( .A(code_in[4]), .B(code_in[30]), .C(n131), .D(data_in[4]), 
        .Z(n138) );
  GTECH_XNOR2 U141 ( .A(n139), .B(n118), .Z(n131) );
  GTECH_XNOR2 U142 ( .A(data_in[6]), .B(data_in[5]), .Z(n128) );
  GTECH_XNOR2 U143 ( .A(code_in[3]), .B(n140), .Z(N23) );
  GTECH_XOR4 U144 ( .A(n119), .B(n141), .C(code_in[2]), .D(n142), .Z(N22) );
  GTECH_NOT U145 ( .A(n108), .Z(n142) );
  GTECH_XNOR2 U146 ( .A(data_in[5]), .B(code_in[29]), .Z(n108) );
  GTECH_XOR4 U147 ( .A(n120), .B(n130), .C(code_in[1]), .D(n139), .Z(N21) );
  GTECH_NOT U148 ( .A(n143), .Z(n130) );
  GTECH_XNOR2 U149 ( .A(data_in[5]), .B(data_in[4]), .Z(n143) );
  GTECH_XNOR2 U150 ( .A(code_in[0]), .B(n140), .Z(N20) );
  GTECH_XOR3 U151 ( .A(n144), .B(n145), .C(n146), .Z(n140) );
  GTECH_XOR3 U152 ( .A(code_in[24]), .B(n147), .C(data_in[0]), .Z(n145) );
  GTECH_XOR3 U153 ( .A(n133), .B(n141), .C(n148), .Z(N19) );
  GTECH_XOR3 U154 ( .A(code_in[31]), .B(code_in[29]), .C(n119), .Z(n148) );
  GTECH_NOT U155 ( .A(n149), .Z(n141) );
  GTECH_NOT U156 ( .A(n150), .Z(n133) );
  GTECH_XNOR2 U157 ( .A(data_in[7]), .B(data_in[5]), .Z(n150) );
  GTECH_XOR3 U158 ( .A(n151), .B(n120), .C(n152), .Z(N18) );
  GTECH_XOR3 U159 ( .A(n111), .B(n122), .C(n152), .Z(N17) );
  GTECH_NOT U160 ( .A(n153), .Z(n152) );
  GTECH_XNOR2 U161 ( .A(n154), .B(n136), .Z(n153) );
  GTECH_NOT U162 ( .A(n155), .Z(n136) );
  GTECH_XNOR2 U163 ( .A(data_in[5]), .B(n112), .Z(n155) );
  GTECH_NOT U164 ( .A(n134), .Z(n154) );
  GTECH_XNOR2 U165 ( .A(data_in[4]), .B(n139), .Z(n134) );
  GTECH_NOT U166 ( .A(n156), .Z(n139) );
  GTECH_XNOR2 U167 ( .A(code_in[29]), .B(code_in[28]), .Z(n156) );
  GTECH_NOT U168 ( .A(n157), .Z(n111) );
  GTECH_XNOR2 U169 ( .A(n119), .B(n151), .Z(n157) );
  GTECH_XNOR2 U170 ( .A(n117), .B(n149), .Z(N16) );
  GTECH_XNOR2 U171 ( .A(n114), .B(n118), .Z(n149) );
  GTECH_NOT U172 ( .A(n158), .Z(n117) );
  GTECH_XOR3 U173 ( .A(n159), .B(n121), .C(n144), .Z(n158) );
  GTECH_XNOR2 U174 ( .A(data_in[4]), .B(data_in[3]), .Z(n144) );
  GTECH_NOT U175 ( .A(n146), .Z(n159) );
  GTECH_XNOR2 U176 ( .A(code_in[28]), .B(code_in[27]), .Z(n146) );
  GTECH_XNOR2 U177 ( .A(n120), .B(n125), .Z(N15) );
  GTECH_XNOR2 U178 ( .A(n109), .B(n119), .Z(n125) );
  GTECH_NOT U179 ( .A(n160), .Z(n119) );
  GTECH_XNOR2 U180 ( .A(data_in[3]), .B(code_in[27]), .Z(n160) );
  GTECH_NOT U181 ( .A(n161), .Z(n109) );
  GTECH_XNOR2 U182 ( .A(data_in[7]), .B(code_in[31]), .Z(n161) );
  GTECH_NOT U183 ( .A(n162), .Z(n120) );
  GTECH_XNOR2 U184 ( .A(n114), .B(n116), .Z(n162) );
  GTECH_XNOR2 U185 ( .A(n122), .B(n126), .Z(N14) );
  GTECH_XNOR2 U186 ( .A(n114), .B(n163), .Z(n126) );
  GTECH_NOT U187 ( .A(n164), .Z(n163) );
  GTECH_NOT U188 ( .A(n165), .Z(n114) );
  GTECH_XNOR2 U189 ( .A(data_in[2]), .B(code_in[26]), .Z(n165) );
  GTECH_XNOR2 U190 ( .A(n122), .B(n164), .Z(N13) );
  GTECH_XNOR2 U191 ( .A(n151), .B(n112), .Z(n164) );
  GTECH_NOT U192 ( .A(n166), .Z(n112) );
  GTECH_XNOR2 U193 ( .A(data_in[7]), .B(data_in[6]), .Z(n166) );
  GTECH_NOT U194 ( .A(n167), .Z(n151) );
  GTECH_XNOR2 U195 ( .A(code_in[31]), .B(code_in[30]), .Z(n167) );
  GTECH_NOT U196 ( .A(n168), .Z(n122) );
  GTECH_XNOR2 U197 ( .A(n116), .B(n118), .Z(n168) );
  GTECH_NOT U198 ( .A(n123), .Z(n118) );
  GTECH_NOT U199 ( .A(n147), .Z(n116) );
  GTECH_XNOR2 U200 ( .A(data_in[1]), .B(code_in[25]), .Z(n147) );
  GTECH_XNOR2 U201 ( .A(n121), .B(n123), .Z(N12) );
  GTECH_XNOR2 U202 ( .A(data_in[0]), .B(code_in[24]), .Z(n123) );
  GTECH_NOT U203 ( .A(n169), .Z(n121) );
  GTECH_XNOR2 U204 ( .A(data_in[6]), .B(code_in[30]), .Z(n169) );
endmodule

