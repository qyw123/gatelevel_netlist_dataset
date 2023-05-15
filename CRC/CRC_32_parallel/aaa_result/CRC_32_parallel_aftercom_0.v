
module CRC_32_parallel ( clk, rst_n, data_in, code_in, crc32_gen );
  input [7:0] data_in;
  input [31:0] code_in;
  output [31:0] crc32_gen;
  input clk, rst_n;
  wire   N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N43, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149;

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
  GTECH_XOR2 U82 ( .A(code_in[23]), .B(n80), .Z(N43) );
  GTECH_XOR3 U83 ( .A(code_in[22]), .B(n81), .C(n82), .Z(N42) );
  GTECH_XOR3 U84 ( .A(code_in[21]), .B(n83), .C(n84), .Z(N41) );
  GTECH_XOR3 U85 ( .A(code_in[20]), .B(n85), .C(n86), .Z(N40) );
  GTECH_XOR3 U86 ( .A(code_in[19]), .B(n87), .C(n88), .Z(N39) );
  GTECH_XOR3 U87 ( .A(code_in[18]), .B(n89), .C(n90), .Z(N38) );
  GTECH_XOR3 U88 ( .A(code_in[17]), .B(n91), .C(n86), .Z(N37) );
  GTECH_XOR3 U89 ( .A(code_in[16]), .B(n81), .C(n92), .Z(N36) );
  GTECH_XOR3 U90 ( .A(code_in[15]), .B(n93), .C(n94), .Z(N35) );
  GTECH_XOR2 U91 ( .A(code_in[14]), .B(n90), .Z(N34) );
  GTECH_XOR2 U92 ( .A(code_in[13]), .B(n80), .Z(N33) );
  GTECH_XOR2 U93 ( .A(code_in[12]), .B(n82), .Z(N32) );
  GTECH_XOR2 U94 ( .A(code_in[11]), .B(n95), .Z(N31) );
  GTECH_XOR2 U95 ( .A(code_in[10]), .B(n96), .Z(N30) );
  GTECH_XOR3 U96 ( .A(code_in[9]), .B(n85), .C(n88), .Z(N29) );
  GTECH_NOT U97 ( .A(n97), .Z(n85) );
  GTECH_XOR3 U98 ( .A(code_in[30]), .B(code_in[29]), .C(n98), .Z(n97) );
  GTECH_XOR3 U99 ( .A(code_in[8]), .B(n99), .C(n100), .Z(N28) );
  GTECH_NOT U100 ( .A(n101), .Z(n99) );
  GTECH_XOR3 U101 ( .A(code_in[7]), .B(n91), .C(n87), .Z(N27) );
  GTECH_NOT U102 ( .A(n102), .Z(n87) );
  GTECH_XOR3 U103 ( .A(code_in[31]), .B(n103), .C(n104), .Z(n102) );
  GTECH_XOR3 U104 ( .A(n84), .B(n86), .C(n105), .Z(N26) );
  GTECH_XOR3 U105 ( .A(code_in[6]), .B(n82), .C(n83), .Z(n105) );
  GTECH_NOT U106 ( .A(n106), .Z(n82) );
  GTECH_XOR2 U107 ( .A(n107), .B(data_in[4]), .Z(n106) );
  GTECH_NOT U108 ( .A(n108), .Z(n84) );
  GTECH_XOR2 U109 ( .A(n109), .B(n92), .Z(N25) );
  GTECH_XOR4 U110 ( .A(code_in[29]), .B(code_in[5]), .C(n110), .D(n111), .Z(
        n109) );
  GTECH_XOR3 U111 ( .A(n92), .B(n98), .C(n112), .Z(N24) );
  GTECH_XOR4 U112 ( .A(code_in[4]), .B(code_in[30]), .C(n101), .D(data_in[4]), 
        .Z(n112) );
  GTECH_XOR2 U113 ( .A(n113), .B(n114), .Z(n101) );
  GTECH_XOR2 U114 ( .A(n115), .B(data_in[6]), .Z(n98) );
  GTECH_XOR2 U115 ( .A(code_in[3]), .B(n116), .Z(N23) );
  GTECH_XOR4 U116 ( .A(n91), .B(n117), .C(code_in[2]), .D(n80), .Z(N22) );
  GTECH_NOT U117 ( .A(n118), .Z(n80) );
  GTECH_XOR2 U118 ( .A(n119), .B(data_in[5]), .Z(n118) );
  GTECH_NOT U119 ( .A(code_in[29]), .Z(n119) );
  GTECH_XOR4 U120 ( .A(n92), .B(n100), .C(code_in[1]), .D(n114), .Z(N21) );
  GTECH_NOT U121 ( .A(n120), .Z(n114) );
  GTECH_NOT U122 ( .A(n121), .Z(n100) );
  GTECH_XOR2 U123 ( .A(n122), .B(data_in[5]), .Z(n121) );
  GTECH_NOT U124 ( .A(data_in[4]), .Z(n122) );
  GTECH_XOR2 U125 ( .A(code_in[0]), .B(n116), .Z(N20) );
  GTECH_NOT U126 ( .A(n123), .Z(n116) );
  GTECH_XOR4 U127 ( .A(data_in[0]), .B(code_in[24]), .C(n124), .D(n88), .Z(
        n123) );
  GTECH_XOR3 U128 ( .A(n103), .B(n117), .C(n125), .Z(N19) );
  GTECH_XOR3 U129 ( .A(code_in[31]), .B(code_in[29]), .C(n91), .Z(n125) );
  GTECH_NOT U130 ( .A(n126), .Z(n103) );
  GTECH_XOR2 U131 ( .A(n115), .B(data_in[7]), .Z(n126) );
  GTECH_NOT U132 ( .A(data_in[5]), .Z(n115) );
  GTECH_XOR3 U133 ( .A(n127), .B(n92), .C(n128), .Z(N18) );
  GTECH_XOR3 U134 ( .A(n83), .B(n93), .C(n128), .Z(N17) );
  GTECH_NOT U135 ( .A(n129), .Z(n128) );
  GTECH_XOR2 U136 ( .A(n111), .B(n130), .Z(n129) );
  GTECH_NOT U137 ( .A(n104), .Z(n130) );
  GTECH_XOR2 U138 ( .A(n120), .B(data_in[4]), .Z(n104) );
  GTECH_XOR2 U139 ( .A(n107), .B(code_in[29]), .Z(n120) );
  GTECH_NOT U140 ( .A(code_in[28]), .Z(n107) );
  GTECH_XOR2 U141 ( .A(n108), .B(data_in[5]), .Z(n111) );
  GTECH_NOT U142 ( .A(n110), .Z(n83) );
  GTECH_XOR2 U143 ( .A(n131), .B(n91), .Z(n110) );
  GTECH_NOT U144 ( .A(n132), .Z(n91) );
  GTECH_XOR2 U145 ( .A(n89), .B(n117), .Z(N16) );
  GTECH_NOT U146 ( .A(n133), .Z(n117) );
  GTECH_XOR2 U147 ( .A(n113), .B(n86), .Z(n133) );
  GTECH_NOT U148 ( .A(n134), .Z(n89) );
  GTECH_XOR3 U149 ( .A(data_in[6]), .B(code_in[30]), .C(n124), .Z(n134) );
  GTECH_XOR4 U150 ( .A(data_in[4]), .B(data_in[3]), .C(n135), .D(code_in[28]), 
        .Z(n124) );
  GTECH_XOR2 U151 ( .A(n92), .B(n95), .Z(N15) );
  GTECH_NOT U152 ( .A(n136), .Z(n95) );
  GTECH_XOR2 U153 ( .A(n132), .B(n81), .Z(n136) );
  GTECH_NOT U154 ( .A(n137), .Z(n81) );
  GTECH_XOR2 U155 ( .A(n138), .B(data_in[7]), .Z(n137) );
  GTECH_NOT U156 ( .A(code_in[31]), .Z(n138) );
  GTECH_XOR2 U157 ( .A(n135), .B(data_in[3]), .Z(n132) );
  GTECH_NOT U158 ( .A(code_in[27]), .Z(n135) );
  GTECH_NOT U159 ( .A(n139), .Z(n92) );
  GTECH_XOR2 U160 ( .A(n140), .B(n86), .Z(n139) );
  GTECH_XOR2 U161 ( .A(n93), .B(n96), .Z(N14) );
  GTECH_NOT U162 ( .A(n141), .Z(n96) );
  GTECH_XOR2 U163 ( .A(n142), .B(n86), .Z(n141) );
  GTECH_NOT U164 ( .A(n143), .Z(n86) );
  GTECH_XNOR2 U165 ( .A(data_in[2]), .B(code_in[26]), .Z(n143) );
  GTECH_XOR2 U166 ( .A(n93), .B(n144), .Z(N13) );
  GTECH_NOT U167 ( .A(n142), .Z(n144) );
  GTECH_XOR2 U168 ( .A(n108), .B(n127), .Z(n142) );
  GTECH_NOT U169 ( .A(n131), .Z(n127) );
  GTECH_XOR2 U170 ( .A(n145), .B(code_in[31]), .Z(n131) );
  GTECH_XOR2 U171 ( .A(n146), .B(data_in[7]), .Z(n108) );
  GTECH_NOT U172 ( .A(data_in[6]), .Z(n146) );
  GTECH_NOT U173 ( .A(n147), .Z(n93) );
  GTECH_XOR2 U174 ( .A(n113), .B(n88), .Z(n147) );
  GTECH_NOT U175 ( .A(n140), .Z(n88) );
  GTECH_XNOR2 U176 ( .A(data_in[1]), .B(code_in[25]), .Z(n140) );
  GTECH_XOR2 U177 ( .A(n90), .B(n94), .Z(N12) );
  GTECH_NOT U178 ( .A(n148), .Z(n94) );
  GTECH_XOR2 U179 ( .A(n145), .B(data_in[6]), .Z(n148) );
  GTECH_NOT U180 ( .A(code_in[30]), .Z(n145) );
  GTECH_NOT U181 ( .A(n113), .Z(n90) );
  GTECH_XOR2 U182 ( .A(n149), .B(data_in[0]), .Z(n113) );
  GTECH_NOT U183 ( .A(code_in[24]), .Z(n149) );
endmodule

