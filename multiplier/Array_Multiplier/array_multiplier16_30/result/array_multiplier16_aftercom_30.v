
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
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414;

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
  GTECH_NOT U75 ( .A(n83), .Z(N155) );
  GTECH_AOI222 U76 ( .A(n84), .B(n85), .C(n86), .D(n87), .E(n88), .F(n89), .Z(
        n83) );
  GTECH_NOT U77 ( .A(n90), .Z(n88) );
  GTECH_XOR2 U78 ( .A(n84), .B(n85), .Z(N154) );
  GTECH_NOT U79 ( .A(n91), .Z(n85) );
  GTECH_XOR2 U80 ( .A(n86), .B(n92), .Z(n91) );
  GTECH_NOT U81 ( .A(n87), .Z(n92) );
  GTECH_OAI21 U82 ( .A(n93), .B(n94), .C(n95), .Z(n87) );
  GTECH_OAI21 U83 ( .A(n96), .B(n97), .C(n98), .Z(n95) );
  GTECH_NOT U84 ( .A(n93), .Z(n97) );
  GTECH_XOR2 U85 ( .A(n90), .B(n99), .Z(n86) );
  GTECH_NOT U86 ( .A(n89), .Z(n99) );
  GTECH_OAI21 U87 ( .A(n100), .B(n101), .C(n102), .Z(n89) );
  GTECH_OAI21 U88 ( .A(n103), .B(n104), .C(n105), .Z(n102) );
  GTECH_NOT U89 ( .A(n104), .Z(n100) );
  GTECH_NAND2 U90 ( .A(I_b[7]), .B(I_a[7]), .Z(n90) );
  GTECH_NOT U91 ( .A(n106), .Z(n84) );
  GTECH_NAND2 U92 ( .A(n107), .B(n108), .Z(n106) );
  GTECH_XOR2 U93 ( .A(n108), .B(n107), .Z(N153) );
  GTECH_NOT U94 ( .A(n109), .Z(n107) );
  GTECH_XOR3 U95 ( .A(n96), .B(n93), .C(n98), .Z(n109) );
  GTECH_XOR3 U96 ( .A(n103), .B(n105), .C(n104), .Z(n98) );
  GTECH_OAI21 U97 ( .A(n110), .B(n111), .C(n112), .Z(n104) );
  GTECH_OAI21 U98 ( .A(n113), .B(n114), .C(n115), .Z(n112) );
  GTECH_NOT U99 ( .A(n114), .Z(n110) );
  GTECH_NOT U100 ( .A(n116), .Z(n105) );
  GTECH_NAND2 U101 ( .A(I_b[7]), .B(I_a[6]), .Z(n116) );
  GTECH_NOT U102 ( .A(n101), .Z(n103) );
  GTECH_NAND2 U103 ( .A(I_a[7]), .B(I_b[6]), .Z(n101) );
  GTECH_ADD_ABC U104 ( .A(n117), .B(n118), .C(n119), .COUT(n93) );
  GTECH_NOT U105 ( .A(n120), .Z(n119) );
  GTECH_XOR2 U106 ( .A(n121), .B(n122), .Z(n118) );
  GTECH_AND2 U107 ( .A(I_a[7]), .B(I_b[5]), .Z(n122) );
  GTECH_NOT U108 ( .A(n94), .Z(n96) );
  GTECH_NAND2 U109 ( .A(I_a[7]), .B(n123), .Z(n94) );
  GTECH_NOT U110 ( .A(n124), .Z(n108) );
  GTECH_NAND2 U111 ( .A(n125), .B(n126), .Z(n124) );
  GTECH_NOT U112 ( .A(n127), .Z(n126) );
  GTECH_XOR2 U113 ( .A(n127), .B(n128), .Z(N152) );
  GTECH_NOT U114 ( .A(n125), .Z(n128) );
  GTECH_XOR4 U115 ( .A(n129), .B(n121), .C(n117), .D(n120), .Z(n125) );
  GTECH_XOR3 U116 ( .A(n113), .B(n115), .C(n114), .Z(n120) );
  GTECH_OAI21 U117 ( .A(n130), .B(n131), .C(n132), .Z(n114) );
  GTECH_OAI21 U118 ( .A(n133), .B(n134), .C(n135), .Z(n132) );
  GTECH_NOT U119 ( .A(n134), .Z(n130) );
  GTECH_NOT U120 ( .A(n136), .Z(n115) );
  GTECH_NAND2 U121 ( .A(I_b[7]), .B(I_a[5]), .Z(n136) );
  GTECH_NOT U122 ( .A(n111), .Z(n113) );
  GTECH_NAND2 U123 ( .A(I_b[6]), .B(I_a[6]), .Z(n111) );
  GTECH_ADD_ABC U124 ( .A(n137), .B(n138), .C(n139), .COUT(n117) );
  GTECH_NOT U125 ( .A(n140), .Z(n139) );
  GTECH_XOR3 U126 ( .A(n141), .B(n142), .C(n143), .Z(n138) );
  GTECH_NOT U127 ( .A(n123), .Z(n121) );
  GTECH_OAI21 U128 ( .A(n143), .B(n144), .C(n145), .Z(n123) );
  GTECH_OAI21 U129 ( .A(n141), .B(n146), .C(n142), .Z(n145) );
  GTECH_NOT U130 ( .A(n144), .Z(n141) );
  GTECH_NOT U131 ( .A(n146), .Z(n143) );
  GTECH_AND2 U132 ( .A(I_a[7]), .B(I_b[5]), .Z(n129) );
  GTECH_ADD_ABC U133 ( .A(n147), .B(n148), .C(n149), .COUT(n127) );
  GTECH_NOT U134 ( .A(n150), .Z(n149) );
  GTECH_AOI2N2 U135 ( .A(n151), .B(n152), .C(n153), .D(n154), .Z(n148) );
  GTECH_OA21 U136 ( .A(n155), .B(n156), .C(n157), .Z(n147) );
  GTECH_XOR3 U137 ( .A(n158), .B(n150), .C(n159), .Z(N151) );
  GTECH_OA21 U138 ( .A(n155), .B(n156), .C(n157), .Z(n159) );
  GTECH_OAI21 U139 ( .A(n160), .B(n161), .C(n162), .Z(n157) );
  GTECH_XOR2 U140 ( .A(n163), .B(n137), .Z(n150) );
  GTECH_ADD_ABC U141 ( .A(n164), .B(n165), .C(n166), .COUT(n137) );
  GTECH_NOT U142 ( .A(n167), .Z(n166) );
  GTECH_XOR3 U143 ( .A(n168), .B(n169), .C(n170), .Z(n165) );
  GTECH_XOR4 U144 ( .A(n142), .B(n146), .C(n144), .D(n140), .Z(n163) );
  GTECH_XOR3 U145 ( .A(n133), .B(n135), .C(n134), .Z(n140) );
  GTECH_OAI21 U146 ( .A(n171), .B(n172), .C(n173), .Z(n134) );
  GTECH_OAI21 U147 ( .A(n174), .B(n175), .C(n176), .Z(n173) );
  GTECH_NOT U148 ( .A(n175), .Z(n171) );
  GTECH_NOT U149 ( .A(n177), .Z(n135) );
  GTECH_NAND2 U150 ( .A(I_b[7]), .B(I_a[4]), .Z(n177) );
  GTECH_NOT U151 ( .A(n131), .Z(n133) );
  GTECH_NAND2 U152 ( .A(I_b[6]), .B(I_a[5]), .Z(n131) );
  GTECH_NAND2 U153 ( .A(I_a[7]), .B(I_b[4]), .Z(n144) );
  GTECH_OAI21 U154 ( .A(n170), .B(n178), .C(n179), .Z(n146) );
  GTECH_OAI21 U155 ( .A(n168), .B(n180), .C(n169), .Z(n179) );
  GTECH_NOT U156 ( .A(n178), .Z(n168) );
  GTECH_NOT U157 ( .A(n180), .Z(n170) );
  GTECH_NOT U158 ( .A(n181), .Z(n142) );
  GTECH_NAND2 U159 ( .A(I_a[6]), .B(I_b[5]), .Z(n181) );
  GTECH_AOI2N2 U160 ( .A(n151), .B(n152), .C(n153), .D(n154), .Z(n158) );
  GTECH_NOT U161 ( .A(I_a[7]), .Z(n154) );
  GTECH_XOR3 U162 ( .A(n155), .B(n160), .C(n182), .Z(N150) );
  GTECH_NOT U163 ( .A(n162), .Z(n182) );
  GTECH_XOR2 U164 ( .A(n183), .B(n164), .Z(n162) );
  GTECH_ADD_ABC U165 ( .A(n184), .B(n185), .C(n186), .COUT(n164) );
  GTECH_NOT U166 ( .A(n187), .Z(n186) );
  GTECH_XOR3 U167 ( .A(n188), .B(n189), .C(n190), .Z(n185) );
  GTECH_XOR4 U168 ( .A(n169), .B(n180), .C(n178), .D(n167), .Z(n183) );
  GTECH_XOR3 U169 ( .A(n174), .B(n176), .C(n175), .Z(n167) );
  GTECH_OAI21 U170 ( .A(n191), .B(n192), .C(n193), .Z(n175) );
  GTECH_OAI21 U171 ( .A(n194), .B(n195), .C(n196), .Z(n193) );
  GTECH_NOT U172 ( .A(n195), .Z(n191) );
  GTECH_NOT U173 ( .A(n197), .Z(n176) );
  GTECH_NAND2 U174 ( .A(I_b[7]), .B(I_a[3]), .Z(n197) );
  GTECH_NOT U175 ( .A(n172), .Z(n174) );
  GTECH_NAND2 U176 ( .A(I_b[6]), .B(I_a[4]), .Z(n172) );
  GTECH_NAND2 U177 ( .A(I_a[6]), .B(I_b[4]), .Z(n178) );
  GTECH_OAI21 U178 ( .A(n190), .B(n198), .C(n199), .Z(n180) );
  GTECH_OAI21 U179 ( .A(n188), .B(n200), .C(n189), .Z(n199) );
  GTECH_NOT U180 ( .A(n198), .Z(n188) );
  GTECH_NOT U181 ( .A(n200), .Z(n190) );
  GTECH_NOT U182 ( .A(n201), .Z(n169) );
  GTECH_NAND2 U183 ( .A(I_a[5]), .B(I_b[5]), .Z(n201) );
  GTECH_NOT U184 ( .A(n156), .Z(n160) );
  GTECH_XOR2 U185 ( .A(n151), .B(n202), .Z(n156) );
  GTECH_NOT U186 ( .A(n152), .Z(n202) );
  GTECH_OAI21 U187 ( .A(n203), .B(n204), .C(n205), .Z(n152) );
  GTECH_OAI21 U188 ( .A(n206), .B(n207), .C(n208), .Z(n205) );
  GTECH_NOT U189 ( .A(n203), .Z(n207) );
  GTECH_XOR2 U190 ( .A(n209), .B(n153), .Z(n151) );
  GTECH_AND2 U191 ( .A(n210), .B(n211), .Z(n153) );
  GTECH_OR_NOT U192 ( .A(n212), .B(n213), .Z(n211) );
  GTECH_OAI21 U193 ( .A(n214), .B(n213), .C(n215), .Z(n210) );
  GTECH_NAND2 U194 ( .A(I_a[7]), .B(I_b[3]), .Z(n209) );
  GTECH_NOT U195 ( .A(n161), .Z(n155) );
  GTECH_OAI21 U196 ( .A(n216), .B(n217), .C(n218), .Z(n161) );
  GTECH_OAI21 U197 ( .A(n219), .B(n220), .C(n221), .Z(n218) );
  GTECH_NOT U198 ( .A(n216), .Z(n220) );
  GTECH_XOR3 U199 ( .A(n216), .B(n219), .C(n222), .Z(N149) );
  GTECH_NOT U200 ( .A(n221), .Z(n222) );
  GTECH_XOR2 U201 ( .A(n223), .B(n184), .Z(n221) );
  GTECH_ADD_ABC U202 ( .A(n224), .B(n225), .C(n226), .COUT(n184) );
  GTECH_XOR3 U203 ( .A(n227), .B(n228), .C(n229), .Z(n225) );
  GTECH_OA21 U204 ( .A(n230), .B(n231), .C(n232), .Z(n224) );
  GTECH_XOR4 U205 ( .A(n189), .B(n200), .C(n198), .D(n187), .Z(n223) );
  GTECH_XOR3 U206 ( .A(n194), .B(n196), .C(n195), .Z(n187) );
  GTECH_OAI21 U207 ( .A(n233), .B(n234), .C(n235), .Z(n195) );
  GTECH_NOT U208 ( .A(n236), .Z(n196) );
  GTECH_NAND2 U209 ( .A(I_b[7]), .B(I_a[2]), .Z(n236) );
  GTECH_NOT U210 ( .A(n192), .Z(n194) );
  GTECH_NAND2 U211 ( .A(I_b[6]), .B(I_a[3]), .Z(n192) );
  GTECH_NAND2 U212 ( .A(I_a[5]), .B(I_b[4]), .Z(n198) );
  GTECH_OAI21 U213 ( .A(n229), .B(n237), .C(n238), .Z(n200) );
  GTECH_OAI21 U214 ( .A(n227), .B(n239), .C(n228), .Z(n238) );
  GTECH_NOT U215 ( .A(n237), .Z(n227) );
  GTECH_NOT U216 ( .A(n239), .Z(n229) );
  GTECH_NOT U217 ( .A(n240), .Z(n189) );
  GTECH_NAND2 U218 ( .A(I_b[5]), .B(I_a[4]), .Z(n240) );
  GTECH_NOT U219 ( .A(n217), .Z(n219) );
  GTECH_XOR3 U220 ( .A(n206), .B(n203), .C(n208), .Z(n217) );
  GTECH_XOR3 U221 ( .A(n214), .B(n215), .C(n213), .Z(n208) );
  GTECH_OAI21 U222 ( .A(n241), .B(n242), .C(n243), .Z(n213) );
  GTECH_OAI21 U223 ( .A(n244), .B(n245), .C(n246), .Z(n243) );
  GTECH_NOT U224 ( .A(n245), .Z(n241) );
  GTECH_NOT U225 ( .A(n247), .Z(n215) );
  GTECH_NAND2 U226 ( .A(I_a[6]), .B(I_b[3]), .Z(n247) );
  GTECH_NOT U227 ( .A(n212), .Z(n214) );
  GTECH_NAND2 U228 ( .A(I_a[7]), .B(I_b[2]), .Z(n212) );
  GTECH_ADD_ABC U229 ( .A(n248), .B(n249), .C(n250), .COUT(n203) );
  GTECH_XOR2 U230 ( .A(n251), .B(n252), .Z(n249) );
  GTECH_AND2 U231 ( .A(I_a[7]), .B(I_b[1]), .Z(n252) );
  GTECH_NOT U232 ( .A(n204), .Z(n206) );
  GTECH_NAND2 U233 ( .A(I_a[7]), .B(n253), .Z(n204) );
  GTECH_ADD_ABC U234 ( .A(n254), .B(n255), .C(n256), .COUT(n216) );
  GTECH_XOR3 U235 ( .A(n248), .B(n257), .C(n250), .Z(n255) );
  GTECH_NOT U236 ( .A(n258), .Z(n250) );
  GTECH_XOR2 U237 ( .A(n254), .B(n259), .Z(N148) );
  GTECH_XOR4 U238 ( .A(n257), .B(n258), .C(n256), .D(n248), .Z(n259) );
  GTECH_ADD_ABC U239 ( .A(n260), .B(n261), .C(n262), .COUT(n248) );
  GTECH_XOR3 U240 ( .A(n263), .B(n264), .C(n265), .Z(n261) );
  GTECH_XOR2 U241 ( .A(n266), .B(n267), .Z(n256) );
  GTECH_OA21 U242 ( .A(n230), .B(n231), .C(n232), .Z(n267) );
  GTECH_OAI21 U243 ( .A(n268), .B(n269), .C(n270), .Z(n232) );
  GTECH_NOT U244 ( .A(n230), .Z(n269) );
  GTECH_XOR4 U245 ( .A(n228), .B(n239), .C(n237), .D(n226), .Z(n266) );
  GTECH_XOR3 U246 ( .A(n271), .B(n272), .C(n235), .Z(n226) );
  GTECH_NAND3 U247 ( .A(I_b[6]), .B(I_a[1]), .C(n273), .Z(n235) );
  GTECH_NOT U248 ( .A(n234), .Z(n272) );
  GTECH_NAND2 U249 ( .A(I_b[7]), .B(I_a[1]), .Z(n234) );
  GTECH_NOT U250 ( .A(n233), .Z(n271) );
  GTECH_NAND2 U251 ( .A(I_b[6]), .B(I_a[2]), .Z(n233) );
  GTECH_NAND2 U252 ( .A(I_b[4]), .B(I_a[4]), .Z(n237) );
  GTECH_OAI21 U253 ( .A(n274), .B(n275), .C(n276), .Z(n239) );
  GTECH_OAI21 U254 ( .A(n277), .B(n278), .C(n279), .Z(n276) );
  GTECH_NOT U255 ( .A(n278), .Z(n274) );
  GTECH_NOT U256 ( .A(n280), .Z(n228) );
  GTECH_NAND2 U257 ( .A(I_b[5]), .B(I_a[3]), .Z(n280) );
  GTECH_XOR3 U258 ( .A(n244), .B(n246), .C(n245), .Z(n258) );
  GTECH_OAI21 U259 ( .A(n281), .B(n282), .C(n283), .Z(n245) );
  GTECH_OAI21 U260 ( .A(n284), .B(n285), .C(n286), .Z(n283) );
  GTECH_NOT U261 ( .A(n285), .Z(n281) );
  GTECH_NOT U262 ( .A(n287), .Z(n246) );
  GTECH_NAND2 U263 ( .A(I_a[5]), .B(I_b[3]), .Z(n287) );
  GTECH_NOT U264 ( .A(n242), .Z(n244) );
  GTECH_NAND2 U265 ( .A(I_a[6]), .B(I_b[2]), .Z(n242) );
  GTECH_XOR2 U266 ( .A(n288), .B(n251), .Z(n257) );
  GTECH_NOT U267 ( .A(n253), .Z(n251) );
  GTECH_OAI21 U268 ( .A(n265), .B(n289), .C(n290), .Z(n253) );
  GTECH_OAI21 U269 ( .A(n263), .B(n291), .C(n264), .Z(n290) );
  GTECH_NOT U270 ( .A(n291), .Z(n265) );
  GTECH_AND2 U271 ( .A(I_a[7]), .B(I_b[1]), .Z(n288) );
  GTECH_ADD_ABC U272 ( .A(n292), .B(n293), .C(n294), .COUT(n254) );
  GTECH_NOT U273 ( .A(n295), .Z(n294) );
  GTECH_XOR3 U274 ( .A(n260), .B(n296), .C(n262), .Z(n293) );
  GTECH_NOT U275 ( .A(n297), .Z(n262) );
  GTECH_NOT U276 ( .A(n298), .Z(n296) );
  GTECH_XOR2 U277 ( .A(n299), .B(n292), .Z(N147) );
  GTECH_ADD_ABC U278 ( .A(n300), .B(n301), .C(n302), .COUT(n292) );
  GTECH_XOR3 U279 ( .A(n303), .B(n304), .C(n305), .Z(n301) );
  GTECH_OA21 U280 ( .A(n306), .B(n307), .C(n308), .Z(n300) );
  GTECH_XOR4 U281 ( .A(n297), .B(n260), .C(n298), .D(n295), .Z(n299) );
  GTECH_XOR3 U282 ( .A(n270), .B(n231), .C(n230), .Z(n295) );
  GTECH_XOR2 U283 ( .A(n309), .B(n273), .Z(n230) );
  GTECH_NOT U284 ( .A(n310), .Z(n273) );
  GTECH_NAND2 U285 ( .A(I_b[7]), .B(I_a[0]), .Z(n310) );
  GTECH_NAND2 U286 ( .A(I_b[6]), .B(I_a[1]), .Z(n309) );
  GTECH_NOT U287 ( .A(n268), .Z(n231) );
  GTECH_XOR3 U288 ( .A(n277), .B(n279), .C(n278), .Z(n268) );
  GTECH_OAI21 U289 ( .A(n311), .B(n312), .C(n313), .Z(n278) );
  GTECH_NOT U290 ( .A(n314), .Z(n279) );
  GTECH_NAND2 U291 ( .A(I_b[5]), .B(I_a[2]), .Z(n314) );
  GTECH_NOT U292 ( .A(n275), .Z(n277) );
  GTECH_NAND2 U293 ( .A(I_b[4]), .B(I_a[3]), .Z(n275) );
  GTECH_NOT U294 ( .A(n315), .Z(n270) );
  GTECH_NAND3 U295 ( .A(I_a[0]), .B(n316), .C(I_b[6]), .Z(n315) );
  GTECH_NOT U296 ( .A(n317), .Z(n316) );
  GTECH_XOR3 U297 ( .A(n263), .B(n264), .C(n291), .Z(n298) );
  GTECH_OAI21 U298 ( .A(n318), .B(n319), .C(n320), .Z(n291) );
  GTECH_OAI21 U299 ( .A(n321), .B(n322), .C(n323), .Z(n320) );
  GTECH_NOT U300 ( .A(n324), .Z(n264) );
  GTECH_NAND2 U301 ( .A(I_a[6]), .B(I_b[1]), .Z(n324) );
  GTECH_NOT U302 ( .A(n289), .Z(n263) );
  GTECH_NAND2 U303 ( .A(I_a[7]), .B(I_b[0]), .Z(n289) );
  GTECH_ADD_ABC U304 ( .A(n303), .B(n325), .C(n305), .COUT(n260) );
  GTECH_NOT U305 ( .A(n326), .Z(n305) );
  GTECH_XOR3 U306 ( .A(n321), .B(n323), .C(n318), .Z(n325) );
  GTECH_NOT U307 ( .A(n322), .Z(n318) );
  GTECH_XOR3 U308 ( .A(n284), .B(n286), .C(n285), .Z(n297) );
  GTECH_OAI21 U309 ( .A(n327), .B(n328), .C(n329), .Z(n285) );
  GTECH_OAI21 U310 ( .A(n330), .B(n331), .C(n332), .Z(n329) );
  GTECH_NOT U311 ( .A(n331), .Z(n327) );
  GTECH_NOT U312 ( .A(n333), .Z(n286) );
  GTECH_NAND2 U313 ( .A(I_b[3]), .B(I_a[4]), .Z(n333) );
  GTECH_NOT U314 ( .A(n282), .Z(n284) );
  GTECH_NAND2 U315 ( .A(I_a[5]), .B(I_b[2]), .Z(n282) );
  GTECH_XOR2 U316 ( .A(n334), .B(n335), .Z(N146) );
  GTECH_XOR4 U317 ( .A(n304), .B(n326), .C(n302), .D(n303), .Z(n335) );
  GTECH_ADD_ABC U318 ( .A(n336), .B(n337), .C(n338), .COUT(n303) );
  GTECH_NOT U319 ( .A(n339), .Z(n338) );
  GTECH_XOR3 U320 ( .A(n340), .B(n341), .C(n342), .Z(n337) );
  GTECH_XOR2 U321 ( .A(n317), .B(n343), .Z(n302) );
  GTECH_AND2 U322 ( .A(I_b[6]), .B(I_a[0]), .Z(n343) );
  GTECH_XOR3 U323 ( .A(n344), .B(n345), .C(n313), .Z(n317) );
  GTECH_NAND3 U324 ( .A(I_b[4]), .B(I_a[1]), .C(n346), .Z(n313) );
  GTECH_NOT U325 ( .A(n312), .Z(n345) );
  GTECH_NAND2 U326 ( .A(I_b[5]), .B(I_a[1]), .Z(n312) );
  GTECH_NOT U327 ( .A(n311), .Z(n344) );
  GTECH_NAND2 U328 ( .A(I_b[4]), .B(I_a[2]), .Z(n311) );
  GTECH_XOR3 U329 ( .A(n330), .B(n332), .C(n331), .Z(n326) );
  GTECH_OAI21 U330 ( .A(n347), .B(n348), .C(n349), .Z(n331) );
  GTECH_OAI21 U331 ( .A(n350), .B(n351), .C(n352), .Z(n349) );
  GTECH_NOT U332 ( .A(n351), .Z(n347) );
  GTECH_NOT U333 ( .A(n353), .Z(n332) );
  GTECH_NAND2 U334 ( .A(I_b[3]), .B(I_a[3]), .Z(n353) );
  GTECH_NOT U335 ( .A(n328), .Z(n330) );
  GTECH_NAND2 U336 ( .A(I_b[2]), .B(I_a[4]), .Z(n328) );
  GTECH_NOT U337 ( .A(n354), .Z(n304) );
  GTECH_XOR3 U338 ( .A(n321), .B(n323), .C(n322), .Z(n354) );
  GTECH_OAI21 U339 ( .A(n342), .B(n355), .C(n356), .Z(n322) );
  GTECH_OAI21 U340 ( .A(n340), .B(n357), .C(n341), .Z(n356) );
  GTECH_NOT U341 ( .A(n355), .Z(n340) );
  GTECH_NOT U342 ( .A(n357), .Z(n342) );
  GTECH_NOT U343 ( .A(n358), .Z(n323) );
  GTECH_NAND2 U344 ( .A(I_a[5]), .B(I_b[1]), .Z(n358) );
  GTECH_NOT U345 ( .A(n319), .Z(n321) );
  GTECH_NAND2 U346 ( .A(I_a[6]), .B(I_b[0]), .Z(n319) );
  GTECH_OA21 U347 ( .A(n306), .B(n307), .C(n308), .Z(n334) );
  GTECH_OAI21 U348 ( .A(n359), .B(n360), .C(n361), .Z(n308) );
  GTECH_NOT U349 ( .A(n306), .Z(n360) );
  GTECH_XOR3 U350 ( .A(n361), .B(n307), .C(n306), .Z(N145) );
  GTECH_XOR2 U351 ( .A(n362), .B(n346), .Z(n306) );
  GTECH_NOT U352 ( .A(n363), .Z(n346) );
  GTECH_NAND2 U353 ( .A(I_b[5]), .B(I_a[0]), .Z(n363) );
  GTECH_NAND2 U354 ( .A(I_b[4]), .B(I_a[1]), .Z(n362) );
  GTECH_NOT U355 ( .A(n359), .Z(n307) );
  GTECH_XOR2 U356 ( .A(n364), .B(n336), .Z(n359) );
  GTECH_ADD_ABC U357 ( .A(n365), .B(n366), .C(n367), .COUT(n336) );
  GTECH_XOR3 U358 ( .A(n368), .B(n369), .C(n370), .Z(n366) );
  GTECH_OA21 U359 ( .A(n371), .B(n372), .C(n373), .Z(n365) );
  GTECH_XOR4 U360 ( .A(n341), .B(n357), .C(n355), .D(n339), .Z(n364) );
  GTECH_XOR3 U361 ( .A(n350), .B(n352), .C(n351), .Z(n339) );
  GTECH_OAI21 U362 ( .A(n374), .B(n375), .C(n376), .Z(n351) );
  GTECH_NOT U363 ( .A(n377), .Z(n352) );
  GTECH_NAND2 U364 ( .A(I_b[3]), .B(I_a[2]), .Z(n377) );
  GTECH_NOT U365 ( .A(n348), .Z(n350) );
  GTECH_NAND2 U366 ( .A(I_b[2]), .B(I_a[3]), .Z(n348) );
  GTECH_NAND2 U367 ( .A(I_a[5]), .B(I_b[0]), .Z(n355) );
  GTECH_OAI21 U368 ( .A(n370), .B(n378), .C(n379), .Z(n357) );
  GTECH_OAI21 U369 ( .A(n368), .B(n380), .C(n369), .Z(n379) );
  GTECH_NOT U370 ( .A(n380), .Z(n370) );
  GTECH_NOT U371 ( .A(n381), .Z(n341) );
  GTECH_NAND2 U372 ( .A(I_a[4]), .B(I_b[1]), .Z(n381) );
  GTECH_NOT U373 ( .A(n382), .Z(n361) );
  GTECH_NAND3 U374 ( .A(I_a[0]), .B(n383), .C(I_b[4]), .Z(n382) );
  GTECH_XOR2 U375 ( .A(n384), .B(n383), .Z(N144) );
  GTECH_XOR2 U376 ( .A(n385), .B(n386), .Z(n383) );
  GTECH_XOR4 U377 ( .A(n369), .B(n380), .C(n367), .D(n368), .Z(n386) );
  GTECH_NOT U378 ( .A(n378), .Z(n368) );
  GTECH_NAND2 U379 ( .A(I_a[4]), .B(I_b[0]), .Z(n378) );
  GTECH_XOR3 U380 ( .A(n387), .B(n388), .C(n376), .Z(n367) );
  GTECH_NAND3 U381 ( .A(I_b[2]), .B(I_a[1]), .C(n389), .Z(n376) );
  GTECH_NOT U382 ( .A(n375), .Z(n388) );
  GTECH_NAND2 U383 ( .A(I_b[3]), .B(I_a[1]), .Z(n375) );
  GTECH_NOT U384 ( .A(n374), .Z(n387) );
  GTECH_NAND2 U385 ( .A(I_b[2]), .B(I_a[2]), .Z(n374) );
  GTECH_OAI21 U386 ( .A(n390), .B(n391), .C(n392), .Z(n380) );
  GTECH_OAI21 U387 ( .A(n393), .B(n394), .C(n395), .Z(n392) );
  GTECH_NOT U388 ( .A(n394), .Z(n390) );
  GTECH_NOT U389 ( .A(n396), .Z(n369) );
  GTECH_NAND2 U390 ( .A(I_a[3]), .B(I_b[1]), .Z(n396) );
  GTECH_OA21 U391 ( .A(n371), .B(n372), .C(n373), .Z(n385) );
  GTECH_OAI21 U392 ( .A(n397), .B(n398), .C(n399), .Z(n373) );
  GTECH_NOT U393 ( .A(n371), .Z(n398) );
  GTECH_AND2 U394 ( .A(I_b[4]), .B(I_a[0]), .Z(n384) );
  GTECH_XOR3 U395 ( .A(n399), .B(n372), .C(n371), .Z(N143) );
  GTECH_XOR2 U396 ( .A(n400), .B(n389), .Z(n371) );
  GTECH_NOT U397 ( .A(n401), .Z(n389) );
  GTECH_NAND2 U398 ( .A(I_b[3]), .B(I_a[0]), .Z(n401) );
  GTECH_NAND2 U399 ( .A(I_b[2]), .B(I_a[1]), .Z(n400) );
  GTECH_NOT U400 ( .A(n397), .Z(n372) );
  GTECH_XOR3 U401 ( .A(n393), .B(n395), .C(n394), .Z(n397) );
  GTECH_OAI21 U402 ( .A(n402), .B(n403), .C(n404), .Z(n394) );
  GTECH_NOT U403 ( .A(n405), .Z(n395) );
  GTECH_NAND2 U404 ( .A(I_b[1]), .B(I_a[2]), .Z(n405) );
  GTECH_NOT U405 ( .A(n391), .Z(n393) );
  GTECH_NAND2 U406 ( .A(I_b[0]), .B(I_a[3]), .Z(n391) );
  GTECH_NOT U407 ( .A(n406), .Z(n399) );
  GTECH_NAND3 U408 ( .A(I_a[0]), .B(n407), .C(I_b[2]), .Z(n406) );
  GTECH_XOR2 U409 ( .A(n408), .B(n407), .Z(N142) );
  GTECH_NOT U410 ( .A(n409), .Z(n407) );
  GTECH_XOR3 U411 ( .A(n410), .B(n411), .C(n404), .Z(n409) );
  GTECH_NAND3 U412 ( .A(n412), .B(I_b[0]), .C(I_a[1]), .Z(n404) );
  GTECH_NOT U413 ( .A(n402), .Z(n411) );
  GTECH_NAND2 U414 ( .A(I_a[1]), .B(I_b[1]), .Z(n402) );
  GTECH_NOT U415 ( .A(n403), .Z(n410) );
  GTECH_NAND2 U416 ( .A(I_b[0]), .B(I_a[2]), .Z(n403) );
  GTECH_AND2 U417 ( .A(I_b[2]), .B(I_a[0]), .Z(n408) );
  GTECH_XOR2 U418 ( .A(n412), .B(n413), .Z(N141) );
  GTECH_AND2 U419 ( .A(I_a[1]), .B(I_b[0]), .Z(n413) );
  GTECH_NOT U420 ( .A(n414), .Z(n412) );
  GTECH_NAND2 U421 ( .A(I_a[0]), .B(I_b[1]), .Z(n414) );
  GTECH_AND2 U422 ( .A(I_a[0]), .B(I_b[0]), .Z(N140) );
endmodule

