
module array_multiplier16 ( clk, I_reset_n, I_valid, I_a, I_b, O_valid, O_c );
  input [7:0] I_a;
  input [7:0] I_b;
  output [15:0] O_c;
  input clk, I_reset_n, I_valid;
  output O_valid;
  wire   N140, N141, N142, N143, N144, N145, N146, N147, N148, N149, N150,
         N151, N152, N153, N154, N155, n1, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418;

  GTECH_FD2S O_valid_reg ( .D(I_valid), .TI(n1), .TE(n1), .CP(clk), .CD(
        I_reset_n), .Q(O_valid) );
  GTECH_FD2S O_c_reg_15_ ( .D(N155), .TI(n1), .TE(n1), .CP(clk), .CD(I_reset_n), .Q(O_c[15]) );
  GTECH_FD2S O_c_reg_14_ ( .D(N154), .TI(n1), .TE(n1), .CP(clk), .CD(I_reset_n), .Q(O_c[14]) );
  GTECH_FD2S O_c_reg_13_ ( .D(N153), .TI(n1), .TE(n1), .CP(clk), .CD(I_reset_n), .Q(O_c[13]) );
  GTECH_FD2S O_c_reg_12_ ( .D(N152), .TI(n1), .TE(n1), .CP(clk), .CD(I_reset_n), .Q(O_c[12]) );
  GTECH_FD2S O_c_reg_11_ ( .D(N151), .TI(n1), .TE(n1), .CP(clk), .CD(I_reset_n), .Q(O_c[11]) );
  GTECH_FD2S O_c_reg_10_ ( .D(N150), .TI(n1), .TE(n1), .CP(clk), .CD(I_reset_n), .Q(O_c[10]) );
  GTECH_FD2S O_c_reg_9_ ( .D(N149), .TI(n1), .TE(n1), .CP(clk), .CD(I_reset_n), 
        .Q(O_c[9]) );
  GTECH_FD2S O_c_reg_8_ ( .D(N148), .TI(n1), .TE(n1), .CP(clk), .CD(I_reset_n), 
        .Q(O_c[8]) );
  GTECH_FD2S O_c_reg_7_ ( .D(N147), .TI(n1), .TE(n1), .CP(clk), .CD(I_reset_n), 
        .Q(O_c[7]) );
  GTECH_FD2S O_c_reg_6_ ( .D(N146), .TI(n1), .TE(n1), .CP(clk), .CD(I_reset_n), 
        .Q(O_c[6]) );
  GTECH_FD2S O_c_reg_5_ ( .D(N145), .TI(n1), .TE(n1), .CP(clk), .CD(I_reset_n), 
        .Q(O_c[5]) );
  GTECH_FD2S O_c_reg_4_ ( .D(N144), .TI(n1), .TE(n1), .CP(clk), .CD(I_reset_n), 
        .Q(O_c[4]) );
  GTECH_FD2S O_c_reg_3_ ( .D(N143), .TI(n1), .TE(n1), .CP(clk), .CD(I_reset_n), 
        .Q(O_c[3]) );
  GTECH_FD2S O_c_reg_2_ ( .D(N142), .TI(n1), .TE(n1), .CP(clk), .CD(I_reset_n), 
        .Q(O_c[2]) );
  GTECH_FD2S O_c_reg_1_ ( .D(N141), .TI(n1), .TE(n1), .CP(clk), .CD(I_reset_n), 
        .Q(O_c[1]) );
  GTECH_FD2S O_c_reg_0_ ( .D(N140), .TI(n1), .TE(n1), .CP(clk), .CD(I_reset_n), 
        .Q(O_c[0]) );
  GTECH_ZERO U92 ( .Z(n1) );
  GTECH_XOR2 U93 ( .A(n100), .B(n101), .Z(N155) );
  GTECH_AND2 U94 ( .A(n102), .B(n103), .Z(n101) );
  GTECH_OAI22 U95 ( .A(n104), .B(n105), .C(n106), .D(n107), .Z(n100) );
  GTECH_XOR2 U96 ( .A(n102), .B(n103), .Z(N154) );
  GTECH_NOT U97 ( .A(n108), .Z(n103) );
  GTECH_XOR2 U98 ( .A(n106), .B(n109), .Z(n108) );
  GTECH_NOT U99 ( .A(n107), .Z(n109) );
  GTECH_OAI2N2 U100 ( .A(n110), .B(n111), .C(n112), .D(n113), .Z(n107) );
  GTECH_OR_NOT U101 ( .A(n114), .B(n111), .Z(n113) );
  GTECH_XOR2 U102 ( .A(n105), .B(n115), .Z(n106) );
  GTECH_NOT U103 ( .A(n104), .Z(n115) );
  GTECH_OAI22 U104 ( .A(n116), .B(n117), .C(n118), .D(n119), .Z(n104) );
  GTECH_NOR2 U105 ( .A(n120), .B(n121), .Z(n116) );
  GTECH_NAND2 U106 ( .A(I_b[7]), .B(I_a[7]), .Z(n105) );
  GTECH_NOT U107 ( .A(n122), .Z(n102) );
  GTECH_NAND2 U108 ( .A(n123), .B(n124), .Z(n122) );
  GTECH_XOR2 U109 ( .A(n124), .B(n123), .Z(N153) );
  GTECH_NOT U110 ( .A(n125), .Z(n123) );
  GTECH_XOR3 U111 ( .A(n110), .B(n112), .C(n111), .Z(n125) );
  GTECH_XOR3 U112 ( .A(n118), .B(n119), .C(n117), .Z(n111) );
  GTECH_OAI21 U113 ( .A(n126), .B(n127), .C(n128), .Z(n117) );
  GTECH_OAI21 U114 ( .A(n129), .B(n130), .C(n131), .Z(n128) );
  GTECH_NOT U115 ( .A(n121), .Z(n119) );
  GTECH_NAND2 U116 ( .A(I_a[7]), .B(I_b[6]), .Z(n121) );
  GTECH_NOT U117 ( .A(n120), .Z(n118) );
  GTECH_NAND2 U118 ( .A(I_b[7]), .B(I_a[6]), .Z(n120) );
  GTECH_AOI2N2 U119 ( .A(n132), .B(n133), .C(n134), .D(n135), .Z(n112) );
  GTECH_OR_NOT U120 ( .A(n136), .B(n134), .Z(n133) );
  GTECH_NOT U121 ( .A(n114), .Z(n110) );
  GTECH_NAND2 U122 ( .A(n137), .B(I_a[7]), .Z(n114) );
  GTECH_NOT U123 ( .A(n138), .Z(n124) );
  GTECH_NAND2 U124 ( .A(n139), .B(n140), .Z(n138) );
  GTECH_NOT U125 ( .A(n141), .Z(n139) );
  GTECH_XOR2 U126 ( .A(n141), .B(n142), .Z(N152) );
  GTECH_NOT U127 ( .A(n140), .Z(n142) );
  GTECH_AO22 U128 ( .A(n143), .B(n144), .C(n145), .D(n146), .Z(n140) );
  GTECH_OR2 U129 ( .A(n145), .B(n146), .Z(n144) );
  GTECH_XOR3 U130 ( .A(n147), .B(n135), .C(n134), .Z(n141) );
  GTECH_XOR2 U131 ( .A(n148), .B(n137), .Z(n134) );
  GTECH_OA22 U132 ( .A(n149), .B(n150), .C(n151), .D(n152), .Z(n137) );
  GTECH_NOR2 U133 ( .A(n153), .B(n154), .Z(n151) );
  GTECH_NAND2 U134 ( .A(I_a[7]), .B(I_b[5]), .Z(n148) );
  GTECH_NOT U135 ( .A(n136), .Z(n135) );
  GTECH_XOR3 U136 ( .A(n130), .B(n129), .C(n131), .Z(n136) );
  GTECH_OAI21 U137 ( .A(n155), .B(n156), .C(n157), .Z(n131) );
  GTECH_OAI21 U138 ( .A(n158), .B(n159), .C(n160), .Z(n157) );
  GTECH_NOT U139 ( .A(n127), .Z(n129) );
  GTECH_NAND2 U140 ( .A(I_b[6]), .B(I_a[6]), .Z(n127) );
  GTECH_NOT U141 ( .A(n126), .Z(n130) );
  GTECH_NAND2 U142 ( .A(I_b[7]), .B(I_a[5]), .Z(n126) );
  GTECH_NOT U143 ( .A(n132), .Z(n147) );
  GTECH_AO22 U144 ( .A(n161), .B(n162), .C(n163), .D(n164), .Z(n132) );
  GTECH_OR2 U145 ( .A(n164), .B(n163), .Z(n162) );
  GTECH_XOR3 U146 ( .A(n165), .B(n166), .C(n145), .Z(N151) );
  GTECH_XOR3 U147 ( .A(n167), .B(n168), .C(n163), .Z(n145) );
  GTECH_XOR3 U148 ( .A(n149), .B(n150), .C(n152), .Z(n163) );
  GTECH_OAI21 U149 ( .A(n169), .B(n170), .C(n171), .Z(n152) );
  GTECH_OAI21 U150 ( .A(n172), .B(n173), .C(n174), .Z(n171) );
  GTECH_NOT U151 ( .A(n154), .Z(n150) );
  GTECH_NAND2 U152 ( .A(I_a[7]), .B(I_b[4]), .Z(n154) );
  GTECH_NOT U153 ( .A(n153), .Z(n149) );
  GTECH_NAND2 U154 ( .A(I_a[6]), .B(I_b[5]), .Z(n153) );
  GTECH_NOT U155 ( .A(n164), .Z(n168) );
  GTECH_XOR3 U156 ( .A(n159), .B(n158), .C(n160), .Z(n164) );
  GTECH_OAI21 U157 ( .A(n175), .B(n176), .C(n177), .Z(n160) );
  GTECH_OAI21 U158 ( .A(n178), .B(n179), .C(n180), .Z(n177) );
  GTECH_NOT U159 ( .A(n156), .Z(n158) );
  GTECH_NAND2 U160 ( .A(I_b[6]), .B(I_a[5]), .Z(n156) );
  GTECH_NOT U161 ( .A(n155), .Z(n159) );
  GTECH_NAND2 U162 ( .A(I_b[7]), .B(I_a[4]), .Z(n155) );
  GTECH_NOT U163 ( .A(n161), .Z(n167) );
  GTECH_AO22 U164 ( .A(n181), .B(n182), .C(n183), .D(n184), .Z(n161) );
  GTECH_OR2 U165 ( .A(n184), .B(n183), .Z(n182) );
  GTECH_NOT U166 ( .A(n146), .Z(n166) );
  GTECH_OAI22 U167 ( .A(n185), .B(n186), .C(n187), .D(n188), .Z(n146) );
  GTECH_NOT U168 ( .A(I_a[7]), .Z(n187) );
  GTECH_NOT U169 ( .A(n143), .Z(n165) );
  GTECH_AO22 U170 ( .A(n189), .B(n190), .C(n191), .D(n192), .Z(n143) );
  GTECH_OR2 U171 ( .A(n192), .B(n191), .Z(n190) );
  GTECH_XOR3 U172 ( .A(n193), .B(n194), .C(n191), .Z(N150) );
  GTECH_XOR3 U173 ( .A(n195), .B(n196), .C(n183), .Z(n191) );
  GTECH_XOR3 U174 ( .A(n173), .B(n172), .C(n174), .Z(n183) );
  GTECH_OAI21 U175 ( .A(n197), .B(n198), .C(n199), .Z(n174) );
  GTECH_OAI21 U176 ( .A(n200), .B(n201), .C(n202), .Z(n199) );
  GTECH_NOT U177 ( .A(n170), .Z(n172) );
  GTECH_NAND2 U178 ( .A(I_a[6]), .B(I_b[4]), .Z(n170) );
  GTECH_NOT U179 ( .A(n169), .Z(n173) );
  GTECH_NAND2 U180 ( .A(I_b[5]), .B(I_a[5]), .Z(n169) );
  GTECH_NOT U181 ( .A(n184), .Z(n196) );
  GTECH_XOR3 U182 ( .A(n179), .B(n178), .C(n180), .Z(n184) );
  GTECH_OAI21 U183 ( .A(n203), .B(n204), .C(n205), .Z(n180) );
  GTECH_OAI21 U184 ( .A(n206), .B(n207), .C(n208), .Z(n205) );
  GTECH_NOT U185 ( .A(n176), .Z(n178) );
  GTECH_NAND2 U186 ( .A(I_b[6]), .B(I_a[4]), .Z(n176) );
  GTECH_NOT U187 ( .A(n175), .Z(n179) );
  GTECH_NAND2 U188 ( .A(I_b[7]), .B(I_a[3]), .Z(n175) );
  GTECH_NOT U189 ( .A(n181), .Z(n195) );
  GTECH_AO22 U190 ( .A(n209), .B(n210), .C(n211), .D(n212), .Z(n181) );
  GTECH_OR2 U191 ( .A(n212), .B(n211), .Z(n210) );
  GTECH_NOT U192 ( .A(n192), .Z(n194) );
  GTECH_XOR2 U193 ( .A(n186), .B(n185), .Z(n192) );
  GTECH_AND2 U194 ( .A(n213), .B(n214), .Z(n185) );
  GTECH_OR_NOT U195 ( .A(n215), .B(n216), .Z(n214) );
  GTECH_OAI21 U196 ( .A(n217), .B(n216), .C(n218), .Z(n213) );
  GTECH_XOR2 U197 ( .A(n219), .B(n188), .Z(n186) );
  GTECH_OAI22 U198 ( .A(n220), .B(n221), .C(n222), .D(n223), .Z(n188) );
  GTECH_NOR2 U199 ( .A(n224), .B(n225), .Z(n220) );
  GTECH_AND2 U200 ( .A(I_a[7]), .B(I_b[3]), .Z(n219) );
  GTECH_NOT U201 ( .A(n189), .Z(n193) );
  GTECH_OAI21 U202 ( .A(n226), .B(n227), .C(n228), .Z(n189) );
  GTECH_OAI21 U203 ( .A(n229), .B(n230), .C(n231), .Z(n228) );
  GTECH_XOR3 U204 ( .A(n232), .B(n227), .C(n230), .Z(N149) );
  GTECH_NOT U205 ( .A(n226), .Z(n230) );
  GTECH_XOR3 U206 ( .A(n217), .B(n233), .C(n216), .Z(n226) );
  GTECH_XOR3 U207 ( .A(n222), .B(n223), .C(n221), .Z(n216) );
  GTECH_OAI21 U208 ( .A(n234), .B(n235), .C(n236), .Z(n221) );
  GTECH_OAI21 U209 ( .A(n237), .B(n238), .C(n239), .Z(n236) );
  GTECH_NOT U210 ( .A(n225), .Z(n223) );
  GTECH_NAND2 U211 ( .A(I_a[7]), .B(I_b[2]), .Z(n225) );
  GTECH_NOT U212 ( .A(n224), .Z(n222) );
  GTECH_NAND2 U213 ( .A(I_a[6]), .B(I_b[3]), .Z(n224) );
  GTECH_NOT U214 ( .A(n218), .Z(n233) );
  GTECH_OAI2N2 U215 ( .A(n240), .B(n241), .C(n242), .D(n243), .Z(n218) );
  GTECH_OR_NOT U216 ( .A(n244), .B(n240), .Z(n243) );
  GTECH_NOT U217 ( .A(n215), .Z(n217) );
  GTECH_NAND2 U218 ( .A(n245), .B(I_a[7]), .Z(n215) );
  GTECH_NOT U219 ( .A(n229), .Z(n227) );
  GTECH_XOR3 U220 ( .A(n246), .B(n247), .C(n211), .Z(n229) );
  GTECH_XOR3 U221 ( .A(n201), .B(n200), .C(n202), .Z(n211) );
  GTECH_OAI21 U222 ( .A(n248), .B(n249), .C(n250), .Z(n202) );
  GTECH_OAI21 U223 ( .A(n251), .B(n252), .C(n253), .Z(n250) );
  GTECH_NOT U224 ( .A(n198), .Z(n200) );
  GTECH_NAND2 U225 ( .A(I_a[5]), .B(I_b[4]), .Z(n198) );
  GTECH_NOT U226 ( .A(n197), .Z(n201) );
  GTECH_NAND2 U227 ( .A(I_b[5]), .B(I_a[4]), .Z(n197) );
  GTECH_NOT U228 ( .A(n212), .Z(n247) );
  GTECH_XOR3 U229 ( .A(n207), .B(n206), .C(n208), .Z(n212) );
  GTECH_OAI21 U230 ( .A(n254), .B(n255), .C(n256), .Z(n208) );
  GTECH_NOT U231 ( .A(n204), .Z(n206) );
  GTECH_NAND2 U232 ( .A(I_b[6]), .B(I_a[3]), .Z(n204) );
  GTECH_NOT U233 ( .A(n203), .Z(n207) );
  GTECH_NAND2 U234 ( .A(I_b[7]), .B(I_a[2]), .Z(n203) );
  GTECH_NOT U235 ( .A(n209), .Z(n246) );
  GTECH_OAI2N2 U236 ( .A(n257), .B(n258), .C(n259), .D(n260), .Z(n209) );
  GTECH_OR_NOT U237 ( .A(n261), .B(n257), .Z(n260) );
  GTECH_NOT U238 ( .A(n231), .Z(n232) );
  GTECH_OAI2N2 U239 ( .A(n262), .B(n263), .C(n264), .D(n265), .Z(n231) );
  GTECH_NAND2 U240 ( .A(n262), .B(n263), .Z(n265) );
  GTECH_XOR3 U241 ( .A(n266), .B(n267), .C(n262), .Z(N148) );
  GTECH_XOR3 U242 ( .A(n268), .B(n241), .C(n240), .Z(n262) );
  GTECH_XOR2 U243 ( .A(n269), .B(n245), .Z(n240) );
  GTECH_OA21 U244 ( .A(n270), .B(n271), .C(n272), .Z(n245) );
  GTECH_OAI21 U245 ( .A(n273), .B(n274), .C(n275), .Z(n272) );
  GTECH_NAND2 U246 ( .A(I_a[7]), .B(I_b[1]), .Z(n269) );
  GTECH_NOT U247 ( .A(n244), .Z(n241) );
  GTECH_XOR3 U248 ( .A(n238), .B(n237), .C(n239), .Z(n244) );
  GTECH_OAI21 U249 ( .A(n276), .B(n277), .C(n278), .Z(n239) );
  GTECH_OAI21 U250 ( .A(n279), .B(n280), .C(n281), .Z(n278) );
  GTECH_NOT U251 ( .A(n235), .Z(n237) );
  GTECH_NAND2 U252 ( .A(I_a[6]), .B(I_b[2]), .Z(n235) );
  GTECH_NOT U253 ( .A(n234), .Z(n238) );
  GTECH_NAND2 U254 ( .A(I_a[5]), .B(I_b[3]), .Z(n234) );
  GTECH_NOT U255 ( .A(n242), .Z(n268) );
  GTECH_OAI2N2 U256 ( .A(n282), .B(n283), .C(n284), .D(n285), .Z(n242) );
  GTECH_OR_NOT U257 ( .A(n286), .B(n282), .Z(n285) );
  GTECH_NOT U258 ( .A(n263), .Z(n267) );
  GTECH_XOR3 U259 ( .A(n287), .B(n258), .C(n257), .Z(n263) );
  GTECH_XOR3 U260 ( .A(n288), .B(n289), .C(n256), .Z(n257) );
  GTECH_NAND3 U261 ( .A(I_b[7]), .B(I_a[0]), .C(n290), .Z(n256) );
  GTECH_NOT U262 ( .A(n255), .Z(n289) );
  GTECH_NAND2 U263 ( .A(I_b[6]), .B(I_a[2]), .Z(n255) );
  GTECH_NOT U264 ( .A(n254), .Z(n288) );
  GTECH_NAND2 U265 ( .A(I_b[7]), .B(I_a[1]), .Z(n254) );
  GTECH_NOT U266 ( .A(n261), .Z(n258) );
  GTECH_XOR3 U267 ( .A(n252), .B(n251), .C(n253), .Z(n261) );
  GTECH_OAI21 U268 ( .A(n291), .B(n292), .C(n293), .Z(n253) );
  GTECH_OAI21 U269 ( .A(n294), .B(n295), .C(n296), .Z(n293) );
  GTECH_NOT U270 ( .A(n249), .Z(n251) );
  GTECH_NAND2 U271 ( .A(I_b[4]), .B(I_a[4]), .Z(n249) );
  GTECH_NOT U272 ( .A(n248), .Z(n252) );
  GTECH_NAND2 U273 ( .A(I_b[5]), .B(I_a[3]), .Z(n248) );
  GTECH_NOT U274 ( .A(n259), .Z(n287) );
  GTECH_OAI22 U275 ( .A(n297), .B(n298), .C(n299), .D(n300), .Z(n259) );
  GTECH_AND_NOT U276 ( .A(n299), .B(n301), .Z(n297) );
  GTECH_NOT U277 ( .A(n264), .Z(n266) );
  GTECH_OAI21 U278 ( .A(n302), .B(n303), .C(n304), .Z(n264) );
  GTECH_OAI21 U279 ( .A(n305), .B(n306), .C(n307), .Z(n304) );
  GTECH_XOR3 U280 ( .A(n308), .B(n303), .C(n306), .Z(N147) );
  GTECH_NOT U281 ( .A(n302), .Z(n306) );
  GTECH_XOR3 U282 ( .A(n309), .B(n283), .C(n282), .Z(n302) );
  GTECH_XOR3 U283 ( .A(n270), .B(n271), .C(n275), .Z(n282) );
  GTECH_OAI21 U284 ( .A(n310), .B(n311), .C(n312), .Z(n275) );
  GTECH_OAI21 U285 ( .A(n313), .B(n314), .C(n315), .Z(n312) );
  GTECH_NOT U286 ( .A(n274), .Z(n271) );
  GTECH_NAND2 U287 ( .A(I_a[7]), .B(I_b[0]), .Z(n274) );
  GTECH_NOT U288 ( .A(n273), .Z(n270) );
  GTECH_NAND2 U289 ( .A(I_a[6]), .B(I_b[1]), .Z(n273) );
  GTECH_NOT U290 ( .A(n286), .Z(n283) );
  GTECH_XOR3 U291 ( .A(n280), .B(n279), .C(n281), .Z(n286) );
  GTECH_OAI21 U292 ( .A(n316), .B(n317), .C(n318), .Z(n281) );
  GTECH_OAI21 U293 ( .A(n319), .B(n320), .C(n321), .Z(n318) );
  GTECH_NOT U294 ( .A(n277), .Z(n279) );
  GTECH_NAND2 U295 ( .A(I_a[5]), .B(I_b[2]), .Z(n277) );
  GTECH_NOT U296 ( .A(n276), .Z(n280) );
  GTECH_NAND2 U297 ( .A(I_a[4]), .B(I_b[3]), .Z(n276) );
  GTECH_NOT U298 ( .A(n284), .Z(n309) );
  GTECH_OAI2N2 U299 ( .A(n322), .B(n323), .C(n324), .D(n325), .Z(n284) );
  GTECH_OR_NOT U300 ( .A(n326), .B(n322), .Z(n325) );
  GTECH_NOT U301 ( .A(n305), .Z(n303) );
  GTECH_XOR3 U302 ( .A(n327), .B(n300), .C(n299), .Z(n305) );
  GTECH_XOR2 U303 ( .A(n328), .B(n290), .Z(n299) );
  GTECH_NOT U304 ( .A(n329), .Z(n290) );
  GTECH_NAND2 U305 ( .A(I_b[6]), .B(I_a[1]), .Z(n329) );
  GTECH_NAND2 U306 ( .A(I_b[7]), .B(I_a[0]), .Z(n328) );
  GTECH_NOT U307 ( .A(n301), .Z(n300) );
  GTECH_XOR3 U308 ( .A(n295), .B(n294), .C(n296), .Z(n301) );
  GTECH_OAI21 U309 ( .A(n330), .B(n331), .C(n332), .Z(n296) );
  GTECH_NOT U310 ( .A(n292), .Z(n294) );
  GTECH_NAND2 U311 ( .A(I_b[4]), .B(I_a[3]), .Z(n292) );
  GTECH_NOT U312 ( .A(n291), .Z(n295) );
  GTECH_NAND2 U313 ( .A(I_b[5]), .B(I_a[2]), .Z(n291) );
  GTECH_NOT U314 ( .A(n298), .Z(n327) );
  GTECH_NAND3 U315 ( .A(I_a[0]), .B(n333), .C(I_b[6]), .Z(n298) );
  GTECH_NOT U316 ( .A(n334), .Z(n333) );
  GTECH_NOT U317 ( .A(n307), .Z(n308) );
  GTECH_OAI2N2 U318 ( .A(n335), .B(n336), .C(n337), .D(n338), .Z(n307) );
  GTECH_NAND2 U319 ( .A(n335), .B(n336), .Z(n338) );
  GTECH_XOR3 U320 ( .A(n339), .B(n340), .C(n335), .Z(N146) );
  GTECH_XOR3 U321 ( .A(n341), .B(n323), .C(n322), .Z(n335) );
  GTECH_XOR3 U322 ( .A(n310), .B(n311), .C(n315), .Z(n322) );
  GTECH_OAI21 U323 ( .A(n342), .B(n343), .C(n344), .Z(n315) );
  GTECH_OAI21 U324 ( .A(n345), .B(n346), .C(n347), .Z(n344) );
  GTECH_NOT U325 ( .A(n314), .Z(n311) );
  GTECH_NAND2 U326 ( .A(I_a[6]), .B(I_b[0]), .Z(n314) );
  GTECH_NOT U327 ( .A(n313), .Z(n310) );
  GTECH_NAND2 U328 ( .A(I_a[5]), .B(I_b[1]), .Z(n313) );
  GTECH_NOT U329 ( .A(n326), .Z(n323) );
  GTECH_XOR3 U330 ( .A(n320), .B(n319), .C(n321), .Z(n326) );
  GTECH_OAI21 U331 ( .A(n348), .B(n349), .C(n350), .Z(n321) );
  GTECH_OAI21 U332 ( .A(n351), .B(n352), .C(n353), .Z(n350) );
  GTECH_NOT U333 ( .A(n317), .Z(n319) );
  GTECH_NAND2 U334 ( .A(I_a[4]), .B(I_b[2]), .Z(n317) );
  GTECH_NOT U335 ( .A(n316), .Z(n320) );
  GTECH_NAND2 U336 ( .A(I_a[3]), .B(I_b[3]), .Z(n316) );
  GTECH_NOT U337 ( .A(n324), .Z(n341) );
  GTECH_OAI2N2 U338 ( .A(n354), .B(n355), .C(n356), .D(n357), .Z(n324) );
  GTECH_OR_NOT U339 ( .A(n358), .B(n354), .Z(n357) );
  GTECH_NOT U340 ( .A(n336), .Z(n340) );
  GTECH_XOR2 U341 ( .A(n334), .B(n359), .Z(n336) );
  GTECH_AND2 U342 ( .A(I_b[6]), .B(I_a[0]), .Z(n359) );
  GTECH_XOR3 U343 ( .A(n360), .B(n361), .C(n332), .Z(n334) );
  GTECH_NAND3 U344 ( .A(I_b[5]), .B(I_a[0]), .C(n362), .Z(n332) );
  GTECH_NOT U345 ( .A(n331), .Z(n361) );
  GTECH_NAND2 U346 ( .A(I_b[4]), .B(I_a[2]), .Z(n331) );
  GTECH_NOT U347 ( .A(n330), .Z(n360) );
  GTECH_NAND2 U348 ( .A(I_b[5]), .B(I_a[1]), .Z(n330) );
  GTECH_NOT U349 ( .A(n337), .Z(n339) );
  GTECH_OAI21 U350 ( .A(n363), .B(n364), .C(n365), .Z(n337) );
  GTECH_OAI21 U351 ( .A(n366), .B(n367), .C(n368), .Z(n365) );
  GTECH_XOR3 U352 ( .A(n368), .B(n366), .C(n367), .Z(N145) );
  GTECH_NOT U353 ( .A(n363), .Z(n367) );
  GTECH_XOR3 U354 ( .A(n369), .B(n355), .C(n354), .Z(n363) );
  GTECH_XOR3 U355 ( .A(n342), .B(n343), .C(n347), .Z(n354) );
  GTECH_OAI21 U356 ( .A(n370), .B(n371), .C(n372), .Z(n347) );
  GTECH_OAI21 U357 ( .A(n373), .B(n374), .C(n375), .Z(n372) );
  GTECH_NOT U358 ( .A(n346), .Z(n343) );
  GTECH_NAND2 U359 ( .A(I_a[5]), .B(I_b[0]), .Z(n346) );
  GTECH_NOT U360 ( .A(n345), .Z(n342) );
  GTECH_NAND2 U361 ( .A(I_a[4]), .B(I_b[1]), .Z(n345) );
  GTECH_NOT U362 ( .A(n358), .Z(n355) );
  GTECH_XOR3 U363 ( .A(n352), .B(n351), .C(n353), .Z(n358) );
  GTECH_OAI21 U364 ( .A(n376), .B(n377), .C(n378), .Z(n353) );
  GTECH_NOT U365 ( .A(n349), .Z(n351) );
  GTECH_NAND2 U366 ( .A(I_a[3]), .B(I_b[2]), .Z(n349) );
  GTECH_NOT U367 ( .A(n348), .Z(n352) );
  GTECH_NAND2 U368 ( .A(I_a[2]), .B(I_b[3]), .Z(n348) );
  GTECH_NOT U369 ( .A(n356), .Z(n369) );
  GTECH_OAI2N2 U370 ( .A(n379), .B(n380), .C(n381), .D(n382), .Z(n356) );
  GTECH_NAND2 U371 ( .A(n379), .B(n380), .Z(n382) );
  GTECH_NOT U372 ( .A(n364), .Z(n366) );
  GTECH_XOR2 U373 ( .A(n383), .B(n362), .Z(n364) );
  GTECH_NOT U374 ( .A(n384), .Z(n362) );
  GTECH_NAND2 U375 ( .A(I_b[4]), .B(I_a[1]), .Z(n384) );
  GTECH_NAND2 U376 ( .A(I_b[5]), .B(I_a[0]), .Z(n383) );
  GTECH_NOT U377 ( .A(n385), .Z(n368) );
  GTECH_NAND3 U378 ( .A(n386), .B(I_a[0]), .C(I_b[4]), .Z(n385) );
  GTECH_XOR2 U379 ( .A(n386), .B(n387), .Z(N144) );
  GTECH_AND2 U380 ( .A(I_b[4]), .B(I_a[0]), .Z(n387) );
  GTECH_XOR3 U381 ( .A(n388), .B(n389), .C(n379), .Z(n386) );
  GTECH_XOR3 U382 ( .A(n390), .B(n391), .C(n378), .Z(n379) );
  GTECH_NAND3 U383 ( .A(I_a[0]), .B(n392), .C(I_b[3]), .Z(n378) );
  GTECH_NOT U384 ( .A(n377), .Z(n391) );
  GTECH_NAND2 U385 ( .A(I_a[2]), .B(I_b[2]), .Z(n377) );
  GTECH_NOT U386 ( .A(n376), .Z(n390) );
  GTECH_NAND2 U387 ( .A(I_b[3]), .B(I_a[1]), .Z(n376) );
  GTECH_NOT U388 ( .A(n380), .Z(n389) );
  GTECH_XOR3 U389 ( .A(n370), .B(n371), .C(n375), .Z(n380) );
  GTECH_OAI22 U390 ( .A(n393), .B(n394), .C(n395), .D(n396), .Z(n375) );
  GTECH_NOR2 U391 ( .A(n397), .B(n398), .Z(n393) );
  GTECH_NOT U392 ( .A(n374), .Z(n371) );
  GTECH_NAND2 U393 ( .A(I_a[4]), .B(I_b[0]), .Z(n374) );
  GTECH_NOT U394 ( .A(n373), .Z(n370) );
  GTECH_NAND2 U395 ( .A(I_a[3]), .B(I_b[1]), .Z(n373) );
  GTECH_NOT U396 ( .A(n381), .Z(n388) );
  GTECH_OAI21 U397 ( .A(n399), .B(n400), .C(n401), .Z(n381) );
  GTECH_OAI21 U398 ( .A(n402), .B(n403), .C(n404), .Z(n401) );
  GTECH_NOT U399 ( .A(n403), .Z(n399) );
  GTECH_XOR3 U400 ( .A(n404), .B(n402), .C(n403), .Z(N143) );
  GTECH_XOR3 U401 ( .A(n395), .B(n396), .C(n394), .Z(n403) );
  GTECH_OAI21 U402 ( .A(n405), .B(n406), .C(n407), .Z(n394) );
  GTECH_NOT U403 ( .A(n398), .Z(n396) );
  GTECH_NAND2 U404 ( .A(I_a[3]), .B(I_b[0]), .Z(n398) );
  GTECH_NOT U405 ( .A(n397), .Z(n395) );
  GTECH_NAND2 U406 ( .A(I_b[1]), .B(I_a[2]), .Z(n397) );
  GTECH_NOT U407 ( .A(n400), .Z(n402) );
  GTECH_XOR2 U408 ( .A(n408), .B(n392), .Z(n400) );
  GTECH_NOT U409 ( .A(n409), .Z(n392) );
  GTECH_NAND2 U410 ( .A(I_b[2]), .B(I_a[1]), .Z(n409) );
  GTECH_NAND2 U411 ( .A(I_b[3]), .B(I_a[0]), .Z(n408) );
  GTECH_NOT U412 ( .A(n410), .Z(n404) );
  GTECH_NAND3 U413 ( .A(I_b[2]), .B(n411), .C(I_a[0]), .Z(n410) );
  GTECH_XOR2 U414 ( .A(n412), .B(n411), .Z(N142) );
  GTECH_NOT U415 ( .A(n413), .Z(n411) );
  GTECH_XOR3 U416 ( .A(n414), .B(n415), .C(n407), .Z(n413) );
  GTECH_NAND3 U417 ( .A(n416), .B(I_a[0]), .C(I_b[1]), .Z(n407) );
  GTECH_NOT U418 ( .A(n406), .Z(n415) );
  GTECH_NAND2 U419 ( .A(I_b[0]), .B(I_a[2]), .Z(n406) );
  GTECH_NOT U420 ( .A(n405), .Z(n414) );
  GTECH_NAND2 U421 ( .A(I_b[1]), .B(I_a[1]), .Z(n405) );
  GTECH_AND2 U422 ( .A(I_a[0]), .B(I_b[2]), .Z(n412) );
  GTECH_XOR2 U423 ( .A(n416), .B(n417), .Z(N141) );
  GTECH_AND2 U424 ( .A(I_b[1]), .B(I_a[0]), .Z(n417) );
  GTECH_NOT U425 ( .A(n418), .Z(n416) );
  GTECH_NAND2 U426 ( .A(I_b[0]), .B(I_a[1]), .Z(n418) );
  GTECH_AND2 U427 ( .A(I_b[0]), .B(I_a[0]), .Z(N140) );
endmodule

