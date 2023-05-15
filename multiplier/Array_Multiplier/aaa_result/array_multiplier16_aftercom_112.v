
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
         n401, n402, n403, n404, n405, n406, n407, n408;

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
  GTECH_OAI21 U82 ( .A(n93), .B(n94), .C(n95), .Z(n90) );
  GTECH_OAI21 U83 ( .A(n96), .B(n97), .C(n98), .Z(n95) );
  GTECH_NOT U84 ( .A(n94), .Z(n97) );
  GTECH_XOR2 U85 ( .A(n88), .B(n99), .Z(n89) );
  GTECH_NOT U86 ( .A(n87), .Z(n99) );
  GTECH_OAI22 U87 ( .A(n100), .B(n101), .C(n102), .D(n103), .Z(n87) );
  GTECH_NOR2 U88 ( .A(n104), .B(n105), .Z(n100) );
  GTECH_NAND2 U89 ( .A(I_b[7]), .B(I_a[7]), .Z(n88) );
  GTECH_NOT U90 ( .A(n106), .Z(n85) );
  GTECH_NAND2 U91 ( .A(n107), .B(n108), .Z(n106) );
  GTECH_XOR2 U92 ( .A(n108), .B(n107), .Z(N153) );
  GTECH_NOT U93 ( .A(n109), .Z(n107) );
  GTECH_XOR3 U94 ( .A(n93), .B(n98), .C(n94), .Z(n109) );
  GTECH_XOR3 U95 ( .A(n102), .B(n103), .C(n101), .Z(n94) );
  GTECH_OAI21 U96 ( .A(n110), .B(n111), .C(n112), .Z(n101) );
  GTECH_OAI21 U97 ( .A(n113), .B(n114), .C(n115), .Z(n112) );
  GTECH_NOT U98 ( .A(n105), .Z(n103) );
  GTECH_NAND2 U99 ( .A(I_a[7]), .B(I_b[6]), .Z(n105) );
  GTECH_NOT U100 ( .A(n104), .Z(n102) );
  GTECH_NAND2 U101 ( .A(I_b[7]), .B(I_a[6]), .Z(n104) );
  GTECH_OA21 U102 ( .A(n116), .B(n117), .C(n118), .Z(n98) );
  GTECH_OAI21 U103 ( .A(n119), .B(n120), .C(n121), .Z(n118) );
  GTECH_NOT U104 ( .A(n116), .Z(n120) );
  GTECH_NOT U105 ( .A(n96), .Z(n93) );
  GTECH_NAND2 U106 ( .A(n122), .B(I_a[7]), .Z(n96) );
  GTECH_NOT U107 ( .A(n123), .Z(n108) );
  GTECH_NAND2 U108 ( .A(n124), .B(n125), .Z(n123) );
  GTECH_NOT U109 ( .A(n126), .Z(n124) );
  GTECH_XOR2 U110 ( .A(n126), .B(n127), .Z(N152) );
  GTECH_NOT U111 ( .A(n125), .Z(n127) );
  GTECH_AO22 U112 ( .A(n128), .B(n129), .C(n130), .D(n131), .Z(n125) );
  GTECH_OR2 U113 ( .A(n130), .B(n131), .Z(n129) );
  GTECH_XOR3 U114 ( .A(n132), .B(n117), .C(n116), .Z(n126) );
  GTECH_XOR2 U115 ( .A(n133), .B(n122), .Z(n116) );
  GTECH_OA22 U116 ( .A(n134), .B(n135), .C(n136), .D(n137), .Z(n122) );
  GTECH_NOR2 U117 ( .A(n138), .B(n139), .Z(n136) );
  GTECH_NAND2 U118 ( .A(I_a[7]), .B(I_b[5]), .Z(n133) );
  GTECH_NOT U119 ( .A(n119), .Z(n117) );
  GTECH_XOR3 U120 ( .A(n114), .B(n113), .C(n115), .Z(n119) );
  GTECH_OAI21 U121 ( .A(n140), .B(n141), .C(n142), .Z(n115) );
  GTECH_OAI21 U122 ( .A(n143), .B(n144), .C(n145), .Z(n142) );
  GTECH_NOT U123 ( .A(n111), .Z(n113) );
  GTECH_NAND2 U124 ( .A(I_b[6]), .B(I_a[6]), .Z(n111) );
  GTECH_NOT U125 ( .A(n110), .Z(n114) );
  GTECH_NAND2 U126 ( .A(I_b[7]), .B(I_a[5]), .Z(n110) );
  GTECH_NOT U127 ( .A(n121), .Z(n132) );
  GTECH_AO22 U128 ( .A(n146), .B(n147), .C(n148), .D(n149), .Z(n121) );
  GTECH_OR2 U129 ( .A(n149), .B(n148), .Z(n147) );
  GTECH_XOR3 U130 ( .A(n150), .B(n151), .C(n130), .Z(N151) );
  GTECH_XOR3 U131 ( .A(n152), .B(n153), .C(n148), .Z(n130) );
  GTECH_XOR3 U132 ( .A(n134), .B(n135), .C(n137), .Z(n148) );
  GTECH_OAI21 U133 ( .A(n154), .B(n155), .C(n156), .Z(n137) );
  GTECH_OAI21 U134 ( .A(n157), .B(n158), .C(n159), .Z(n156) );
  GTECH_NOT U135 ( .A(n139), .Z(n135) );
  GTECH_NAND2 U136 ( .A(I_a[7]), .B(I_b[4]), .Z(n139) );
  GTECH_NOT U137 ( .A(n138), .Z(n134) );
  GTECH_NAND2 U138 ( .A(I_a[6]), .B(I_b[5]), .Z(n138) );
  GTECH_NOT U139 ( .A(n149), .Z(n153) );
  GTECH_XOR3 U140 ( .A(n144), .B(n143), .C(n145), .Z(n149) );
  GTECH_OAI21 U141 ( .A(n160), .B(n161), .C(n162), .Z(n145) );
  GTECH_OAI21 U142 ( .A(n163), .B(n164), .C(n165), .Z(n162) );
  GTECH_NOT U143 ( .A(n141), .Z(n143) );
  GTECH_NAND2 U144 ( .A(I_b[6]), .B(I_a[5]), .Z(n141) );
  GTECH_NOT U145 ( .A(n140), .Z(n144) );
  GTECH_NAND2 U146 ( .A(I_b[7]), .B(I_a[4]), .Z(n140) );
  GTECH_NOT U147 ( .A(n146), .Z(n152) );
  GTECH_AO22 U148 ( .A(n166), .B(n167), .C(n168), .D(n169), .Z(n146) );
  GTECH_OR2 U149 ( .A(n169), .B(n168), .Z(n167) );
  GTECH_NOT U150 ( .A(n131), .Z(n151) );
  GTECH_OAI22 U151 ( .A(n170), .B(n171), .C(n172), .D(n173), .Z(n131) );
  GTECH_NOT U152 ( .A(I_a[7]), .Z(n172) );
  GTECH_NOT U153 ( .A(n128), .Z(n150) );
  GTECH_AO22 U154 ( .A(n174), .B(n175), .C(n176), .D(n177), .Z(n128) );
  GTECH_OR2 U155 ( .A(n177), .B(n176), .Z(n175) );
  GTECH_XOR3 U156 ( .A(n178), .B(n179), .C(n176), .Z(N150) );
  GTECH_XOR3 U157 ( .A(n180), .B(n181), .C(n168), .Z(n176) );
  GTECH_XOR3 U158 ( .A(n158), .B(n157), .C(n159), .Z(n168) );
  GTECH_OAI21 U159 ( .A(n182), .B(n183), .C(n184), .Z(n159) );
  GTECH_OAI21 U160 ( .A(n185), .B(n186), .C(n187), .Z(n184) );
  GTECH_NOT U161 ( .A(n155), .Z(n157) );
  GTECH_NAND2 U162 ( .A(I_a[6]), .B(I_b[4]), .Z(n155) );
  GTECH_NOT U163 ( .A(n154), .Z(n158) );
  GTECH_NAND2 U164 ( .A(I_b[5]), .B(I_a[5]), .Z(n154) );
  GTECH_NOT U165 ( .A(n169), .Z(n181) );
  GTECH_XOR3 U166 ( .A(n164), .B(n163), .C(n165), .Z(n169) );
  GTECH_OAI21 U167 ( .A(n188), .B(n189), .C(n190), .Z(n165) );
  GTECH_OAI21 U168 ( .A(n191), .B(n192), .C(n193), .Z(n190) );
  GTECH_NOT U169 ( .A(n161), .Z(n163) );
  GTECH_NAND2 U170 ( .A(I_b[6]), .B(I_a[4]), .Z(n161) );
  GTECH_NOT U171 ( .A(n160), .Z(n164) );
  GTECH_NAND2 U172 ( .A(I_b[7]), .B(I_a[3]), .Z(n160) );
  GTECH_NOT U173 ( .A(n166), .Z(n180) );
  GTECH_AO22 U174 ( .A(n194), .B(n195), .C(n196), .D(n197), .Z(n166) );
  GTECH_OR2 U175 ( .A(n197), .B(n196), .Z(n195) );
  GTECH_NOT U176 ( .A(n177), .Z(n179) );
  GTECH_XOR2 U177 ( .A(n171), .B(n170), .Z(n177) );
  GTECH_OA21 U178 ( .A(n198), .B(n199), .C(n200), .Z(n170) );
  GTECH_OAI21 U179 ( .A(n201), .B(n202), .C(n203), .Z(n200) );
  GTECH_NOT U180 ( .A(n202), .Z(n199) );
  GTECH_XOR2 U181 ( .A(n204), .B(n173), .Z(n171) );
  GTECH_OAI22 U182 ( .A(n205), .B(n206), .C(n207), .D(n208), .Z(n173) );
  GTECH_NOR2 U183 ( .A(n209), .B(n210), .Z(n205) );
  GTECH_AND2 U184 ( .A(I_a[7]), .B(I_b[3]), .Z(n204) );
  GTECH_NOT U185 ( .A(n174), .Z(n178) );
  GTECH_OAI21 U186 ( .A(n211), .B(n212), .C(n213), .Z(n174) );
  GTECH_OAI21 U187 ( .A(n214), .B(n215), .C(n216), .Z(n213) );
  GTECH_XOR3 U188 ( .A(n217), .B(n212), .C(n215), .Z(N149) );
  GTECH_NOT U189 ( .A(n211), .Z(n215) );
  GTECH_XOR3 U190 ( .A(n201), .B(n218), .C(n202), .Z(n211) );
  GTECH_XOR3 U191 ( .A(n207), .B(n208), .C(n206), .Z(n202) );
  GTECH_OAI21 U192 ( .A(n219), .B(n220), .C(n221), .Z(n206) );
  GTECH_OAI21 U193 ( .A(n222), .B(n223), .C(n224), .Z(n221) );
  GTECH_NOT U194 ( .A(n210), .Z(n208) );
  GTECH_NAND2 U195 ( .A(I_a[7]), .B(I_b[2]), .Z(n210) );
  GTECH_NOT U196 ( .A(n209), .Z(n207) );
  GTECH_NAND2 U197 ( .A(I_a[6]), .B(I_b[3]), .Z(n209) );
  GTECH_NOT U198 ( .A(n203), .Z(n218) );
  GTECH_OAI21 U199 ( .A(n225), .B(n226), .C(n227), .Z(n203) );
  GTECH_OAI21 U200 ( .A(n228), .B(n229), .C(n230), .Z(n227) );
  GTECH_NOT U201 ( .A(n225), .Z(n229) );
  GTECH_NOT U202 ( .A(n198), .Z(n201) );
  GTECH_NAND2 U203 ( .A(n231), .B(I_a[7]), .Z(n198) );
  GTECH_NOT U204 ( .A(n214), .Z(n212) );
  GTECH_XOR3 U205 ( .A(n232), .B(n233), .C(n196), .Z(n214) );
  GTECH_XOR3 U206 ( .A(n186), .B(n185), .C(n187), .Z(n196) );
  GTECH_OAI21 U207 ( .A(n234), .B(n235), .C(n236), .Z(n187) );
  GTECH_OAI21 U208 ( .A(n237), .B(n238), .C(n239), .Z(n236) );
  GTECH_NOT U209 ( .A(n183), .Z(n185) );
  GTECH_NAND2 U210 ( .A(I_a[5]), .B(I_b[4]), .Z(n183) );
  GTECH_NOT U211 ( .A(n182), .Z(n186) );
  GTECH_NAND2 U212 ( .A(I_b[5]), .B(I_a[4]), .Z(n182) );
  GTECH_NOT U213 ( .A(n197), .Z(n233) );
  GTECH_XOR3 U214 ( .A(n192), .B(n191), .C(n193), .Z(n197) );
  GTECH_OAI21 U215 ( .A(n240), .B(n241), .C(n242), .Z(n193) );
  GTECH_NOT U216 ( .A(n189), .Z(n191) );
  GTECH_NAND2 U217 ( .A(I_b[6]), .B(I_a[3]), .Z(n189) );
  GTECH_NOT U218 ( .A(n188), .Z(n192) );
  GTECH_NAND2 U219 ( .A(I_b[7]), .B(I_a[2]), .Z(n188) );
  GTECH_NOT U220 ( .A(n194), .Z(n232) );
  GTECH_OAI21 U221 ( .A(n243), .B(n244), .C(n245), .Z(n194) );
  GTECH_OAI21 U222 ( .A(n246), .B(n247), .C(n248), .Z(n245) );
  GTECH_NOT U223 ( .A(n243), .Z(n247) );
  GTECH_NOT U224 ( .A(n216), .Z(n217) );
  GTECH_OAI2N2 U225 ( .A(n249), .B(n250), .C(n251), .D(n252), .Z(n216) );
  GTECH_NAND2 U226 ( .A(n249), .B(n250), .Z(n252) );
  GTECH_XOR3 U227 ( .A(n253), .B(n254), .C(n249), .Z(N148) );
  GTECH_XOR3 U228 ( .A(n255), .B(n226), .C(n225), .Z(n249) );
  GTECH_XOR2 U229 ( .A(n256), .B(n231), .Z(n225) );
  GTECH_OA21 U230 ( .A(n257), .B(n258), .C(n259), .Z(n231) );
  GTECH_OAI21 U231 ( .A(n260), .B(n261), .C(n262), .Z(n259) );
  GTECH_NAND2 U232 ( .A(I_a[7]), .B(I_b[1]), .Z(n256) );
  GTECH_NOT U233 ( .A(n228), .Z(n226) );
  GTECH_XOR3 U234 ( .A(n223), .B(n222), .C(n224), .Z(n228) );
  GTECH_OAI21 U235 ( .A(n263), .B(n264), .C(n265), .Z(n224) );
  GTECH_OAI21 U236 ( .A(n266), .B(n267), .C(n268), .Z(n265) );
  GTECH_NOT U237 ( .A(n220), .Z(n222) );
  GTECH_NAND2 U238 ( .A(I_a[6]), .B(I_b[2]), .Z(n220) );
  GTECH_NOT U239 ( .A(n219), .Z(n223) );
  GTECH_NAND2 U240 ( .A(I_a[5]), .B(I_b[3]), .Z(n219) );
  GTECH_NOT U241 ( .A(n230), .Z(n255) );
  GTECH_OAI21 U242 ( .A(n269), .B(n270), .C(n271), .Z(n230) );
  GTECH_OAI21 U243 ( .A(n272), .B(n273), .C(n274), .Z(n271) );
  GTECH_NOT U244 ( .A(n269), .Z(n273) );
  GTECH_NOT U245 ( .A(n250), .Z(n254) );
  GTECH_XOR3 U246 ( .A(n275), .B(n244), .C(n243), .Z(n250) );
  GTECH_XOR3 U247 ( .A(n276), .B(n277), .C(n242), .Z(n243) );
  GTECH_NAND3 U248 ( .A(I_b[7]), .B(I_a[0]), .C(n278), .Z(n242) );
  GTECH_NOT U249 ( .A(n241), .Z(n277) );
  GTECH_NAND2 U250 ( .A(I_b[6]), .B(I_a[2]), .Z(n241) );
  GTECH_NOT U251 ( .A(n240), .Z(n276) );
  GTECH_NAND2 U252 ( .A(I_b[7]), .B(I_a[1]), .Z(n240) );
  GTECH_NOT U253 ( .A(n246), .Z(n244) );
  GTECH_XOR3 U254 ( .A(n238), .B(n237), .C(n239), .Z(n246) );
  GTECH_OAI21 U255 ( .A(n279), .B(n280), .C(n281), .Z(n239) );
  GTECH_OAI21 U256 ( .A(n282), .B(n283), .C(n284), .Z(n281) );
  GTECH_NOT U257 ( .A(n235), .Z(n237) );
  GTECH_NAND2 U258 ( .A(I_b[4]), .B(I_a[4]), .Z(n235) );
  GTECH_NOT U259 ( .A(n234), .Z(n238) );
  GTECH_NAND2 U260 ( .A(I_b[5]), .B(I_a[3]), .Z(n234) );
  GTECH_NOT U261 ( .A(n248), .Z(n275) );
  GTECH_OAI22 U262 ( .A(n285), .B(n286), .C(n287), .D(n288), .Z(n248) );
  GTECH_AND_NOT U263 ( .A(n287), .B(n289), .Z(n285) );
  GTECH_NOT U264 ( .A(n251), .Z(n253) );
  GTECH_OAI21 U265 ( .A(n290), .B(n291), .C(n292), .Z(n251) );
  GTECH_OAI21 U266 ( .A(n293), .B(n294), .C(n295), .Z(n292) );
  GTECH_XOR3 U267 ( .A(n296), .B(n291), .C(n294), .Z(N147) );
  GTECH_NOT U268 ( .A(n290), .Z(n294) );
  GTECH_XOR3 U269 ( .A(n297), .B(n270), .C(n269), .Z(n290) );
  GTECH_XOR3 U270 ( .A(n257), .B(n258), .C(n262), .Z(n269) );
  GTECH_OAI21 U271 ( .A(n298), .B(n299), .C(n300), .Z(n262) );
  GTECH_OAI21 U272 ( .A(n301), .B(n302), .C(n303), .Z(n300) );
  GTECH_NOT U273 ( .A(n261), .Z(n258) );
  GTECH_NAND2 U274 ( .A(I_a[7]), .B(I_b[0]), .Z(n261) );
  GTECH_NOT U275 ( .A(n260), .Z(n257) );
  GTECH_NAND2 U276 ( .A(I_a[6]), .B(I_b[1]), .Z(n260) );
  GTECH_NOT U277 ( .A(n272), .Z(n270) );
  GTECH_XOR3 U278 ( .A(n267), .B(n266), .C(n268), .Z(n272) );
  GTECH_OAI21 U279 ( .A(n304), .B(n305), .C(n306), .Z(n268) );
  GTECH_OAI21 U280 ( .A(n307), .B(n308), .C(n309), .Z(n306) );
  GTECH_NOT U281 ( .A(n264), .Z(n266) );
  GTECH_NAND2 U282 ( .A(I_a[5]), .B(I_b[2]), .Z(n264) );
  GTECH_NOT U283 ( .A(n263), .Z(n267) );
  GTECH_NAND2 U284 ( .A(I_a[4]), .B(I_b[3]), .Z(n263) );
  GTECH_NOT U285 ( .A(n274), .Z(n297) );
  GTECH_OAI21 U286 ( .A(n310), .B(n311), .C(n312), .Z(n274) );
  GTECH_OAI21 U287 ( .A(n313), .B(n314), .C(n315), .Z(n312) );
  GTECH_NOT U288 ( .A(n310), .Z(n314) );
  GTECH_NOT U289 ( .A(n293), .Z(n291) );
  GTECH_XOR3 U290 ( .A(n316), .B(n288), .C(n287), .Z(n293) );
  GTECH_XOR2 U291 ( .A(n317), .B(n278), .Z(n287) );
  GTECH_NOT U292 ( .A(n318), .Z(n278) );
  GTECH_NAND2 U293 ( .A(I_b[6]), .B(I_a[1]), .Z(n318) );
  GTECH_NAND2 U294 ( .A(I_b[7]), .B(I_a[0]), .Z(n317) );
  GTECH_NOT U295 ( .A(n289), .Z(n288) );
  GTECH_XOR3 U296 ( .A(n283), .B(n282), .C(n284), .Z(n289) );
  GTECH_OAI21 U297 ( .A(n319), .B(n320), .C(n321), .Z(n284) );
  GTECH_NOT U298 ( .A(n280), .Z(n282) );
  GTECH_NAND2 U299 ( .A(I_b[4]), .B(I_a[3]), .Z(n280) );
  GTECH_NOT U300 ( .A(n279), .Z(n283) );
  GTECH_NAND2 U301 ( .A(I_b[5]), .B(I_a[2]), .Z(n279) );
  GTECH_NOT U302 ( .A(n286), .Z(n316) );
  GTECH_NAND3 U303 ( .A(I_a[0]), .B(n322), .C(I_b[6]), .Z(n286) );
  GTECH_NOT U304 ( .A(n323), .Z(n322) );
  GTECH_NOT U305 ( .A(n295), .Z(n296) );
  GTECH_OAI2N2 U306 ( .A(n324), .B(n325), .C(n326), .D(n327), .Z(n295) );
  GTECH_NAND2 U307 ( .A(n324), .B(n325), .Z(n327) );
  GTECH_XOR3 U308 ( .A(n328), .B(n329), .C(n324), .Z(N146) );
  GTECH_XOR3 U309 ( .A(n330), .B(n311), .C(n310), .Z(n324) );
  GTECH_XOR3 U310 ( .A(n298), .B(n299), .C(n303), .Z(n310) );
  GTECH_OAI21 U311 ( .A(n331), .B(n332), .C(n333), .Z(n303) );
  GTECH_OAI21 U312 ( .A(n334), .B(n335), .C(n336), .Z(n333) );
  GTECH_NOT U313 ( .A(n302), .Z(n299) );
  GTECH_NAND2 U314 ( .A(I_a[6]), .B(I_b[0]), .Z(n302) );
  GTECH_NOT U315 ( .A(n301), .Z(n298) );
  GTECH_NAND2 U316 ( .A(I_a[5]), .B(I_b[1]), .Z(n301) );
  GTECH_NOT U317 ( .A(n313), .Z(n311) );
  GTECH_XOR3 U318 ( .A(n308), .B(n307), .C(n309), .Z(n313) );
  GTECH_OAI21 U319 ( .A(n337), .B(n338), .C(n339), .Z(n309) );
  GTECH_OAI21 U320 ( .A(n340), .B(n341), .C(n342), .Z(n339) );
  GTECH_NOT U321 ( .A(n305), .Z(n307) );
  GTECH_NAND2 U322 ( .A(I_a[4]), .B(I_b[2]), .Z(n305) );
  GTECH_NOT U323 ( .A(n304), .Z(n308) );
  GTECH_NAND2 U324 ( .A(I_a[3]), .B(I_b[3]), .Z(n304) );
  GTECH_NOT U325 ( .A(n315), .Z(n330) );
  GTECH_OAI21 U326 ( .A(n343), .B(n344), .C(n345), .Z(n315) );
  GTECH_OAI21 U327 ( .A(n346), .B(n347), .C(n348), .Z(n345) );
  GTECH_NOT U328 ( .A(n343), .Z(n347) );
  GTECH_NOT U329 ( .A(n325), .Z(n329) );
  GTECH_XOR2 U330 ( .A(n323), .B(n349), .Z(n325) );
  GTECH_AND2 U331 ( .A(I_b[6]), .B(I_a[0]), .Z(n349) );
  GTECH_XOR3 U332 ( .A(n350), .B(n351), .C(n321), .Z(n323) );
  GTECH_NAND3 U333 ( .A(I_b[5]), .B(I_a[0]), .C(n352), .Z(n321) );
  GTECH_NOT U334 ( .A(n320), .Z(n351) );
  GTECH_NAND2 U335 ( .A(I_b[4]), .B(I_a[2]), .Z(n320) );
  GTECH_NOT U336 ( .A(n319), .Z(n350) );
  GTECH_NAND2 U337 ( .A(I_b[5]), .B(I_a[1]), .Z(n319) );
  GTECH_NOT U338 ( .A(n326), .Z(n328) );
  GTECH_OAI21 U339 ( .A(n353), .B(n354), .C(n355), .Z(n326) );
  GTECH_OAI21 U340 ( .A(n356), .B(n357), .C(n358), .Z(n355) );
  GTECH_XOR3 U341 ( .A(n358), .B(n356), .C(n357), .Z(N145) );
  GTECH_NOT U342 ( .A(n353), .Z(n357) );
  GTECH_XOR3 U343 ( .A(n359), .B(n344), .C(n343), .Z(n353) );
  GTECH_XOR3 U344 ( .A(n331), .B(n332), .C(n336), .Z(n343) );
  GTECH_OAI21 U345 ( .A(n360), .B(n361), .C(n362), .Z(n336) );
  GTECH_OAI21 U346 ( .A(n363), .B(n364), .C(n365), .Z(n362) );
  GTECH_NOT U347 ( .A(n335), .Z(n332) );
  GTECH_NAND2 U348 ( .A(I_a[5]), .B(I_b[0]), .Z(n335) );
  GTECH_NOT U349 ( .A(n334), .Z(n331) );
  GTECH_NAND2 U350 ( .A(I_a[4]), .B(I_b[1]), .Z(n334) );
  GTECH_NOT U351 ( .A(n346), .Z(n344) );
  GTECH_XOR3 U352 ( .A(n341), .B(n340), .C(n342), .Z(n346) );
  GTECH_OAI21 U353 ( .A(n366), .B(n367), .C(n368), .Z(n342) );
  GTECH_NOT U354 ( .A(n338), .Z(n340) );
  GTECH_NAND2 U355 ( .A(I_a[3]), .B(I_b[2]), .Z(n338) );
  GTECH_NOT U356 ( .A(n337), .Z(n341) );
  GTECH_NAND2 U357 ( .A(I_a[2]), .B(I_b[3]), .Z(n337) );
  GTECH_NOT U358 ( .A(n348), .Z(n359) );
  GTECH_OAI2N2 U359 ( .A(n369), .B(n370), .C(n371), .D(n372), .Z(n348) );
  GTECH_NAND2 U360 ( .A(n369), .B(n370), .Z(n372) );
  GTECH_NOT U361 ( .A(n354), .Z(n356) );
  GTECH_XOR2 U362 ( .A(n373), .B(n352), .Z(n354) );
  GTECH_NOT U363 ( .A(n374), .Z(n352) );
  GTECH_NAND2 U364 ( .A(I_b[4]), .B(I_a[1]), .Z(n374) );
  GTECH_NAND2 U365 ( .A(I_b[5]), .B(I_a[0]), .Z(n373) );
  GTECH_NOT U366 ( .A(n375), .Z(n358) );
  GTECH_NAND3 U367 ( .A(n376), .B(I_a[0]), .C(I_b[4]), .Z(n375) );
  GTECH_XOR2 U368 ( .A(n376), .B(n377), .Z(N144) );
  GTECH_AND2 U369 ( .A(I_b[4]), .B(I_a[0]), .Z(n377) );
  GTECH_XOR3 U370 ( .A(n378), .B(n379), .C(n369), .Z(n376) );
  GTECH_XOR3 U371 ( .A(n380), .B(n381), .C(n368), .Z(n369) );
  GTECH_NAND3 U372 ( .A(I_a[0]), .B(n382), .C(I_b[3]), .Z(n368) );
  GTECH_NOT U373 ( .A(n367), .Z(n381) );
  GTECH_NAND2 U374 ( .A(I_a[2]), .B(I_b[2]), .Z(n367) );
  GTECH_NOT U375 ( .A(n366), .Z(n380) );
  GTECH_NAND2 U376 ( .A(I_b[3]), .B(I_a[1]), .Z(n366) );
  GTECH_NOT U377 ( .A(n370), .Z(n379) );
  GTECH_XOR3 U378 ( .A(n360), .B(n361), .C(n365), .Z(n370) );
  GTECH_OAI22 U379 ( .A(n383), .B(n384), .C(n385), .D(n386), .Z(n365) );
  GTECH_NOR2 U380 ( .A(n387), .B(n388), .Z(n383) );
  GTECH_NOT U381 ( .A(n364), .Z(n361) );
  GTECH_NAND2 U382 ( .A(I_a[4]), .B(I_b[0]), .Z(n364) );
  GTECH_NOT U383 ( .A(n363), .Z(n360) );
  GTECH_NAND2 U384 ( .A(I_a[3]), .B(I_b[1]), .Z(n363) );
  GTECH_NOT U385 ( .A(n371), .Z(n378) );
  GTECH_OAI21 U386 ( .A(n389), .B(n390), .C(n391), .Z(n371) );
  GTECH_OAI21 U387 ( .A(n392), .B(n393), .C(n394), .Z(n391) );
  GTECH_NOT U388 ( .A(n393), .Z(n389) );
  GTECH_XOR3 U389 ( .A(n394), .B(n392), .C(n393), .Z(N143) );
  GTECH_XOR3 U390 ( .A(n385), .B(n386), .C(n384), .Z(n393) );
  GTECH_OAI21 U391 ( .A(n395), .B(n396), .C(n397), .Z(n384) );
  GTECH_NOT U392 ( .A(n388), .Z(n386) );
  GTECH_NAND2 U393 ( .A(I_a[3]), .B(I_b[0]), .Z(n388) );
  GTECH_NOT U394 ( .A(n387), .Z(n385) );
  GTECH_NAND2 U395 ( .A(I_b[1]), .B(I_a[2]), .Z(n387) );
  GTECH_NOT U396 ( .A(n390), .Z(n392) );
  GTECH_XOR2 U397 ( .A(n398), .B(n382), .Z(n390) );
  GTECH_NOT U398 ( .A(n399), .Z(n382) );
  GTECH_NAND2 U399 ( .A(I_b[2]), .B(I_a[1]), .Z(n399) );
  GTECH_NAND2 U400 ( .A(I_b[3]), .B(I_a[0]), .Z(n398) );
  GTECH_NOT U401 ( .A(n400), .Z(n394) );
  GTECH_NAND3 U402 ( .A(I_b[2]), .B(n401), .C(I_a[0]), .Z(n400) );
  GTECH_XOR2 U403 ( .A(n402), .B(n401), .Z(N142) );
  GTECH_NOT U404 ( .A(n403), .Z(n401) );
  GTECH_XOR3 U405 ( .A(n404), .B(n405), .C(n397), .Z(n403) );
  GTECH_NAND3 U406 ( .A(n406), .B(I_a[0]), .C(I_b[1]), .Z(n397) );
  GTECH_NOT U407 ( .A(n396), .Z(n405) );
  GTECH_NAND2 U408 ( .A(I_b[0]), .B(I_a[2]), .Z(n396) );
  GTECH_NOT U409 ( .A(n395), .Z(n404) );
  GTECH_NAND2 U410 ( .A(I_b[1]), .B(I_a[1]), .Z(n395) );
  GTECH_AND2 U411 ( .A(I_a[0]), .B(I_b[2]), .Z(n402) );
  GTECH_XOR2 U412 ( .A(n406), .B(n407), .Z(N141) );
  GTECH_AND2 U413 ( .A(I_b[1]), .B(I_a[0]), .Z(n407) );
  GTECH_NOT U414 ( .A(n408), .Z(n406) );
  GTECH_NAND2 U415 ( .A(I_b[0]), .B(I_a[1]), .Z(n408) );
  GTECH_AND2 U416 ( .A(I_b[0]), .B(I_a[0]), .Z(N140) );
endmodule

