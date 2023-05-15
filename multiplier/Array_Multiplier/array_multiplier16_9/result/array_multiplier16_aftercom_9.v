
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
         n412, n413, n414, n415;

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
  GTECH_AND_NOT U106 ( .A(I_a[7]), .B(n122), .Z(n121) );
  GTECH_NOT U107 ( .A(I_b[5]), .Z(n122) );
  GTECH_NOT U108 ( .A(n123), .Z(n120) );
  GTECH_NOT U109 ( .A(n94), .Z(n108) );
  GTECH_NAND2 U110 ( .A(I_a[7]), .B(n123), .Z(n94) );
  GTECH_NOT U111 ( .A(n124), .Z(n106) );
  GTECH_NAND2 U112 ( .A(n125), .B(n126), .Z(n124) );
  GTECH_NOT U113 ( .A(n127), .Z(n126) );
  GTECH_XOR2 U114 ( .A(n127), .B(n128), .Z(N152) );
  GTECH_NOT U115 ( .A(n125), .Z(n128) );
  GTECH_XOR4 U116 ( .A(n119), .B(n116), .C(n129), .D(n123), .Z(n125) );
  GTECH_OAI21 U117 ( .A(n130), .B(n131), .C(n132), .Z(n123) );
  GTECH_OAI21 U118 ( .A(n133), .B(n134), .C(n135), .Z(n132) );
  GTECH_NAND2 U119 ( .A(I_a[7]), .B(I_b[5]), .Z(n129) );
  GTECH_ADD_ABC U120 ( .A(n136), .B(n137), .C(n138), .COUT(n116) );
  GTECH_NOT U121 ( .A(n139), .Z(n138) );
  GTECH_XOR3 U122 ( .A(n133), .B(n135), .C(n130), .Z(n137) );
  GTECH_NOT U123 ( .A(n134), .Z(n130) );
  GTECH_NOT U124 ( .A(n131), .Z(n133) );
  GTECH_XOR3 U125 ( .A(n112), .B(n114), .C(n113), .Z(n119) );
  GTECH_OAI21 U126 ( .A(n140), .B(n141), .C(n142), .Z(n113) );
  GTECH_OAI21 U127 ( .A(n143), .B(n144), .C(n145), .Z(n142) );
  GTECH_NOT U128 ( .A(n144), .Z(n140) );
  GTECH_NOT U129 ( .A(n146), .Z(n114) );
  GTECH_NAND2 U130 ( .A(I_b[7]), .B(I_a[5]), .Z(n146) );
  GTECH_NOT U131 ( .A(n110), .Z(n112) );
  GTECH_NAND2 U132 ( .A(I_b[6]), .B(I_a[6]), .Z(n110) );
  GTECH_ADD_ABC U133 ( .A(n147), .B(n148), .C(n149), .COUT(n127) );
  GTECH_NOT U134 ( .A(n150), .Z(n149) );
  GTECH_OA22 U135 ( .A(n151), .B(n152), .C(n153), .D(n154), .Z(n148) );
  GTECH_OA21 U136 ( .A(n155), .B(n156), .C(n157), .Z(n147) );
  GTECH_XOR3 U137 ( .A(n158), .B(n150), .C(n159), .Z(N151) );
  GTECH_OA21 U138 ( .A(n155), .B(n156), .C(n157), .Z(n159) );
  GTECH_OAI21 U139 ( .A(n160), .B(n161), .C(n162), .Z(n157) );
  GTECH_XOR2 U140 ( .A(n163), .B(n136), .Z(n150) );
  GTECH_ADD_ABC U141 ( .A(n164), .B(n165), .C(n166), .COUT(n136) );
  GTECH_NOT U142 ( .A(n167), .Z(n166) );
  GTECH_XOR3 U143 ( .A(n168), .B(n169), .C(n170), .Z(n165) );
  GTECH_XOR4 U144 ( .A(n135), .B(n134), .C(n131), .D(n139), .Z(n163) );
  GTECH_XOR3 U145 ( .A(n143), .B(n145), .C(n144), .Z(n139) );
  GTECH_OAI21 U146 ( .A(n171), .B(n172), .C(n173), .Z(n144) );
  GTECH_OAI21 U147 ( .A(n174), .B(n175), .C(n176), .Z(n173) );
  GTECH_NOT U148 ( .A(n175), .Z(n171) );
  GTECH_NOT U149 ( .A(n177), .Z(n145) );
  GTECH_NAND2 U150 ( .A(I_b[7]), .B(I_a[4]), .Z(n177) );
  GTECH_NOT U151 ( .A(n141), .Z(n143) );
  GTECH_NAND2 U152 ( .A(I_b[6]), .B(I_a[5]), .Z(n141) );
  GTECH_NAND2 U153 ( .A(I_a[7]), .B(I_b[4]), .Z(n131) );
  GTECH_OAI21 U154 ( .A(n170), .B(n178), .C(n179), .Z(n134) );
  GTECH_OAI21 U155 ( .A(n168), .B(n180), .C(n169), .Z(n179) );
  GTECH_NOT U156 ( .A(n178), .Z(n168) );
  GTECH_NOT U157 ( .A(n180), .Z(n170) );
  GTECH_NOT U158 ( .A(n181), .Z(n135) );
  GTECH_NAND2 U159 ( .A(I_a[6]), .B(I_b[5]), .Z(n181) );
  GTECH_OA22 U160 ( .A(n151), .B(n152), .C(n153), .D(n154), .Z(n158) );
  GTECH_NOT U161 ( .A(n182), .Z(n154) );
  GTECH_NOT U162 ( .A(I_a[7]), .Z(n152) );
  GTECH_XOR3 U163 ( .A(n155), .B(n160), .C(n183), .Z(N150) );
  GTECH_NOT U164 ( .A(n162), .Z(n183) );
  GTECH_XOR2 U165 ( .A(n184), .B(n164), .Z(n162) );
  GTECH_ADD_ABC U166 ( .A(n185), .B(n186), .C(n187), .COUT(n164) );
  GTECH_NOT U167 ( .A(n188), .Z(n187) );
  GTECH_XOR3 U168 ( .A(n189), .B(n190), .C(n191), .Z(n186) );
  GTECH_XOR4 U169 ( .A(n169), .B(n180), .C(n178), .D(n167), .Z(n184) );
  GTECH_XOR3 U170 ( .A(n174), .B(n176), .C(n175), .Z(n167) );
  GTECH_OAI21 U171 ( .A(n192), .B(n193), .C(n194), .Z(n175) );
  GTECH_OAI21 U172 ( .A(n195), .B(n196), .C(n197), .Z(n194) );
  GTECH_NOT U173 ( .A(n196), .Z(n192) );
  GTECH_NOT U174 ( .A(n198), .Z(n176) );
  GTECH_NAND2 U175 ( .A(I_b[7]), .B(I_a[3]), .Z(n198) );
  GTECH_NOT U176 ( .A(n172), .Z(n174) );
  GTECH_NAND2 U177 ( .A(I_b[6]), .B(I_a[4]), .Z(n172) );
  GTECH_NAND2 U178 ( .A(I_a[6]), .B(I_b[4]), .Z(n178) );
  GTECH_OAI21 U179 ( .A(n191), .B(n199), .C(n200), .Z(n180) );
  GTECH_OAI21 U180 ( .A(n189), .B(n201), .C(n190), .Z(n200) );
  GTECH_NOT U181 ( .A(n199), .Z(n189) );
  GTECH_NOT U182 ( .A(n201), .Z(n191) );
  GTECH_NOT U183 ( .A(n202), .Z(n169) );
  GTECH_NAND2 U184 ( .A(I_a[5]), .B(I_b[5]), .Z(n202) );
  GTECH_NOT U185 ( .A(n156), .Z(n160) );
  GTECH_XOR2 U186 ( .A(n182), .B(n153), .Z(n156) );
  GTECH_AOI2N2 U187 ( .A(n203), .B(n204), .C(n205), .D(n206), .Z(n153) );
  GTECH_NAND2 U188 ( .A(n205), .B(n206), .Z(n204) );
  GTECH_XOR2 U189 ( .A(n207), .B(n151), .Z(n182) );
  GTECH_OA21 U190 ( .A(n208), .B(n209), .C(n210), .Z(n151) );
  GTECH_OR_NOT U191 ( .A(n211), .B(n212), .Z(n210) );
  GTECH_AND_NOT U192 ( .A(n211), .B(n212), .Z(n208) );
  GTECH_NAND2 U193 ( .A(I_a[7]), .B(I_b[3]), .Z(n207) );
  GTECH_NOT U194 ( .A(n161), .Z(n155) );
  GTECH_OAI2N2 U195 ( .A(n213), .B(n214), .C(n215), .D(n216), .Z(n161) );
  GTECH_NAND2 U196 ( .A(n213), .B(n214), .Z(n216) );
  GTECH_XOR3 U197 ( .A(n213), .B(n217), .C(n218), .Z(N149) );
  GTECH_NOT U198 ( .A(n215), .Z(n218) );
  GTECH_XOR2 U199 ( .A(n219), .B(n185), .Z(n215) );
  GTECH_ADD_ABC U200 ( .A(n220), .B(n221), .C(n222), .COUT(n185) );
  GTECH_XOR3 U201 ( .A(n223), .B(n224), .C(n225), .Z(n221) );
  GTECH_OA21 U202 ( .A(n226), .B(n227), .C(n228), .Z(n220) );
  GTECH_XOR4 U203 ( .A(n190), .B(n201), .C(n199), .D(n188), .Z(n219) );
  GTECH_XOR3 U204 ( .A(n195), .B(n197), .C(n196), .Z(n188) );
  GTECH_OAI21 U205 ( .A(n229), .B(n230), .C(n231), .Z(n196) );
  GTECH_NOT U206 ( .A(n232), .Z(n197) );
  GTECH_NAND2 U207 ( .A(I_b[7]), .B(I_a[2]), .Z(n232) );
  GTECH_NOT U208 ( .A(n193), .Z(n195) );
  GTECH_NAND2 U209 ( .A(I_b[6]), .B(I_a[3]), .Z(n193) );
  GTECH_NAND2 U210 ( .A(I_a[5]), .B(I_b[4]), .Z(n199) );
  GTECH_OAI21 U211 ( .A(n225), .B(n233), .C(n234), .Z(n201) );
  GTECH_OAI21 U212 ( .A(n223), .B(n235), .C(n224), .Z(n234) );
  GTECH_NOT U213 ( .A(n233), .Z(n223) );
  GTECH_NOT U214 ( .A(n235), .Z(n225) );
  GTECH_NOT U215 ( .A(n236), .Z(n190) );
  GTECH_NAND2 U216 ( .A(I_b[5]), .B(I_a[4]), .Z(n236) );
  GTECH_NOT U217 ( .A(n214), .Z(n217) );
  GTECH_XOR3 U218 ( .A(n237), .B(n205), .C(n203), .Z(n214) );
  GTECH_XOR3 U219 ( .A(n238), .B(n239), .C(n212), .Z(n203) );
  GTECH_OAI21 U220 ( .A(n240), .B(n241), .C(n242), .Z(n212) );
  GTECH_OAI21 U221 ( .A(n243), .B(n244), .C(n245), .Z(n242) );
  GTECH_NOT U222 ( .A(n244), .Z(n240) );
  GTECH_NOT U223 ( .A(n209), .Z(n239) );
  GTECH_NAND2 U224 ( .A(I_a[6]), .B(I_b[3]), .Z(n209) );
  GTECH_NOT U225 ( .A(n211), .Z(n238) );
  GTECH_NAND2 U226 ( .A(I_a[7]), .B(I_b[2]), .Z(n211) );
  GTECH_ADD_ABC U227 ( .A(n246), .B(n247), .C(n248), .COUT(n205) );
  GTECH_XOR2 U228 ( .A(n249), .B(n250), .Z(n247) );
  GTECH_AND_NOT U229 ( .A(I_a[7]), .B(n251), .Z(n250) );
  GTECH_NOT U230 ( .A(I_b[1]), .Z(n251) );
  GTECH_NOT U231 ( .A(n252), .Z(n249) );
  GTECH_NOT U232 ( .A(n206), .Z(n237) );
  GTECH_NAND2 U233 ( .A(I_a[7]), .B(n252), .Z(n206) );
  GTECH_ADD_ABC U234 ( .A(n253), .B(n254), .C(n255), .COUT(n213) );
  GTECH_XOR3 U235 ( .A(n246), .B(n256), .C(n248), .Z(n254) );
  GTECH_NOT U236 ( .A(n257), .Z(n248) );
  GTECH_XOR2 U237 ( .A(n253), .B(n258), .Z(N148) );
  GTECH_XOR4 U238 ( .A(n256), .B(n257), .C(n255), .D(n246), .Z(n258) );
  GTECH_ADD_ABC U239 ( .A(n259), .B(n260), .C(n261), .COUT(n246) );
  GTECH_XOR3 U240 ( .A(n262), .B(n263), .C(n264), .Z(n260) );
  GTECH_XOR2 U241 ( .A(n265), .B(n266), .Z(n255) );
  GTECH_OA21 U242 ( .A(n226), .B(n227), .C(n228), .Z(n266) );
  GTECH_OAI21 U243 ( .A(n267), .B(n268), .C(n269), .Z(n228) );
  GTECH_NOT U244 ( .A(n226), .Z(n268) );
  GTECH_XOR4 U245 ( .A(n224), .B(n235), .C(n233), .D(n222), .Z(n265) );
  GTECH_XOR3 U246 ( .A(n270), .B(n271), .C(n231), .Z(n222) );
  GTECH_NAND3 U247 ( .A(I_b[6]), .B(I_a[1]), .C(n272), .Z(n231) );
  GTECH_NOT U248 ( .A(n230), .Z(n271) );
  GTECH_NAND2 U249 ( .A(I_b[7]), .B(I_a[1]), .Z(n230) );
  GTECH_NOT U250 ( .A(n229), .Z(n270) );
  GTECH_NAND2 U251 ( .A(I_b[6]), .B(I_a[2]), .Z(n229) );
  GTECH_NAND2 U252 ( .A(I_b[4]), .B(I_a[4]), .Z(n233) );
  GTECH_OAI21 U253 ( .A(n273), .B(n274), .C(n275), .Z(n235) );
  GTECH_OAI21 U254 ( .A(n276), .B(n277), .C(n278), .Z(n275) );
  GTECH_NOT U255 ( .A(n277), .Z(n273) );
  GTECH_NOT U256 ( .A(n279), .Z(n224) );
  GTECH_NAND2 U257 ( .A(I_b[5]), .B(I_a[3]), .Z(n279) );
  GTECH_XOR3 U258 ( .A(n243), .B(n245), .C(n244), .Z(n257) );
  GTECH_OAI21 U259 ( .A(n280), .B(n281), .C(n282), .Z(n244) );
  GTECH_OAI21 U260 ( .A(n283), .B(n284), .C(n285), .Z(n282) );
  GTECH_NOT U261 ( .A(n284), .Z(n280) );
  GTECH_NOT U262 ( .A(n286), .Z(n245) );
  GTECH_NAND2 U263 ( .A(I_a[5]), .B(I_b[3]), .Z(n286) );
  GTECH_NOT U264 ( .A(n241), .Z(n243) );
  GTECH_NAND2 U265 ( .A(I_a[6]), .B(I_b[2]), .Z(n241) );
  GTECH_XOR2 U266 ( .A(n287), .B(n252), .Z(n256) );
  GTECH_OAI21 U267 ( .A(n264), .B(n288), .C(n289), .Z(n252) );
  GTECH_OAI21 U268 ( .A(n262), .B(n290), .C(n263), .Z(n289) );
  GTECH_NOT U269 ( .A(n290), .Z(n264) );
  GTECH_NAND2 U270 ( .A(I_a[7]), .B(I_b[1]), .Z(n287) );
  GTECH_ADD_ABC U271 ( .A(n291), .B(n292), .C(n293), .COUT(n253) );
  GTECH_NOT U272 ( .A(n294), .Z(n293) );
  GTECH_XOR3 U273 ( .A(n259), .B(n295), .C(n261), .Z(n292) );
  GTECH_NOT U274 ( .A(n296), .Z(n261) );
  GTECH_NOT U275 ( .A(n297), .Z(n295) );
  GTECH_XOR2 U276 ( .A(n298), .B(n291), .Z(N147) );
  GTECH_ADD_ABC U277 ( .A(n299), .B(n300), .C(n301), .COUT(n291) );
  GTECH_XOR3 U278 ( .A(n302), .B(n303), .C(n304), .Z(n300) );
  GTECH_OA21 U279 ( .A(n305), .B(n306), .C(n307), .Z(n299) );
  GTECH_XOR4 U280 ( .A(n296), .B(n259), .C(n297), .D(n294), .Z(n298) );
  GTECH_XOR3 U281 ( .A(n269), .B(n227), .C(n226), .Z(n294) );
  GTECH_XOR2 U282 ( .A(n308), .B(n272), .Z(n226) );
  GTECH_NOT U283 ( .A(n309), .Z(n272) );
  GTECH_NAND2 U284 ( .A(I_b[7]), .B(I_a[0]), .Z(n309) );
  GTECH_NAND2 U285 ( .A(I_b[6]), .B(I_a[1]), .Z(n308) );
  GTECH_NOT U286 ( .A(n267), .Z(n227) );
  GTECH_XOR3 U287 ( .A(n276), .B(n278), .C(n277), .Z(n267) );
  GTECH_OAI21 U288 ( .A(n310), .B(n311), .C(n312), .Z(n277) );
  GTECH_NOT U289 ( .A(n313), .Z(n278) );
  GTECH_NAND2 U290 ( .A(I_b[5]), .B(I_a[2]), .Z(n313) );
  GTECH_NOT U291 ( .A(n274), .Z(n276) );
  GTECH_NAND2 U292 ( .A(I_b[4]), .B(I_a[3]), .Z(n274) );
  GTECH_NOT U293 ( .A(n314), .Z(n269) );
  GTECH_NAND3 U294 ( .A(I_a[0]), .B(n315), .C(I_b[6]), .Z(n314) );
  GTECH_NOT U295 ( .A(n316), .Z(n315) );
  GTECH_XOR3 U296 ( .A(n262), .B(n263), .C(n290), .Z(n297) );
  GTECH_OAI21 U297 ( .A(n317), .B(n318), .C(n319), .Z(n290) );
  GTECH_OAI21 U298 ( .A(n320), .B(n321), .C(n322), .Z(n319) );
  GTECH_NOT U299 ( .A(n323), .Z(n263) );
  GTECH_NAND2 U300 ( .A(I_a[6]), .B(I_b[1]), .Z(n323) );
  GTECH_NOT U301 ( .A(n288), .Z(n262) );
  GTECH_NAND2 U302 ( .A(I_a[7]), .B(I_b[0]), .Z(n288) );
  GTECH_ADD_ABC U303 ( .A(n302), .B(n324), .C(n304), .COUT(n259) );
  GTECH_NOT U304 ( .A(n325), .Z(n304) );
  GTECH_XOR3 U305 ( .A(n320), .B(n322), .C(n317), .Z(n324) );
  GTECH_NOT U306 ( .A(n321), .Z(n317) );
  GTECH_XOR3 U307 ( .A(n283), .B(n285), .C(n284), .Z(n296) );
  GTECH_OAI21 U308 ( .A(n326), .B(n327), .C(n328), .Z(n284) );
  GTECH_OAI21 U309 ( .A(n329), .B(n330), .C(n331), .Z(n328) );
  GTECH_NOT U310 ( .A(n330), .Z(n326) );
  GTECH_NOT U311 ( .A(n332), .Z(n285) );
  GTECH_NAND2 U312 ( .A(I_b[3]), .B(I_a[4]), .Z(n332) );
  GTECH_NOT U313 ( .A(n281), .Z(n283) );
  GTECH_NAND2 U314 ( .A(I_a[5]), .B(I_b[2]), .Z(n281) );
  GTECH_XOR2 U315 ( .A(n333), .B(n334), .Z(N146) );
  GTECH_XOR4 U316 ( .A(n303), .B(n325), .C(n301), .D(n302), .Z(n334) );
  GTECH_ADD_ABC U317 ( .A(n335), .B(n336), .C(n337), .COUT(n302) );
  GTECH_NOT U318 ( .A(n338), .Z(n337) );
  GTECH_XOR3 U319 ( .A(n339), .B(n340), .C(n341), .Z(n336) );
  GTECH_XOR2 U320 ( .A(n316), .B(n342), .Z(n301) );
  GTECH_AND_NOT U321 ( .A(I_b[6]), .B(n343), .Z(n342) );
  GTECH_XOR3 U322 ( .A(n344), .B(n345), .C(n312), .Z(n316) );
  GTECH_NAND3 U323 ( .A(I_b[4]), .B(I_a[1]), .C(n346), .Z(n312) );
  GTECH_NOT U324 ( .A(n311), .Z(n345) );
  GTECH_NAND2 U325 ( .A(I_b[5]), .B(I_a[1]), .Z(n311) );
  GTECH_NOT U326 ( .A(n310), .Z(n344) );
  GTECH_NAND2 U327 ( .A(I_b[4]), .B(I_a[2]), .Z(n310) );
  GTECH_XOR3 U328 ( .A(n329), .B(n331), .C(n330), .Z(n325) );
  GTECH_OAI21 U329 ( .A(n347), .B(n348), .C(n349), .Z(n330) );
  GTECH_OAI21 U330 ( .A(n350), .B(n351), .C(n352), .Z(n349) );
  GTECH_NOT U331 ( .A(n351), .Z(n347) );
  GTECH_NOT U332 ( .A(n353), .Z(n331) );
  GTECH_NAND2 U333 ( .A(I_b[3]), .B(I_a[3]), .Z(n353) );
  GTECH_NOT U334 ( .A(n327), .Z(n329) );
  GTECH_NAND2 U335 ( .A(I_b[2]), .B(I_a[4]), .Z(n327) );
  GTECH_NOT U336 ( .A(n354), .Z(n303) );
  GTECH_XOR3 U337 ( .A(n320), .B(n322), .C(n321), .Z(n354) );
  GTECH_OAI21 U338 ( .A(n341), .B(n355), .C(n356), .Z(n321) );
  GTECH_OAI21 U339 ( .A(n339), .B(n357), .C(n340), .Z(n356) );
  GTECH_NOT U340 ( .A(n355), .Z(n339) );
  GTECH_NOT U341 ( .A(n357), .Z(n341) );
  GTECH_NOT U342 ( .A(n358), .Z(n322) );
  GTECH_NAND2 U343 ( .A(I_a[5]), .B(I_b[1]), .Z(n358) );
  GTECH_NOT U344 ( .A(n318), .Z(n320) );
  GTECH_NAND2 U345 ( .A(I_a[6]), .B(I_b[0]), .Z(n318) );
  GTECH_OA21 U346 ( .A(n305), .B(n306), .C(n307), .Z(n333) );
  GTECH_OAI21 U347 ( .A(n359), .B(n360), .C(n361), .Z(n307) );
  GTECH_NOT U348 ( .A(n305), .Z(n360) );
  GTECH_XOR3 U349 ( .A(n361), .B(n306), .C(n305), .Z(N145) );
  GTECH_XOR2 U350 ( .A(n362), .B(n346), .Z(n305) );
  GTECH_NOT U351 ( .A(n363), .Z(n346) );
  GTECH_NAND2 U352 ( .A(I_b[5]), .B(I_a[0]), .Z(n363) );
  GTECH_NAND2 U353 ( .A(I_b[4]), .B(I_a[1]), .Z(n362) );
  GTECH_NOT U354 ( .A(n359), .Z(n306) );
  GTECH_XOR2 U355 ( .A(n364), .B(n335), .Z(n359) );
  GTECH_ADD_ABC U356 ( .A(n365), .B(n366), .C(n367), .COUT(n335) );
  GTECH_XOR3 U357 ( .A(n368), .B(n369), .C(n370), .Z(n366) );
  GTECH_OA21 U358 ( .A(n371), .B(n372), .C(n373), .Z(n365) );
  GTECH_XOR4 U359 ( .A(n340), .B(n357), .C(n355), .D(n338), .Z(n364) );
  GTECH_XOR3 U360 ( .A(n350), .B(n352), .C(n351), .Z(n338) );
  GTECH_OAI21 U361 ( .A(n374), .B(n375), .C(n376), .Z(n351) );
  GTECH_NOT U362 ( .A(n377), .Z(n352) );
  GTECH_NAND2 U363 ( .A(I_b[3]), .B(I_a[2]), .Z(n377) );
  GTECH_NOT U364 ( .A(n348), .Z(n350) );
  GTECH_NAND2 U365 ( .A(I_b[2]), .B(I_a[3]), .Z(n348) );
  GTECH_NAND2 U366 ( .A(I_a[5]), .B(I_b[0]), .Z(n355) );
  GTECH_OAI21 U367 ( .A(n370), .B(n378), .C(n379), .Z(n357) );
  GTECH_OAI21 U368 ( .A(n368), .B(n380), .C(n369), .Z(n379) );
  GTECH_NOT U369 ( .A(n380), .Z(n370) );
  GTECH_NOT U370 ( .A(n381), .Z(n340) );
  GTECH_NAND2 U371 ( .A(I_a[4]), .B(I_b[1]), .Z(n381) );
  GTECH_NOT U372 ( .A(n382), .Z(n361) );
  GTECH_NAND3 U373 ( .A(I_a[0]), .B(n383), .C(I_b[4]), .Z(n382) );
  GTECH_XOR2 U374 ( .A(n384), .B(n383), .Z(N144) );
  GTECH_XOR2 U375 ( .A(n385), .B(n386), .Z(n383) );
  GTECH_XOR4 U376 ( .A(n369), .B(n380), .C(n367), .D(n368), .Z(n386) );
  GTECH_NOT U377 ( .A(n378), .Z(n368) );
  GTECH_NAND2 U378 ( .A(I_a[4]), .B(I_b[0]), .Z(n378) );
  GTECH_XOR3 U379 ( .A(n387), .B(n388), .C(n376), .Z(n367) );
  GTECH_NAND3 U380 ( .A(I_b[2]), .B(I_a[1]), .C(n389), .Z(n376) );
  GTECH_NOT U381 ( .A(n375), .Z(n388) );
  GTECH_NAND2 U382 ( .A(I_b[3]), .B(I_a[1]), .Z(n375) );
  GTECH_NOT U383 ( .A(n374), .Z(n387) );
  GTECH_NAND2 U384 ( .A(I_b[2]), .B(I_a[2]), .Z(n374) );
  GTECH_OAI21 U385 ( .A(n390), .B(n391), .C(n392), .Z(n380) );
  GTECH_OAI21 U386 ( .A(n393), .B(n394), .C(n395), .Z(n392) );
  GTECH_NOT U387 ( .A(n394), .Z(n390) );
  GTECH_NOT U388 ( .A(n396), .Z(n369) );
  GTECH_NAND2 U389 ( .A(I_a[3]), .B(I_b[1]), .Z(n396) );
  GTECH_OA21 U390 ( .A(n371), .B(n372), .C(n373), .Z(n385) );
  GTECH_OAI21 U391 ( .A(n397), .B(n398), .C(n399), .Z(n373) );
  GTECH_NOT U392 ( .A(n371), .Z(n398) );
  GTECH_AND_NOT U393 ( .A(I_b[4]), .B(n343), .Z(n384) );
  GTECH_XOR3 U394 ( .A(n399), .B(n372), .C(n371), .Z(N143) );
  GTECH_XOR2 U395 ( .A(n400), .B(n389), .Z(n371) );
  GTECH_NOT U396 ( .A(n401), .Z(n389) );
  GTECH_NAND2 U397 ( .A(I_b[3]), .B(I_a[0]), .Z(n401) );
  GTECH_NAND2 U398 ( .A(I_b[2]), .B(I_a[1]), .Z(n400) );
  GTECH_NOT U399 ( .A(n397), .Z(n372) );
  GTECH_XOR3 U400 ( .A(n393), .B(n395), .C(n394), .Z(n397) );
  GTECH_OAI21 U401 ( .A(n402), .B(n403), .C(n404), .Z(n394) );
  GTECH_NOT U402 ( .A(n405), .Z(n395) );
  GTECH_NAND2 U403 ( .A(I_b[1]), .B(I_a[2]), .Z(n405) );
  GTECH_NOT U404 ( .A(n391), .Z(n393) );
  GTECH_NAND2 U405 ( .A(I_b[0]), .B(I_a[3]), .Z(n391) );
  GTECH_NOT U406 ( .A(n406), .Z(n399) );
  GTECH_NAND3 U407 ( .A(I_a[0]), .B(n407), .C(I_b[2]), .Z(n406) );
  GTECH_XOR2 U408 ( .A(n408), .B(n407), .Z(N142) );
  GTECH_NOT U409 ( .A(n409), .Z(n407) );
  GTECH_XOR3 U410 ( .A(n410), .B(n411), .C(n404), .Z(n409) );
  GTECH_NAND3 U411 ( .A(n412), .B(I_b[0]), .C(I_a[1]), .Z(n404) );
  GTECH_NOT U412 ( .A(n402), .Z(n411) );
  GTECH_NAND2 U413 ( .A(I_a[1]), .B(I_b[1]), .Z(n402) );
  GTECH_NOT U414 ( .A(n403), .Z(n410) );
  GTECH_NAND2 U415 ( .A(I_b[0]), .B(I_a[2]), .Z(n403) );
  GTECH_AND_NOT U416 ( .A(I_b[2]), .B(n343), .Z(n408) );
  GTECH_NOT U417 ( .A(I_a[0]), .Z(n343) );
  GTECH_XOR2 U418 ( .A(n412), .B(n413), .Z(N141) );
  GTECH_AND_NOT U419 ( .A(I_a[1]), .B(n414), .Z(n413) );
  GTECH_NOT U420 ( .A(n415), .Z(n412) );
  GTECH_NAND2 U421 ( .A(I_a[0]), .B(I_b[1]), .Z(n415) );
  GTECH_AND_NOT U422 ( .A(I_a[0]), .B(n414), .Z(N140) );
  GTECH_NOT U423 ( .A(I_b[0]), .Z(n414) );
endmodule

