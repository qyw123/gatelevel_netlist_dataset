
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
         n412, n413, n414, n415, n416;

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
  GTECH_NAND2 U88 ( .A(I_b[7]), .B(I_a[7]), .Z(n90) );
  GTECH_NOT U89 ( .A(n104), .Z(n84) );
  GTECH_NAND2 U90 ( .A(n105), .B(n106), .Z(n104) );
  GTECH_XOR2 U91 ( .A(n106), .B(n105), .Z(N153) );
  GTECH_NOT U92 ( .A(n107), .Z(n105) );
  GTECH_XNOR3 U93 ( .A(n108), .B(n93), .C(n109), .Z(n107) );
  GTECH_NOT U94 ( .A(n95), .Z(n109) );
  GTECH_XNOR3 U95 ( .A(n101), .B(n103), .C(n98), .Z(n95) );
  GTECH_NOT U96 ( .A(n102), .Z(n98) );
  GTECH_OAI21 U97 ( .A(n110), .B(n111), .C(n112), .Z(n102) );
  GTECH_OAI21 U98 ( .A(n113), .B(n114), .C(n115), .Z(n112) );
  GTECH_NOT U99 ( .A(n116), .Z(n103) );
  GTECH_NAND2 U100 ( .A(I_b[7]), .B(I_a[6]), .Z(n116) );
  GTECH_NOT U101 ( .A(n99), .Z(n101) );
  GTECH_NAND2 U102 ( .A(I_a[7]), .B(I_b[6]), .Z(n99) );
  GTECH_ADD_ABC U103 ( .A(n117), .B(n118), .C(n119), .COUT(n93) );
  GTECH_XOR2 U104 ( .A(n120), .B(n121), .Z(n118) );
  GTECH_NAND2 U105 ( .A(I_a[7]), .B(I_b[5]), .Z(n121) );
  GTECH_NOT U106 ( .A(n122), .Z(n117) );
  GTECH_NOT U107 ( .A(n94), .Z(n108) );
  GTECH_NAND2 U108 ( .A(I_a[7]), .B(n120), .Z(n94) );
  GTECH_NOT U109 ( .A(n123), .Z(n106) );
  GTECH_NAND2 U110 ( .A(n124), .B(n125), .Z(n123) );
  GTECH_NOT U111 ( .A(n126), .Z(n125) );
  GTECH_XOR2 U112 ( .A(n126), .B(n127), .Z(N152) );
  GTECH_NOT U113 ( .A(n124), .Z(n127) );
  GTECH_XOR4 U114 ( .A(n120), .B(n119), .C(n128), .D(n122), .Z(n124) );
  GTECH_XNOR3 U115 ( .A(n113), .B(n115), .C(n110), .Z(n122) );
  GTECH_NOT U116 ( .A(n114), .Z(n110) );
  GTECH_OAI21 U117 ( .A(n129), .B(n130), .C(n131), .Z(n114) );
  GTECH_OAI21 U118 ( .A(n132), .B(n133), .C(n134), .Z(n131) );
  GTECH_NOT U119 ( .A(n135), .Z(n115) );
  GTECH_NAND2 U120 ( .A(I_b[7]), .B(I_a[5]), .Z(n135) );
  GTECH_NOT U121 ( .A(n111), .Z(n113) );
  GTECH_NAND2 U122 ( .A(I_b[6]), .B(I_a[6]), .Z(n111) );
  GTECH_NAND2 U123 ( .A(I_a[7]), .B(I_b[5]), .Z(n128) );
  GTECH_ADD_ABC U124 ( .A(n136), .B(n137), .C(n138), .COUT(n119) );
  GTECH_XNOR3 U125 ( .A(n139), .B(n140), .C(n141), .Z(n137) );
  GTECH_OAI21 U126 ( .A(n142), .B(n143), .C(n144), .Z(n120) );
  GTECH_OAI21 U127 ( .A(n139), .B(n141), .C(n140), .Z(n144) );
  GTECH_ADD_ABC U128 ( .A(n145), .B(n146), .C(n147), .COUT(n126) );
  GTECH_OA22 U129 ( .A(n148), .B(n149), .C(n150), .D(n151), .Z(n146) );
  GTECH_OA21 U130 ( .A(n152), .B(n153), .C(n154), .Z(n145) );
  GTECH_XNOR3 U131 ( .A(n155), .B(n147), .C(n156), .Z(N151) );
  GTECH_OA21 U132 ( .A(n152), .B(n153), .C(n154), .Z(n156) );
  GTECH_OAI21 U133 ( .A(n157), .B(n158), .C(n159), .Z(n154) );
  GTECH_XOR2 U134 ( .A(n136), .B(n160), .Z(n147) );
  GTECH_XOR4 U135 ( .A(n140), .B(n142), .C(n138), .D(n139), .Z(n160) );
  GTECH_NOT U136 ( .A(n143), .Z(n139) );
  GTECH_NAND2 U137 ( .A(I_a[7]), .B(I_b[4]), .Z(n143) );
  GTECH_NOT U138 ( .A(n161), .Z(n138) );
  GTECH_XNOR3 U139 ( .A(n132), .B(n134), .C(n129), .Z(n161) );
  GTECH_NOT U140 ( .A(n133), .Z(n129) );
  GTECH_OAI21 U141 ( .A(n162), .B(n163), .C(n164), .Z(n133) );
  GTECH_OAI21 U142 ( .A(n165), .B(n166), .C(n167), .Z(n164) );
  GTECH_NOT U143 ( .A(n168), .Z(n134) );
  GTECH_NAND2 U144 ( .A(I_b[7]), .B(I_a[4]), .Z(n168) );
  GTECH_NOT U145 ( .A(n130), .Z(n132) );
  GTECH_NAND2 U146 ( .A(I_b[6]), .B(I_a[5]), .Z(n130) );
  GTECH_NOT U147 ( .A(n141), .Z(n142) );
  GTECH_OAI21 U148 ( .A(n169), .B(n170), .C(n171), .Z(n141) );
  GTECH_OAI21 U149 ( .A(n172), .B(n173), .C(n174), .Z(n171) );
  GTECH_NOT U150 ( .A(n175), .Z(n140) );
  GTECH_NAND2 U151 ( .A(I_a[6]), .B(I_b[5]), .Z(n175) );
  GTECH_ADD_ABC U152 ( .A(n176), .B(n177), .C(n178), .COUT(n136) );
  GTECH_NOT U153 ( .A(n179), .Z(n178) );
  GTECH_XNOR3 U154 ( .A(n172), .B(n174), .C(n173), .Z(n177) );
  GTECH_OA22 U155 ( .A(n148), .B(n149), .C(n150), .D(n151), .Z(n155) );
  GTECH_NOT U156 ( .A(n180), .Z(n151) );
  GTECH_NOT U157 ( .A(I_a[7]), .Z(n149) );
  GTECH_XNOR3 U158 ( .A(n152), .B(n157), .C(n159), .Z(N150) );
  GTECH_XOR2 U159 ( .A(n181), .B(n176), .Z(n159) );
  GTECH_ADD_ABC U160 ( .A(n182), .B(n183), .C(n184), .COUT(n176) );
  GTECH_NOT U161 ( .A(n185), .Z(n184) );
  GTECH_XNOR3 U162 ( .A(n186), .B(n187), .C(n188), .Z(n183) );
  GTECH_XOR4 U163 ( .A(n174), .B(n169), .C(n179), .D(n172), .Z(n181) );
  GTECH_NOT U164 ( .A(n170), .Z(n172) );
  GTECH_NAND2 U165 ( .A(I_a[6]), .B(I_b[4]), .Z(n170) );
  GTECH_XNOR3 U166 ( .A(n165), .B(n167), .C(n162), .Z(n179) );
  GTECH_NOT U167 ( .A(n166), .Z(n162) );
  GTECH_OAI21 U168 ( .A(n189), .B(n190), .C(n191), .Z(n166) );
  GTECH_OAI21 U169 ( .A(n192), .B(n193), .C(n194), .Z(n191) );
  GTECH_NOT U170 ( .A(n195), .Z(n167) );
  GTECH_NAND2 U171 ( .A(I_b[7]), .B(I_a[3]), .Z(n195) );
  GTECH_NOT U172 ( .A(n163), .Z(n165) );
  GTECH_NAND2 U173 ( .A(I_b[6]), .B(I_a[4]), .Z(n163) );
  GTECH_NOT U174 ( .A(n173), .Z(n169) );
  GTECH_OAI21 U175 ( .A(n196), .B(n197), .C(n198), .Z(n173) );
  GTECH_OAI21 U176 ( .A(n186), .B(n188), .C(n187), .Z(n198) );
  GTECH_NOT U177 ( .A(n199), .Z(n174) );
  GTECH_NAND2 U178 ( .A(I_a[5]), .B(I_b[5]), .Z(n199) );
  GTECH_NOT U179 ( .A(n153), .Z(n157) );
  GTECH_XOR2 U180 ( .A(n180), .B(n150), .Z(n153) );
  GTECH_AOI2N2 U181 ( .A(n200), .B(n201), .C(n202), .D(n203), .Z(n150) );
  GTECH_NAND2 U182 ( .A(n202), .B(n203), .Z(n201) );
  GTECH_XOR2 U183 ( .A(n204), .B(n148), .Z(n180) );
  GTECH_OA21 U184 ( .A(n205), .B(n206), .C(n207), .Z(n148) );
  GTECH_OAI21 U185 ( .A(n208), .B(n209), .C(n210), .Z(n207) );
  GTECH_NAND2 U186 ( .A(I_a[7]), .B(I_b[3]), .Z(n204) );
  GTECH_NOT U187 ( .A(n158), .Z(n152) );
  GTECH_OAI2N2 U188 ( .A(n211), .B(n212), .C(n213), .D(n214), .Z(n158) );
  GTECH_NAND2 U189 ( .A(n211), .B(n212), .Z(n214) );
  GTECH_XNOR3 U190 ( .A(n211), .B(n215), .C(n213), .Z(N149) );
  GTECH_XOR2 U191 ( .A(n216), .B(n182), .Z(n213) );
  GTECH_ADD_ABC U192 ( .A(n217), .B(n218), .C(n219), .COUT(n182) );
  GTECH_XNOR3 U193 ( .A(n220), .B(n221), .C(n222), .Z(n218) );
  GTECH_OA21 U194 ( .A(n223), .B(n224), .C(n225), .Z(n217) );
  GTECH_XOR4 U195 ( .A(n187), .B(n196), .C(n185), .D(n186), .Z(n216) );
  GTECH_NOT U196 ( .A(n197), .Z(n186) );
  GTECH_NAND2 U197 ( .A(I_a[5]), .B(I_b[4]), .Z(n197) );
  GTECH_XNOR3 U198 ( .A(n192), .B(n194), .C(n189), .Z(n185) );
  GTECH_NOT U199 ( .A(n193), .Z(n189) );
  GTECH_OAI21 U200 ( .A(n226), .B(n227), .C(n228), .Z(n193) );
  GTECH_NOT U201 ( .A(n229), .Z(n194) );
  GTECH_NAND2 U202 ( .A(I_b[7]), .B(I_a[2]), .Z(n229) );
  GTECH_NOT U203 ( .A(n190), .Z(n192) );
  GTECH_NAND2 U204 ( .A(I_b[6]), .B(I_a[3]), .Z(n190) );
  GTECH_NOT U205 ( .A(n188), .Z(n196) );
  GTECH_OAI21 U206 ( .A(n230), .B(n231), .C(n232), .Z(n188) );
  GTECH_OAI21 U207 ( .A(n220), .B(n222), .C(n221), .Z(n232) );
  GTECH_NOT U208 ( .A(n233), .Z(n187) );
  GTECH_NAND2 U209 ( .A(I_b[5]), .B(I_a[4]), .Z(n233) );
  GTECH_NOT U210 ( .A(n212), .Z(n215) );
  GTECH_XNOR3 U211 ( .A(n234), .B(n202), .C(n235), .Z(n212) );
  GTECH_NOT U212 ( .A(n200), .Z(n235) );
  GTECH_XNOR3 U213 ( .A(n208), .B(n210), .C(n205), .Z(n200) );
  GTECH_NOT U214 ( .A(n209), .Z(n205) );
  GTECH_OAI21 U215 ( .A(n236), .B(n237), .C(n238), .Z(n209) );
  GTECH_OAI21 U216 ( .A(n239), .B(n240), .C(n241), .Z(n238) );
  GTECH_NOT U217 ( .A(n242), .Z(n210) );
  GTECH_NAND2 U218 ( .A(I_a[6]), .B(I_b[3]), .Z(n242) );
  GTECH_NOT U219 ( .A(n206), .Z(n208) );
  GTECH_NAND2 U220 ( .A(I_a[7]), .B(I_b[2]), .Z(n206) );
  GTECH_ADD_ABC U221 ( .A(n243), .B(n244), .C(n245), .COUT(n202) );
  GTECH_NOT U222 ( .A(n246), .Z(n245) );
  GTECH_XOR2 U223 ( .A(n247), .B(n248), .Z(n244) );
  GTECH_AND_NOT U224 ( .A(I_a[7]), .B(n249), .Z(n248) );
  GTECH_NOT U225 ( .A(I_b[1]), .Z(n249) );
  GTECH_NOT U226 ( .A(n250), .Z(n247) );
  GTECH_NOT U227 ( .A(n203), .Z(n234) );
  GTECH_NAND2 U228 ( .A(I_a[7]), .B(n250), .Z(n203) );
  GTECH_ADD_ABC U229 ( .A(n251), .B(n252), .C(n253), .COUT(n211) );
  GTECH_XNOR3 U230 ( .A(n243), .B(n254), .C(n246), .Z(n252) );
  GTECH_XOR2 U231 ( .A(n255), .B(n251), .Z(N148) );
  GTECH_ADD_ABC U232 ( .A(n256), .B(n257), .C(n258), .COUT(n251) );
  GTECH_NOT U233 ( .A(n259), .Z(n258) );
  GTECH_XNOR3 U234 ( .A(n260), .B(n261), .C(n262), .Z(n257) );
  GTECH_XOR4 U235 ( .A(n254), .B(n243), .C(n246), .D(n253), .Z(n255) );
  GTECH_XOR2 U236 ( .A(n263), .B(n264), .Z(n253) );
  GTECH_XOR4 U237 ( .A(n221), .B(n230), .C(n219), .D(n220), .Z(n264) );
  GTECH_NOT U238 ( .A(n231), .Z(n220) );
  GTECH_NAND2 U239 ( .A(I_b[4]), .B(I_a[4]), .Z(n231) );
  GTECH_XNOR3 U240 ( .A(n265), .B(n266), .C(n267), .Z(n219) );
  GTECH_NOT U241 ( .A(n228), .Z(n267) );
  GTECH_NAND3 U242 ( .A(I_b[6]), .B(I_a[1]), .C(n268), .Z(n228) );
  GTECH_NOT U243 ( .A(n227), .Z(n266) );
  GTECH_NAND2 U244 ( .A(I_b[7]), .B(I_a[1]), .Z(n227) );
  GTECH_NOT U245 ( .A(n226), .Z(n265) );
  GTECH_NAND2 U246 ( .A(I_b[6]), .B(I_a[2]), .Z(n226) );
  GTECH_NOT U247 ( .A(n222), .Z(n230) );
  GTECH_OAI21 U248 ( .A(n269), .B(n270), .C(n271), .Z(n222) );
  GTECH_OAI21 U249 ( .A(n272), .B(n273), .C(n274), .Z(n271) );
  GTECH_NOT U250 ( .A(n275), .Z(n221) );
  GTECH_NAND2 U251 ( .A(I_b[5]), .B(I_a[3]), .Z(n275) );
  GTECH_OA21 U252 ( .A(n223), .B(n224), .C(n225), .Z(n263) );
  GTECH_OAI21 U253 ( .A(n276), .B(n277), .C(n278), .Z(n225) );
  GTECH_XNOR3 U254 ( .A(n239), .B(n241), .C(n236), .Z(n246) );
  GTECH_NOT U255 ( .A(n240), .Z(n236) );
  GTECH_OAI21 U256 ( .A(n279), .B(n280), .C(n281), .Z(n240) );
  GTECH_OAI21 U257 ( .A(n282), .B(n283), .C(n284), .Z(n281) );
  GTECH_NOT U258 ( .A(n285), .Z(n241) );
  GTECH_NAND2 U259 ( .A(I_a[5]), .B(I_b[3]), .Z(n285) );
  GTECH_NOT U260 ( .A(n237), .Z(n239) );
  GTECH_NAND2 U261 ( .A(I_a[6]), .B(I_b[2]), .Z(n237) );
  GTECH_ADD_ABC U262 ( .A(n260), .B(n286), .C(n287), .COUT(n243) );
  GTECH_XNOR3 U263 ( .A(n288), .B(n289), .C(n290), .Z(n286) );
  GTECH_XOR2 U264 ( .A(n291), .B(n250), .Z(n254) );
  GTECH_OAI21 U265 ( .A(n292), .B(n293), .C(n294), .Z(n250) );
  GTECH_OAI21 U266 ( .A(n288), .B(n290), .C(n289), .Z(n294) );
  GTECH_NAND2 U267 ( .A(I_a[7]), .B(I_b[1]), .Z(n291) );
  GTECH_XOR2 U268 ( .A(n295), .B(n256), .Z(N147) );
  GTECH_ADD_ABC U269 ( .A(n296), .B(n297), .C(n298), .COUT(n256) );
  GTECH_XNOR3 U270 ( .A(n299), .B(n300), .C(n301), .Z(n297) );
  GTECH_OA21 U271 ( .A(n302), .B(n303), .C(n304), .Z(n296) );
  GTECH_XOR4 U272 ( .A(n261), .B(n287), .C(n259), .D(n260), .Z(n295) );
  GTECH_ADD_ABC U273 ( .A(n299), .B(n305), .C(n306), .COUT(n260) );
  GTECH_NOT U274 ( .A(n301), .Z(n306) );
  GTECH_XNOR3 U275 ( .A(n307), .B(n308), .C(n309), .Z(n305) );
  GTECH_XNOR3 U276 ( .A(n278), .B(n224), .C(n277), .Z(n259) );
  GTECH_NOT U277 ( .A(n223), .Z(n277) );
  GTECH_XOR2 U278 ( .A(n310), .B(n268), .Z(n223) );
  GTECH_NOT U279 ( .A(n311), .Z(n268) );
  GTECH_NAND2 U280 ( .A(I_b[7]), .B(I_a[0]), .Z(n311) );
  GTECH_NAND2 U281 ( .A(I_b[6]), .B(I_a[1]), .Z(n310) );
  GTECH_NOT U282 ( .A(n276), .Z(n224) );
  GTECH_XNOR3 U283 ( .A(n272), .B(n274), .C(n269), .Z(n276) );
  GTECH_NOT U284 ( .A(n273), .Z(n269) );
  GTECH_OAI21 U285 ( .A(n312), .B(n313), .C(n314), .Z(n273) );
  GTECH_NOT U286 ( .A(n315), .Z(n274) );
  GTECH_NAND2 U287 ( .A(I_b[5]), .B(I_a[2]), .Z(n315) );
  GTECH_NOT U288 ( .A(n270), .Z(n272) );
  GTECH_NAND2 U289 ( .A(I_b[4]), .B(I_a[3]), .Z(n270) );
  GTECH_NOT U290 ( .A(n316), .Z(n278) );
  GTECH_NAND3 U291 ( .A(I_a[0]), .B(n317), .C(I_b[6]), .Z(n316) );
  GTECH_NOT U292 ( .A(n318), .Z(n317) );
  GTECH_NOT U293 ( .A(n262), .Z(n287) );
  GTECH_XNOR3 U294 ( .A(n282), .B(n284), .C(n279), .Z(n262) );
  GTECH_NOT U295 ( .A(n283), .Z(n279) );
  GTECH_OAI21 U296 ( .A(n319), .B(n320), .C(n321), .Z(n283) );
  GTECH_OAI21 U297 ( .A(n322), .B(n323), .C(n324), .Z(n321) );
  GTECH_NOT U298 ( .A(n325), .Z(n284) );
  GTECH_NAND2 U299 ( .A(I_b[3]), .B(I_a[4]), .Z(n325) );
  GTECH_NOT U300 ( .A(n280), .Z(n282) );
  GTECH_NAND2 U301 ( .A(I_a[5]), .B(I_b[2]), .Z(n280) );
  GTECH_NOT U302 ( .A(n326), .Z(n261) );
  GTECH_XNOR3 U303 ( .A(n288), .B(n289), .C(n292), .Z(n326) );
  GTECH_NOT U304 ( .A(n290), .Z(n292) );
  GTECH_OAI21 U305 ( .A(n327), .B(n328), .C(n329), .Z(n290) );
  GTECH_OAI21 U306 ( .A(n307), .B(n309), .C(n308), .Z(n329) );
  GTECH_NOT U307 ( .A(n330), .Z(n289) );
  GTECH_NAND2 U308 ( .A(I_a[6]), .B(I_b[1]), .Z(n330) );
  GTECH_NOT U309 ( .A(n293), .Z(n288) );
  GTECH_NAND2 U310 ( .A(I_a[7]), .B(I_b[0]), .Z(n293) );
  GTECH_XOR2 U311 ( .A(n331), .B(n332), .Z(N146) );
  GTECH_OA21 U312 ( .A(n302), .B(n303), .C(n304), .Z(n332) );
  GTECH_OAI21 U313 ( .A(n333), .B(n334), .C(n335), .Z(n304) );
  GTECH_XOR4 U314 ( .A(n300), .B(n299), .C(n301), .D(n298), .Z(n331) );
  GTECH_XOR2 U315 ( .A(n318), .B(n336), .Z(n298) );
  GTECH_AND_NOT U316 ( .A(I_b[6]), .B(n337), .Z(n336) );
  GTECH_XNOR3 U317 ( .A(n338), .B(n339), .C(n340), .Z(n318) );
  GTECH_NOT U318 ( .A(n314), .Z(n340) );
  GTECH_NAND3 U319 ( .A(I_b[4]), .B(I_a[1]), .C(n341), .Z(n314) );
  GTECH_NOT U320 ( .A(n313), .Z(n339) );
  GTECH_NAND2 U321 ( .A(I_b[5]), .B(I_a[1]), .Z(n313) );
  GTECH_NOT U322 ( .A(n312), .Z(n338) );
  GTECH_NAND2 U323 ( .A(I_b[4]), .B(I_a[2]), .Z(n312) );
  GTECH_XNOR3 U324 ( .A(n322), .B(n324), .C(n319), .Z(n301) );
  GTECH_NOT U325 ( .A(n323), .Z(n319) );
  GTECH_OAI21 U326 ( .A(n342), .B(n343), .C(n344), .Z(n323) );
  GTECH_OAI21 U327 ( .A(n345), .B(n346), .C(n347), .Z(n344) );
  GTECH_NOT U328 ( .A(n348), .Z(n324) );
  GTECH_NAND2 U329 ( .A(I_b[3]), .B(I_a[3]), .Z(n348) );
  GTECH_NOT U330 ( .A(n320), .Z(n322) );
  GTECH_NAND2 U331 ( .A(I_b[2]), .B(I_a[4]), .Z(n320) );
  GTECH_ADD_ABC U332 ( .A(n349), .B(n350), .C(n351), .COUT(n299) );
  GTECH_NOT U333 ( .A(n352), .Z(n351) );
  GTECH_XNOR3 U334 ( .A(n353), .B(n354), .C(n355), .Z(n350) );
  GTECH_NOT U335 ( .A(n356), .Z(n300) );
  GTECH_XNOR3 U336 ( .A(n307), .B(n308), .C(n327), .Z(n356) );
  GTECH_NOT U337 ( .A(n309), .Z(n327) );
  GTECH_OAI21 U338 ( .A(n357), .B(n358), .C(n359), .Z(n309) );
  GTECH_OAI21 U339 ( .A(n353), .B(n355), .C(n354), .Z(n359) );
  GTECH_NOT U340 ( .A(n360), .Z(n308) );
  GTECH_NAND2 U341 ( .A(I_a[5]), .B(I_b[1]), .Z(n360) );
  GTECH_NOT U342 ( .A(n328), .Z(n307) );
  GTECH_NAND2 U343 ( .A(I_a[6]), .B(I_b[0]), .Z(n328) );
  GTECH_XNOR3 U344 ( .A(n335), .B(n303), .C(n334), .Z(N145) );
  GTECH_NOT U345 ( .A(n302), .Z(n334) );
  GTECH_XOR2 U346 ( .A(n361), .B(n341), .Z(n302) );
  GTECH_NOT U347 ( .A(n362), .Z(n341) );
  GTECH_NAND2 U348 ( .A(I_b[5]), .B(I_a[0]), .Z(n362) );
  GTECH_NAND2 U349 ( .A(I_b[4]), .B(I_a[1]), .Z(n361) );
  GTECH_NOT U350 ( .A(n333), .Z(n303) );
  GTECH_XOR2 U351 ( .A(n363), .B(n349), .Z(n333) );
  GTECH_ADD_ABC U352 ( .A(n364), .B(n365), .C(n366), .COUT(n349) );
  GTECH_XNOR3 U353 ( .A(n367), .B(n368), .C(n369), .Z(n365) );
  GTECH_OA21 U354 ( .A(n370), .B(n371), .C(n372), .Z(n364) );
  GTECH_XOR4 U355 ( .A(n354), .B(n357), .C(n352), .D(n353), .Z(n363) );
  GTECH_NOT U356 ( .A(n358), .Z(n353) );
  GTECH_NAND2 U357 ( .A(I_a[5]), .B(I_b[0]), .Z(n358) );
  GTECH_XNOR3 U358 ( .A(n345), .B(n347), .C(n342), .Z(n352) );
  GTECH_NOT U359 ( .A(n346), .Z(n342) );
  GTECH_OAI21 U360 ( .A(n373), .B(n374), .C(n375), .Z(n346) );
  GTECH_NOT U361 ( .A(n376), .Z(n347) );
  GTECH_NAND2 U362 ( .A(I_b[3]), .B(I_a[2]), .Z(n376) );
  GTECH_NOT U363 ( .A(n343), .Z(n345) );
  GTECH_NAND2 U364 ( .A(I_b[2]), .B(I_a[3]), .Z(n343) );
  GTECH_NOT U365 ( .A(n355), .Z(n357) );
  GTECH_OAI21 U366 ( .A(n377), .B(n378), .C(n379), .Z(n355) );
  GTECH_OAI21 U367 ( .A(n367), .B(n369), .C(n368), .Z(n379) );
  GTECH_NOT U368 ( .A(n378), .Z(n367) );
  GTECH_NOT U369 ( .A(n380), .Z(n354) );
  GTECH_NAND2 U370 ( .A(I_a[4]), .B(I_b[1]), .Z(n380) );
  GTECH_NOT U371 ( .A(n381), .Z(n335) );
  GTECH_NAND3 U372 ( .A(I_a[0]), .B(n382), .C(I_b[4]), .Z(n381) );
  GTECH_XOR2 U373 ( .A(n383), .B(n382), .Z(N144) );
  GTECH_XOR2 U374 ( .A(n384), .B(n385), .Z(n382) );
  GTECH_OA21 U375 ( .A(n370), .B(n371), .C(n372), .Z(n385) );
  GTECH_OAI21 U376 ( .A(n386), .B(n387), .C(n388), .Z(n372) );
  GTECH_XOR4 U377 ( .A(n368), .B(n377), .C(n378), .D(n366), .Z(n384) );
  GTECH_XNOR3 U378 ( .A(n389), .B(n390), .C(n391), .Z(n366) );
  GTECH_NOT U379 ( .A(n375), .Z(n391) );
  GTECH_NAND3 U380 ( .A(I_b[2]), .B(I_a[1]), .C(n392), .Z(n375) );
  GTECH_NOT U381 ( .A(n374), .Z(n390) );
  GTECH_NAND2 U382 ( .A(I_b[3]), .B(I_a[1]), .Z(n374) );
  GTECH_NOT U383 ( .A(n373), .Z(n389) );
  GTECH_NAND2 U384 ( .A(I_b[2]), .B(I_a[2]), .Z(n373) );
  GTECH_NAND2 U385 ( .A(I_a[4]), .B(I_b[0]), .Z(n378) );
  GTECH_NOT U386 ( .A(n369), .Z(n377) );
  GTECH_OAI21 U387 ( .A(n393), .B(n394), .C(n395), .Z(n369) );
  GTECH_OAI21 U388 ( .A(n396), .B(n397), .C(n398), .Z(n395) );
  GTECH_NOT U389 ( .A(n399), .Z(n368) );
  GTECH_NAND2 U390 ( .A(I_a[3]), .B(I_b[1]), .Z(n399) );
  GTECH_AND_NOT U391 ( .A(I_b[4]), .B(n337), .Z(n383) );
  GTECH_XNOR3 U392 ( .A(n388), .B(n371), .C(n387), .Z(N143) );
  GTECH_NOT U393 ( .A(n370), .Z(n387) );
  GTECH_XOR2 U394 ( .A(n400), .B(n392), .Z(n370) );
  GTECH_NOT U395 ( .A(n401), .Z(n392) );
  GTECH_NAND2 U396 ( .A(I_b[3]), .B(I_a[0]), .Z(n401) );
  GTECH_NAND2 U397 ( .A(I_b[2]), .B(I_a[1]), .Z(n400) );
  GTECH_NOT U398 ( .A(n386), .Z(n371) );
  GTECH_XNOR3 U399 ( .A(n396), .B(n398), .C(n393), .Z(n386) );
  GTECH_NOT U400 ( .A(n397), .Z(n393) );
  GTECH_OAI21 U401 ( .A(n402), .B(n403), .C(n404), .Z(n397) );
  GTECH_NOT U402 ( .A(n405), .Z(n398) );
  GTECH_NAND2 U403 ( .A(I_b[1]), .B(I_a[2]), .Z(n405) );
  GTECH_NOT U404 ( .A(n394), .Z(n396) );
  GTECH_NAND2 U405 ( .A(I_b[0]), .B(I_a[3]), .Z(n394) );
  GTECH_NOT U406 ( .A(n406), .Z(n388) );
  GTECH_NAND3 U407 ( .A(I_a[0]), .B(n407), .C(I_b[2]), .Z(n406) );
  GTECH_XOR2 U408 ( .A(n408), .B(n407), .Z(N142) );
  GTECH_NOT U409 ( .A(n409), .Z(n407) );
  GTECH_XNOR3 U410 ( .A(n410), .B(n411), .C(n412), .Z(n409) );
  GTECH_NOT U411 ( .A(n404), .Z(n412) );
  GTECH_NAND3 U412 ( .A(n413), .B(I_b[0]), .C(I_a[1]), .Z(n404) );
  GTECH_NOT U413 ( .A(n402), .Z(n411) );
  GTECH_NAND2 U414 ( .A(I_a[1]), .B(I_b[1]), .Z(n402) );
  GTECH_NOT U415 ( .A(n403), .Z(n410) );
  GTECH_NAND2 U416 ( .A(I_b[0]), .B(I_a[2]), .Z(n403) );
  GTECH_AND_NOT U417 ( .A(I_b[2]), .B(n337), .Z(n408) );
  GTECH_NOT U418 ( .A(I_a[0]), .Z(n337) );
  GTECH_XOR2 U419 ( .A(n413), .B(n414), .Z(N141) );
  GTECH_AND_NOT U420 ( .A(I_a[1]), .B(n415), .Z(n414) );
  GTECH_NOT U421 ( .A(n416), .Z(n413) );
  GTECH_NAND2 U422 ( .A(I_a[0]), .B(I_b[1]), .Z(n416) );
  GTECH_AND_NOT U423 ( .A(I_a[0]), .B(n415), .Z(N140) );
  GTECH_NOT U424 ( .A(I_b[0]), .Z(n415) );
endmodule

