
module CRC_32_parallel ( clk, rst_n, data_in, code_in, crc32_gen );
  input [7:0] data_in;
  input [31:0] code_in;
  output [31:0] crc32_gen;
  input clk, rst_n;
  wire   N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N43, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148;

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
  GTECH_XOR2 U80 ( .A(code_in[23]), .B(n78), .Z(N43) );
  GTECH_XOR3 U81 ( .A(code_in[22]), .B(n79), .C(n80), .Z(N42) );
  GTECH_XOR3 U82 ( .A(code_in[21]), .B(n81), .C(n82), .Z(N41) );
  GTECH_XOR3 U83 ( .A(code_in[20]), .B(n83), .C(n84), .Z(N40) );
  GTECH_XOR3 U84 ( .A(code_in[19]), .B(n85), .C(n86), .Z(N39) );
  GTECH_XOR3 U85 ( .A(code_in[18]), .B(n87), .C(n88), .Z(N38) );
  GTECH_XOR3 U86 ( .A(code_in[17]), .B(n89), .C(n84), .Z(N37) );
  GTECH_XOR3 U87 ( .A(code_in[16]), .B(n79), .C(n90), .Z(N36) );
  GTECH_XOR3 U88 ( .A(code_in[15]), .B(n91), .C(n92), .Z(N35) );
  GTECH_XOR2 U89 ( .A(code_in[14]), .B(n88), .Z(N34) );
  GTECH_XOR2 U90 ( .A(code_in[13]), .B(n78), .Z(N33) );
  GTECH_XOR2 U91 ( .A(code_in[12]), .B(n80), .Z(N32) );
  GTECH_XOR2 U92 ( .A(code_in[11]), .B(n93), .Z(N31) );
  GTECH_XOR2 U93 ( .A(code_in[10]), .B(n94), .Z(N30) );
  GTECH_XOR3 U94 ( .A(code_in[9]), .B(n83), .C(n86), .Z(N29) );
  GTECH_NOT U95 ( .A(n95), .Z(n83) );
  GTECH_XOR3 U96 ( .A(code_in[30]), .B(code_in[29]), .C(n96), .Z(n95) );
  GTECH_XOR3 U97 ( .A(code_in[8]), .B(n97), .C(n98), .Z(N28) );
  GTECH_NOT U98 ( .A(n99), .Z(n98) );
  GTECH_NOT U99 ( .A(n100), .Z(n97) );
  GTECH_XOR3 U100 ( .A(code_in[7]), .B(n89), .C(n85), .Z(N27) );
  GTECH_NOT U101 ( .A(n101), .Z(n85) );
  GTECH_XOR3 U102 ( .A(code_in[31]), .B(n102), .C(n103), .Z(n101) );
  GTECH_XOR3 U103 ( .A(n82), .B(n84), .C(n104), .Z(N26) );
  GTECH_XOR3 U104 ( .A(code_in[6]), .B(n80), .C(n81), .Z(n104) );
  GTECH_NOT U105 ( .A(n105), .Z(n80) );
  GTECH_XOR2 U106 ( .A(n106), .B(data_in[4]), .Z(n105) );
  GTECH_NOT U107 ( .A(n107), .Z(n82) );
  GTECH_XOR2 U108 ( .A(n108), .B(n90), .Z(N25) );
  GTECH_XNOR4 U109 ( .A(code_in[29]), .B(n81), .C(n109), .D(code_in[5]), .Z(
        n108) );
  GTECH_XOR3 U110 ( .A(n90), .B(n110), .C(n96), .Z(N24) );
  GTECH_XOR2 U111 ( .A(n111), .B(data_in[6]), .Z(n96) );
  GTECH_XNOR4 U112 ( .A(code_in[4]), .B(n112), .C(n100), .D(data_in[4]), .Z(
        n110) );
  GTECH_XOR2 U113 ( .A(n113), .B(n114), .Z(n100) );
  GTECH_XOR2 U114 ( .A(code_in[3]), .B(n115), .Z(N23) );
  GTECH_XNOR4 U115 ( .A(code_in[2]), .B(n78), .C(n116), .D(n89), .Z(N22) );
  GTECH_NOT U116 ( .A(n117), .Z(n78) );
  GTECH_XOR2 U117 ( .A(n118), .B(data_in[5]), .Z(n117) );
  GTECH_NOT U118 ( .A(code_in[29]), .Z(n118) );
  GTECH_XNOR4 U119 ( .A(code_in[1]), .B(n114), .C(n99), .D(n90), .Z(N21) );
  GTECH_XOR2 U120 ( .A(n119), .B(data_in[5]), .Z(n99) );
  GTECH_NOT U121 ( .A(data_in[4]), .Z(n119) );
  GTECH_NOT U122 ( .A(n120), .Z(n114) );
  GTECH_XOR2 U123 ( .A(code_in[0]), .B(n115), .Z(N20) );
  GTECH_NOT U124 ( .A(n121), .Z(n115) );
  GTECH_XNOR4 U125 ( .A(n86), .B(n122), .C(data_in[0]), .D(code_in[24]), .Z(
        n121) );
  GTECH_NOT U126 ( .A(n123), .Z(n122) );
  GTECH_XOR3 U127 ( .A(n102), .B(n124), .C(n125), .Z(N19) );
  GTECH_XOR3 U128 ( .A(code_in[31]), .B(code_in[29]), .C(n89), .Z(n125) );
  GTECH_NOT U129 ( .A(n126), .Z(n102) );
  GTECH_XOR2 U130 ( .A(n111), .B(data_in[7]), .Z(n126) );
  GTECH_NOT U131 ( .A(data_in[5]), .Z(n111) );
  GTECH_XOR3 U132 ( .A(n127), .B(n90), .C(n128), .Z(N18) );
  GTECH_XOR3 U133 ( .A(n81), .B(n91), .C(n128), .Z(N17) );
  GTECH_NOT U134 ( .A(n129), .Z(n128) );
  GTECH_XOR2 U135 ( .A(n109), .B(n130), .Z(n129) );
  GTECH_NOT U136 ( .A(n103), .Z(n130) );
  GTECH_XOR2 U137 ( .A(n120), .B(data_in[4]), .Z(n103) );
  GTECH_XOR2 U138 ( .A(n106), .B(code_in[29]), .Z(n120) );
  GTECH_NOT U139 ( .A(code_in[28]), .Z(n106) );
  GTECH_XOR2 U140 ( .A(n107), .B(data_in[5]), .Z(n109) );
  GTECH_NOT U141 ( .A(n131), .Z(n81) );
  GTECH_XOR2 U142 ( .A(n132), .B(n89), .Z(n131) );
  GTECH_NOT U143 ( .A(n133), .Z(n89) );
  GTECH_XOR2 U144 ( .A(n87), .B(n124), .Z(N16) );
  GTECH_NOT U145 ( .A(n116), .Z(n124) );
  GTECH_XOR2 U146 ( .A(n113), .B(n84), .Z(n116) );
  GTECH_NOT U147 ( .A(n134), .Z(n87) );
  GTECH_XOR3 U148 ( .A(data_in[6]), .B(code_in[30]), .C(n123), .Z(n134) );
  GTECH_XNOR4 U149 ( .A(code_in[28]), .B(code_in[27]), .C(data_in[4]), .D(
        data_in[3]), .Z(n123) );
  GTECH_XOR2 U150 ( .A(n90), .B(n93), .Z(N15) );
  GTECH_NOT U151 ( .A(n135), .Z(n93) );
  GTECH_XOR2 U152 ( .A(n133), .B(n79), .Z(n135) );
  GTECH_NOT U153 ( .A(n136), .Z(n79) );
  GTECH_XOR2 U154 ( .A(n137), .B(data_in[7]), .Z(n136) );
  GTECH_NOT U155 ( .A(code_in[31]), .Z(n137) );
  GTECH_XOR2 U156 ( .A(n138), .B(data_in[3]), .Z(n133) );
  GTECH_NOT U157 ( .A(code_in[27]), .Z(n138) );
  GTECH_NOT U158 ( .A(n139), .Z(n90) );
  GTECH_XOR2 U159 ( .A(n140), .B(n84), .Z(n139) );
  GTECH_XOR2 U160 ( .A(n91), .B(n94), .Z(N14) );
  GTECH_NOT U161 ( .A(n141), .Z(n94) );
  GTECH_XOR2 U162 ( .A(n142), .B(n84), .Z(n141) );
  GTECH_NOT U163 ( .A(n143), .Z(n84) );
  GTECH_XNOR2 U164 ( .A(data_in[2]), .B(code_in[26]), .Z(n143) );
  GTECH_XOR2 U165 ( .A(n91), .B(n144), .Z(N13) );
  GTECH_NOT U166 ( .A(n142), .Z(n144) );
  GTECH_XOR2 U167 ( .A(n107), .B(n127), .Z(n142) );
  GTECH_NOT U168 ( .A(n132), .Z(n127) );
  GTECH_XOR2 U169 ( .A(n112), .B(code_in[31]), .Z(n132) );
  GTECH_XOR2 U170 ( .A(n145), .B(data_in[7]), .Z(n107) );
  GTECH_NOT U171 ( .A(data_in[6]), .Z(n145) );
  GTECH_NOT U172 ( .A(n146), .Z(n91) );
  GTECH_XOR2 U173 ( .A(n113), .B(n86), .Z(n146) );
  GTECH_NOT U174 ( .A(n140), .Z(n86) );
  GTECH_XNOR2 U175 ( .A(data_in[1]), .B(code_in[25]), .Z(n140) );
  GTECH_XOR2 U176 ( .A(n88), .B(n92), .Z(N12) );
  GTECH_NOT U177 ( .A(n147), .Z(n92) );
  GTECH_XOR2 U178 ( .A(n112), .B(data_in[6]), .Z(n147) );
  GTECH_NOT U179 ( .A(code_in[30]), .Z(n112) );
  GTECH_NOT U180 ( .A(n113), .Z(n88) );
  GTECH_XOR2 U181 ( .A(n148), .B(data_in[0]), .Z(n113) );
  GTECH_NOT U182 ( .A(code_in[24]), .Z(n148) );
endmodule

