
module CRC_32_parallel ( clk, rst_n, data_in, code_in, crc32_gen );
  input [7:0] data_in;
  input [31:0] code_in;
  output [31:0] crc32_gen;
  input clk, rst_n;
  wire   N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N43, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135;

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
  GTECH_XNOR2 U77 ( .A(code_in[23]), .B(n75), .Z(N43) );
  GTECH_XOR3 U78 ( .A(code_in[22]), .B(n76), .C(n77), .Z(N42) );
  GTECH_XOR3 U79 ( .A(code_in[21]), .B(n78), .C(n79), .Z(N41) );
  GTECH_XOR3 U80 ( .A(code_in[20]), .B(n80), .C(n81), .Z(N40) );
  GTECH_XOR3 U81 ( .A(code_in[19]), .B(n82), .C(n83), .Z(N39) );
  GTECH_XOR3 U82 ( .A(code_in[18]), .B(n84), .C(n85), .Z(N38) );
  GTECH_XOR3 U83 ( .A(code_in[17]), .B(n86), .C(n81), .Z(N37) );
  GTECH_XOR3 U84 ( .A(code_in[16]), .B(n76), .C(n87), .Z(N36) );
  GTECH_XOR3 U85 ( .A(code_in[15]), .B(n88), .C(n89), .Z(N35) );
  GTECH_XNOR2 U86 ( .A(code_in[14]), .B(n90), .Z(N34) );
  GTECH_XNOR2 U87 ( .A(code_in[13]), .B(n75), .Z(N33) );
  GTECH_XNOR2 U88 ( .A(code_in[12]), .B(n91), .Z(N32) );
  GTECH_XNOR2 U89 ( .A(code_in[11]), .B(n92), .Z(N31) );
  GTECH_XNOR2 U90 ( .A(code_in[10]), .B(n93), .Z(N30) );
  GTECH_XOR3 U91 ( .A(code_in[9]), .B(n80), .C(n83), .Z(N29) );
  GTECH_NOT U92 ( .A(n94), .Z(n80) );
  GTECH_XOR3 U93 ( .A(code_in[30]), .B(code_in[29]), .C(n95), .Z(n94) );
  GTECH_XOR3 U94 ( .A(code_in[8]), .B(n96), .C(n97), .Z(N28) );
  GTECH_NOT U95 ( .A(n98), .Z(n97) );
  GTECH_XOR3 U96 ( .A(code_in[7]), .B(n86), .C(n82), .Z(N27) );
  GTECH_NOT U97 ( .A(n99), .Z(n82) );
  GTECH_XOR3 U98 ( .A(code_in[31]), .B(n100), .C(n101), .Z(n99) );
  GTECH_NOT U99 ( .A(n102), .Z(n100) );
  GTECH_XOR3 U100 ( .A(n79), .B(n81), .C(n103), .Z(N26) );
  GTECH_XOR3 U101 ( .A(code_in[6]), .B(n77), .C(n78), .Z(n103) );
  GTECH_NOT U102 ( .A(n91), .Z(n77) );
  GTECH_XNOR2 U103 ( .A(data_in[4]), .B(code_in[28]), .Z(n91) );
  GTECH_XOR3 U104 ( .A(n87), .B(n104), .C(n105), .Z(N25) );
  GTECH_XOR3 U105 ( .A(code_in[5]), .B(code_in[29]), .C(n78), .Z(n105) );
  GTECH_XOR3 U106 ( .A(n87), .B(n95), .C(n106), .Z(N24) );
  GTECH_XNOR4 U107 ( .A(code_in[4]), .B(code_in[30]), .C(n96), .D(data_in[4]), 
        .Z(n106) );
  GTECH_NOT U108 ( .A(n107), .Z(n96) );
  GTECH_XNOR2 U109 ( .A(n108), .B(n85), .Z(n107) );
  GTECH_XNOR2 U110 ( .A(data_in[6]), .B(data_in[5]), .Z(n95) );
  GTECH_XNOR2 U111 ( .A(code_in[3]), .B(n109), .Z(N23) );
  GTECH_XNOR4 U112 ( .A(code_in[2]), .B(n110), .C(n111), .D(n86), .Z(N22) );
  GTECH_NOT U113 ( .A(n75), .Z(n110) );
  GTECH_XNOR2 U114 ( .A(data_in[5]), .B(code_in[29]), .Z(n75) );
  GTECH_XNOR4 U115 ( .A(code_in[1]), .B(n108), .C(n98), .D(n87), .Z(N21) );
  GTECH_XNOR2 U116 ( .A(data_in[5]), .B(data_in[4]), .Z(n98) );
  GTECH_XNOR2 U117 ( .A(code_in[0]), .B(n109), .Z(N20) );
  GTECH_XOR3 U118 ( .A(n112), .B(n113), .C(n114), .Z(n109) );
  GTECH_XOR3 U119 ( .A(code_in[24]), .B(n115), .C(data_in[0]), .Z(n113) );
  GTECH_XOR3 U120 ( .A(n111), .B(n116), .C(n102), .Z(N19) );
  GTECH_XNOR2 U121 ( .A(data_in[7]), .B(data_in[5]), .Z(n102) );
  GTECH_XOR3 U122 ( .A(code_in[29]), .B(n86), .C(code_in[31]), .Z(n116) );
  GTECH_XOR3 U123 ( .A(n117), .B(n87), .C(n118), .Z(N18) );
  GTECH_XOR3 U124 ( .A(n78), .B(n89), .C(n118), .Z(N17) );
  GTECH_NOT U125 ( .A(n119), .Z(n118) );
  GTECH_XNOR2 U126 ( .A(n120), .B(n104), .Z(n119) );
  GTECH_NOT U127 ( .A(n121), .Z(n104) );
  GTECH_XNOR2 U128 ( .A(data_in[5]), .B(n79), .Z(n121) );
  GTECH_NOT U129 ( .A(n101), .Z(n120) );
  GTECH_XNOR2 U130 ( .A(data_in[4]), .B(n108), .Z(n101) );
  GTECH_NOT U131 ( .A(n122), .Z(n108) );
  GTECH_XNOR2 U132 ( .A(code_in[29]), .B(code_in[28]), .Z(n122) );
  GTECH_NOT U133 ( .A(n123), .Z(n78) );
  GTECH_XNOR2 U134 ( .A(n86), .B(n117), .Z(n123) );
  GTECH_XNOR2 U135 ( .A(n84), .B(n111), .Z(N16) );
  GTECH_XNOR2 U136 ( .A(n81), .B(n85), .Z(n111) );
  GTECH_NOT U137 ( .A(n124), .Z(n84) );
  GTECH_XOR3 U138 ( .A(n125), .B(n88), .C(n112), .Z(n124) );
  GTECH_XNOR2 U139 ( .A(data_in[4]), .B(data_in[3]), .Z(n112) );
  GTECH_NOT U140 ( .A(n114), .Z(n125) );
  GTECH_XNOR2 U141 ( .A(code_in[28]), .B(code_in[27]), .Z(n114) );
  GTECH_XNOR2 U142 ( .A(n87), .B(n92), .Z(N15) );
  GTECH_XNOR2 U143 ( .A(n76), .B(n86), .Z(n92) );
  GTECH_NOT U144 ( .A(n126), .Z(n86) );
  GTECH_XNOR2 U145 ( .A(data_in[3]), .B(code_in[27]), .Z(n126) );
  GTECH_NOT U146 ( .A(n127), .Z(n76) );
  GTECH_XNOR2 U147 ( .A(data_in[7]), .B(code_in[31]), .Z(n127) );
  GTECH_NOT U148 ( .A(n128), .Z(n87) );
  GTECH_XNOR2 U149 ( .A(n81), .B(n83), .Z(n128) );
  GTECH_XNOR2 U150 ( .A(n89), .B(n93), .Z(N14) );
  GTECH_XNOR2 U151 ( .A(n81), .B(n129), .Z(n93) );
  GTECH_NOT U152 ( .A(n130), .Z(n129) );
  GTECH_NOT U153 ( .A(n131), .Z(n81) );
  GTECH_XNOR2 U154 ( .A(data_in[2]), .B(code_in[26]), .Z(n131) );
  GTECH_XNOR2 U155 ( .A(n89), .B(n130), .Z(N13) );
  GTECH_XNOR2 U156 ( .A(n117), .B(n79), .Z(n130) );
  GTECH_NOT U157 ( .A(n132), .Z(n79) );
  GTECH_XNOR2 U158 ( .A(data_in[7]), .B(data_in[6]), .Z(n132) );
  GTECH_NOT U159 ( .A(n133), .Z(n117) );
  GTECH_XNOR2 U160 ( .A(code_in[31]), .B(code_in[30]), .Z(n133) );
  GTECH_NOT U161 ( .A(n134), .Z(n89) );
  GTECH_XNOR2 U162 ( .A(n83), .B(n85), .Z(n134) );
  GTECH_NOT U163 ( .A(n90), .Z(n85) );
  GTECH_NOT U164 ( .A(n115), .Z(n83) );
  GTECH_XNOR2 U165 ( .A(data_in[1]), .B(code_in[25]), .Z(n115) );
  GTECH_XNOR2 U166 ( .A(n88), .B(n90), .Z(N12) );
  GTECH_XNOR2 U167 ( .A(data_in[0]), .B(code_in[24]), .Z(n90) );
  GTECH_NOT U168 ( .A(n135), .Z(n88) );
  GTECH_XNOR2 U169 ( .A(data_in[6]), .B(code_in[30]), .Z(n135) );
endmodule

