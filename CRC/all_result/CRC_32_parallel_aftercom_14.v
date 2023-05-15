
module CRC_32_parallel ( clk, rst_n, data_in, code_in, crc32_gen );
  input [7:0] data_in;
  input [31:0] code_in;
  output [31:0] crc32_gen;
  input clk, rst_n;
  wire   N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N43, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153;

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
  GTECH_XOR2 U83 ( .A(code_in[23]), .B(n81), .Z(N43) );
  GTECH_XOR3 U84 ( .A(code_in[22]), .B(n82), .C(n83), .Z(N42) );
  GTECH_XOR3 U85 ( .A(code_in[21]), .B(n84), .C(n85), .Z(N41) );
  GTECH_XOR3 U86 ( .A(code_in[20]), .B(n86), .C(n87), .Z(N40) );
  GTECH_XOR3 U87 ( .A(code_in[19]), .B(n88), .C(n89), .Z(N39) );
  GTECH_XOR3 U88 ( .A(code_in[18]), .B(n90), .C(n91), .Z(N38) );
  GTECH_XOR3 U89 ( .A(code_in[17]), .B(n92), .C(n87), .Z(N37) );
  GTECH_XOR3 U90 ( .A(code_in[16]), .B(n82), .C(n93), .Z(N36) );
  GTECH_XOR3 U91 ( .A(code_in[15]), .B(n94), .C(n95), .Z(N35) );
  GTECH_XOR2 U92 ( .A(code_in[14]), .B(n91), .Z(N34) );
  GTECH_XOR2 U93 ( .A(code_in[13]), .B(n81), .Z(N33) );
  GTECH_XOR2 U94 ( .A(code_in[12]), .B(n83), .Z(N32) );
  GTECH_XOR2 U95 ( .A(code_in[11]), .B(n96), .Z(N31) );
  GTECH_XOR2 U96 ( .A(code_in[10]), .B(n97), .Z(N30) );
  GTECH_XOR3 U97 ( .A(code_in[9]), .B(n86), .C(n89), .Z(N29) );
  GTECH_NOT U98 ( .A(n98), .Z(n86) );
  GTECH_XOR3 U99 ( .A(code_in[30]), .B(code_in[29]), .C(n99), .Z(n98) );
  GTECH_XOR3 U100 ( .A(code_in[8]), .B(n100), .C(n101), .Z(N28) );
  GTECH_NOT U101 ( .A(n102), .Z(n101) );
  GTECH_NOT U102 ( .A(n103), .Z(n100) );
  GTECH_XOR3 U103 ( .A(code_in[7]), .B(n92), .C(n88), .Z(N27) );
  GTECH_NOT U104 ( .A(n104), .Z(n88) );
  GTECH_XOR3 U105 ( .A(code_in[31]), .B(n105), .C(n106), .Z(n104) );
  GTECH_XOR3 U106 ( .A(n85), .B(n87), .C(n107), .Z(N26) );
  GTECH_XOR3 U107 ( .A(code_in[6]), .B(n83), .C(n84), .Z(n107) );
  GTECH_NOT U108 ( .A(n108), .Z(n83) );
  GTECH_XOR2 U109 ( .A(n109), .B(data_in[4]), .Z(n108) );
  GTECH_NOT U110 ( .A(n110), .Z(n85) );
  GTECH_XOR2 U111 ( .A(n111), .B(n93), .Z(N25) );
  GTECH_XNOR4 U112 ( .A(code_in[29]), .B(n84), .C(n112), .D(code_in[5]), .Z(
        n111) );
  GTECH_XOR3 U113 ( .A(n93), .B(n113), .C(n99), .Z(N24) );
  GTECH_XOR2 U114 ( .A(n114), .B(data_in[6]), .Z(n99) );
  GTECH_XNOR4 U115 ( .A(code_in[4]), .B(n115), .C(n103), .D(data_in[4]), .Z(
        n113) );
  GTECH_XOR2 U116 ( .A(n116), .B(n117), .Z(n103) );
  GTECH_XOR2 U117 ( .A(code_in[3]), .B(n118), .Z(N23) );
  GTECH_XNOR4 U118 ( .A(code_in[2]), .B(n81), .C(n119), .D(n92), .Z(N22) );
  GTECH_NOT U119 ( .A(n120), .Z(n81) );
  GTECH_XOR2 U120 ( .A(n121), .B(data_in[5]), .Z(n120) );
  GTECH_NOT U121 ( .A(code_in[29]), .Z(n121) );
  GTECH_XNOR4 U122 ( .A(code_in[1]), .B(n117), .C(n102), .D(n93), .Z(N21) );
  GTECH_XOR2 U123 ( .A(n122), .B(data_in[5]), .Z(n102) );
  GTECH_NOT U124 ( .A(data_in[4]), .Z(n122) );
  GTECH_NOT U125 ( .A(n123), .Z(n117) );
  GTECH_XOR2 U126 ( .A(code_in[0]), .B(n118), .Z(N20) );
  GTECH_NOT U127 ( .A(n124), .Z(n118) );
  GTECH_XNOR4 U128 ( .A(n89), .B(n125), .C(data_in[0]), .D(code_in[24]), .Z(
        n124) );
  GTECH_NOT U129 ( .A(n126), .Z(n125) );
  GTECH_XOR3 U130 ( .A(n105), .B(n127), .C(n128), .Z(N19) );
  GTECH_XOR3 U131 ( .A(code_in[31]), .B(code_in[29]), .C(n92), .Z(n128) );
  GTECH_NOT U132 ( .A(n129), .Z(n105) );
  GTECH_XOR2 U133 ( .A(n114), .B(data_in[7]), .Z(n129) );
  GTECH_NOT U134 ( .A(data_in[5]), .Z(n114) );
  GTECH_XOR3 U135 ( .A(n130), .B(n93), .C(n131), .Z(N18) );
  GTECH_XOR3 U136 ( .A(n84), .B(n94), .C(n131), .Z(N17) );
  GTECH_NOT U137 ( .A(n132), .Z(n131) );
  GTECH_XOR2 U138 ( .A(n112), .B(n133), .Z(n132) );
  GTECH_NOT U139 ( .A(n106), .Z(n133) );
  GTECH_XOR2 U140 ( .A(n123), .B(data_in[4]), .Z(n106) );
  GTECH_XOR2 U141 ( .A(n109), .B(code_in[29]), .Z(n123) );
  GTECH_NOT U142 ( .A(code_in[28]), .Z(n109) );
  GTECH_XOR2 U143 ( .A(n110), .B(data_in[5]), .Z(n112) );
  GTECH_NOT U144 ( .A(n134), .Z(n84) );
  GTECH_XOR2 U145 ( .A(n135), .B(n92), .Z(n134) );
  GTECH_NOT U146 ( .A(n136), .Z(n92) );
  GTECH_XOR2 U147 ( .A(n90), .B(n127), .Z(N16) );
  GTECH_NOT U148 ( .A(n119), .Z(n127) );
  GTECH_XOR2 U149 ( .A(n116), .B(n87), .Z(n119) );
  GTECH_NOT U150 ( .A(n137), .Z(n90) );
  GTECH_XOR3 U151 ( .A(data_in[6]), .B(code_in[30]), .C(n126), .Z(n137) );
  GTECH_XNOR4 U152 ( .A(code_in[28]), .B(code_in[27]), .C(data_in[4]), .D(
        data_in[3]), .Z(n126) );
  GTECH_XOR2 U153 ( .A(n93), .B(n96), .Z(N15) );
  GTECH_NOT U154 ( .A(n138), .Z(n96) );
  GTECH_XOR2 U155 ( .A(n136), .B(n82), .Z(n138) );
  GTECH_NOT U156 ( .A(n139), .Z(n82) );
  GTECH_XOR2 U157 ( .A(n140), .B(data_in[7]), .Z(n139) );
  GTECH_NOT U158 ( .A(code_in[31]), .Z(n140) );
  GTECH_XOR2 U159 ( .A(n141), .B(data_in[3]), .Z(n136) );
  GTECH_NOT U160 ( .A(code_in[27]), .Z(n141) );
  GTECH_NOT U161 ( .A(n142), .Z(n93) );
  GTECH_XOR2 U162 ( .A(n143), .B(n87), .Z(n142) );
  GTECH_XOR2 U163 ( .A(n94), .B(n97), .Z(N14) );
  GTECH_NOT U164 ( .A(n144), .Z(n97) );
  GTECH_XOR2 U165 ( .A(n145), .B(n87), .Z(n144) );
  GTECH_NOT U166 ( .A(n146), .Z(n87) );
  GTECH_XOR2 U167 ( .A(n147), .B(data_in[2]), .Z(n146) );
  GTECH_NOT U168 ( .A(code_in[26]), .Z(n147) );
  GTECH_XOR2 U169 ( .A(n94), .B(n148), .Z(N13) );
  GTECH_NOT U170 ( .A(n145), .Z(n148) );
  GTECH_XOR2 U171 ( .A(n110), .B(n130), .Z(n145) );
  GTECH_NOT U172 ( .A(n135), .Z(n130) );
  GTECH_XOR2 U173 ( .A(n115), .B(code_in[31]), .Z(n135) );
  GTECH_XOR2 U174 ( .A(n149), .B(data_in[7]), .Z(n110) );
  GTECH_NOT U175 ( .A(data_in[6]), .Z(n149) );
  GTECH_NOT U176 ( .A(n150), .Z(n94) );
  GTECH_XOR2 U177 ( .A(n116), .B(n89), .Z(n150) );
  GTECH_NOT U178 ( .A(n143), .Z(n89) );
  GTECH_XOR2 U179 ( .A(n151), .B(data_in[1]), .Z(n143) );
  GTECH_NOT U180 ( .A(code_in[25]), .Z(n151) );
  GTECH_XOR2 U181 ( .A(n91), .B(n95), .Z(N12) );
  GTECH_NOT U182 ( .A(n152), .Z(n95) );
  GTECH_XOR2 U183 ( .A(n115), .B(data_in[6]), .Z(n152) );
  GTECH_NOT U184 ( .A(code_in[30]), .Z(n115) );
  GTECH_NOT U185 ( .A(n116), .Z(n91) );
  GTECH_XOR2 U186 ( .A(n153), .B(data_in[0]), .Z(n116) );
  GTECH_NOT U187 ( .A(code_in[24]), .Z(n153) );
endmodule

