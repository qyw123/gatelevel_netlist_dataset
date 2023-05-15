
module array_multiplier16 ( clk, I_reset_n, I_valid, I_a, I_b, O_valid, O_c );
  input [7:0] I_a;
  input [7:0] I_b;
  output [15:0] O_c;
  input clk, I_reset_n, I_valid;
  output O_valid;
  wire   N140, N141, N142, N143, N144, N145, N146, N147, N148, N149, N150,
         N151, N152, N153, N154, N155, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404;

  GTECH_FD2 O_valid_reg ( .D(I_valid), .CP(clk), .CD(I_reset_n), .Q(O_valid)
         );
  GTECH_FD2 O_c_reg_15_ ( .D(N155), .CP(clk), .CD(I_reset_n), .Q(O_c[15]) );
  GTECH_FD2 O_c_reg_14_ ( .D(N154), .CP(clk), .CD(I_reset_n), .Q(O_c[14]) );
  GTECH_FD2 O_c_reg_13_ ( .D(N153), .CP(clk), .CD(I_reset_n), .Q(O_c[13]) );
  GTECH_FD2 O_c_reg_12_ ( .D(N152), .CP(clk), .CD(I_reset_n), .Q(O_c[12]) );
  GTECH_FD2 O_c_reg_11_ ( .D(N151), .CP(clk), .CD(I_reset_n), .Q(O_c[11]) );
  GTECH_FD2 O_c_reg_10_ ( .D(N150), .CP(clk), .CD(I_reset_n), .Q(O_c[10]) );
  GTECH_FD2 O_c_reg_9_ ( .D(N149), .CP(clk), .CD(I_reset_n), .Q(O_c[9]) );
  GTECH_FD2 O_c_reg_8_ ( .D(N148), .CP(clk), .CD(I_reset_n), .Q(O_c[8]) );
  GTECH_FD2 O_c_reg_7_ ( .D(N147), .CP(clk), .CD(I_reset_n), .Q(O_c[7]) );
  GTECH_FD2 O_c_reg_6_ ( .D(N146), .CP(clk), .CD(I_reset_n), .Q(O_c[6]) );
  GTECH_FD2 O_c_reg_5_ ( .D(N145), .CP(clk), .CD(I_reset_n), .Q(O_c[5]) );
  GTECH_FD2 O_c_reg_4_ ( .D(N144), .CP(clk), .CD(I_reset_n), .Q(O_c[4]) );
  GTECH_FD2 O_c_reg_3_ ( .D(N143), .CP(clk), .CD(I_reset_n), .Q(O_c[3]) );
  GTECH_FD2 O_c_reg_2_ ( .D(N142), .CP(clk), .CD(I_reset_n), .Q(O_c[2]) );
  GTECH_FD2 O_c_reg_1_ ( .D(N141), .CP(clk), .CD(I_reset_n), .Q(O_c[1]) );
  GTECH_FD2 O_c_reg_0_ ( .D(N140), .CP(clk), .CD(I_reset_n), .Q(O_c[0]) );
  GTECH_XOR2 U75 ( .A(n83), .B(n84), .Z(N155) );
  GTECH_AND2 U76 ( .A(n85), .B(n86), .Z(n84) );
  GTECH_OAI22 U77 ( .A(n87), .B(n88), .C(n89), .D(n90), .Z(n83) );
  GTECH_XOR2 U78 ( .A(n85), .B(n86), .Z(N154) );
  GTECH_NOT U79 ( .A(n91), .Z(n86) );
  GTECH_XOR2 U80 ( .A(n89), .B(n92), .Z(n91) );
  GTECH_NOT U81 ( .A(n90), .Z(n92) );
  GTECH_OAI2N2 U82 ( .A(n93), .B(n94), .C(n95), .D(n96), .Z(n90) );
  GTECH_OR_NOT U83 ( .A(n97), .B(n94), .Z(n96) );
  GTECH_XOR2 U84 ( .A(n88), .B(n98), .Z(n89) );
  GTECH_NOT U85 ( .A(n87), .Z(n98) );
  GTECH_OAI22 U86 ( .A(n99), .B(n100), .C(n101), .D(n102), .Z(n87) );
  GTECH_NOR2 U87 ( .A(n103), .B(n104), .Z(n99) );
  GTECH_NAND2 U88 ( .A(I_b[7]), .B(I_a[7]), .Z(n88) );
  GTECH_NOT U89 ( .A(n105), .Z(n85) );
  GTECH_NAND2 U90 ( .A(n106), .B(n107), .Z(n105) );
  GTECH_XOR2 U91 ( .A(n107), .B(n106), .Z(N153) );
  GTECH_NOT U92 ( .A(n108), .Z(n106) );
  GTECH_XOR3 U93 ( .A(n93), .B(n95), .C(n94), .Z(n108) );
  GTECH_XOR3 U94 ( .A(n101), .B(n102), .C(n100), .Z(n94) );
  GTECH_OAI21 U95 ( .A(n109), .B(n110), .C(n111), .Z(n100) );
  GTECH_OAI21 U96 ( .A(n112), .B(n113), .C(n114), .Z(n111) );
  GTECH_NOT U97 ( .A(n104), .Z(n102) );
  GTECH_NAND2 U98 ( .A(I_a[7]), .B(I_b[6]), .Z(n104) );
  GTECH_NOT U99 ( .A(n103), .Z(n101) );
  GTECH_NAND2 U100 ( .A(I_b[7]), .B(I_a[6]), .Z(n103) );
  GTECH_AOI2N2 U101 ( .A(n115), .B(n116), .C(n117), .D(n118), .Z(n95) );
  GTECH_OR_NOT U102 ( .A(n119), .B(n117), .Z(n116) );
  GTECH_NOT U103 ( .A(n97), .Z(n93) );
  GTECH_NAND2 U104 ( .A(n120), .B(I_a[7]), .Z(n97) );
  GTECH_NOT U105 ( .A(n121), .Z(n107) );
  GTECH_NAND2 U106 ( .A(n122), .B(n123), .Z(n121) );
  GTECH_NOT U107 ( .A(n124), .Z(n122) );
  GTECH_XOR2 U108 ( .A(n124), .B(n125), .Z(N152) );
  GTECH_NOT U109 ( .A(n123), .Z(n125) );
  GTECH_AO22 U110 ( .A(n126), .B(n127), .C(n128), .D(n129), .Z(n123) );
  GTECH_OR2 U111 ( .A(n128), .B(n129), .Z(n127) );
  GTECH_XOR3 U112 ( .A(n130), .B(n118), .C(n117), .Z(n124) );
  GTECH_XOR2 U113 ( .A(n131), .B(n120), .Z(n117) );
  GTECH_OA22 U114 ( .A(n132), .B(n133), .C(n134), .D(n135), .Z(n120) );
  GTECH_NOR2 U115 ( .A(n136), .B(n137), .Z(n134) );
  GTECH_NAND2 U116 ( .A(I_a[7]), .B(I_b[5]), .Z(n131) );
  GTECH_NOT U117 ( .A(n119), .Z(n118) );
  GTECH_XOR3 U118 ( .A(n113), .B(n112), .C(n114), .Z(n119) );
  GTECH_OAI21 U119 ( .A(n138), .B(n139), .C(n140), .Z(n114) );
  GTECH_OAI21 U120 ( .A(n141), .B(n142), .C(n143), .Z(n140) );
  GTECH_NOT U121 ( .A(n110), .Z(n112) );
  GTECH_NAND2 U122 ( .A(I_b[6]), .B(I_a[6]), .Z(n110) );
  GTECH_NOT U123 ( .A(n109), .Z(n113) );
  GTECH_NAND2 U124 ( .A(I_b[7]), .B(I_a[5]), .Z(n109) );
  GTECH_NOT U125 ( .A(n115), .Z(n130) );
  GTECH_AO22 U126 ( .A(n144), .B(n145), .C(n146), .D(n147), .Z(n115) );
  GTECH_OR2 U127 ( .A(n147), .B(n146), .Z(n145) );
  GTECH_XOR3 U128 ( .A(n148), .B(n149), .C(n128), .Z(N151) );
  GTECH_XOR3 U129 ( .A(n150), .B(n151), .C(n146), .Z(n128) );
  GTECH_XOR3 U130 ( .A(n132), .B(n133), .C(n135), .Z(n146) );
  GTECH_OAI21 U131 ( .A(n152), .B(n153), .C(n154), .Z(n135) );
  GTECH_OAI21 U132 ( .A(n155), .B(n156), .C(n157), .Z(n154) );
  GTECH_NOT U133 ( .A(n137), .Z(n133) );
  GTECH_NAND2 U134 ( .A(I_a[7]), .B(I_b[4]), .Z(n137) );
  GTECH_NOT U135 ( .A(n136), .Z(n132) );
  GTECH_NAND2 U136 ( .A(I_a[6]), .B(I_b[5]), .Z(n136) );
  GTECH_NOT U137 ( .A(n147), .Z(n151) );
  GTECH_XOR3 U138 ( .A(n142), .B(n141), .C(n143), .Z(n147) );
  GTECH_OAI21 U139 ( .A(n158), .B(n159), .C(n160), .Z(n143) );
  GTECH_OAI21 U140 ( .A(n161), .B(n162), .C(n163), .Z(n160) );
  GTECH_NOT U141 ( .A(n139), .Z(n141) );
  GTECH_NAND2 U142 ( .A(I_b[6]), .B(I_a[5]), .Z(n139) );
  GTECH_NOT U143 ( .A(n138), .Z(n142) );
  GTECH_NAND2 U144 ( .A(I_b[7]), .B(I_a[4]), .Z(n138) );
  GTECH_NOT U145 ( .A(n144), .Z(n150) );
  GTECH_AO22 U146 ( .A(n164), .B(n165), .C(n166), .D(n167), .Z(n144) );
  GTECH_OR2 U147 ( .A(n167), .B(n166), .Z(n165) );
  GTECH_NOT U148 ( .A(n129), .Z(n149) );
  GTECH_OAI22 U149 ( .A(n168), .B(n169), .C(n170), .D(n171), .Z(n129) );
  GTECH_NOT U150 ( .A(I_a[7]), .Z(n170) );
  GTECH_NOT U151 ( .A(n126), .Z(n148) );
  GTECH_AO22 U152 ( .A(n172), .B(n173), .C(n174), .D(n175), .Z(n126) );
  GTECH_OR2 U153 ( .A(n175), .B(n174), .Z(n173) );
  GTECH_XOR3 U154 ( .A(n176), .B(n177), .C(n174), .Z(N150) );
  GTECH_XOR3 U155 ( .A(n178), .B(n179), .C(n166), .Z(n174) );
  GTECH_XOR3 U156 ( .A(n156), .B(n155), .C(n157), .Z(n166) );
  GTECH_OAI21 U157 ( .A(n180), .B(n181), .C(n182), .Z(n157) );
  GTECH_OAI21 U158 ( .A(n183), .B(n184), .C(n185), .Z(n182) );
  GTECH_NOT U159 ( .A(n153), .Z(n155) );
  GTECH_NAND2 U160 ( .A(I_a[6]), .B(I_b[4]), .Z(n153) );
  GTECH_NOT U161 ( .A(n152), .Z(n156) );
  GTECH_NAND2 U162 ( .A(I_b[5]), .B(I_a[5]), .Z(n152) );
  GTECH_NOT U163 ( .A(n167), .Z(n179) );
  GTECH_XOR3 U164 ( .A(n162), .B(n161), .C(n163), .Z(n167) );
  GTECH_OAI21 U165 ( .A(n186), .B(n187), .C(n188), .Z(n163) );
  GTECH_OAI21 U166 ( .A(n189), .B(n190), .C(n191), .Z(n188) );
  GTECH_NOT U167 ( .A(n159), .Z(n161) );
  GTECH_NAND2 U168 ( .A(I_b[6]), .B(I_a[4]), .Z(n159) );
  GTECH_NOT U169 ( .A(n158), .Z(n162) );
  GTECH_NAND2 U170 ( .A(I_b[7]), .B(I_a[3]), .Z(n158) );
  GTECH_NOT U171 ( .A(n164), .Z(n178) );
  GTECH_AO22 U172 ( .A(n192), .B(n193), .C(n194), .D(n195), .Z(n164) );
  GTECH_OR2 U173 ( .A(n195), .B(n194), .Z(n193) );
  GTECH_NOT U174 ( .A(n175), .Z(n177) );
  GTECH_XOR2 U175 ( .A(n169), .B(n168), .Z(n175) );
  GTECH_AND2 U176 ( .A(n196), .B(n197), .Z(n168) );
  GTECH_OR_NOT U177 ( .A(n198), .B(n199), .Z(n197) );
  GTECH_OAI21 U178 ( .A(n200), .B(n199), .C(n201), .Z(n196) );
  GTECH_XOR2 U179 ( .A(n202), .B(n171), .Z(n169) );
  GTECH_OAI22 U180 ( .A(n203), .B(n204), .C(n205), .D(n206), .Z(n171) );
  GTECH_NOR2 U181 ( .A(n207), .B(n208), .Z(n203) );
  GTECH_AND2 U182 ( .A(I_a[7]), .B(I_b[3]), .Z(n202) );
  GTECH_NOT U183 ( .A(n172), .Z(n176) );
  GTECH_OAI21 U184 ( .A(n209), .B(n210), .C(n211), .Z(n172) );
  GTECH_OAI21 U185 ( .A(n212), .B(n213), .C(n214), .Z(n211) );
  GTECH_XOR3 U186 ( .A(n215), .B(n210), .C(n213), .Z(N149) );
  GTECH_NOT U187 ( .A(n209), .Z(n213) );
  GTECH_XOR3 U188 ( .A(n200), .B(n216), .C(n199), .Z(n209) );
  GTECH_XOR3 U189 ( .A(n205), .B(n206), .C(n204), .Z(n199) );
  GTECH_OAI21 U190 ( .A(n217), .B(n218), .C(n219), .Z(n204) );
  GTECH_OAI21 U191 ( .A(n220), .B(n221), .C(n222), .Z(n219) );
  GTECH_NOT U192 ( .A(n208), .Z(n206) );
  GTECH_NAND2 U193 ( .A(I_a[7]), .B(I_b[2]), .Z(n208) );
  GTECH_NOT U194 ( .A(n207), .Z(n205) );
  GTECH_NAND2 U195 ( .A(I_a[6]), .B(I_b[3]), .Z(n207) );
  GTECH_NOT U196 ( .A(n201), .Z(n216) );
  GTECH_OAI2N2 U197 ( .A(n223), .B(n224), .C(n225), .D(n226), .Z(n201) );
  GTECH_OR_NOT U198 ( .A(n227), .B(n223), .Z(n226) );
  GTECH_NOT U199 ( .A(n198), .Z(n200) );
  GTECH_NAND2 U200 ( .A(n228), .B(I_a[7]), .Z(n198) );
  GTECH_NOT U201 ( .A(n212), .Z(n210) );
  GTECH_XOR3 U202 ( .A(n229), .B(n230), .C(n194), .Z(n212) );
  GTECH_XOR3 U203 ( .A(n184), .B(n183), .C(n185), .Z(n194) );
  GTECH_OAI21 U204 ( .A(n231), .B(n232), .C(n233), .Z(n185) );
  GTECH_OAI21 U205 ( .A(n234), .B(n235), .C(n236), .Z(n233) );
  GTECH_NOT U206 ( .A(n181), .Z(n183) );
  GTECH_NAND2 U207 ( .A(I_a[5]), .B(I_b[4]), .Z(n181) );
  GTECH_NOT U208 ( .A(n180), .Z(n184) );
  GTECH_NAND2 U209 ( .A(I_b[5]), .B(I_a[4]), .Z(n180) );
  GTECH_NOT U210 ( .A(n195), .Z(n230) );
  GTECH_XOR3 U211 ( .A(n190), .B(n189), .C(n191), .Z(n195) );
  GTECH_OAI21 U212 ( .A(n237), .B(n238), .C(n239), .Z(n191) );
  GTECH_NOT U213 ( .A(n187), .Z(n189) );
  GTECH_NAND2 U214 ( .A(I_b[6]), .B(I_a[3]), .Z(n187) );
  GTECH_NOT U215 ( .A(n186), .Z(n190) );
  GTECH_NAND2 U216 ( .A(I_b[7]), .B(I_a[2]), .Z(n186) );
  GTECH_NOT U217 ( .A(n192), .Z(n229) );
  GTECH_OAI2N2 U218 ( .A(n240), .B(n241), .C(n242), .D(n243), .Z(n192) );
  GTECH_OR_NOT U219 ( .A(n244), .B(n240), .Z(n243) );
  GTECH_NOT U220 ( .A(n214), .Z(n215) );
  GTECH_OAI2N2 U221 ( .A(n245), .B(n246), .C(n247), .D(n248), .Z(n214) );
  GTECH_NAND2 U222 ( .A(n245), .B(n246), .Z(n248) );
  GTECH_XOR3 U223 ( .A(n249), .B(n250), .C(n245), .Z(N148) );
  GTECH_XOR3 U224 ( .A(n251), .B(n224), .C(n223), .Z(n245) );
  GTECH_XOR2 U225 ( .A(n252), .B(n228), .Z(n223) );
  GTECH_OA21 U226 ( .A(n253), .B(n254), .C(n255), .Z(n228) );
  GTECH_OAI21 U227 ( .A(n256), .B(n257), .C(n258), .Z(n255) );
  GTECH_NAND2 U228 ( .A(I_a[7]), .B(I_b[1]), .Z(n252) );
  GTECH_NOT U229 ( .A(n227), .Z(n224) );
  GTECH_XOR3 U230 ( .A(n221), .B(n220), .C(n222), .Z(n227) );
  GTECH_OAI21 U231 ( .A(n259), .B(n260), .C(n261), .Z(n222) );
  GTECH_OAI21 U232 ( .A(n262), .B(n263), .C(n264), .Z(n261) );
  GTECH_NOT U233 ( .A(n218), .Z(n220) );
  GTECH_NAND2 U234 ( .A(I_a[6]), .B(I_b[2]), .Z(n218) );
  GTECH_NOT U235 ( .A(n217), .Z(n221) );
  GTECH_NAND2 U236 ( .A(I_a[5]), .B(I_b[3]), .Z(n217) );
  GTECH_NOT U237 ( .A(n225), .Z(n251) );
  GTECH_OAI2N2 U238 ( .A(n265), .B(n266), .C(n267), .D(n268), .Z(n225) );
  GTECH_OR_NOT U239 ( .A(n269), .B(n265), .Z(n268) );
  GTECH_NOT U240 ( .A(n246), .Z(n250) );
  GTECH_XOR3 U241 ( .A(n270), .B(n241), .C(n240), .Z(n246) );
  GTECH_XOR3 U242 ( .A(n271), .B(n272), .C(n239), .Z(n240) );
  GTECH_OR3 U243 ( .A(n273), .B(n274), .C(n275), .Z(n239) );
  GTECH_NOT U244 ( .A(I_b[7]), .Z(n274) );
  GTECH_NOT U245 ( .A(n238), .Z(n272) );
  GTECH_NAND2 U246 ( .A(I_b[6]), .B(I_a[2]), .Z(n238) );
  GTECH_NOT U247 ( .A(n237), .Z(n271) );
  GTECH_NAND2 U248 ( .A(I_b[7]), .B(I_a[1]), .Z(n237) );
  GTECH_NOT U249 ( .A(n244), .Z(n241) );
  GTECH_XOR3 U250 ( .A(n235), .B(n234), .C(n236), .Z(n244) );
  GTECH_OAI21 U251 ( .A(n276), .B(n277), .C(n278), .Z(n236) );
  GTECH_OAI21 U252 ( .A(n279), .B(n280), .C(n281), .Z(n278) );
  GTECH_NOT U253 ( .A(n232), .Z(n234) );
  GTECH_NAND2 U254 ( .A(I_b[4]), .B(I_a[4]), .Z(n232) );
  GTECH_NOT U255 ( .A(n231), .Z(n235) );
  GTECH_NAND2 U256 ( .A(I_b[5]), .B(I_a[3]), .Z(n231) );
  GTECH_NOT U257 ( .A(n242), .Z(n270) );
  GTECH_OAI22 U258 ( .A(n282), .B(n283), .C(n284), .D(n285), .Z(n242) );
  GTECH_AND_NOT U259 ( .A(n284), .B(n286), .Z(n282) );
  GTECH_NOT U260 ( .A(n247), .Z(n249) );
  GTECH_OAI21 U261 ( .A(n287), .B(n288), .C(n289), .Z(n247) );
  GTECH_OAI21 U262 ( .A(n290), .B(n291), .C(n292), .Z(n289) );
  GTECH_XOR3 U263 ( .A(n293), .B(n288), .C(n291), .Z(N147) );
  GTECH_NOT U264 ( .A(n287), .Z(n291) );
  GTECH_XOR3 U265 ( .A(n294), .B(n266), .C(n265), .Z(n287) );
  GTECH_XOR3 U266 ( .A(n253), .B(n254), .C(n258), .Z(n265) );
  GTECH_OAI21 U267 ( .A(n295), .B(n296), .C(n297), .Z(n258) );
  GTECH_OAI21 U268 ( .A(n298), .B(n299), .C(n300), .Z(n297) );
  GTECH_NOT U269 ( .A(n257), .Z(n254) );
  GTECH_NAND2 U270 ( .A(I_a[7]), .B(I_b[0]), .Z(n257) );
  GTECH_NOT U271 ( .A(n256), .Z(n253) );
  GTECH_NAND2 U272 ( .A(I_a[6]), .B(I_b[1]), .Z(n256) );
  GTECH_NOT U273 ( .A(n269), .Z(n266) );
  GTECH_XOR3 U274 ( .A(n263), .B(n262), .C(n264), .Z(n269) );
  GTECH_OAI21 U275 ( .A(n301), .B(n302), .C(n303), .Z(n264) );
  GTECH_OAI21 U276 ( .A(n304), .B(n305), .C(n306), .Z(n303) );
  GTECH_NOT U277 ( .A(n260), .Z(n262) );
  GTECH_NAND2 U278 ( .A(I_a[5]), .B(I_b[2]), .Z(n260) );
  GTECH_NOT U279 ( .A(n259), .Z(n263) );
  GTECH_NAND2 U280 ( .A(I_a[4]), .B(I_b[3]), .Z(n259) );
  GTECH_NOT U281 ( .A(n267), .Z(n294) );
  GTECH_OAI2N2 U282 ( .A(n307), .B(n308), .C(n309), .D(n310), .Z(n267) );
  GTECH_OR_NOT U283 ( .A(n311), .B(n307), .Z(n310) );
  GTECH_NOT U284 ( .A(n290), .Z(n288) );
  GTECH_XOR3 U285 ( .A(n312), .B(n285), .C(n284), .Z(n290) );
  GTECH_XOR2 U286 ( .A(n313), .B(n275), .Z(n284) );
  GTECH_NAND2 U287 ( .A(I_b[6]), .B(I_a[1]), .Z(n275) );
  GTECH_AND2 U288 ( .A(I_b[7]), .B(I_a[0]), .Z(n313) );
  GTECH_NOT U289 ( .A(n286), .Z(n285) );
  GTECH_XOR3 U290 ( .A(n280), .B(n279), .C(n281), .Z(n286) );
  GTECH_OAI21 U291 ( .A(n314), .B(n315), .C(n316), .Z(n281) );
  GTECH_NOT U292 ( .A(n277), .Z(n279) );
  GTECH_NAND2 U293 ( .A(I_b[4]), .B(I_a[3]), .Z(n277) );
  GTECH_NOT U294 ( .A(n276), .Z(n280) );
  GTECH_NAND2 U295 ( .A(I_b[5]), .B(I_a[2]), .Z(n276) );
  GTECH_NOT U296 ( .A(n283), .Z(n312) );
  GTECH_OR3 U297 ( .A(n317), .B(n273), .C(n318), .Z(n283) );
  GTECH_NOT U298 ( .A(I_b[6]), .Z(n318) );
  GTECH_NOT U299 ( .A(n292), .Z(n293) );
  GTECH_OAI2N2 U300 ( .A(n319), .B(n320), .C(n321), .D(n322), .Z(n292) );
  GTECH_NAND2 U301 ( .A(n319), .B(n320), .Z(n322) );
  GTECH_XOR3 U302 ( .A(n323), .B(n324), .C(n319), .Z(N146) );
  GTECH_XOR3 U303 ( .A(n325), .B(n308), .C(n307), .Z(n319) );
  GTECH_XOR3 U304 ( .A(n295), .B(n296), .C(n300), .Z(n307) );
  GTECH_OAI21 U305 ( .A(n326), .B(n327), .C(n328), .Z(n300) );
  GTECH_OAI21 U306 ( .A(n329), .B(n330), .C(n331), .Z(n328) );
  GTECH_NOT U307 ( .A(n299), .Z(n296) );
  GTECH_NAND2 U308 ( .A(I_a[6]), .B(I_b[0]), .Z(n299) );
  GTECH_NOT U309 ( .A(n298), .Z(n295) );
  GTECH_NAND2 U310 ( .A(I_a[5]), .B(I_b[1]), .Z(n298) );
  GTECH_NOT U311 ( .A(n311), .Z(n308) );
  GTECH_XOR3 U312 ( .A(n305), .B(n304), .C(n306), .Z(n311) );
  GTECH_OAI21 U313 ( .A(n332), .B(n333), .C(n334), .Z(n306) );
  GTECH_OAI21 U314 ( .A(n335), .B(n336), .C(n337), .Z(n334) );
  GTECH_NOT U315 ( .A(n302), .Z(n304) );
  GTECH_NAND2 U316 ( .A(I_a[4]), .B(I_b[2]), .Z(n302) );
  GTECH_NOT U317 ( .A(n301), .Z(n305) );
  GTECH_NAND2 U318 ( .A(I_a[3]), .B(I_b[3]), .Z(n301) );
  GTECH_NOT U319 ( .A(n309), .Z(n325) );
  GTECH_OAI2N2 U320 ( .A(n338), .B(n339), .C(n340), .D(n341), .Z(n309) );
  GTECH_OR_NOT U321 ( .A(n342), .B(n338), .Z(n341) );
  GTECH_NOT U322 ( .A(n320), .Z(n324) );
  GTECH_XOR2 U323 ( .A(n317), .B(n343), .Z(n320) );
  GTECH_AND2 U324 ( .A(I_b[6]), .B(I_a[0]), .Z(n343) );
  GTECH_XOR3 U325 ( .A(n344), .B(n345), .C(n316), .Z(n317) );
  GTECH_OR3 U326 ( .A(n273), .B(n346), .C(n347), .Z(n316) );
  GTECH_NOT U327 ( .A(I_b[5]), .Z(n346) );
  GTECH_NOT U328 ( .A(n315), .Z(n345) );
  GTECH_NAND2 U329 ( .A(I_b[4]), .B(I_a[2]), .Z(n315) );
  GTECH_NOT U330 ( .A(n314), .Z(n344) );
  GTECH_NAND2 U331 ( .A(I_b[5]), .B(I_a[1]), .Z(n314) );
  GTECH_NOT U332 ( .A(n321), .Z(n323) );
  GTECH_OAI21 U333 ( .A(n348), .B(n349), .C(n350), .Z(n321) );
  GTECH_OAI21 U334 ( .A(n351), .B(n352), .C(n353), .Z(n350) );
  GTECH_XOR3 U335 ( .A(n353), .B(n351), .C(n352), .Z(N145) );
  GTECH_NOT U336 ( .A(n348), .Z(n352) );
  GTECH_XOR3 U337 ( .A(n354), .B(n339), .C(n338), .Z(n348) );
  GTECH_XOR3 U338 ( .A(n326), .B(n327), .C(n331), .Z(n338) );
  GTECH_OAI21 U339 ( .A(n355), .B(n356), .C(n357), .Z(n331) );
  GTECH_OAI21 U340 ( .A(n358), .B(n359), .C(n360), .Z(n357) );
  GTECH_NOT U341 ( .A(n330), .Z(n327) );
  GTECH_NAND2 U342 ( .A(I_a[5]), .B(I_b[0]), .Z(n330) );
  GTECH_NOT U343 ( .A(n329), .Z(n326) );
  GTECH_NAND2 U344 ( .A(I_a[4]), .B(I_b[1]), .Z(n329) );
  GTECH_NOT U345 ( .A(n342), .Z(n339) );
  GTECH_XOR3 U346 ( .A(n336), .B(n335), .C(n337), .Z(n342) );
  GTECH_OAI21 U347 ( .A(n361), .B(n362), .C(n363), .Z(n337) );
  GTECH_NOT U348 ( .A(n333), .Z(n335) );
  GTECH_NAND2 U349 ( .A(I_a[3]), .B(I_b[2]), .Z(n333) );
  GTECH_NOT U350 ( .A(n332), .Z(n336) );
  GTECH_NAND2 U351 ( .A(I_a[2]), .B(I_b[3]), .Z(n332) );
  GTECH_NOT U352 ( .A(n340), .Z(n354) );
  GTECH_OAI2N2 U353 ( .A(n364), .B(n365), .C(n366), .D(n367), .Z(n340) );
  GTECH_NAND2 U354 ( .A(n364), .B(n365), .Z(n367) );
  GTECH_NOT U355 ( .A(n349), .Z(n351) );
  GTECH_XOR2 U356 ( .A(n368), .B(n347), .Z(n349) );
  GTECH_NAND2 U357 ( .A(I_b[4]), .B(I_a[1]), .Z(n347) );
  GTECH_AND2 U358 ( .A(I_b[5]), .B(I_a[0]), .Z(n368) );
  GTECH_NOT U359 ( .A(n369), .Z(n353) );
  GTECH_OR3 U360 ( .A(n273), .B(n370), .C(n371), .Z(n369) );
  GTECH_NOT U361 ( .A(I_b[4]), .Z(n371) );
  GTECH_NOT U362 ( .A(n372), .Z(n370) );
  GTECH_XOR2 U363 ( .A(n372), .B(n373), .Z(N144) );
  GTECH_AND2 U364 ( .A(I_b[4]), .B(I_a[0]), .Z(n373) );
  GTECH_XOR3 U365 ( .A(n374), .B(n375), .C(n364), .Z(n372) );
  GTECH_XOR3 U366 ( .A(n376), .B(n377), .C(n363), .Z(n364) );
  GTECH_OR3 U367 ( .A(n378), .B(n273), .C(n379), .Z(n363) );
  GTECH_NOT U368 ( .A(I_b[3]), .Z(n379) );
  GTECH_NOT U369 ( .A(n362), .Z(n377) );
  GTECH_NAND2 U370 ( .A(I_a[2]), .B(I_b[2]), .Z(n362) );
  GTECH_NOT U371 ( .A(n361), .Z(n376) );
  GTECH_NAND2 U372 ( .A(I_b[3]), .B(I_a[1]), .Z(n361) );
  GTECH_NOT U373 ( .A(n365), .Z(n375) );
  GTECH_XOR3 U374 ( .A(n355), .B(n356), .C(n360), .Z(n365) );
  GTECH_OAI22 U375 ( .A(n380), .B(n381), .C(n382), .D(n383), .Z(n360) );
  GTECH_NOR2 U376 ( .A(n384), .B(n385), .Z(n380) );
  GTECH_NOT U377 ( .A(n359), .Z(n356) );
  GTECH_NAND2 U378 ( .A(I_a[4]), .B(I_b[0]), .Z(n359) );
  GTECH_NOT U379 ( .A(n358), .Z(n355) );
  GTECH_NAND2 U380 ( .A(I_a[3]), .B(I_b[1]), .Z(n358) );
  GTECH_NOT U381 ( .A(n366), .Z(n374) );
  GTECH_OAI21 U382 ( .A(n386), .B(n387), .C(n388), .Z(n366) );
  GTECH_OAI21 U383 ( .A(n389), .B(n390), .C(n391), .Z(n388) );
  GTECH_NOT U384 ( .A(n390), .Z(n386) );
  GTECH_XOR3 U385 ( .A(n391), .B(n389), .C(n390), .Z(N143) );
  GTECH_XOR3 U386 ( .A(n382), .B(n383), .C(n381), .Z(n390) );
  GTECH_OAI21 U387 ( .A(n392), .B(n393), .C(n394), .Z(n381) );
  GTECH_NOT U388 ( .A(n385), .Z(n383) );
  GTECH_NAND2 U389 ( .A(I_a[3]), .B(I_b[0]), .Z(n385) );
  GTECH_NOT U390 ( .A(n384), .Z(n382) );
  GTECH_NAND2 U391 ( .A(I_b[1]), .B(I_a[2]), .Z(n384) );
  GTECH_NOT U392 ( .A(n387), .Z(n389) );
  GTECH_XOR2 U393 ( .A(n395), .B(n378), .Z(n387) );
  GTECH_NAND2 U394 ( .A(I_b[2]), .B(I_a[1]), .Z(n378) );
  GTECH_AND2 U395 ( .A(I_b[3]), .B(I_a[0]), .Z(n395) );
  GTECH_NOT U396 ( .A(n396), .Z(n391) );
  GTECH_OR3 U397 ( .A(n397), .B(n398), .C(n273), .Z(n396) );
  GTECH_NOT U398 ( .A(I_b[2]), .Z(n398) );
  GTECH_XOR2 U399 ( .A(n399), .B(n397), .Z(N142) );
  GTECH_XOR3 U400 ( .A(n400), .B(n401), .C(n394), .Z(n397) );
  GTECH_OR3 U401 ( .A(n273), .B(n402), .C(n403), .Z(n394) );
  GTECH_NOT U402 ( .A(I_b[1]), .Z(n403) );
  GTECH_NOT U403 ( .A(I_a[0]), .Z(n273) );
  GTECH_NOT U404 ( .A(n393), .Z(n401) );
  GTECH_NAND2 U405 ( .A(I_b[0]), .B(I_a[2]), .Z(n393) );
  GTECH_NOT U406 ( .A(n392), .Z(n400) );
  GTECH_NAND2 U407 ( .A(I_b[1]), .B(I_a[1]), .Z(n392) );
  GTECH_NAND2 U408 ( .A(I_a[0]), .B(I_b[2]), .Z(n399) );
  GTECH_XOR2 U409 ( .A(n404), .B(n402), .Z(N141) );
  GTECH_NAND2 U410 ( .A(I_b[0]), .B(I_a[1]), .Z(n402) );
  GTECH_NAND2 U411 ( .A(I_b[1]), .B(I_a[0]), .Z(n404) );
  GTECH_AND2 U412 ( .A(I_b[0]), .B(I_a[0]), .Z(N140) );
endmodule
