
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
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411;

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
  GTECH_OAI2N2 U82 ( .A(n93), .B(n94), .C(n95), .D(n96), .Z(n87) );
  GTECH_NAND2 U83 ( .A(n93), .B(n94), .Z(n96) );
  GTECH_XOR2 U84 ( .A(n90), .B(n97), .Z(n86) );
  GTECH_NOT U85 ( .A(n89), .Z(n97) );
  GTECH_OAI21 U86 ( .A(n98), .B(n99), .C(n100), .Z(n89) );
  GTECH_OAI21 U87 ( .A(n101), .B(n102), .C(n103), .Z(n100) );
  GTECH_NOT U88 ( .A(n102), .Z(n98) );
  GTECH_NAND2 U89 ( .A(I_b[7]), .B(I_a[7]), .Z(n90) );
  GTECH_NOT U90 ( .A(n104), .Z(n84) );
  GTECH_NAND2 U91 ( .A(n105), .B(n106), .Z(n104) );
  GTECH_XOR2 U92 ( .A(n106), .B(n105), .Z(N153) );
  GTECH_NOT U93 ( .A(n107), .Z(n105) );
  GTECH_XOR3 U94 ( .A(n108), .B(n93), .C(n95), .Z(n107) );
  GTECH_XOR3 U95 ( .A(n101), .B(n103), .C(n102), .Z(n95) );
  GTECH_OAI21 U96 ( .A(n109), .B(n110), .C(n111), .Z(n102) );
  GTECH_OAI21 U97 ( .A(n112), .B(n113), .C(n114), .Z(n111) );
  GTECH_NOT U98 ( .A(n113), .Z(n109) );
  GTECH_NOT U99 ( .A(n115), .Z(n103) );
  GTECH_NAND2 U100 ( .A(I_b[7]), .B(I_a[6]), .Z(n115) );
  GTECH_NOT U101 ( .A(n99), .Z(n101) );
  GTECH_NAND2 U102 ( .A(I_a[7]), .B(I_b[6]), .Z(n99) );
  GTECH_ADD_ABC U103 ( .A(n116), .B(n117), .C(n118), .COUT(n93) );
  GTECH_NOT U104 ( .A(n119), .Z(n118) );
  GTECH_XOR2 U105 ( .A(n120), .B(n121), .Z(n117) );
  GTECH_AND2 U106 ( .A(I_a[7]), .B(I_b[5]), .Z(n121) );
  GTECH_NOT U107 ( .A(n94), .Z(n108) );
  GTECH_NAND2 U108 ( .A(I_a[7]), .B(n122), .Z(n94) );
  GTECH_NOT U109 ( .A(n123), .Z(n106) );
  GTECH_NAND2 U110 ( .A(n124), .B(n125), .Z(n123) );
  GTECH_NOT U111 ( .A(n126), .Z(n125) );
  GTECH_XOR2 U112 ( .A(n126), .B(n127), .Z(N152) );
  GTECH_NOT U113 ( .A(n124), .Z(n127) );
  GTECH_XOR4 U114 ( .A(n128), .B(n120), .C(n116), .D(n119), .Z(n124) );
  GTECH_XOR3 U115 ( .A(n112), .B(n114), .C(n113), .Z(n119) );
  GTECH_OAI21 U116 ( .A(n129), .B(n130), .C(n131), .Z(n113) );
  GTECH_OAI21 U117 ( .A(n132), .B(n133), .C(n134), .Z(n131) );
  GTECH_NOT U118 ( .A(n133), .Z(n129) );
  GTECH_NOT U119 ( .A(n135), .Z(n114) );
  GTECH_NAND2 U120 ( .A(I_b[7]), .B(I_a[5]), .Z(n135) );
  GTECH_NOT U121 ( .A(n110), .Z(n112) );
  GTECH_NAND2 U122 ( .A(I_b[6]), .B(I_a[6]), .Z(n110) );
  GTECH_ADD_ABC U123 ( .A(n136), .B(n137), .C(n138), .COUT(n116) );
  GTECH_NOT U124 ( .A(n139), .Z(n138) );
  GTECH_XOR3 U125 ( .A(n140), .B(n141), .C(n142), .Z(n137) );
  GTECH_NOT U126 ( .A(n122), .Z(n120) );
  GTECH_OAI21 U127 ( .A(n142), .B(n143), .C(n144), .Z(n122) );
  GTECH_OAI21 U128 ( .A(n140), .B(n145), .C(n141), .Z(n144) );
  GTECH_NOT U129 ( .A(n143), .Z(n140) );
  GTECH_NOT U130 ( .A(n145), .Z(n142) );
  GTECH_AND2 U131 ( .A(I_a[7]), .B(I_b[5]), .Z(n128) );
  GTECH_ADD_ABC U132 ( .A(n146), .B(n147), .C(n148), .COUT(n126) );
  GTECH_NOT U133 ( .A(n149), .Z(n148) );
  GTECH_OA22 U134 ( .A(n150), .B(n151), .C(n152), .D(n153), .Z(n147) );
  GTECH_OA21 U135 ( .A(n154), .B(n155), .C(n156), .Z(n146) );
  GTECH_XOR3 U136 ( .A(n157), .B(n149), .C(n158), .Z(N151) );
  GTECH_OA21 U137 ( .A(n154), .B(n155), .C(n156), .Z(n158) );
  GTECH_OAI21 U138 ( .A(n159), .B(n160), .C(n161), .Z(n156) );
  GTECH_XOR2 U139 ( .A(n162), .B(n136), .Z(n149) );
  GTECH_ADD_ABC U140 ( .A(n163), .B(n164), .C(n165), .COUT(n136) );
  GTECH_NOT U141 ( .A(n166), .Z(n165) );
  GTECH_XOR3 U142 ( .A(n167), .B(n168), .C(n169), .Z(n164) );
  GTECH_XOR4 U143 ( .A(n141), .B(n145), .C(n143), .D(n139), .Z(n162) );
  GTECH_XOR3 U144 ( .A(n132), .B(n134), .C(n133), .Z(n139) );
  GTECH_OAI21 U145 ( .A(n170), .B(n171), .C(n172), .Z(n133) );
  GTECH_OAI21 U146 ( .A(n173), .B(n174), .C(n175), .Z(n172) );
  GTECH_NOT U147 ( .A(n174), .Z(n170) );
  GTECH_NOT U148 ( .A(n176), .Z(n134) );
  GTECH_NAND2 U149 ( .A(I_b[7]), .B(I_a[4]), .Z(n176) );
  GTECH_NOT U150 ( .A(n130), .Z(n132) );
  GTECH_NAND2 U151 ( .A(I_b[6]), .B(I_a[5]), .Z(n130) );
  GTECH_NAND2 U152 ( .A(I_a[7]), .B(I_b[4]), .Z(n143) );
  GTECH_OAI21 U153 ( .A(n169), .B(n177), .C(n178), .Z(n145) );
  GTECH_OAI21 U154 ( .A(n167), .B(n179), .C(n168), .Z(n178) );
  GTECH_NOT U155 ( .A(n177), .Z(n167) );
  GTECH_NOT U156 ( .A(n179), .Z(n169) );
  GTECH_NOT U157 ( .A(n180), .Z(n141) );
  GTECH_NAND2 U158 ( .A(I_a[6]), .B(I_b[5]), .Z(n180) );
  GTECH_OA22 U159 ( .A(n150), .B(n151), .C(n152), .D(n153), .Z(n157) );
  GTECH_NOT U160 ( .A(n181), .Z(n153) );
  GTECH_NOT U161 ( .A(I_a[7]), .Z(n151) );
  GTECH_XOR3 U162 ( .A(n154), .B(n159), .C(n182), .Z(N150) );
  GTECH_NOT U163 ( .A(n161), .Z(n182) );
  GTECH_XOR2 U164 ( .A(n183), .B(n163), .Z(n161) );
  GTECH_ADD_ABC U165 ( .A(n184), .B(n185), .C(n186), .COUT(n163) );
  GTECH_NOT U166 ( .A(n187), .Z(n186) );
  GTECH_XOR3 U167 ( .A(n188), .B(n189), .C(n190), .Z(n185) );
  GTECH_XOR4 U168 ( .A(n168), .B(n179), .C(n177), .D(n166), .Z(n183) );
  GTECH_XOR3 U169 ( .A(n173), .B(n175), .C(n174), .Z(n166) );
  GTECH_OAI21 U170 ( .A(n191), .B(n192), .C(n193), .Z(n174) );
  GTECH_OAI21 U171 ( .A(n194), .B(n195), .C(n196), .Z(n193) );
  GTECH_NOT U172 ( .A(n195), .Z(n191) );
  GTECH_NOT U173 ( .A(n197), .Z(n175) );
  GTECH_NAND2 U174 ( .A(I_b[7]), .B(I_a[3]), .Z(n197) );
  GTECH_NOT U175 ( .A(n171), .Z(n173) );
  GTECH_NAND2 U176 ( .A(I_b[6]), .B(I_a[4]), .Z(n171) );
  GTECH_NAND2 U177 ( .A(I_a[6]), .B(I_b[4]), .Z(n177) );
  GTECH_OAI21 U178 ( .A(n190), .B(n198), .C(n199), .Z(n179) );
  GTECH_OAI21 U179 ( .A(n188), .B(n200), .C(n189), .Z(n199) );
  GTECH_NOT U180 ( .A(n198), .Z(n188) );
  GTECH_NOT U181 ( .A(n200), .Z(n190) );
  GTECH_NOT U182 ( .A(n201), .Z(n168) );
  GTECH_NAND2 U183 ( .A(I_a[5]), .B(I_b[5]), .Z(n201) );
  GTECH_NOT U184 ( .A(n155), .Z(n159) );
  GTECH_XOR2 U185 ( .A(n181), .B(n152), .Z(n155) );
  GTECH_AOI2N2 U186 ( .A(n202), .B(n203), .C(n204), .D(n205), .Z(n152) );
  GTECH_NAND2 U187 ( .A(n204), .B(n205), .Z(n203) );
  GTECH_XOR2 U188 ( .A(n206), .B(n150), .Z(n181) );
  GTECH_AND2 U189 ( .A(n207), .B(n208), .Z(n150) );
  GTECH_OR_NOT U190 ( .A(n209), .B(n210), .Z(n208) );
  GTECH_OAI21 U191 ( .A(n211), .B(n210), .C(n212), .Z(n207) );
  GTECH_NAND2 U192 ( .A(I_a[7]), .B(I_b[3]), .Z(n206) );
  GTECH_NOT U193 ( .A(n160), .Z(n154) );
  GTECH_OAI2N2 U194 ( .A(n213), .B(n214), .C(n215), .D(n216), .Z(n160) );
  GTECH_NAND2 U195 ( .A(n213), .B(n214), .Z(n216) );
  GTECH_XOR3 U196 ( .A(n213), .B(n217), .C(n218), .Z(N149) );
  GTECH_NOT U197 ( .A(n215), .Z(n218) );
  GTECH_XOR2 U198 ( .A(n219), .B(n184), .Z(n215) );
  GTECH_ADD_ABC U199 ( .A(n220), .B(n221), .C(n222), .COUT(n184) );
  GTECH_XOR3 U200 ( .A(n223), .B(n224), .C(n225), .Z(n221) );
  GTECH_OA21 U201 ( .A(n226), .B(n227), .C(n228), .Z(n220) );
  GTECH_XOR4 U202 ( .A(n189), .B(n200), .C(n198), .D(n187), .Z(n219) );
  GTECH_XOR3 U203 ( .A(n194), .B(n196), .C(n195), .Z(n187) );
  GTECH_OAI21 U204 ( .A(n229), .B(n230), .C(n231), .Z(n195) );
  GTECH_NOT U205 ( .A(n232), .Z(n196) );
  GTECH_NAND2 U206 ( .A(I_b[7]), .B(I_a[2]), .Z(n232) );
  GTECH_NOT U207 ( .A(n192), .Z(n194) );
  GTECH_NAND2 U208 ( .A(I_b[6]), .B(I_a[3]), .Z(n192) );
  GTECH_NAND2 U209 ( .A(I_a[5]), .B(I_b[4]), .Z(n198) );
  GTECH_OAI21 U210 ( .A(n225), .B(n233), .C(n234), .Z(n200) );
  GTECH_OAI21 U211 ( .A(n223), .B(n235), .C(n224), .Z(n234) );
  GTECH_NOT U212 ( .A(n233), .Z(n223) );
  GTECH_NOT U213 ( .A(n235), .Z(n225) );
  GTECH_NOT U214 ( .A(n236), .Z(n189) );
  GTECH_NAND2 U215 ( .A(I_b[5]), .B(I_a[4]), .Z(n236) );
  GTECH_NOT U216 ( .A(n214), .Z(n217) );
  GTECH_XOR3 U217 ( .A(n237), .B(n204), .C(n202), .Z(n214) );
  GTECH_XOR3 U218 ( .A(n211), .B(n212), .C(n210), .Z(n202) );
  GTECH_OAI21 U219 ( .A(n238), .B(n239), .C(n240), .Z(n210) );
  GTECH_OAI21 U220 ( .A(n241), .B(n242), .C(n243), .Z(n240) );
  GTECH_NOT U221 ( .A(n242), .Z(n238) );
  GTECH_NOT U222 ( .A(n244), .Z(n212) );
  GTECH_NAND2 U223 ( .A(I_a[6]), .B(I_b[3]), .Z(n244) );
  GTECH_NOT U224 ( .A(n209), .Z(n211) );
  GTECH_NAND2 U225 ( .A(I_a[7]), .B(I_b[2]), .Z(n209) );
  GTECH_ADD_ABC U226 ( .A(n245), .B(n246), .C(n247), .COUT(n204) );
  GTECH_XOR2 U227 ( .A(n248), .B(n249), .Z(n246) );
  GTECH_AND2 U228 ( .A(I_a[7]), .B(I_b[1]), .Z(n249) );
  GTECH_NOT U229 ( .A(n205), .Z(n237) );
  GTECH_NAND2 U230 ( .A(I_a[7]), .B(n250), .Z(n205) );
  GTECH_ADD_ABC U231 ( .A(n251), .B(n252), .C(n253), .COUT(n213) );
  GTECH_XOR3 U232 ( .A(n245), .B(n254), .C(n247), .Z(n252) );
  GTECH_NOT U233 ( .A(n255), .Z(n247) );
  GTECH_XOR2 U234 ( .A(n251), .B(n256), .Z(N148) );
  GTECH_XOR4 U235 ( .A(n254), .B(n255), .C(n253), .D(n245), .Z(n256) );
  GTECH_ADD_ABC U236 ( .A(n257), .B(n258), .C(n259), .COUT(n245) );
  GTECH_XOR3 U237 ( .A(n260), .B(n261), .C(n262), .Z(n258) );
  GTECH_XOR2 U238 ( .A(n263), .B(n264), .Z(n253) );
  GTECH_OA21 U239 ( .A(n226), .B(n227), .C(n228), .Z(n264) );
  GTECH_OAI21 U240 ( .A(n265), .B(n266), .C(n267), .Z(n228) );
  GTECH_NOT U241 ( .A(n226), .Z(n266) );
  GTECH_XOR4 U242 ( .A(n224), .B(n235), .C(n233), .D(n222), .Z(n263) );
  GTECH_XOR3 U243 ( .A(n268), .B(n269), .C(n231), .Z(n222) );
  GTECH_OR3 U244 ( .A(n270), .B(n271), .C(n272), .Z(n231) );
  GTECH_NOT U245 ( .A(n230), .Z(n269) );
  GTECH_NAND2 U246 ( .A(I_b[7]), .B(I_a[1]), .Z(n230) );
  GTECH_NOT U247 ( .A(n229), .Z(n268) );
  GTECH_NAND2 U248 ( .A(I_b[6]), .B(I_a[2]), .Z(n229) );
  GTECH_NAND2 U249 ( .A(I_b[4]), .B(I_a[4]), .Z(n233) );
  GTECH_OAI21 U250 ( .A(n273), .B(n274), .C(n275), .Z(n235) );
  GTECH_OAI21 U251 ( .A(n276), .B(n277), .C(n278), .Z(n275) );
  GTECH_NOT U252 ( .A(n277), .Z(n273) );
  GTECH_NOT U253 ( .A(n279), .Z(n224) );
  GTECH_NAND2 U254 ( .A(I_b[5]), .B(I_a[3]), .Z(n279) );
  GTECH_XOR3 U255 ( .A(n241), .B(n243), .C(n242), .Z(n255) );
  GTECH_OAI21 U256 ( .A(n280), .B(n281), .C(n282), .Z(n242) );
  GTECH_OAI21 U257 ( .A(n283), .B(n284), .C(n285), .Z(n282) );
  GTECH_NOT U258 ( .A(n284), .Z(n280) );
  GTECH_NOT U259 ( .A(n286), .Z(n243) );
  GTECH_NAND2 U260 ( .A(I_a[5]), .B(I_b[3]), .Z(n286) );
  GTECH_NOT U261 ( .A(n239), .Z(n241) );
  GTECH_NAND2 U262 ( .A(I_a[6]), .B(I_b[2]), .Z(n239) );
  GTECH_XOR2 U263 ( .A(n287), .B(n248), .Z(n254) );
  GTECH_NOT U264 ( .A(n250), .Z(n248) );
  GTECH_OAI21 U265 ( .A(n262), .B(n288), .C(n289), .Z(n250) );
  GTECH_OAI21 U266 ( .A(n260), .B(n290), .C(n261), .Z(n289) );
  GTECH_NOT U267 ( .A(n290), .Z(n262) );
  GTECH_AND2 U268 ( .A(I_a[7]), .B(I_b[1]), .Z(n287) );
  GTECH_ADD_ABC U269 ( .A(n291), .B(n292), .C(n293), .COUT(n251) );
  GTECH_NOT U270 ( .A(n294), .Z(n293) );
  GTECH_XOR3 U271 ( .A(n257), .B(n295), .C(n259), .Z(n292) );
  GTECH_NOT U272 ( .A(n296), .Z(n259) );
  GTECH_NOT U273 ( .A(n297), .Z(n295) );
  GTECH_XOR2 U274 ( .A(n298), .B(n291), .Z(N147) );
  GTECH_ADD_ABC U275 ( .A(n299), .B(n300), .C(n301), .COUT(n291) );
  GTECH_XOR3 U276 ( .A(n302), .B(n303), .C(n304), .Z(n300) );
  GTECH_OA21 U277 ( .A(n305), .B(n306), .C(n307), .Z(n299) );
  GTECH_XOR4 U278 ( .A(n296), .B(n257), .C(n297), .D(n294), .Z(n298) );
  GTECH_XOR3 U279 ( .A(n267), .B(n227), .C(n226), .Z(n294) );
  GTECH_XOR2 U280 ( .A(n308), .B(n272), .Z(n226) );
  GTECH_NAND2 U281 ( .A(I_b[7]), .B(I_a[0]), .Z(n272) );
  GTECH_AND2 U282 ( .A(I_b[6]), .B(I_a[1]), .Z(n308) );
  GTECH_NOT U283 ( .A(n265), .Z(n227) );
  GTECH_XOR3 U284 ( .A(n276), .B(n278), .C(n277), .Z(n265) );
  GTECH_OAI21 U285 ( .A(n309), .B(n310), .C(n311), .Z(n277) );
  GTECH_NOT U286 ( .A(n312), .Z(n278) );
  GTECH_NAND2 U287 ( .A(I_b[5]), .B(I_a[2]), .Z(n312) );
  GTECH_NOT U288 ( .A(n274), .Z(n276) );
  GTECH_NAND2 U289 ( .A(I_b[4]), .B(I_a[3]), .Z(n274) );
  GTECH_NOT U290 ( .A(n313), .Z(n267) );
  GTECH_OR3 U291 ( .A(n314), .B(n315), .C(n271), .Z(n313) );
  GTECH_NOT U292 ( .A(I_b[6]), .Z(n271) );
  GTECH_XOR3 U293 ( .A(n260), .B(n261), .C(n290), .Z(n297) );
  GTECH_OAI21 U294 ( .A(n316), .B(n317), .C(n318), .Z(n290) );
  GTECH_OAI21 U295 ( .A(n319), .B(n320), .C(n321), .Z(n318) );
  GTECH_NOT U296 ( .A(n322), .Z(n261) );
  GTECH_NAND2 U297 ( .A(I_a[6]), .B(I_b[1]), .Z(n322) );
  GTECH_NOT U298 ( .A(n288), .Z(n260) );
  GTECH_NAND2 U299 ( .A(I_a[7]), .B(I_b[0]), .Z(n288) );
  GTECH_ADD_ABC U300 ( .A(n302), .B(n323), .C(n304), .COUT(n257) );
  GTECH_NOT U301 ( .A(n324), .Z(n304) );
  GTECH_XOR3 U302 ( .A(n319), .B(n321), .C(n316), .Z(n323) );
  GTECH_NOT U303 ( .A(n320), .Z(n316) );
  GTECH_XOR3 U304 ( .A(n283), .B(n285), .C(n284), .Z(n296) );
  GTECH_OAI21 U305 ( .A(n325), .B(n326), .C(n327), .Z(n284) );
  GTECH_OAI21 U306 ( .A(n328), .B(n329), .C(n330), .Z(n327) );
  GTECH_NOT U307 ( .A(n329), .Z(n325) );
  GTECH_NOT U308 ( .A(n331), .Z(n285) );
  GTECH_NAND2 U309 ( .A(I_b[3]), .B(I_a[4]), .Z(n331) );
  GTECH_NOT U310 ( .A(n281), .Z(n283) );
  GTECH_NAND2 U311 ( .A(I_a[5]), .B(I_b[2]), .Z(n281) );
  GTECH_XOR2 U312 ( .A(n332), .B(n333), .Z(N146) );
  GTECH_XOR4 U313 ( .A(n303), .B(n324), .C(n301), .D(n302), .Z(n333) );
  GTECH_ADD_ABC U314 ( .A(n334), .B(n335), .C(n336), .COUT(n302) );
  GTECH_NOT U315 ( .A(n337), .Z(n336) );
  GTECH_XOR3 U316 ( .A(n338), .B(n339), .C(n340), .Z(n335) );
  GTECH_XOR2 U317 ( .A(n314), .B(n341), .Z(n301) );
  GTECH_AND2 U318 ( .A(I_b[6]), .B(I_a[0]), .Z(n341) );
  GTECH_XOR3 U319 ( .A(n342), .B(n343), .C(n311), .Z(n314) );
  GTECH_OR3 U320 ( .A(n270), .B(n344), .C(n345), .Z(n311) );
  GTECH_NOT U321 ( .A(n310), .Z(n343) );
  GTECH_NAND2 U322 ( .A(I_b[5]), .B(I_a[1]), .Z(n310) );
  GTECH_NOT U323 ( .A(n309), .Z(n342) );
  GTECH_NAND2 U324 ( .A(I_b[4]), .B(I_a[2]), .Z(n309) );
  GTECH_XOR3 U325 ( .A(n328), .B(n330), .C(n329), .Z(n324) );
  GTECH_OAI21 U326 ( .A(n346), .B(n347), .C(n348), .Z(n329) );
  GTECH_OAI21 U327 ( .A(n349), .B(n350), .C(n351), .Z(n348) );
  GTECH_NOT U328 ( .A(n350), .Z(n346) );
  GTECH_NOT U329 ( .A(n352), .Z(n330) );
  GTECH_NAND2 U330 ( .A(I_b[3]), .B(I_a[3]), .Z(n352) );
  GTECH_NOT U331 ( .A(n326), .Z(n328) );
  GTECH_NAND2 U332 ( .A(I_b[2]), .B(I_a[4]), .Z(n326) );
  GTECH_NOT U333 ( .A(n353), .Z(n303) );
  GTECH_XOR3 U334 ( .A(n319), .B(n321), .C(n320), .Z(n353) );
  GTECH_OAI21 U335 ( .A(n340), .B(n354), .C(n355), .Z(n320) );
  GTECH_OAI21 U336 ( .A(n338), .B(n356), .C(n339), .Z(n355) );
  GTECH_NOT U337 ( .A(n354), .Z(n338) );
  GTECH_NOT U338 ( .A(n356), .Z(n340) );
  GTECH_NOT U339 ( .A(n357), .Z(n321) );
  GTECH_NAND2 U340 ( .A(I_a[5]), .B(I_b[1]), .Z(n357) );
  GTECH_NOT U341 ( .A(n317), .Z(n319) );
  GTECH_NAND2 U342 ( .A(I_a[6]), .B(I_b[0]), .Z(n317) );
  GTECH_OA21 U343 ( .A(n305), .B(n306), .C(n307), .Z(n332) );
  GTECH_OAI21 U344 ( .A(n358), .B(n359), .C(n360), .Z(n307) );
  GTECH_NOT U345 ( .A(n305), .Z(n359) );
  GTECH_XOR3 U346 ( .A(n360), .B(n306), .C(n305), .Z(N145) );
  GTECH_XOR2 U347 ( .A(n361), .B(n345), .Z(n305) );
  GTECH_NAND2 U348 ( .A(I_b[5]), .B(I_a[0]), .Z(n345) );
  GTECH_AND2 U349 ( .A(I_b[4]), .B(I_a[1]), .Z(n361) );
  GTECH_NOT U350 ( .A(n358), .Z(n306) );
  GTECH_XOR2 U351 ( .A(n362), .B(n334), .Z(n358) );
  GTECH_ADD_ABC U352 ( .A(n363), .B(n364), .C(n365), .COUT(n334) );
  GTECH_XOR3 U353 ( .A(n366), .B(n367), .C(n368), .Z(n364) );
  GTECH_OA21 U354 ( .A(n369), .B(n370), .C(n371), .Z(n363) );
  GTECH_XOR4 U355 ( .A(n339), .B(n356), .C(n354), .D(n337), .Z(n362) );
  GTECH_XOR3 U356 ( .A(n349), .B(n351), .C(n350), .Z(n337) );
  GTECH_OAI21 U357 ( .A(n372), .B(n373), .C(n374), .Z(n350) );
  GTECH_NOT U358 ( .A(n375), .Z(n351) );
  GTECH_NAND2 U359 ( .A(I_b[3]), .B(I_a[2]), .Z(n375) );
  GTECH_NOT U360 ( .A(n347), .Z(n349) );
  GTECH_NAND2 U361 ( .A(I_b[2]), .B(I_a[3]), .Z(n347) );
  GTECH_NAND2 U362 ( .A(I_a[5]), .B(I_b[0]), .Z(n354) );
  GTECH_OAI21 U363 ( .A(n368), .B(n376), .C(n377), .Z(n356) );
  GTECH_OAI21 U364 ( .A(n366), .B(n378), .C(n367), .Z(n377) );
  GTECH_NOT U365 ( .A(n376), .Z(n366) );
  GTECH_NOT U366 ( .A(n378), .Z(n368) );
  GTECH_NOT U367 ( .A(n379), .Z(n339) );
  GTECH_NAND2 U368 ( .A(I_a[4]), .B(I_b[1]), .Z(n379) );
  GTECH_NOT U369 ( .A(n380), .Z(n360) );
  GTECH_OR3 U370 ( .A(n381), .B(n315), .C(n344), .Z(n380) );
  GTECH_NOT U371 ( .A(I_b[4]), .Z(n344) );
  GTECH_XOR2 U372 ( .A(n382), .B(n381), .Z(N144) );
  GTECH_XOR2 U373 ( .A(n383), .B(n384), .Z(n381) );
  GTECH_OA21 U374 ( .A(n369), .B(n370), .C(n371), .Z(n384) );
  GTECH_OAI21 U375 ( .A(n385), .B(n386), .C(n387), .Z(n371) );
  GTECH_NOT U376 ( .A(n369), .Z(n386) );
  GTECH_XOR4 U377 ( .A(n367), .B(n378), .C(n376), .D(n365), .Z(n383) );
  GTECH_XOR3 U378 ( .A(n388), .B(n389), .C(n374), .Z(n365) );
  GTECH_OR3 U379 ( .A(n270), .B(n390), .C(n391), .Z(n374) );
  GTECH_NOT U380 ( .A(n373), .Z(n389) );
  GTECH_NAND2 U381 ( .A(I_b[3]), .B(I_a[1]), .Z(n373) );
  GTECH_NOT U382 ( .A(n372), .Z(n388) );
  GTECH_NAND2 U383 ( .A(I_b[2]), .B(I_a[2]), .Z(n372) );
  GTECH_NAND2 U384 ( .A(I_a[4]), .B(I_b[0]), .Z(n376) );
  GTECH_OAI21 U385 ( .A(n392), .B(n393), .C(n394), .Z(n378) );
  GTECH_OAI21 U386 ( .A(n395), .B(n396), .C(n397), .Z(n394) );
  GTECH_NOT U387 ( .A(n396), .Z(n392) );
  GTECH_NOT U388 ( .A(n398), .Z(n367) );
  GTECH_NAND2 U389 ( .A(I_a[3]), .B(I_b[1]), .Z(n398) );
  GTECH_NAND2 U390 ( .A(I_b[4]), .B(I_a[0]), .Z(n382) );
  GTECH_XOR3 U391 ( .A(n387), .B(n370), .C(n369), .Z(N143) );
  GTECH_XOR2 U392 ( .A(n399), .B(n391), .Z(n369) );
  GTECH_NAND2 U393 ( .A(I_b[3]), .B(I_a[0]), .Z(n391) );
  GTECH_AND2 U394 ( .A(I_b[2]), .B(I_a[1]), .Z(n399) );
  GTECH_NOT U395 ( .A(n385), .Z(n370) );
  GTECH_XOR3 U396 ( .A(n395), .B(n397), .C(n396), .Z(n385) );
  GTECH_OAI21 U397 ( .A(n400), .B(n401), .C(n402), .Z(n396) );
  GTECH_NOT U398 ( .A(n403), .Z(n397) );
  GTECH_NAND2 U399 ( .A(I_b[1]), .B(I_a[2]), .Z(n403) );
  GTECH_NOT U400 ( .A(n393), .Z(n395) );
  GTECH_NAND2 U401 ( .A(I_b[0]), .B(I_a[3]), .Z(n393) );
  GTECH_NOT U402 ( .A(n404), .Z(n387) );
  GTECH_OR3 U403 ( .A(n405), .B(n315), .C(n390), .Z(n404) );
  GTECH_NOT U404 ( .A(I_b[2]), .Z(n390) );
  GTECH_NOT U405 ( .A(I_a[0]), .Z(n315) );
  GTECH_XOR2 U406 ( .A(n406), .B(n405), .Z(N142) );
  GTECH_XOR3 U407 ( .A(n407), .B(n408), .C(n402), .Z(n405) );
  GTECH_OR3 U408 ( .A(n409), .B(n410), .C(n270), .Z(n402) );
  GTECH_NOT U409 ( .A(I_a[1]), .Z(n270) );
  GTECH_NOT U410 ( .A(I_b[0]), .Z(n409) );
  GTECH_NOT U411 ( .A(n400), .Z(n408) );
  GTECH_NAND2 U412 ( .A(I_a[1]), .B(I_b[1]), .Z(n400) );
  GTECH_NOT U413 ( .A(n401), .Z(n407) );
  GTECH_NAND2 U414 ( .A(I_b[0]), .B(I_a[2]), .Z(n401) );
  GTECH_NAND2 U415 ( .A(I_b[2]), .B(I_a[0]), .Z(n406) );
  GTECH_XOR2 U416 ( .A(n411), .B(n410), .Z(N141) );
  GTECH_NAND2 U417 ( .A(I_a[0]), .B(I_b[1]), .Z(n410) );
  GTECH_NAND2 U418 ( .A(I_a[1]), .B(I_b[0]), .Z(n411) );
  GTECH_AND2 U419 ( .A(I_a[0]), .B(I_b[0]), .Z(N140) );
endmodule

