
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
         n412, n413, n414, n415, n416, n417;

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
  GTECH_AND_NOT U107 ( .A(I_a[7]), .B(n123), .Z(n122) );
  GTECH_NOT U108 ( .A(I_b[5]), .Z(n123) );
  GTECH_NOT U109 ( .A(n124), .Z(n121) );
  GTECH_NOT U110 ( .A(n94), .Z(n96) );
  GTECH_NAND2 U111 ( .A(I_a[7]), .B(n124), .Z(n94) );
  GTECH_NOT U112 ( .A(n125), .Z(n108) );
  GTECH_NAND2 U113 ( .A(n126), .B(n127), .Z(n125) );
  GTECH_NOT U114 ( .A(n128), .Z(n127) );
  GTECH_XOR2 U115 ( .A(n128), .B(n129), .Z(N152) );
  GTECH_NOT U116 ( .A(n126), .Z(n129) );
  GTECH_XOR4 U117 ( .A(n120), .B(n117), .C(n130), .D(n124), .Z(n126) );
  GTECH_OAI21 U118 ( .A(n131), .B(n132), .C(n133), .Z(n124) );
  GTECH_OAI21 U119 ( .A(n134), .B(n135), .C(n136), .Z(n133) );
  GTECH_NAND2 U120 ( .A(I_a[7]), .B(I_b[5]), .Z(n130) );
  GTECH_ADD_ABC U121 ( .A(n137), .B(n138), .C(n139), .COUT(n117) );
  GTECH_NOT U122 ( .A(n140), .Z(n139) );
  GTECH_XOR3 U123 ( .A(n134), .B(n136), .C(n131), .Z(n138) );
  GTECH_NOT U124 ( .A(n135), .Z(n131) );
  GTECH_NOT U125 ( .A(n132), .Z(n134) );
  GTECH_XOR3 U126 ( .A(n113), .B(n115), .C(n114), .Z(n120) );
  GTECH_OAI21 U127 ( .A(n141), .B(n142), .C(n143), .Z(n114) );
  GTECH_OAI21 U128 ( .A(n144), .B(n145), .C(n146), .Z(n143) );
  GTECH_NOT U129 ( .A(n145), .Z(n141) );
  GTECH_NOT U130 ( .A(n147), .Z(n115) );
  GTECH_NAND2 U131 ( .A(I_b[7]), .B(I_a[5]), .Z(n147) );
  GTECH_NOT U132 ( .A(n111), .Z(n113) );
  GTECH_NAND2 U133 ( .A(I_b[6]), .B(I_a[6]), .Z(n111) );
  GTECH_ADD_ABC U134 ( .A(n148), .B(n149), .C(n150), .COUT(n128) );
  GTECH_NOT U135 ( .A(n151), .Z(n150) );
  GTECH_OA22 U136 ( .A(n152), .B(n153), .C(n154), .D(n155), .Z(n149) );
  GTECH_OA21 U137 ( .A(n156), .B(n157), .C(n158), .Z(n148) );
  GTECH_XOR3 U138 ( .A(n159), .B(n151), .C(n160), .Z(N151) );
  GTECH_OA21 U139 ( .A(n156), .B(n157), .C(n158), .Z(n160) );
  GTECH_OAI21 U140 ( .A(n161), .B(n162), .C(n163), .Z(n158) );
  GTECH_XOR2 U141 ( .A(n164), .B(n137), .Z(n151) );
  GTECH_ADD_ABC U142 ( .A(n165), .B(n166), .C(n167), .COUT(n137) );
  GTECH_NOT U143 ( .A(n168), .Z(n167) );
  GTECH_XOR3 U144 ( .A(n169), .B(n170), .C(n171), .Z(n166) );
  GTECH_XOR4 U145 ( .A(n136), .B(n135), .C(n132), .D(n140), .Z(n164) );
  GTECH_XOR3 U146 ( .A(n144), .B(n146), .C(n145), .Z(n140) );
  GTECH_OAI21 U147 ( .A(n172), .B(n173), .C(n174), .Z(n145) );
  GTECH_OAI21 U148 ( .A(n175), .B(n176), .C(n177), .Z(n174) );
  GTECH_NOT U149 ( .A(n176), .Z(n172) );
  GTECH_NOT U150 ( .A(n178), .Z(n146) );
  GTECH_NAND2 U151 ( .A(I_b[7]), .B(I_a[4]), .Z(n178) );
  GTECH_NOT U152 ( .A(n142), .Z(n144) );
  GTECH_NAND2 U153 ( .A(I_b[6]), .B(I_a[5]), .Z(n142) );
  GTECH_NAND2 U154 ( .A(I_a[7]), .B(I_b[4]), .Z(n132) );
  GTECH_OAI21 U155 ( .A(n171), .B(n179), .C(n180), .Z(n135) );
  GTECH_OAI21 U156 ( .A(n169), .B(n181), .C(n170), .Z(n180) );
  GTECH_NOT U157 ( .A(n179), .Z(n169) );
  GTECH_NOT U158 ( .A(n181), .Z(n171) );
  GTECH_NOT U159 ( .A(n182), .Z(n136) );
  GTECH_NAND2 U160 ( .A(I_a[6]), .B(I_b[5]), .Z(n182) );
  GTECH_OA22 U161 ( .A(n152), .B(n153), .C(n154), .D(n155), .Z(n159) );
  GTECH_NOT U162 ( .A(n183), .Z(n155) );
  GTECH_NOT U163 ( .A(I_a[7]), .Z(n153) );
  GTECH_XOR3 U164 ( .A(n156), .B(n161), .C(n184), .Z(N150) );
  GTECH_NOT U165 ( .A(n163), .Z(n184) );
  GTECH_XOR2 U166 ( .A(n185), .B(n165), .Z(n163) );
  GTECH_ADD_ABC U167 ( .A(n186), .B(n187), .C(n188), .COUT(n165) );
  GTECH_NOT U168 ( .A(n189), .Z(n188) );
  GTECH_XOR3 U169 ( .A(n190), .B(n191), .C(n192), .Z(n187) );
  GTECH_XOR4 U170 ( .A(n170), .B(n181), .C(n179), .D(n168), .Z(n185) );
  GTECH_XOR3 U171 ( .A(n175), .B(n177), .C(n176), .Z(n168) );
  GTECH_OAI21 U172 ( .A(n193), .B(n194), .C(n195), .Z(n176) );
  GTECH_OAI21 U173 ( .A(n196), .B(n197), .C(n198), .Z(n195) );
  GTECH_NOT U174 ( .A(n197), .Z(n193) );
  GTECH_NOT U175 ( .A(n199), .Z(n177) );
  GTECH_NAND2 U176 ( .A(I_b[7]), .B(I_a[3]), .Z(n199) );
  GTECH_NOT U177 ( .A(n173), .Z(n175) );
  GTECH_NAND2 U178 ( .A(I_b[6]), .B(I_a[4]), .Z(n173) );
  GTECH_NAND2 U179 ( .A(I_a[6]), .B(I_b[4]), .Z(n179) );
  GTECH_OAI21 U180 ( .A(n192), .B(n200), .C(n201), .Z(n181) );
  GTECH_OAI21 U181 ( .A(n190), .B(n202), .C(n191), .Z(n201) );
  GTECH_NOT U182 ( .A(n200), .Z(n190) );
  GTECH_NOT U183 ( .A(n202), .Z(n192) );
  GTECH_NOT U184 ( .A(n203), .Z(n170) );
  GTECH_NAND2 U185 ( .A(I_a[5]), .B(I_b[5]), .Z(n203) );
  GTECH_NOT U186 ( .A(n157), .Z(n161) );
  GTECH_XOR2 U187 ( .A(n183), .B(n154), .Z(n157) );
  GTECH_AOI2N2 U188 ( .A(n204), .B(n205), .C(n206), .D(n207), .Z(n154) );
  GTECH_NAND2 U189 ( .A(n206), .B(n207), .Z(n205) );
  GTECH_XOR2 U190 ( .A(n208), .B(n152), .Z(n183) );
  GTECH_OA21 U191 ( .A(n209), .B(n210), .C(n211), .Z(n152) );
  GTECH_OR_NOT U192 ( .A(n212), .B(n213), .Z(n211) );
  GTECH_AND_NOT U193 ( .A(n212), .B(n213), .Z(n209) );
  GTECH_NAND2 U194 ( .A(I_a[7]), .B(I_b[3]), .Z(n208) );
  GTECH_NOT U195 ( .A(n162), .Z(n156) );
  GTECH_OAI21 U196 ( .A(n214), .B(n215), .C(n216), .Z(n162) );
  GTECH_OAI21 U197 ( .A(n217), .B(n218), .C(n219), .Z(n216) );
  GTECH_NOT U198 ( .A(n214), .Z(n218) );
  GTECH_XOR3 U199 ( .A(n214), .B(n217), .C(n220), .Z(N149) );
  GTECH_NOT U200 ( .A(n219), .Z(n220) );
  GTECH_XOR2 U201 ( .A(n221), .B(n186), .Z(n219) );
  GTECH_ADD_ABC U202 ( .A(n222), .B(n223), .C(n224), .COUT(n186) );
  GTECH_XOR3 U203 ( .A(n225), .B(n226), .C(n227), .Z(n223) );
  GTECH_OA21 U204 ( .A(n228), .B(n229), .C(n230), .Z(n222) );
  GTECH_XOR4 U205 ( .A(n191), .B(n202), .C(n200), .D(n189), .Z(n221) );
  GTECH_XOR3 U206 ( .A(n196), .B(n198), .C(n197), .Z(n189) );
  GTECH_OAI21 U207 ( .A(n231), .B(n232), .C(n233), .Z(n197) );
  GTECH_NOT U208 ( .A(n234), .Z(n198) );
  GTECH_NAND2 U209 ( .A(I_b[7]), .B(I_a[2]), .Z(n234) );
  GTECH_NOT U210 ( .A(n194), .Z(n196) );
  GTECH_NAND2 U211 ( .A(I_b[6]), .B(I_a[3]), .Z(n194) );
  GTECH_NAND2 U212 ( .A(I_a[5]), .B(I_b[4]), .Z(n200) );
  GTECH_OAI21 U213 ( .A(n227), .B(n235), .C(n236), .Z(n202) );
  GTECH_OAI21 U214 ( .A(n225), .B(n237), .C(n226), .Z(n236) );
  GTECH_NOT U215 ( .A(n235), .Z(n225) );
  GTECH_NOT U216 ( .A(n237), .Z(n227) );
  GTECH_NOT U217 ( .A(n238), .Z(n191) );
  GTECH_NAND2 U218 ( .A(I_b[5]), .B(I_a[4]), .Z(n238) );
  GTECH_NOT U219 ( .A(n215), .Z(n217) );
  GTECH_XOR3 U220 ( .A(n239), .B(n206), .C(n204), .Z(n215) );
  GTECH_XOR3 U221 ( .A(n240), .B(n241), .C(n213), .Z(n204) );
  GTECH_OAI21 U222 ( .A(n242), .B(n243), .C(n244), .Z(n213) );
  GTECH_OAI21 U223 ( .A(n245), .B(n246), .C(n247), .Z(n244) );
  GTECH_NOT U224 ( .A(n246), .Z(n242) );
  GTECH_NOT U225 ( .A(n210), .Z(n241) );
  GTECH_NAND2 U226 ( .A(I_a[6]), .B(I_b[3]), .Z(n210) );
  GTECH_NOT U227 ( .A(n212), .Z(n240) );
  GTECH_NAND2 U228 ( .A(I_a[7]), .B(I_b[2]), .Z(n212) );
  GTECH_ADD_ABC U229 ( .A(n248), .B(n249), .C(n250), .COUT(n206) );
  GTECH_XOR2 U230 ( .A(n251), .B(n252), .Z(n249) );
  GTECH_AND_NOT U231 ( .A(I_a[7]), .B(n253), .Z(n252) );
  GTECH_NOT U232 ( .A(I_b[1]), .Z(n253) );
  GTECH_NOT U233 ( .A(n254), .Z(n251) );
  GTECH_NOT U234 ( .A(n207), .Z(n239) );
  GTECH_NAND2 U235 ( .A(I_a[7]), .B(n254), .Z(n207) );
  GTECH_ADD_ABC U236 ( .A(n255), .B(n256), .C(n257), .COUT(n214) );
  GTECH_XOR3 U237 ( .A(n248), .B(n258), .C(n250), .Z(n256) );
  GTECH_NOT U238 ( .A(n259), .Z(n250) );
  GTECH_XOR2 U239 ( .A(n255), .B(n260), .Z(N148) );
  GTECH_XOR4 U240 ( .A(n258), .B(n259), .C(n257), .D(n248), .Z(n260) );
  GTECH_ADD_ABC U241 ( .A(n261), .B(n262), .C(n263), .COUT(n248) );
  GTECH_XOR3 U242 ( .A(n264), .B(n265), .C(n266), .Z(n262) );
  GTECH_XOR2 U243 ( .A(n267), .B(n268), .Z(n257) );
  GTECH_OA21 U244 ( .A(n228), .B(n229), .C(n230), .Z(n268) );
  GTECH_OAI21 U245 ( .A(n269), .B(n270), .C(n271), .Z(n230) );
  GTECH_NOT U246 ( .A(n228), .Z(n270) );
  GTECH_XOR4 U247 ( .A(n226), .B(n237), .C(n235), .D(n224), .Z(n267) );
  GTECH_XOR3 U248 ( .A(n272), .B(n273), .C(n233), .Z(n224) );
  GTECH_NAND3 U249 ( .A(I_b[6]), .B(I_a[1]), .C(n274), .Z(n233) );
  GTECH_NOT U250 ( .A(n232), .Z(n273) );
  GTECH_NAND2 U251 ( .A(I_b[7]), .B(I_a[1]), .Z(n232) );
  GTECH_NOT U252 ( .A(n231), .Z(n272) );
  GTECH_NAND2 U253 ( .A(I_b[6]), .B(I_a[2]), .Z(n231) );
  GTECH_NAND2 U254 ( .A(I_b[4]), .B(I_a[4]), .Z(n235) );
  GTECH_OAI21 U255 ( .A(n275), .B(n276), .C(n277), .Z(n237) );
  GTECH_OAI21 U256 ( .A(n278), .B(n279), .C(n280), .Z(n277) );
  GTECH_NOT U257 ( .A(n279), .Z(n275) );
  GTECH_NOT U258 ( .A(n281), .Z(n226) );
  GTECH_NAND2 U259 ( .A(I_b[5]), .B(I_a[3]), .Z(n281) );
  GTECH_XOR3 U260 ( .A(n245), .B(n247), .C(n246), .Z(n259) );
  GTECH_OAI21 U261 ( .A(n282), .B(n283), .C(n284), .Z(n246) );
  GTECH_OAI21 U262 ( .A(n285), .B(n286), .C(n287), .Z(n284) );
  GTECH_NOT U263 ( .A(n286), .Z(n282) );
  GTECH_NOT U264 ( .A(n288), .Z(n247) );
  GTECH_NAND2 U265 ( .A(I_a[5]), .B(I_b[3]), .Z(n288) );
  GTECH_NOT U266 ( .A(n243), .Z(n245) );
  GTECH_NAND2 U267 ( .A(I_a[6]), .B(I_b[2]), .Z(n243) );
  GTECH_XOR2 U268 ( .A(n289), .B(n254), .Z(n258) );
  GTECH_OAI21 U269 ( .A(n266), .B(n290), .C(n291), .Z(n254) );
  GTECH_OAI21 U270 ( .A(n264), .B(n292), .C(n265), .Z(n291) );
  GTECH_NOT U271 ( .A(n292), .Z(n266) );
  GTECH_NAND2 U272 ( .A(I_a[7]), .B(I_b[1]), .Z(n289) );
  GTECH_ADD_ABC U273 ( .A(n293), .B(n294), .C(n295), .COUT(n255) );
  GTECH_NOT U274 ( .A(n296), .Z(n295) );
  GTECH_XOR3 U275 ( .A(n261), .B(n297), .C(n263), .Z(n294) );
  GTECH_NOT U276 ( .A(n298), .Z(n263) );
  GTECH_NOT U277 ( .A(n299), .Z(n297) );
  GTECH_XOR2 U278 ( .A(n300), .B(n293), .Z(N147) );
  GTECH_ADD_ABC U279 ( .A(n301), .B(n302), .C(n303), .COUT(n293) );
  GTECH_XOR3 U280 ( .A(n304), .B(n305), .C(n306), .Z(n302) );
  GTECH_OA21 U281 ( .A(n307), .B(n308), .C(n309), .Z(n301) );
  GTECH_XOR4 U282 ( .A(n298), .B(n261), .C(n299), .D(n296), .Z(n300) );
  GTECH_XOR3 U283 ( .A(n271), .B(n229), .C(n228), .Z(n296) );
  GTECH_XOR2 U284 ( .A(n310), .B(n274), .Z(n228) );
  GTECH_NOT U285 ( .A(n311), .Z(n274) );
  GTECH_NAND2 U286 ( .A(I_b[7]), .B(I_a[0]), .Z(n311) );
  GTECH_NAND2 U287 ( .A(I_b[6]), .B(I_a[1]), .Z(n310) );
  GTECH_NOT U288 ( .A(n269), .Z(n229) );
  GTECH_XOR3 U289 ( .A(n278), .B(n280), .C(n279), .Z(n269) );
  GTECH_OAI21 U290 ( .A(n312), .B(n313), .C(n314), .Z(n279) );
  GTECH_NOT U291 ( .A(n315), .Z(n280) );
  GTECH_NAND2 U292 ( .A(I_b[5]), .B(I_a[2]), .Z(n315) );
  GTECH_NOT U293 ( .A(n276), .Z(n278) );
  GTECH_NAND2 U294 ( .A(I_b[4]), .B(I_a[3]), .Z(n276) );
  GTECH_NOT U295 ( .A(n316), .Z(n271) );
  GTECH_NAND3 U296 ( .A(I_a[0]), .B(n317), .C(I_b[6]), .Z(n316) );
  GTECH_NOT U297 ( .A(n318), .Z(n317) );
  GTECH_XOR3 U298 ( .A(n264), .B(n265), .C(n292), .Z(n299) );
  GTECH_OAI21 U299 ( .A(n319), .B(n320), .C(n321), .Z(n292) );
  GTECH_OAI21 U300 ( .A(n322), .B(n323), .C(n324), .Z(n321) );
  GTECH_NOT U301 ( .A(n325), .Z(n265) );
  GTECH_NAND2 U302 ( .A(I_a[6]), .B(I_b[1]), .Z(n325) );
  GTECH_NOT U303 ( .A(n290), .Z(n264) );
  GTECH_NAND2 U304 ( .A(I_a[7]), .B(I_b[0]), .Z(n290) );
  GTECH_ADD_ABC U305 ( .A(n304), .B(n326), .C(n306), .COUT(n261) );
  GTECH_NOT U306 ( .A(n327), .Z(n306) );
  GTECH_XOR3 U307 ( .A(n322), .B(n324), .C(n319), .Z(n326) );
  GTECH_NOT U308 ( .A(n323), .Z(n319) );
  GTECH_XOR3 U309 ( .A(n285), .B(n287), .C(n286), .Z(n298) );
  GTECH_OAI21 U310 ( .A(n328), .B(n329), .C(n330), .Z(n286) );
  GTECH_OAI21 U311 ( .A(n331), .B(n332), .C(n333), .Z(n330) );
  GTECH_NOT U312 ( .A(n332), .Z(n328) );
  GTECH_NOT U313 ( .A(n334), .Z(n287) );
  GTECH_NAND2 U314 ( .A(I_b[3]), .B(I_a[4]), .Z(n334) );
  GTECH_NOT U315 ( .A(n283), .Z(n285) );
  GTECH_NAND2 U316 ( .A(I_a[5]), .B(I_b[2]), .Z(n283) );
  GTECH_XOR2 U317 ( .A(n335), .B(n336), .Z(N146) );
  GTECH_XOR4 U318 ( .A(n305), .B(n327), .C(n303), .D(n304), .Z(n336) );
  GTECH_ADD_ABC U319 ( .A(n337), .B(n338), .C(n339), .COUT(n304) );
  GTECH_NOT U320 ( .A(n340), .Z(n339) );
  GTECH_XOR3 U321 ( .A(n341), .B(n342), .C(n343), .Z(n338) );
  GTECH_XOR2 U322 ( .A(n318), .B(n344), .Z(n303) );
  GTECH_AND_NOT U323 ( .A(I_b[6]), .B(n345), .Z(n344) );
  GTECH_XOR3 U324 ( .A(n346), .B(n347), .C(n314), .Z(n318) );
  GTECH_NAND3 U325 ( .A(I_b[4]), .B(I_a[1]), .C(n348), .Z(n314) );
  GTECH_NOT U326 ( .A(n313), .Z(n347) );
  GTECH_NAND2 U327 ( .A(I_b[5]), .B(I_a[1]), .Z(n313) );
  GTECH_NOT U328 ( .A(n312), .Z(n346) );
  GTECH_NAND2 U329 ( .A(I_b[4]), .B(I_a[2]), .Z(n312) );
  GTECH_XOR3 U330 ( .A(n331), .B(n333), .C(n332), .Z(n327) );
  GTECH_OAI21 U331 ( .A(n349), .B(n350), .C(n351), .Z(n332) );
  GTECH_OAI21 U332 ( .A(n352), .B(n353), .C(n354), .Z(n351) );
  GTECH_NOT U333 ( .A(n353), .Z(n349) );
  GTECH_NOT U334 ( .A(n355), .Z(n333) );
  GTECH_NAND2 U335 ( .A(I_b[3]), .B(I_a[3]), .Z(n355) );
  GTECH_NOT U336 ( .A(n329), .Z(n331) );
  GTECH_NAND2 U337 ( .A(I_b[2]), .B(I_a[4]), .Z(n329) );
  GTECH_NOT U338 ( .A(n356), .Z(n305) );
  GTECH_XOR3 U339 ( .A(n322), .B(n324), .C(n323), .Z(n356) );
  GTECH_OAI21 U340 ( .A(n343), .B(n357), .C(n358), .Z(n323) );
  GTECH_OAI21 U341 ( .A(n341), .B(n359), .C(n342), .Z(n358) );
  GTECH_NOT U342 ( .A(n357), .Z(n341) );
  GTECH_NOT U343 ( .A(n359), .Z(n343) );
  GTECH_NOT U344 ( .A(n360), .Z(n324) );
  GTECH_NAND2 U345 ( .A(I_a[5]), .B(I_b[1]), .Z(n360) );
  GTECH_NOT U346 ( .A(n320), .Z(n322) );
  GTECH_NAND2 U347 ( .A(I_a[6]), .B(I_b[0]), .Z(n320) );
  GTECH_OA21 U348 ( .A(n307), .B(n308), .C(n309), .Z(n335) );
  GTECH_OAI21 U349 ( .A(n361), .B(n362), .C(n363), .Z(n309) );
  GTECH_NOT U350 ( .A(n307), .Z(n362) );
  GTECH_XOR3 U351 ( .A(n363), .B(n308), .C(n307), .Z(N145) );
  GTECH_XOR2 U352 ( .A(n364), .B(n348), .Z(n307) );
  GTECH_NOT U353 ( .A(n365), .Z(n348) );
  GTECH_NAND2 U354 ( .A(I_b[5]), .B(I_a[0]), .Z(n365) );
  GTECH_NAND2 U355 ( .A(I_b[4]), .B(I_a[1]), .Z(n364) );
  GTECH_NOT U356 ( .A(n361), .Z(n308) );
  GTECH_XOR2 U357 ( .A(n366), .B(n337), .Z(n361) );
  GTECH_ADD_ABC U358 ( .A(n367), .B(n368), .C(n369), .COUT(n337) );
  GTECH_XOR3 U359 ( .A(n370), .B(n371), .C(n372), .Z(n368) );
  GTECH_OA21 U360 ( .A(n373), .B(n374), .C(n375), .Z(n367) );
  GTECH_XOR4 U361 ( .A(n342), .B(n359), .C(n357), .D(n340), .Z(n366) );
  GTECH_XOR3 U362 ( .A(n352), .B(n354), .C(n353), .Z(n340) );
  GTECH_OAI21 U363 ( .A(n376), .B(n377), .C(n378), .Z(n353) );
  GTECH_NOT U364 ( .A(n379), .Z(n354) );
  GTECH_NAND2 U365 ( .A(I_b[3]), .B(I_a[2]), .Z(n379) );
  GTECH_NOT U366 ( .A(n350), .Z(n352) );
  GTECH_NAND2 U367 ( .A(I_b[2]), .B(I_a[3]), .Z(n350) );
  GTECH_NAND2 U368 ( .A(I_a[5]), .B(I_b[0]), .Z(n357) );
  GTECH_OAI21 U369 ( .A(n372), .B(n380), .C(n381), .Z(n359) );
  GTECH_OAI21 U370 ( .A(n370), .B(n382), .C(n371), .Z(n381) );
  GTECH_NOT U371 ( .A(n382), .Z(n372) );
  GTECH_NOT U372 ( .A(n383), .Z(n342) );
  GTECH_NAND2 U373 ( .A(I_a[4]), .B(I_b[1]), .Z(n383) );
  GTECH_NOT U374 ( .A(n384), .Z(n363) );
  GTECH_NAND3 U375 ( .A(I_a[0]), .B(n385), .C(I_b[4]), .Z(n384) );
  GTECH_XOR2 U376 ( .A(n386), .B(n385), .Z(N144) );
  GTECH_XOR2 U377 ( .A(n387), .B(n388), .Z(n385) );
  GTECH_XOR4 U378 ( .A(n371), .B(n382), .C(n369), .D(n370), .Z(n388) );
  GTECH_NOT U379 ( .A(n380), .Z(n370) );
  GTECH_NAND2 U380 ( .A(I_a[4]), .B(I_b[0]), .Z(n380) );
  GTECH_XOR3 U381 ( .A(n389), .B(n390), .C(n378), .Z(n369) );
  GTECH_NAND3 U382 ( .A(I_b[2]), .B(I_a[1]), .C(n391), .Z(n378) );
  GTECH_NOT U383 ( .A(n377), .Z(n390) );
  GTECH_NAND2 U384 ( .A(I_b[3]), .B(I_a[1]), .Z(n377) );
  GTECH_NOT U385 ( .A(n376), .Z(n389) );
  GTECH_NAND2 U386 ( .A(I_b[2]), .B(I_a[2]), .Z(n376) );
  GTECH_OAI21 U387 ( .A(n392), .B(n393), .C(n394), .Z(n382) );
  GTECH_OAI21 U388 ( .A(n395), .B(n396), .C(n397), .Z(n394) );
  GTECH_NOT U389 ( .A(n396), .Z(n392) );
  GTECH_NOT U390 ( .A(n398), .Z(n371) );
  GTECH_NAND2 U391 ( .A(I_a[3]), .B(I_b[1]), .Z(n398) );
  GTECH_OA21 U392 ( .A(n373), .B(n374), .C(n375), .Z(n387) );
  GTECH_OAI21 U393 ( .A(n399), .B(n400), .C(n401), .Z(n375) );
  GTECH_NOT U394 ( .A(n373), .Z(n400) );
  GTECH_AND_NOT U395 ( .A(I_b[4]), .B(n345), .Z(n386) );
  GTECH_XOR3 U396 ( .A(n401), .B(n374), .C(n373), .Z(N143) );
  GTECH_XOR2 U397 ( .A(n402), .B(n391), .Z(n373) );
  GTECH_NOT U398 ( .A(n403), .Z(n391) );
  GTECH_NAND2 U399 ( .A(I_b[3]), .B(I_a[0]), .Z(n403) );
  GTECH_NAND2 U400 ( .A(I_b[2]), .B(I_a[1]), .Z(n402) );
  GTECH_NOT U401 ( .A(n399), .Z(n374) );
  GTECH_XOR3 U402 ( .A(n395), .B(n397), .C(n396), .Z(n399) );
  GTECH_OAI21 U403 ( .A(n404), .B(n405), .C(n406), .Z(n396) );
  GTECH_NOT U404 ( .A(n407), .Z(n397) );
  GTECH_NAND2 U405 ( .A(I_b[1]), .B(I_a[2]), .Z(n407) );
  GTECH_NOT U406 ( .A(n393), .Z(n395) );
  GTECH_NAND2 U407 ( .A(I_b[0]), .B(I_a[3]), .Z(n393) );
  GTECH_NOT U408 ( .A(n408), .Z(n401) );
  GTECH_NAND3 U409 ( .A(I_a[0]), .B(n409), .C(I_b[2]), .Z(n408) );
  GTECH_XOR2 U410 ( .A(n410), .B(n409), .Z(N142) );
  GTECH_NOT U411 ( .A(n411), .Z(n409) );
  GTECH_XOR3 U412 ( .A(n412), .B(n413), .C(n406), .Z(n411) );
  GTECH_NAND3 U413 ( .A(n414), .B(I_b[0]), .C(I_a[1]), .Z(n406) );
  GTECH_NOT U414 ( .A(n404), .Z(n413) );
  GTECH_NAND2 U415 ( .A(I_a[1]), .B(I_b[1]), .Z(n404) );
  GTECH_NOT U416 ( .A(n405), .Z(n412) );
  GTECH_NAND2 U417 ( .A(I_b[0]), .B(I_a[2]), .Z(n405) );
  GTECH_AND_NOT U418 ( .A(I_b[2]), .B(n345), .Z(n410) );
  GTECH_NOT U419 ( .A(I_a[0]), .Z(n345) );
  GTECH_XOR2 U420 ( .A(n414), .B(n415), .Z(N141) );
  GTECH_AND_NOT U421 ( .A(I_a[1]), .B(n416), .Z(n415) );
  GTECH_NOT U422 ( .A(n417), .Z(n414) );
  GTECH_NAND2 U423 ( .A(I_a[0]), .B(I_b[1]), .Z(n417) );
  GTECH_AND_NOT U424 ( .A(I_a[0]), .B(n416), .Z(N140) );
  GTECH_NOT U425 ( .A(I_b[0]), .Z(n416) );
endmodule

