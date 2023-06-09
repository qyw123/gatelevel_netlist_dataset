
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
         n401, n402;

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
  GTECH_OAI22 U82 ( .A(n93), .B(n94), .C(n95), .D(n96), .Z(n90) );
  GTECH_AND_NOT U83 ( .A(n96), .B(n97), .Z(n93) );
  GTECH_XOR2 U84 ( .A(n88), .B(n98), .Z(n89) );
  GTECH_NOT U85 ( .A(n87), .Z(n98) );
  GTECH_OAI22 U86 ( .A(n99), .B(n100), .C(n101), .D(n102), .Z(n87) );
  GTECH_NOR2 U87 ( .A(n103), .B(n104), .Z(n99) );
  GTECH_NAND2 U88 ( .A(I_b[7]), .B(I_a[7]), .Z(n88) );
  GTECH_NOT U89 ( .A(n105), .Z(n85) );
  GTECH_NAND2 U90 ( .A(n106), .B(n107), .Z(n105) );
  GTECH_XOR2 U91 ( .A(n107), .B(n106), .Z(N153) );
  GTECH_NOT U92 ( .A(n108), .Z(n106) );
  GTECH_XOR3 U93 ( .A(n95), .B(n109), .C(n96), .Z(n108) );
  GTECH_XOR3 U94 ( .A(n101), .B(n102), .C(n100), .Z(n96) );
  GTECH_OAI21 U95 ( .A(n110), .B(n111), .C(n112), .Z(n100) );
  GTECH_OAI21 U96 ( .A(n113), .B(n114), .C(n115), .Z(n112) );
  GTECH_NOT U97 ( .A(n104), .Z(n102) );
  GTECH_NAND2 U98 ( .A(I_a[7]), .B(I_b[6]), .Z(n104) );
  GTECH_NOT U99 ( .A(n103), .Z(n101) );
  GTECH_NAND2 U100 ( .A(I_b[7]), .B(I_a[6]), .Z(n103) );
  GTECH_NOT U101 ( .A(n94), .Z(n109) );
  GTECH_OAI2N2 U102 ( .A(n116), .B(n117), .C(n118), .D(n119), .Z(n94) );
  GTECH_OR_NOT U103 ( .A(n120), .B(n116), .Z(n119) );
  GTECH_NOT U104 ( .A(n97), .Z(n95) );
  GTECH_NAND2 U105 ( .A(n121), .B(I_a[7]), .Z(n97) );
  GTECH_NOT U106 ( .A(n122), .Z(n107) );
  GTECH_NAND2 U107 ( .A(n123), .B(n124), .Z(n122) );
  GTECH_NOT U108 ( .A(n125), .Z(n123) );
  GTECH_XOR2 U109 ( .A(n125), .B(n126), .Z(N152) );
  GTECH_NOT U110 ( .A(n124), .Z(n126) );
  GTECH_AO22 U111 ( .A(n127), .B(n128), .C(n129), .D(n130), .Z(n124) );
  GTECH_OR2 U112 ( .A(n129), .B(n130), .Z(n128) );
  GTECH_XOR3 U113 ( .A(n131), .B(n117), .C(n116), .Z(n125) );
  GTECH_XOR2 U114 ( .A(n132), .B(n121), .Z(n116) );
  GTECH_OA22 U115 ( .A(n133), .B(n134), .C(n135), .D(n136), .Z(n121) );
  GTECH_NOR2 U116 ( .A(n137), .B(n138), .Z(n135) );
  GTECH_NAND2 U117 ( .A(I_a[7]), .B(I_b[5]), .Z(n132) );
  GTECH_NOT U118 ( .A(n120), .Z(n117) );
  GTECH_XOR3 U119 ( .A(n114), .B(n113), .C(n115), .Z(n120) );
  GTECH_OAI21 U120 ( .A(n139), .B(n140), .C(n141), .Z(n115) );
  GTECH_OAI21 U121 ( .A(n142), .B(n143), .C(n144), .Z(n141) );
  GTECH_NOT U122 ( .A(n111), .Z(n113) );
  GTECH_NAND2 U123 ( .A(I_b[6]), .B(I_a[6]), .Z(n111) );
  GTECH_NOT U124 ( .A(n110), .Z(n114) );
  GTECH_NAND2 U125 ( .A(I_b[7]), .B(I_a[5]), .Z(n110) );
  GTECH_NOT U126 ( .A(n118), .Z(n131) );
  GTECH_AO22 U127 ( .A(n145), .B(n146), .C(n147), .D(n148), .Z(n118) );
  GTECH_OR2 U128 ( .A(n148), .B(n147), .Z(n146) );
  GTECH_XOR3 U129 ( .A(n149), .B(n150), .C(n129), .Z(N151) );
  GTECH_XOR3 U130 ( .A(n151), .B(n152), .C(n147), .Z(n129) );
  GTECH_XOR3 U131 ( .A(n133), .B(n134), .C(n136), .Z(n147) );
  GTECH_OAI21 U132 ( .A(n153), .B(n154), .C(n155), .Z(n136) );
  GTECH_OAI21 U133 ( .A(n156), .B(n157), .C(n158), .Z(n155) );
  GTECH_NOT U134 ( .A(n138), .Z(n134) );
  GTECH_NAND2 U135 ( .A(I_a[7]), .B(I_b[4]), .Z(n138) );
  GTECH_NOT U136 ( .A(n137), .Z(n133) );
  GTECH_NAND2 U137 ( .A(I_a[6]), .B(I_b[5]), .Z(n137) );
  GTECH_NOT U138 ( .A(n148), .Z(n152) );
  GTECH_XOR3 U139 ( .A(n143), .B(n142), .C(n144), .Z(n148) );
  GTECH_OAI21 U140 ( .A(n159), .B(n160), .C(n161), .Z(n144) );
  GTECH_OAI21 U141 ( .A(n162), .B(n163), .C(n164), .Z(n161) );
  GTECH_NOT U142 ( .A(n140), .Z(n142) );
  GTECH_NAND2 U143 ( .A(I_b[6]), .B(I_a[5]), .Z(n140) );
  GTECH_NOT U144 ( .A(n139), .Z(n143) );
  GTECH_NAND2 U145 ( .A(I_b[7]), .B(I_a[4]), .Z(n139) );
  GTECH_NOT U146 ( .A(n145), .Z(n151) );
  GTECH_AO22 U147 ( .A(n165), .B(n166), .C(n167), .D(n168), .Z(n145) );
  GTECH_OR2 U148 ( .A(n168), .B(n167), .Z(n166) );
  GTECH_NOT U149 ( .A(n130), .Z(n150) );
  GTECH_OAI22 U150 ( .A(n169), .B(n170), .C(n171), .D(n172), .Z(n130) );
  GTECH_NOT U151 ( .A(I_a[7]), .Z(n171) );
  GTECH_NOT U152 ( .A(n127), .Z(n149) );
  GTECH_AO22 U153 ( .A(n173), .B(n174), .C(n175), .D(n176), .Z(n127) );
  GTECH_OR2 U154 ( .A(n176), .B(n175), .Z(n174) );
  GTECH_XOR3 U155 ( .A(n177), .B(n178), .C(n175), .Z(N150) );
  GTECH_XOR3 U156 ( .A(n179), .B(n180), .C(n167), .Z(n175) );
  GTECH_XOR3 U157 ( .A(n157), .B(n156), .C(n158), .Z(n167) );
  GTECH_OAI21 U158 ( .A(n181), .B(n182), .C(n183), .Z(n158) );
  GTECH_OAI21 U159 ( .A(n184), .B(n185), .C(n186), .Z(n183) );
  GTECH_NOT U160 ( .A(n154), .Z(n156) );
  GTECH_NAND2 U161 ( .A(I_a[6]), .B(I_b[4]), .Z(n154) );
  GTECH_NOT U162 ( .A(n153), .Z(n157) );
  GTECH_NAND2 U163 ( .A(I_b[5]), .B(I_a[5]), .Z(n153) );
  GTECH_NOT U164 ( .A(n168), .Z(n180) );
  GTECH_XOR3 U165 ( .A(n163), .B(n162), .C(n164), .Z(n168) );
  GTECH_OAI21 U166 ( .A(n187), .B(n188), .C(n189), .Z(n164) );
  GTECH_OAI21 U167 ( .A(n190), .B(n191), .C(n192), .Z(n189) );
  GTECH_NOT U168 ( .A(n160), .Z(n162) );
  GTECH_NAND2 U169 ( .A(I_b[6]), .B(I_a[4]), .Z(n160) );
  GTECH_NOT U170 ( .A(n159), .Z(n163) );
  GTECH_NAND2 U171 ( .A(I_b[7]), .B(I_a[3]), .Z(n159) );
  GTECH_NOT U172 ( .A(n165), .Z(n179) );
  GTECH_AO22 U173 ( .A(n193), .B(n194), .C(n195), .D(n196), .Z(n165) );
  GTECH_OR2 U174 ( .A(n196), .B(n195), .Z(n194) );
  GTECH_NOT U175 ( .A(n176), .Z(n178) );
  GTECH_XOR2 U176 ( .A(n170), .B(n169), .Z(n176) );
  GTECH_AND2 U177 ( .A(n197), .B(n198), .Z(n169) );
  GTECH_OR_NOT U178 ( .A(n199), .B(n200), .Z(n198) );
  GTECH_OAI21 U179 ( .A(n201), .B(n200), .C(n202), .Z(n197) );
  GTECH_XOR2 U180 ( .A(n203), .B(n172), .Z(n170) );
  GTECH_OAI22 U181 ( .A(n204), .B(n205), .C(n206), .D(n207), .Z(n172) );
  GTECH_NOR2 U182 ( .A(n208), .B(n209), .Z(n204) );
  GTECH_AND2 U183 ( .A(I_a[7]), .B(I_b[3]), .Z(n203) );
  GTECH_NOT U184 ( .A(n173), .Z(n177) );
  GTECH_OAI21 U185 ( .A(n210), .B(n211), .C(n212), .Z(n173) );
  GTECH_OAI21 U186 ( .A(n213), .B(n214), .C(n215), .Z(n212) );
  GTECH_XOR3 U187 ( .A(n216), .B(n211), .C(n214), .Z(N149) );
  GTECH_NOT U188 ( .A(n210), .Z(n214) );
  GTECH_XOR3 U189 ( .A(n201), .B(n217), .C(n200), .Z(n210) );
  GTECH_XOR3 U190 ( .A(n206), .B(n207), .C(n205), .Z(n200) );
  GTECH_OAI21 U191 ( .A(n218), .B(n219), .C(n220), .Z(n205) );
  GTECH_OAI21 U192 ( .A(n221), .B(n222), .C(n223), .Z(n220) );
  GTECH_NOT U193 ( .A(n209), .Z(n207) );
  GTECH_NAND2 U194 ( .A(I_a[7]), .B(I_b[2]), .Z(n209) );
  GTECH_NOT U195 ( .A(n208), .Z(n206) );
  GTECH_NAND2 U196 ( .A(I_a[6]), .B(I_b[3]), .Z(n208) );
  GTECH_NOT U197 ( .A(n202), .Z(n217) );
  GTECH_OAI2N2 U198 ( .A(n224), .B(n225), .C(n226), .D(n227), .Z(n202) );
  GTECH_OR_NOT U199 ( .A(n228), .B(n224), .Z(n227) );
  GTECH_NOT U200 ( .A(n199), .Z(n201) );
  GTECH_NAND2 U201 ( .A(n229), .B(I_a[7]), .Z(n199) );
  GTECH_NOT U202 ( .A(n213), .Z(n211) );
  GTECH_XOR3 U203 ( .A(n230), .B(n231), .C(n195), .Z(n213) );
  GTECH_XOR3 U204 ( .A(n185), .B(n184), .C(n186), .Z(n195) );
  GTECH_OAI21 U205 ( .A(n232), .B(n233), .C(n234), .Z(n186) );
  GTECH_OAI21 U206 ( .A(n235), .B(n236), .C(n237), .Z(n234) );
  GTECH_NOT U207 ( .A(n182), .Z(n184) );
  GTECH_NAND2 U208 ( .A(I_a[5]), .B(I_b[4]), .Z(n182) );
  GTECH_NOT U209 ( .A(n181), .Z(n185) );
  GTECH_NAND2 U210 ( .A(I_b[5]), .B(I_a[4]), .Z(n181) );
  GTECH_NOT U211 ( .A(n196), .Z(n231) );
  GTECH_XOR3 U212 ( .A(n191), .B(n190), .C(n192), .Z(n196) );
  GTECH_OAI21 U213 ( .A(n238), .B(n239), .C(n240), .Z(n192) );
  GTECH_NOT U214 ( .A(n188), .Z(n190) );
  GTECH_NAND2 U215 ( .A(I_b[6]), .B(I_a[3]), .Z(n188) );
  GTECH_NOT U216 ( .A(n187), .Z(n191) );
  GTECH_NAND2 U217 ( .A(I_b[7]), .B(I_a[2]), .Z(n187) );
  GTECH_NOT U218 ( .A(n193), .Z(n230) );
  GTECH_OAI2N2 U219 ( .A(n241), .B(n242), .C(n243), .D(n244), .Z(n193) );
  GTECH_OR_NOT U220 ( .A(n245), .B(n241), .Z(n244) );
  GTECH_NOT U221 ( .A(n215), .Z(n216) );
  GTECH_OAI2N2 U222 ( .A(n246), .B(n247), .C(n248), .D(n249), .Z(n215) );
  GTECH_NAND2 U223 ( .A(n246), .B(n247), .Z(n249) );
  GTECH_XOR3 U224 ( .A(n250), .B(n251), .C(n246), .Z(N148) );
  GTECH_XOR3 U225 ( .A(n252), .B(n225), .C(n224), .Z(n246) );
  GTECH_XOR2 U226 ( .A(n253), .B(n229), .Z(n224) );
  GTECH_OA21 U227 ( .A(n254), .B(n255), .C(n256), .Z(n229) );
  GTECH_OAI21 U228 ( .A(n257), .B(n258), .C(n259), .Z(n256) );
  GTECH_NAND2 U229 ( .A(I_a[7]), .B(I_b[1]), .Z(n253) );
  GTECH_NOT U230 ( .A(n228), .Z(n225) );
  GTECH_XOR3 U231 ( .A(n222), .B(n221), .C(n223), .Z(n228) );
  GTECH_OAI21 U232 ( .A(n260), .B(n261), .C(n262), .Z(n223) );
  GTECH_OAI21 U233 ( .A(n263), .B(n264), .C(n265), .Z(n262) );
  GTECH_NOT U234 ( .A(n219), .Z(n221) );
  GTECH_NAND2 U235 ( .A(I_a[6]), .B(I_b[2]), .Z(n219) );
  GTECH_NOT U236 ( .A(n218), .Z(n222) );
  GTECH_NAND2 U237 ( .A(I_a[5]), .B(I_b[3]), .Z(n218) );
  GTECH_NOT U238 ( .A(n226), .Z(n252) );
  GTECH_OAI2N2 U239 ( .A(n266), .B(n267), .C(n268), .D(n269), .Z(n226) );
  GTECH_OR_NOT U240 ( .A(n270), .B(n266), .Z(n269) );
  GTECH_NOT U241 ( .A(n247), .Z(n251) );
  GTECH_XOR3 U242 ( .A(n271), .B(n242), .C(n241), .Z(n247) );
  GTECH_XOR3 U243 ( .A(n272), .B(n273), .C(n240), .Z(n241) );
  GTECH_NAND3 U244 ( .A(I_b[7]), .B(I_a[0]), .C(n274), .Z(n240) );
  GTECH_NOT U245 ( .A(n239), .Z(n273) );
  GTECH_NAND2 U246 ( .A(I_b[6]), .B(I_a[2]), .Z(n239) );
  GTECH_NOT U247 ( .A(n238), .Z(n272) );
  GTECH_NAND2 U248 ( .A(I_b[7]), .B(I_a[1]), .Z(n238) );
  GTECH_NOT U249 ( .A(n245), .Z(n242) );
  GTECH_XOR3 U250 ( .A(n236), .B(n235), .C(n237), .Z(n245) );
  GTECH_OAI21 U251 ( .A(n275), .B(n276), .C(n277), .Z(n237) );
  GTECH_OAI21 U252 ( .A(n278), .B(n279), .C(n280), .Z(n277) );
  GTECH_NOT U253 ( .A(n233), .Z(n235) );
  GTECH_NAND2 U254 ( .A(I_b[4]), .B(I_a[4]), .Z(n233) );
  GTECH_NOT U255 ( .A(n232), .Z(n236) );
  GTECH_NAND2 U256 ( .A(I_b[5]), .B(I_a[3]), .Z(n232) );
  GTECH_NOT U257 ( .A(n243), .Z(n271) );
  GTECH_OAI22 U258 ( .A(n281), .B(n282), .C(n283), .D(n284), .Z(n243) );
  GTECH_AND_NOT U259 ( .A(n283), .B(n285), .Z(n281) );
  GTECH_NOT U260 ( .A(n248), .Z(n250) );
  GTECH_OAI21 U261 ( .A(n286), .B(n287), .C(n288), .Z(n248) );
  GTECH_OAI21 U262 ( .A(n289), .B(n290), .C(n291), .Z(n288) );
  GTECH_XOR3 U263 ( .A(n292), .B(n287), .C(n290), .Z(N147) );
  GTECH_NOT U264 ( .A(n286), .Z(n290) );
  GTECH_XOR3 U265 ( .A(n293), .B(n267), .C(n266), .Z(n286) );
  GTECH_XOR3 U266 ( .A(n254), .B(n255), .C(n259), .Z(n266) );
  GTECH_OAI21 U267 ( .A(n294), .B(n295), .C(n296), .Z(n259) );
  GTECH_OAI21 U268 ( .A(n297), .B(n298), .C(n299), .Z(n296) );
  GTECH_NOT U269 ( .A(n258), .Z(n255) );
  GTECH_NAND2 U270 ( .A(I_a[7]), .B(I_b[0]), .Z(n258) );
  GTECH_NOT U271 ( .A(n257), .Z(n254) );
  GTECH_NAND2 U272 ( .A(I_a[6]), .B(I_b[1]), .Z(n257) );
  GTECH_NOT U273 ( .A(n270), .Z(n267) );
  GTECH_XOR3 U274 ( .A(n264), .B(n263), .C(n265), .Z(n270) );
  GTECH_OAI21 U275 ( .A(n300), .B(n301), .C(n302), .Z(n265) );
  GTECH_OAI21 U276 ( .A(n303), .B(n304), .C(n305), .Z(n302) );
  GTECH_NOT U277 ( .A(n261), .Z(n263) );
  GTECH_NAND2 U278 ( .A(I_a[5]), .B(I_b[2]), .Z(n261) );
  GTECH_NOT U279 ( .A(n260), .Z(n264) );
  GTECH_NAND2 U280 ( .A(I_a[4]), .B(I_b[3]), .Z(n260) );
  GTECH_NOT U281 ( .A(n268), .Z(n293) );
  GTECH_OAI2N2 U282 ( .A(n306), .B(n307), .C(n308), .D(n309), .Z(n268) );
  GTECH_OR_NOT U283 ( .A(n310), .B(n306), .Z(n309) );
  GTECH_NOT U284 ( .A(n289), .Z(n287) );
  GTECH_XOR3 U285 ( .A(n311), .B(n284), .C(n283), .Z(n289) );
  GTECH_XOR2 U286 ( .A(n312), .B(n274), .Z(n283) );
  GTECH_NOT U287 ( .A(n313), .Z(n274) );
  GTECH_NAND2 U288 ( .A(I_b[6]), .B(I_a[1]), .Z(n313) );
  GTECH_NAND2 U289 ( .A(I_b[7]), .B(I_a[0]), .Z(n312) );
  GTECH_NOT U290 ( .A(n285), .Z(n284) );
  GTECH_XOR3 U291 ( .A(n279), .B(n278), .C(n280), .Z(n285) );
  GTECH_OAI21 U292 ( .A(n314), .B(n315), .C(n316), .Z(n280) );
  GTECH_NOT U293 ( .A(n276), .Z(n278) );
  GTECH_NAND2 U294 ( .A(I_b[4]), .B(I_a[3]), .Z(n276) );
  GTECH_NOT U295 ( .A(n275), .Z(n279) );
  GTECH_NAND2 U296 ( .A(I_b[5]), .B(I_a[2]), .Z(n275) );
  GTECH_NOT U297 ( .A(n282), .Z(n311) );
  GTECH_NAND3 U298 ( .A(I_a[0]), .B(n317), .C(I_b[6]), .Z(n282) );
  GTECH_NOT U299 ( .A(n318), .Z(n317) );
  GTECH_NOT U300 ( .A(n291), .Z(n292) );
  GTECH_OAI2N2 U301 ( .A(n319), .B(n320), .C(n321), .D(n322), .Z(n291) );
  GTECH_NAND2 U302 ( .A(n319), .B(n320), .Z(n322) );
  GTECH_XOR3 U303 ( .A(n323), .B(n324), .C(n319), .Z(N146) );
  GTECH_XOR3 U304 ( .A(n325), .B(n307), .C(n306), .Z(n319) );
  GTECH_XOR3 U305 ( .A(n294), .B(n295), .C(n299), .Z(n306) );
  GTECH_OAI21 U306 ( .A(n326), .B(n327), .C(n328), .Z(n299) );
  GTECH_OAI21 U307 ( .A(n329), .B(n330), .C(n331), .Z(n328) );
  GTECH_NOT U308 ( .A(n298), .Z(n295) );
  GTECH_NAND2 U309 ( .A(I_a[6]), .B(I_b[0]), .Z(n298) );
  GTECH_NOT U310 ( .A(n297), .Z(n294) );
  GTECH_NAND2 U311 ( .A(I_a[5]), .B(I_b[1]), .Z(n297) );
  GTECH_NOT U312 ( .A(n310), .Z(n307) );
  GTECH_XOR3 U313 ( .A(n304), .B(n303), .C(n305), .Z(n310) );
  GTECH_OAI21 U314 ( .A(n332), .B(n333), .C(n334), .Z(n305) );
  GTECH_OAI21 U315 ( .A(n335), .B(n336), .C(n337), .Z(n334) );
  GTECH_NOT U316 ( .A(n301), .Z(n303) );
  GTECH_NAND2 U317 ( .A(I_a[4]), .B(I_b[2]), .Z(n301) );
  GTECH_NOT U318 ( .A(n300), .Z(n304) );
  GTECH_NAND2 U319 ( .A(I_a[3]), .B(I_b[3]), .Z(n300) );
  GTECH_NOT U320 ( .A(n308), .Z(n325) );
  GTECH_OAI2N2 U321 ( .A(n338), .B(n339), .C(n340), .D(n341), .Z(n308) );
  GTECH_OR_NOT U322 ( .A(n342), .B(n338), .Z(n341) );
  GTECH_NOT U323 ( .A(n320), .Z(n324) );
  GTECH_XOR2 U324 ( .A(n318), .B(n343), .Z(n320) );
  GTECH_AND2 U325 ( .A(I_b[6]), .B(I_a[0]), .Z(n343) );
  GTECH_XOR3 U326 ( .A(n344), .B(n345), .C(n316), .Z(n318) );
  GTECH_NAND3 U327 ( .A(I_b[5]), .B(I_a[0]), .C(n346), .Z(n316) );
  GTECH_NOT U328 ( .A(n315), .Z(n345) );
  GTECH_NAND2 U329 ( .A(I_b[4]), .B(I_a[2]), .Z(n315) );
  GTECH_NOT U330 ( .A(n314), .Z(n344) );
  GTECH_NAND2 U331 ( .A(I_b[5]), .B(I_a[1]), .Z(n314) );
  GTECH_NOT U332 ( .A(n321), .Z(n323) );
  GTECH_OAI21 U333 ( .A(n347), .B(n348), .C(n349), .Z(n321) );
  GTECH_OAI21 U334 ( .A(n350), .B(n351), .C(n352), .Z(n349) );
  GTECH_XOR3 U335 ( .A(n352), .B(n350), .C(n351), .Z(N145) );
  GTECH_NOT U336 ( .A(n347), .Z(n351) );
  GTECH_XOR3 U337 ( .A(n353), .B(n339), .C(n338), .Z(n347) );
  GTECH_XOR3 U338 ( .A(n326), .B(n327), .C(n331), .Z(n338) );
  GTECH_OAI21 U339 ( .A(n354), .B(n355), .C(n356), .Z(n331) );
  GTECH_OAI21 U340 ( .A(n357), .B(n358), .C(n359), .Z(n356) );
  GTECH_NOT U341 ( .A(n330), .Z(n327) );
  GTECH_NAND2 U342 ( .A(I_a[5]), .B(I_b[0]), .Z(n330) );
  GTECH_NOT U343 ( .A(n329), .Z(n326) );
  GTECH_NAND2 U344 ( .A(I_a[4]), .B(I_b[1]), .Z(n329) );
  GTECH_NOT U345 ( .A(n342), .Z(n339) );
  GTECH_XOR3 U346 ( .A(n336), .B(n335), .C(n337), .Z(n342) );
  GTECH_OAI21 U347 ( .A(n360), .B(n361), .C(n362), .Z(n337) );
  GTECH_NOT U348 ( .A(n333), .Z(n335) );
  GTECH_NAND2 U349 ( .A(I_a[3]), .B(I_b[2]), .Z(n333) );
  GTECH_NOT U350 ( .A(n332), .Z(n336) );
  GTECH_NAND2 U351 ( .A(I_a[2]), .B(I_b[3]), .Z(n332) );
  GTECH_NOT U352 ( .A(n340), .Z(n353) );
  GTECH_OAI2N2 U353 ( .A(n363), .B(n364), .C(n365), .D(n366), .Z(n340) );
  GTECH_NAND2 U354 ( .A(n363), .B(n364), .Z(n366) );
  GTECH_NOT U355 ( .A(n348), .Z(n350) );
  GTECH_XOR2 U356 ( .A(n367), .B(n346), .Z(n348) );
  GTECH_NOT U357 ( .A(n368), .Z(n346) );
  GTECH_NAND2 U358 ( .A(I_b[4]), .B(I_a[1]), .Z(n368) );
  GTECH_NAND2 U359 ( .A(I_b[5]), .B(I_a[0]), .Z(n367) );
  GTECH_NOT U360 ( .A(n369), .Z(n352) );
  GTECH_NAND3 U361 ( .A(n370), .B(I_a[0]), .C(I_b[4]), .Z(n369) );
  GTECH_XOR2 U362 ( .A(n370), .B(n371), .Z(N144) );
  GTECH_AND2 U363 ( .A(I_b[4]), .B(I_a[0]), .Z(n371) );
  GTECH_XOR3 U364 ( .A(n372), .B(n373), .C(n363), .Z(n370) );
  GTECH_XOR3 U365 ( .A(n374), .B(n375), .C(n362), .Z(n363) );
  GTECH_NAND3 U366 ( .A(I_a[0]), .B(n376), .C(I_b[3]), .Z(n362) );
  GTECH_NOT U367 ( .A(n361), .Z(n375) );
  GTECH_NAND2 U368 ( .A(I_a[2]), .B(I_b[2]), .Z(n361) );
  GTECH_NOT U369 ( .A(n360), .Z(n374) );
  GTECH_NAND2 U370 ( .A(I_b[3]), .B(I_a[1]), .Z(n360) );
  GTECH_NOT U371 ( .A(n364), .Z(n373) );
  GTECH_XOR3 U372 ( .A(n354), .B(n355), .C(n359), .Z(n364) );
  GTECH_OAI22 U373 ( .A(n377), .B(n378), .C(n379), .D(n380), .Z(n359) );
  GTECH_NOR2 U374 ( .A(n381), .B(n382), .Z(n377) );
  GTECH_NOT U375 ( .A(n358), .Z(n355) );
  GTECH_NAND2 U376 ( .A(I_a[4]), .B(I_b[0]), .Z(n358) );
  GTECH_NOT U377 ( .A(n357), .Z(n354) );
  GTECH_NAND2 U378 ( .A(I_a[3]), .B(I_b[1]), .Z(n357) );
  GTECH_NOT U379 ( .A(n365), .Z(n372) );
  GTECH_OAI21 U380 ( .A(n383), .B(n384), .C(n385), .Z(n365) );
  GTECH_OAI21 U381 ( .A(n386), .B(n387), .C(n388), .Z(n385) );
  GTECH_NOT U382 ( .A(n387), .Z(n383) );
  GTECH_XOR3 U383 ( .A(n388), .B(n386), .C(n387), .Z(N143) );
  GTECH_XOR3 U384 ( .A(n379), .B(n380), .C(n378), .Z(n387) );
  GTECH_OAI21 U385 ( .A(n389), .B(n390), .C(n391), .Z(n378) );
  GTECH_NOT U386 ( .A(n382), .Z(n380) );
  GTECH_NAND2 U387 ( .A(I_a[3]), .B(I_b[0]), .Z(n382) );
  GTECH_NOT U388 ( .A(n381), .Z(n379) );
  GTECH_NAND2 U389 ( .A(I_b[1]), .B(I_a[2]), .Z(n381) );
  GTECH_NOT U390 ( .A(n384), .Z(n386) );
  GTECH_XOR2 U391 ( .A(n392), .B(n376), .Z(n384) );
  GTECH_NOT U392 ( .A(n393), .Z(n376) );
  GTECH_NAND2 U393 ( .A(I_b[2]), .B(I_a[1]), .Z(n393) );
  GTECH_NAND2 U394 ( .A(I_b[3]), .B(I_a[0]), .Z(n392) );
  GTECH_NOT U395 ( .A(n394), .Z(n388) );
  GTECH_NAND3 U396 ( .A(I_b[2]), .B(n395), .C(I_a[0]), .Z(n394) );
  GTECH_XOR2 U397 ( .A(n396), .B(n395), .Z(N142) );
  GTECH_NOT U398 ( .A(n397), .Z(n395) );
  GTECH_XOR3 U399 ( .A(n398), .B(n399), .C(n391), .Z(n397) );
  GTECH_NAND3 U400 ( .A(n400), .B(I_a[0]), .C(I_b[1]), .Z(n391) );
  GTECH_NOT U401 ( .A(n390), .Z(n399) );
  GTECH_NAND2 U402 ( .A(I_b[0]), .B(I_a[2]), .Z(n390) );
  GTECH_NOT U403 ( .A(n389), .Z(n398) );
  GTECH_NAND2 U404 ( .A(I_b[1]), .B(I_a[1]), .Z(n389) );
  GTECH_AND2 U405 ( .A(I_a[0]), .B(I_b[2]), .Z(n396) );
  GTECH_XOR2 U406 ( .A(n400), .B(n401), .Z(N141) );
  GTECH_AND2 U407 ( .A(I_b[1]), .B(I_a[0]), .Z(n401) );
  GTECH_NOT U408 ( .A(n402), .Z(n400) );
  GTECH_NAND2 U409 ( .A(I_b[0]), .B(I_a[1]), .Z(n402) );
  GTECH_AND2 U410 ( .A(I_b[0]), .B(I_a[0]), .Z(N140) );
endmodule

