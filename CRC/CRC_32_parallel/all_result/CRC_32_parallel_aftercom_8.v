
module CRC_32_parallel ( clk, rst_n, data_in, code_in, crc32_gen );
  input [7:0] data_in;
  input [31:0] code_in;
  output [31:0] crc32_gen;
  input clk, rst_n;
  wire   N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N43, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155;

  GTECH_FD4 crc32_gen_reg_31_ ( .D(N43), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[31]) );
  GTECH_FD4 crc32_gen_reg_30_ ( .D(N42), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[30]) );
  GTECH_FD4 crc32_gen_reg_29_ ( .D(N41), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[29]) );
  GTECH_FD4 crc32_gen_reg_28_ ( .D(N40), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[28]) );
  GTECH_FD4 crc32_gen_reg_27_ ( .D(N39), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[27]) );
  GTECH_FD4 crc32_gen_reg_26_ ( .D(N38), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[26]) );
  GTECH_FD4 crc32_gen_reg_25_ ( .D(N37), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[25]) );
  GTECH_FD4 crc32_gen_reg_24_ ( .D(N36), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[24]) );
  GTECH_FD4 crc32_gen_reg_23_ ( .D(N35), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[23]) );
  GTECH_FD4 crc32_gen_reg_22_ ( .D(N34), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[22]) );
  GTECH_FD4 crc32_gen_reg_21_ ( .D(N33), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[21]) );
  GTECH_FD4 crc32_gen_reg_20_ ( .D(N32), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[20]) );
  GTECH_FD4 crc32_gen_reg_19_ ( .D(N31), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[19]) );
  GTECH_FD4 crc32_gen_reg_18_ ( .D(N30), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[18]) );
  GTECH_FD4 crc32_gen_reg_17_ ( .D(N29), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[17]) );
  GTECH_FD4 crc32_gen_reg_16_ ( .D(N28), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[16]) );
  GTECH_FD4 crc32_gen_reg_15_ ( .D(N27), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[15]) );
  GTECH_FD4 crc32_gen_reg_14_ ( .D(N26), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[14]) );
  GTECH_FD4 crc32_gen_reg_13_ ( .D(N25), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[13]) );
  GTECH_FD4 crc32_gen_reg_12_ ( .D(N24), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[12]) );
  GTECH_FD4 crc32_gen_reg_11_ ( .D(N23), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[11]) );
  GTECH_FD4 crc32_gen_reg_10_ ( .D(N22), .CP(clk), .SD(rst_n), .Q(
        crc32_gen[10]) );
  GTECH_FD4 crc32_gen_reg_9_ ( .D(N21), .CP(clk), .SD(rst_n), .Q(crc32_gen[9])
         );
  GTECH_FD4 crc32_gen_reg_8_ ( .D(N20), .CP(clk), .SD(rst_n), .Q(crc32_gen[8])
         );
  GTECH_FD4 crc32_gen_reg_7_ ( .D(N19), .CP(clk), .SD(rst_n), .Q(crc32_gen[7])
         );
  GTECH_FD4 crc32_gen_reg_6_ ( .D(N18), .CP(clk), .SD(rst_n), .Q(crc32_gen[6])
         );
  GTECH_FD4 crc32_gen_reg_5_ ( .D(N17), .CP(clk), .SD(rst_n), .Q(crc32_gen[5])
         );
  GTECH_FD4 crc32_gen_reg_4_ ( .D(N16), .CP(clk), .SD(rst_n), .Q(crc32_gen[4])
         );
  GTECH_FD4 crc32_gen_reg_3_ ( .D(N15), .CP(clk), .SD(rst_n), .Q(crc32_gen[3])
         );
  GTECH_FD4 crc32_gen_reg_2_ ( .D(N14), .CP(clk), .SD(rst_n), .Q(crc32_gen[2])
         );
  GTECH_FD4 crc32_gen_reg_1_ ( .D(N13), .CP(clk), .SD(rst_n), .Q(crc32_gen[1])
         );
  GTECH_FD4 crc32_gen_reg_0_ ( .D(N12), .CP(clk), .SD(rst_n), .Q(crc32_gen[0])
         );
  GTECH_XOR2 U85 ( .A(code_in[23]), .B(n83), .Z(N43) );
  GTECH_XNOR3 U86 ( .A(code_in[22]), .B(n84), .C(n85), .Z(N42) );
  GTECH_XOR2 U87 ( .A(code_in[21]), .B(n86), .Z(N41) );
  GTECH_XNOR3 U88 ( .A(code_in[20]), .B(n87), .C(n88), .Z(N40) );
  GTECH_XNOR3 U89 ( .A(code_in[19]), .B(n89), .C(n90), .Z(N39) );
  GTECH_NOT U90 ( .A(n91), .Z(n89) );
  GTECH_XNOR3 U91 ( .A(code_in[18]), .B(n92), .C(n93), .Z(N38) );
  GTECH_XNOR3 U92 ( .A(code_in[17]), .B(n94), .C(n88), .Z(N37) );
  GTECH_XNOR3 U93 ( .A(code_in[16]), .B(n84), .C(n95), .Z(N36) );
  GTECH_XNOR3 U94 ( .A(code_in[15]), .B(n96), .C(n97), .Z(N35) );
  GTECH_XOR2 U95 ( .A(code_in[14]), .B(n98), .Z(N34) );
  GTECH_XOR2 U96 ( .A(code_in[13]), .B(n83), .Z(N33) );
  GTECH_XOR2 U97 ( .A(code_in[12]), .B(n99), .Z(N32) );
  GTECH_XOR2 U98 ( .A(code_in[11]), .B(n100), .Z(N31) );
  GTECH_XOR2 U99 ( .A(code_in[10]), .B(n101), .Z(N30) );
  GTECH_XNOR3 U100 ( .A(code_in[9]), .B(n87), .C(n90), .Z(N29) );
  GTECH_NOT U101 ( .A(n102), .Z(n87) );
  GTECH_XNOR3 U102 ( .A(code_in[30]), .B(code_in[29]), .C(n103), .Z(n102) );
  GTECH_XNOR3 U103 ( .A(code_in[8]), .B(n104), .C(n105), .Z(N28) );
  GTECH_XNOR3 U104 ( .A(code_in[7]), .B(n94), .C(n91), .Z(N27) );
  GTECH_XOR2 U105 ( .A(n106), .B(n107), .Z(n91) );
  GTECH_XOR4 U106 ( .A(n86), .B(n108), .C(code_in[6]), .D(n99), .Z(N26) );
  GTECH_NOT U107 ( .A(n85), .Z(n99) );
  GTECH_XOR2 U108 ( .A(n109), .B(data_in[4]), .Z(n85) );
  GTECH_NOT U109 ( .A(n110), .Z(n86) );
  GTECH_XOR2 U110 ( .A(n111), .B(n112), .Z(n110) );
  GTECH_XOR2 U111 ( .A(n113), .B(n114), .Z(N25) );
  GTECH_XOR4 U112 ( .A(code_in[5]), .B(code_in[29]), .C(n115), .D(n116), .Z(
        n113) );
  GTECH_XOR4 U113 ( .A(n103), .B(n114), .C(n117), .D(n104), .Z(N24) );
  GTECH_NOT U114 ( .A(n118), .Z(n104) );
  GTECH_XOR2 U115 ( .A(n93), .B(n119), .Z(n118) );
  GTECH_XNOR3 U116 ( .A(data_in[4]), .B(code_in[4]), .C(n120), .Z(n117) );
  GTECH_NOT U117 ( .A(n121), .Z(n103) );
  GTECH_XOR2 U118 ( .A(n122), .B(data_in[6]), .Z(n121) );
  GTECH_NOT U119 ( .A(data_in[5]), .Z(n122) );
  GTECH_XOR2 U120 ( .A(code_in[3]), .B(n123), .Z(N23) );
  GTECH_XNOR3 U121 ( .A(code_in[2]), .B(n83), .C(n124), .Z(N22) );
  GTECH_NOT U122 ( .A(n125), .Z(n83) );
  GTECH_XOR2 U123 ( .A(n126), .B(data_in[5]), .Z(n125) );
  GTECH_NOT U124 ( .A(code_in[29]), .Z(n126) );
  GTECH_XOR4 U125 ( .A(n114), .B(n127), .C(code_in[1]), .D(n119), .Z(N21) );
  GTECH_NOT U126 ( .A(n128), .Z(n119) );
  GTECH_NOT U127 ( .A(n105), .Z(n127) );
  GTECH_XOR2 U128 ( .A(n129), .B(data_in[5]), .Z(n105) );
  GTECH_NOT U129 ( .A(data_in[4]), .Z(n129) );
  GTECH_XOR2 U130 ( .A(code_in[0]), .B(n123), .Z(N20) );
  GTECH_NOT U131 ( .A(n130), .Z(n123) );
  GTECH_XOR4 U132 ( .A(data_in[0]), .B(code_in[24]), .C(n131), .D(n132), .Z(
        n130) );
  GTECH_XNOR3 U133 ( .A(code_in[29]), .B(n133), .C(n124), .Z(N19) );
  GTECH_XOR2 U134 ( .A(n134), .B(n94), .Z(n124) );
  GTECH_NOT U135 ( .A(n106), .Z(n133) );
  GTECH_XNOR3 U136 ( .A(data_in[7]), .B(data_in[5]), .C(code_in[31]), .Z(n106)
         );
  GTECH_XNOR3 U137 ( .A(n135), .B(n114), .C(n136), .Z(N18) );
  GTECH_XNOR3 U138 ( .A(n112), .B(n96), .C(n136), .Z(N17) );
  GTECH_XOR2 U139 ( .A(n116), .B(n107), .Z(n136) );
  GTECH_NOT U140 ( .A(n137), .Z(n107) );
  GTECH_XOR2 U141 ( .A(n128), .B(data_in[4]), .Z(n137) );
  GTECH_XOR2 U142 ( .A(n109), .B(code_in[29]), .Z(n128) );
  GTECH_NOT U143 ( .A(code_in[28]), .Z(n109) );
  GTECH_XOR2 U144 ( .A(n111), .B(data_in[5]), .Z(n116) );
  GTECH_NOT U145 ( .A(n115), .Z(n112) );
  GTECH_XOR2 U146 ( .A(n138), .B(n94), .Z(n115) );
  GTECH_NOT U147 ( .A(n139), .Z(n94) );
  GTECH_XOR2 U148 ( .A(n92), .B(n140), .Z(N16) );
  GTECH_NOT U149 ( .A(n134), .Z(n140) );
  GTECH_XOR2 U150 ( .A(n93), .B(n108), .Z(n134) );
  GTECH_NOT U151 ( .A(n141), .Z(n92) );
  GTECH_XNOR3 U152 ( .A(data_in[6]), .B(code_in[30]), .C(n142), .Z(n141) );
  GTECH_NOT U153 ( .A(n131), .Z(n142) );
  GTECH_XOR4 U154 ( .A(data_in[4]), .B(data_in[3]), .C(n143), .D(code_in[28]), 
        .Z(n131) );
  GTECH_XOR2 U155 ( .A(n114), .B(n100), .Z(N15) );
  GTECH_NOT U156 ( .A(n144), .Z(n100) );
  GTECH_XOR2 U157 ( .A(n139), .B(n84), .Z(n144) );
  GTECH_NOT U158 ( .A(n145), .Z(n84) );
  GTECH_XOR2 U159 ( .A(n146), .B(data_in[7]), .Z(n145) );
  GTECH_NOT U160 ( .A(code_in[31]), .Z(n146) );
  GTECH_XOR2 U161 ( .A(n143), .B(data_in[3]), .Z(n139) );
  GTECH_NOT U162 ( .A(code_in[27]), .Z(n143) );
  GTECH_NOT U163 ( .A(n95), .Z(n114) );
  GTECH_XOR2 U164 ( .A(n90), .B(n108), .Z(n95) );
  GTECH_XOR2 U165 ( .A(n96), .B(n101), .Z(N14) );
  GTECH_NOT U166 ( .A(n147), .Z(n101) );
  GTECH_XOR2 U167 ( .A(n148), .B(n108), .Z(n147) );
  GTECH_NOT U168 ( .A(n88), .Z(n108) );
  GTECH_XOR2 U169 ( .A(n149), .B(data_in[2]), .Z(n88) );
  GTECH_NOT U170 ( .A(code_in[26]), .Z(n149) );
  GTECH_XOR2 U171 ( .A(n96), .B(n150), .Z(N13) );
  GTECH_NOT U172 ( .A(n148), .Z(n150) );
  GTECH_XOR2 U173 ( .A(n111), .B(n135), .Z(n148) );
  GTECH_NOT U174 ( .A(n138), .Z(n135) );
  GTECH_XOR2 U175 ( .A(n120), .B(code_in[31]), .Z(n138) );
  GTECH_XOR2 U176 ( .A(n151), .B(data_in[7]), .Z(n111) );
  GTECH_NOT U177 ( .A(data_in[6]), .Z(n151) );
  GTECH_NOT U178 ( .A(n152), .Z(n96) );
  GTECH_XOR2 U179 ( .A(n93), .B(n132), .Z(n152) );
  GTECH_NOT U180 ( .A(n90), .Z(n132) );
  GTECH_XOR2 U181 ( .A(n153), .B(data_in[1]), .Z(n90) );
  GTECH_NOT U182 ( .A(code_in[25]), .Z(n153) );
  GTECH_XOR2 U183 ( .A(n98), .B(n154), .Z(N12) );
  GTECH_NOT U184 ( .A(n97), .Z(n154) );
  GTECH_XOR2 U185 ( .A(n120), .B(data_in[6]), .Z(n97) );
  GTECH_NOT U186 ( .A(code_in[30]), .Z(n120) );
  GTECH_NOT U187 ( .A(n93), .Z(n98) );
  GTECH_XOR2 U188 ( .A(n155), .B(data_in[0]), .Z(n93) );
  GTECH_NOT U189 ( .A(code_in[24]), .Z(n155) );
endmodule

