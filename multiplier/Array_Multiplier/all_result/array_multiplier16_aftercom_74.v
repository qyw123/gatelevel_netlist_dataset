
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
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429;

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
  GTECH_NOT U93 ( .A(n100), .Z(N155) );
  GTECH_AOI222 U94 ( .A(n101), .B(n102), .C(n103), .D(n104), .E(n105), .F(n106), .Z(n100) );
  GTECH_NOT U95 ( .A(n107), .Z(n105) );
  GTECH_XOR2 U96 ( .A(n101), .B(n102), .Z(N154) );
  GTECH_NOT U97 ( .A(n108), .Z(n102) );
  GTECH_XOR2 U98 ( .A(n103), .B(n109), .Z(n108) );
  GTECH_NOT U99 ( .A(n104), .Z(n109) );
  GTECH_OAI2N2 U100 ( .A(n110), .B(n111), .C(n112), .D(n113), .Z(n104) );
  GTECH_NAND2 U101 ( .A(n110), .B(n111), .Z(n113) );
  GTECH_XOR2 U102 ( .A(n107), .B(n114), .Z(n103) );
  GTECH_NOT U103 ( .A(n106), .Z(n114) );
  GTECH_OAI21 U104 ( .A(n115), .B(n116), .C(n117), .Z(n106) );
  GTECH_OAI21 U105 ( .A(n118), .B(n119), .C(n120), .Z(n117) );
  GTECH_NOT U106 ( .A(n119), .Z(n115) );
  GTECH_NAND2 U107 ( .A(I_b[7]), .B(I_a[7]), .Z(n107) );
  GTECH_NOT U108 ( .A(n121), .Z(n101) );
  GTECH_NAND2 U109 ( .A(n122), .B(n123), .Z(n121) );
  GTECH_XOR2 U110 ( .A(n123), .B(n122), .Z(N153) );
  GTECH_NOT U111 ( .A(n124), .Z(n122) );
  GTECH_XOR3 U112 ( .A(n125), .B(n110), .C(n112), .Z(n124) );
  GTECH_XOR3 U113 ( .A(n118), .B(n120), .C(n119), .Z(n112) );
  GTECH_OAI21 U114 ( .A(n126), .B(n127), .C(n128), .Z(n119) );
  GTECH_OAI21 U115 ( .A(n129), .B(n130), .C(n131), .Z(n128) );
  GTECH_NOT U116 ( .A(n130), .Z(n126) );
  GTECH_NOT U117 ( .A(n132), .Z(n120) );
  GTECH_NAND2 U118 ( .A(I_b[7]), .B(I_a[6]), .Z(n132) );
  GTECH_NOT U119 ( .A(n116), .Z(n118) );
  GTECH_NAND2 U120 ( .A(I_a[7]), .B(I_b[6]), .Z(n116) );
  GTECH_ADD_ABC U121 ( .A(n133), .B(n134), .C(n135), .COUT(n110) );
  GTECH_NOT U122 ( .A(n136), .Z(n135) );
  GTECH_XOR2 U123 ( .A(n137), .B(n138), .Z(n134) );
  GTECH_AND2 U124 ( .A(I_a[7]), .B(I_b[5]), .Z(n138) );
  GTECH_NOT U125 ( .A(n111), .Z(n125) );
  GTECH_NAND2 U126 ( .A(I_a[7]), .B(n139), .Z(n111) );
  GTECH_NOT U127 ( .A(n140), .Z(n123) );
  GTECH_NAND2 U128 ( .A(n141), .B(n142), .Z(n140) );
  GTECH_NOT U129 ( .A(n143), .Z(n142) );
  GTECH_XOR2 U130 ( .A(n143), .B(n144), .Z(N152) );
  GTECH_NOT U131 ( .A(n141), .Z(n144) );
  GTECH_XOR4 U132 ( .A(n145), .B(n137), .C(n133), .D(n136), .Z(n141) );
  GTECH_XOR3 U133 ( .A(n129), .B(n131), .C(n130), .Z(n136) );
  GTECH_OAI21 U134 ( .A(n146), .B(n147), .C(n148), .Z(n130) );
  GTECH_OAI21 U135 ( .A(n149), .B(n150), .C(n151), .Z(n148) );
  GTECH_NOT U136 ( .A(n150), .Z(n146) );
  GTECH_NOT U137 ( .A(n152), .Z(n131) );
  GTECH_NAND2 U138 ( .A(I_b[7]), .B(I_a[5]), .Z(n152) );
  GTECH_NOT U139 ( .A(n127), .Z(n129) );
  GTECH_NAND2 U140 ( .A(I_b[6]), .B(I_a[6]), .Z(n127) );
  GTECH_ADD_ABC U141 ( .A(n153), .B(n154), .C(n155), .COUT(n133) );
  GTECH_NOT U142 ( .A(n156), .Z(n155) );
  GTECH_XOR3 U143 ( .A(n157), .B(n158), .C(n159), .Z(n154) );
  GTECH_NOT U144 ( .A(n139), .Z(n137) );
  GTECH_OAI21 U145 ( .A(n159), .B(n160), .C(n161), .Z(n139) );
  GTECH_OAI21 U146 ( .A(n157), .B(n162), .C(n158), .Z(n161) );
  GTECH_NOT U147 ( .A(n160), .Z(n157) );
  GTECH_NOT U148 ( .A(n162), .Z(n159) );
  GTECH_AND2 U149 ( .A(I_a[7]), .B(I_b[5]), .Z(n145) );
  GTECH_ADD_ABC U150 ( .A(n163), .B(n164), .C(n165), .COUT(n143) );
  GTECH_NOT U151 ( .A(n166), .Z(n165) );
  GTECH_OA22 U152 ( .A(n167), .B(n168), .C(n169), .D(n170), .Z(n164) );
  GTECH_OA21 U153 ( .A(n171), .B(n172), .C(n173), .Z(n163) );
  GTECH_XOR3 U154 ( .A(n174), .B(n166), .C(n175), .Z(N151) );
  GTECH_OA21 U155 ( .A(n171), .B(n172), .C(n173), .Z(n175) );
  GTECH_OAI21 U156 ( .A(n176), .B(n177), .C(n178), .Z(n173) );
  GTECH_XOR2 U157 ( .A(n179), .B(n153), .Z(n166) );
  GTECH_ADD_ABC U158 ( .A(n180), .B(n181), .C(n182), .COUT(n153) );
  GTECH_NOT U159 ( .A(n183), .Z(n182) );
  GTECH_XOR3 U160 ( .A(n184), .B(n185), .C(n186), .Z(n181) );
  GTECH_XOR4 U161 ( .A(n158), .B(n162), .C(n160), .D(n156), .Z(n179) );
  GTECH_XOR3 U162 ( .A(n149), .B(n151), .C(n150), .Z(n156) );
  GTECH_OAI21 U163 ( .A(n187), .B(n188), .C(n189), .Z(n150) );
  GTECH_OAI21 U164 ( .A(n190), .B(n191), .C(n192), .Z(n189) );
  GTECH_NOT U165 ( .A(n191), .Z(n187) );
  GTECH_NOT U166 ( .A(n193), .Z(n151) );
  GTECH_NAND2 U167 ( .A(I_b[7]), .B(I_a[4]), .Z(n193) );
  GTECH_NOT U168 ( .A(n147), .Z(n149) );
  GTECH_NAND2 U169 ( .A(I_b[6]), .B(I_a[5]), .Z(n147) );
  GTECH_NAND2 U170 ( .A(I_a[7]), .B(I_b[4]), .Z(n160) );
  GTECH_OAI21 U171 ( .A(n186), .B(n194), .C(n195), .Z(n162) );
  GTECH_OAI21 U172 ( .A(n184), .B(n196), .C(n185), .Z(n195) );
  GTECH_NOT U173 ( .A(n194), .Z(n184) );
  GTECH_NOT U174 ( .A(n196), .Z(n186) );
  GTECH_NOT U175 ( .A(n197), .Z(n158) );
  GTECH_NAND2 U176 ( .A(I_a[6]), .B(I_b[5]), .Z(n197) );
  GTECH_OA22 U177 ( .A(n167), .B(n168), .C(n169), .D(n170), .Z(n174) );
  GTECH_NOT U178 ( .A(n198), .Z(n170) );
  GTECH_NOT U179 ( .A(I_a[7]), .Z(n168) );
  GTECH_XOR3 U180 ( .A(n171), .B(n176), .C(n199), .Z(N150) );
  GTECH_NOT U181 ( .A(n178), .Z(n199) );
  GTECH_XOR2 U182 ( .A(n200), .B(n180), .Z(n178) );
  GTECH_ADD_ABC U183 ( .A(n201), .B(n202), .C(n203), .COUT(n180) );
  GTECH_NOT U184 ( .A(n204), .Z(n203) );
  GTECH_XOR3 U185 ( .A(n205), .B(n206), .C(n207), .Z(n202) );
  GTECH_XOR4 U186 ( .A(n185), .B(n196), .C(n194), .D(n183), .Z(n200) );
  GTECH_XOR3 U187 ( .A(n190), .B(n192), .C(n191), .Z(n183) );
  GTECH_OAI21 U188 ( .A(n208), .B(n209), .C(n210), .Z(n191) );
  GTECH_OAI21 U189 ( .A(n211), .B(n212), .C(n213), .Z(n210) );
  GTECH_NOT U190 ( .A(n212), .Z(n208) );
  GTECH_NOT U191 ( .A(n214), .Z(n192) );
  GTECH_NAND2 U192 ( .A(I_b[7]), .B(I_a[3]), .Z(n214) );
  GTECH_NOT U193 ( .A(n188), .Z(n190) );
  GTECH_NAND2 U194 ( .A(I_b[6]), .B(I_a[4]), .Z(n188) );
  GTECH_NAND2 U195 ( .A(I_a[6]), .B(I_b[4]), .Z(n194) );
  GTECH_OAI21 U196 ( .A(n207), .B(n215), .C(n216), .Z(n196) );
  GTECH_OAI21 U197 ( .A(n205), .B(n217), .C(n206), .Z(n216) );
  GTECH_NOT U198 ( .A(n215), .Z(n205) );
  GTECH_NOT U199 ( .A(n217), .Z(n207) );
  GTECH_NOT U200 ( .A(n218), .Z(n185) );
  GTECH_NAND2 U201 ( .A(I_a[5]), .B(I_b[5]), .Z(n218) );
  GTECH_NOT U202 ( .A(n172), .Z(n176) );
  GTECH_XOR2 U203 ( .A(n198), .B(n169), .Z(n172) );
  GTECH_NOT U204 ( .A(n219), .Z(n169) );
  GTECH_OAI2N2 U205 ( .A(n220), .B(n221), .C(n222), .D(n223), .Z(n219) );
  GTECH_NAND2 U206 ( .A(n220), .B(n221), .Z(n223) );
  GTECH_XOR2 U207 ( .A(n224), .B(n167), .Z(n198) );
  GTECH_AND2 U208 ( .A(n225), .B(n226), .Z(n167) );
  GTECH_OR_NOT U209 ( .A(n227), .B(n228), .Z(n226) );
  GTECH_OAI21 U210 ( .A(n229), .B(n228), .C(n230), .Z(n225) );
  GTECH_NAND2 U211 ( .A(I_a[7]), .B(I_b[3]), .Z(n224) );
  GTECH_NOT U212 ( .A(n177), .Z(n171) );
  GTECH_OAI2N2 U213 ( .A(n231), .B(n232), .C(n233), .D(n234), .Z(n177) );
  GTECH_NAND2 U214 ( .A(n231), .B(n232), .Z(n234) );
  GTECH_XOR3 U215 ( .A(n231), .B(n235), .C(n236), .Z(N149) );
  GTECH_NOT U216 ( .A(n233), .Z(n236) );
  GTECH_XOR2 U217 ( .A(n237), .B(n201), .Z(n233) );
  GTECH_ADD_ABC U218 ( .A(n238), .B(n239), .C(n240), .COUT(n201) );
  GTECH_XOR3 U219 ( .A(n241), .B(n242), .C(n243), .Z(n239) );
  GTECH_OA21 U220 ( .A(n244), .B(n245), .C(n246), .Z(n238) );
  GTECH_XOR4 U221 ( .A(n206), .B(n217), .C(n215), .D(n204), .Z(n237) );
  GTECH_XOR3 U222 ( .A(n211), .B(n213), .C(n212), .Z(n204) );
  GTECH_OAI21 U223 ( .A(n247), .B(n248), .C(n249), .Z(n212) );
  GTECH_NOT U224 ( .A(n250), .Z(n213) );
  GTECH_NAND2 U225 ( .A(I_b[7]), .B(I_a[2]), .Z(n250) );
  GTECH_NOT U226 ( .A(n209), .Z(n211) );
  GTECH_NAND2 U227 ( .A(I_b[6]), .B(I_a[3]), .Z(n209) );
  GTECH_NAND2 U228 ( .A(I_a[5]), .B(I_b[4]), .Z(n215) );
  GTECH_OAI21 U229 ( .A(n243), .B(n251), .C(n252), .Z(n217) );
  GTECH_OAI21 U230 ( .A(n241), .B(n253), .C(n242), .Z(n252) );
  GTECH_NOT U231 ( .A(n251), .Z(n241) );
  GTECH_NOT U232 ( .A(n253), .Z(n243) );
  GTECH_NOT U233 ( .A(n254), .Z(n206) );
  GTECH_NAND2 U234 ( .A(I_b[5]), .B(I_a[4]), .Z(n254) );
  GTECH_NOT U235 ( .A(n232), .Z(n235) );
  GTECH_XOR3 U236 ( .A(n255), .B(n220), .C(n222), .Z(n232) );
  GTECH_XOR3 U237 ( .A(n229), .B(n230), .C(n228), .Z(n222) );
  GTECH_OAI21 U238 ( .A(n256), .B(n257), .C(n258), .Z(n228) );
  GTECH_OAI21 U239 ( .A(n259), .B(n260), .C(n261), .Z(n258) );
  GTECH_NOT U240 ( .A(n260), .Z(n256) );
  GTECH_NOT U241 ( .A(n262), .Z(n230) );
  GTECH_NAND2 U242 ( .A(I_a[6]), .B(I_b[3]), .Z(n262) );
  GTECH_NOT U243 ( .A(n227), .Z(n229) );
  GTECH_NAND2 U244 ( .A(I_a[7]), .B(I_b[2]), .Z(n227) );
  GTECH_ADD_ABC U245 ( .A(n263), .B(n264), .C(n265), .COUT(n220) );
  GTECH_XOR2 U246 ( .A(n266), .B(n267), .Z(n264) );
  GTECH_AND2 U247 ( .A(I_a[7]), .B(I_b[1]), .Z(n267) );
  GTECH_NOT U248 ( .A(n221), .Z(n255) );
  GTECH_NAND2 U249 ( .A(I_a[7]), .B(n268), .Z(n221) );
  GTECH_ADD_ABC U250 ( .A(n269), .B(n270), .C(n271), .COUT(n231) );
  GTECH_XOR3 U251 ( .A(n263), .B(n272), .C(n265), .Z(n270) );
  GTECH_NOT U252 ( .A(n273), .Z(n265) );
  GTECH_XOR2 U253 ( .A(n269), .B(n274), .Z(N148) );
  GTECH_XOR4 U254 ( .A(n272), .B(n273), .C(n271), .D(n263), .Z(n274) );
  GTECH_ADD_ABC U255 ( .A(n275), .B(n276), .C(n277), .COUT(n263) );
  GTECH_XOR3 U256 ( .A(n278), .B(n279), .C(n280), .Z(n276) );
  GTECH_XOR2 U257 ( .A(n281), .B(n282), .Z(n271) );
  GTECH_OA21 U258 ( .A(n244), .B(n245), .C(n246), .Z(n282) );
  GTECH_OAI21 U259 ( .A(n283), .B(n284), .C(n285), .Z(n246) );
  GTECH_NOT U260 ( .A(n244), .Z(n284) );
  GTECH_XOR4 U261 ( .A(n242), .B(n253), .C(n251), .D(n240), .Z(n281) );
  GTECH_XOR3 U262 ( .A(n286), .B(n287), .C(n249), .Z(n240) );
  GTECH_NAND3 U263 ( .A(I_b[6]), .B(I_a[1]), .C(n288), .Z(n249) );
  GTECH_NOT U264 ( .A(n248), .Z(n287) );
  GTECH_NAND2 U265 ( .A(I_b[7]), .B(I_a[1]), .Z(n248) );
  GTECH_NOT U266 ( .A(n247), .Z(n286) );
  GTECH_NAND2 U267 ( .A(I_b[6]), .B(I_a[2]), .Z(n247) );
  GTECH_NAND2 U268 ( .A(I_b[4]), .B(I_a[4]), .Z(n251) );
  GTECH_OAI21 U269 ( .A(n289), .B(n290), .C(n291), .Z(n253) );
  GTECH_OAI21 U270 ( .A(n292), .B(n293), .C(n294), .Z(n291) );
  GTECH_NOT U271 ( .A(n293), .Z(n289) );
  GTECH_NOT U272 ( .A(n295), .Z(n242) );
  GTECH_NAND2 U273 ( .A(I_b[5]), .B(I_a[3]), .Z(n295) );
  GTECH_XOR3 U274 ( .A(n259), .B(n261), .C(n260), .Z(n273) );
  GTECH_OAI21 U275 ( .A(n296), .B(n297), .C(n298), .Z(n260) );
  GTECH_OAI21 U276 ( .A(n299), .B(n300), .C(n301), .Z(n298) );
  GTECH_NOT U277 ( .A(n300), .Z(n296) );
  GTECH_NOT U278 ( .A(n302), .Z(n261) );
  GTECH_NAND2 U279 ( .A(I_a[5]), .B(I_b[3]), .Z(n302) );
  GTECH_NOT U280 ( .A(n257), .Z(n259) );
  GTECH_NAND2 U281 ( .A(I_a[6]), .B(I_b[2]), .Z(n257) );
  GTECH_XOR2 U282 ( .A(n303), .B(n266), .Z(n272) );
  GTECH_NOT U283 ( .A(n268), .Z(n266) );
  GTECH_OAI21 U284 ( .A(n280), .B(n304), .C(n305), .Z(n268) );
  GTECH_OAI21 U285 ( .A(n278), .B(n306), .C(n279), .Z(n305) );
  GTECH_NOT U286 ( .A(n306), .Z(n280) );
  GTECH_AND2 U287 ( .A(I_a[7]), .B(I_b[1]), .Z(n303) );
  GTECH_ADD_ABC U288 ( .A(n307), .B(n308), .C(n309), .COUT(n269) );
  GTECH_NOT U289 ( .A(n310), .Z(n309) );
  GTECH_XOR3 U290 ( .A(n275), .B(n311), .C(n277), .Z(n308) );
  GTECH_NOT U291 ( .A(n312), .Z(n277) );
  GTECH_NOT U292 ( .A(n313), .Z(n311) );
  GTECH_XOR2 U293 ( .A(n314), .B(n307), .Z(N147) );
  GTECH_ADD_ABC U294 ( .A(n315), .B(n316), .C(n317), .COUT(n307) );
  GTECH_XOR3 U295 ( .A(n318), .B(n319), .C(n320), .Z(n316) );
  GTECH_OA21 U296 ( .A(n321), .B(n322), .C(n323), .Z(n315) );
  GTECH_XOR4 U297 ( .A(n312), .B(n275), .C(n313), .D(n310), .Z(n314) );
  GTECH_XOR3 U298 ( .A(n285), .B(n245), .C(n244), .Z(n310) );
  GTECH_XOR2 U299 ( .A(n324), .B(n288), .Z(n244) );
  GTECH_NOT U300 ( .A(n325), .Z(n288) );
  GTECH_NAND2 U301 ( .A(I_b[7]), .B(I_a[0]), .Z(n325) );
  GTECH_NAND2 U302 ( .A(I_b[6]), .B(I_a[1]), .Z(n324) );
  GTECH_NOT U303 ( .A(n283), .Z(n245) );
  GTECH_XOR3 U304 ( .A(n292), .B(n294), .C(n293), .Z(n283) );
  GTECH_OAI21 U305 ( .A(n326), .B(n327), .C(n328), .Z(n293) );
  GTECH_NOT U306 ( .A(n329), .Z(n294) );
  GTECH_NAND2 U307 ( .A(I_b[5]), .B(I_a[2]), .Z(n329) );
  GTECH_NOT U308 ( .A(n290), .Z(n292) );
  GTECH_NAND2 U309 ( .A(I_b[4]), .B(I_a[3]), .Z(n290) );
  GTECH_NOT U310 ( .A(n330), .Z(n285) );
  GTECH_NAND3 U311 ( .A(I_a[0]), .B(n331), .C(I_b[6]), .Z(n330) );
  GTECH_NOT U312 ( .A(n332), .Z(n331) );
  GTECH_XOR3 U313 ( .A(n278), .B(n279), .C(n306), .Z(n313) );
  GTECH_OAI21 U314 ( .A(n333), .B(n334), .C(n335), .Z(n306) );
  GTECH_OAI21 U315 ( .A(n336), .B(n337), .C(n338), .Z(n335) );
  GTECH_NOT U316 ( .A(n339), .Z(n279) );
  GTECH_NAND2 U317 ( .A(I_a[6]), .B(I_b[1]), .Z(n339) );
  GTECH_NOT U318 ( .A(n304), .Z(n278) );
  GTECH_NAND2 U319 ( .A(I_a[7]), .B(I_b[0]), .Z(n304) );
  GTECH_ADD_ABC U320 ( .A(n318), .B(n340), .C(n320), .COUT(n275) );
  GTECH_NOT U321 ( .A(n341), .Z(n320) );
  GTECH_XOR3 U322 ( .A(n336), .B(n338), .C(n333), .Z(n340) );
  GTECH_NOT U323 ( .A(n337), .Z(n333) );
  GTECH_XOR3 U324 ( .A(n299), .B(n301), .C(n300), .Z(n312) );
  GTECH_OAI21 U325 ( .A(n342), .B(n343), .C(n344), .Z(n300) );
  GTECH_OAI21 U326 ( .A(n345), .B(n346), .C(n347), .Z(n344) );
  GTECH_NOT U327 ( .A(n346), .Z(n342) );
  GTECH_NOT U328 ( .A(n348), .Z(n301) );
  GTECH_NAND2 U329 ( .A(I_b[3]), .B(I_a[4]), .Z(n348) );
  GTECH_NOT U330 ( .A(n297), .Z(n299) );
  GTECH_NAND2 U331 ( .A(I_a[5]), .B(I_b[2]), .Z(n297) );
  GTECH_XOR2 U332 ( .A(n349), .B(n350), .Z(N146) );
  GTECH_XOR4 U333 ( .A(n319), .B(n341), .C(n317), .D(n318), .Z(n350) );
  GTECH_ADD_ABC U334 ( .A(n351), .B(n352), .C(n353), .COUT(n318) );
  GTECH_NOT U335 ( .A(n354), .Z(n353) );
  GTECH_XOR3 U336 ( .A(n355), .B(n356), .C(n357), .Z(n352) );
  GTECH_XOR2 U337 ( .A(n332), .B(n358), .Z(n317) );
  GTECH_AND2 U338 ( .A(I_b[6]), .B(I_a[0]), .Z(n358) );
  GTECH_XOR3 U339 ( .A(n359), .B(n360), .C(n328), .Z(n332) );
  GTECH_NAND3 U340 ( .A(I_b[4]), .B(I_a[1]), .C(n361), .Z(n328) );
  GTECH_NOT U341 ( .A(n327), .Z(n360) );
  GTECH_NAND2 U342 ( .A(I_b[5]), .B(I_a[1]), .Z(n327) );
  GTECH_NOT U343 ( .A(n326), .Z(n359) );
  GTECH_NAND2 U344 ( .A(I_b[4]), .B(I_a[2]), .Z(n326) );
  GTECH_XOR3 U345 ( .A(n345), .B(n347), .C(n346), .Z(n341) );
  GTECH_OAI21 U346 ( .A(n362), .B(n363), .C(n364), .Z(n346) );
  GTECH_OAI21 U347 ( .A(n365), .B(n366), .C(n367), .Z(n364) );
  GTECH_NOT U348 ( .A(n366), .Z(n362) );
  GTECH_NOT U349 ( .A(n368), .Z(n347) );
  GTECH_NAND2 U350 ( .A(I_b[3]), .B(I_a[3]), .Z(n368) );
  GTECH_NOT U351 ( .A(n343), .Z(n345) );
  GTECH_NAND2 U352 ( .A(I_b[2]), .B(I_a[4]), .Z(n343) );
  GTECH_NOT U353 ( .A(n369), .Z(n319) );
  GTECH_XOR3 U354 ( .A(n336), .B(n338), .C(n337), .Z(n369) );
  GTECH_OAI21 U355 ( .A(n357), .B(n370), .C(n371), .Z(n337) );
  GTECH_OAI21 U356 ( .A(n355), .B(n372), .C(n356), .Z(n371) );
  GTECH_NOT U357 ( .A(n370), .Z(n355) );
  GTECH_NOT U358 ( .A(n372), .Z(n357) );
  GTECH_NOT U359 ( .A(n373), .Z(n338) );
  GTECH_NAND2 U360 ( .A(I_a[5]), .B(I_b[1]), .Z(n373) );
  GTECH_NOT U361 ( .A(n334), .Z(n336) );
  GTECH_NAND2 U362 ( .A(I_a[6]), .B(I_b[0]), .Z(n334) );
  GTECH_OA21 U363 ( .A(n321), .B(n322), .C(n323), .Z(n349) );
  GTECH_OAI21 U364 ( .A(n374), .B(n375), .C(n376), .Z(n323) );
  GTECH_NOT U365 ( .A(n321), .Z(n375) );
  GTECH_XOR3 U366 ( .A(n376), .B(n322), .C(n321), .Z(N145) );
  GTECH_XOR2 U367 ( .A(n377), .B(n361), .Z(n321) );
  GTECH_NOT U368 ( .A(n378), .Z(n361) );
  GTECH_NAND2 U369 ( .A(I_b[5]), .B(I_a[0]), .Z(n378) );
  GTECH_NAND2 U370 ( .A(I_b[4]), .B(I_a[1]), .Z(n377) );
  GTECH_NOT U371 ( .A(n374), .Z(n322) );
  GTECH_XOR2 U372 ( .A(n379), .B(n351), .Z(n374) );
  GTECH_ADD_ABC U373 ( .A(n380), .B(n381), .C(n382), .COUT(n351) );
  GTECH_XOR3 U374 ( .A(n383), .B(n384), .C(n385), .Z(n381) );
  GTECH_OA21 U375 ( .A(n386), .B(n387), .C(n388), .Z(n380) );
  GTECH_XOR4 U376 ( .A(n356), .B(n372), .C(n370), .D(n354), .Z(n379) );
  GTECH_XOR3 U377 ( .A(n365), .B(n367), .C(n366), .Z(n354) );
  GTECH_OAI21 U378 ( .A(n389), .B(n390), .C(n391), .Z(n366) );
  GTECH_NOT U379 ( .A(n392), .Z(n367) );
  GTECH_NAND2 U380 ( .A(I_b[3]), .B(I_a[2]), .Z(n392) );
  GTECH_NOT U381 ( .A(n363), .Z(n365) );
  GTECH_NAND2 U382 ( .A(I_b[2]), .B(I_a[3]), .Z(n363) );
  GTECH_NAND2 U383 ( .A(I_a[5]), .B(I_b[0]), .Z(n370) );
  GTECH_OAI21 U384 ( .A(n385), .B(n393), .C(n394), .Z(n372) );
  GTECH_OAI21 U385 ( .A(n383), .B(n395), .C(n384), .Z(n394) );
  GTECH_NOT U386 ( .A(n395), .Z(n385) );
  GTECH_NOT U387 ( .A(n396), .Z(n356) );
  GTECH_NAND2 U388 ( .A(I_a[4]), .B(I_b[1]), .Z(n396) );
  GTECH_NOT U389 ( .A(n397), .Z(n376) );
  GTECH_NAND3 U390 ( .A(I_a[0]), .B(n398), .C(I_b[4]), .Z(n397) );
  GTECH_XOR2 U391 ( .A(n399), .B(n398), .Z(N144) );
  GTECH_XOR2 U392 ( .A(n400), .B(n401), .Z(n398) );
  GTECH_XOR4 U393 ( .A(n384), .B(n395), .C(n382), .D(n383), .Z(n401) );
  GTECH_NOT U394 ( .A(n393), .Z(n383) );
  GTECH_NAND2 U395 ( .A(I_a[4]), .B(I_b[0]), .Z(n393) );
  GTECH_XOR3 U396 ( .A(n402), .B(n403), .C(n391), .Z(n382) );
  GTECH_NAND3 U397 ( .A(I_b[2]), .B(I_a[1]), .C(n404), .Z(n391) );
  GTECH_NOT U398 ( .A(n390), .Z(n403) );
  GTECH_NAND2 U399 ( .A(I_b[3]), .B(I_a[1]), .Z(n390) );
  GTECH_NOT U400 ( .A(n389), .Z(n402) );
  GTECH_NAND2 U401 ( .A(I_b[2]), .B(I_a[2]), .Z(n389) );
  GTECH_OAI21 U402 ( .A(n405), .B(n406), .C(n407), .Z(n395) );
  GTECH_OAI21 U403 ( .A(n408), .B(n409), .C(n410), .Z(n407) );
  GTECH_NOT U404 ( .A(n409), .Z(n405) );
  GTECH_NOT U405 ( .A(n411), .Z(n384) );
  GTECH_NAND2 U406 ( .A(I_a[3]), .B(I_b[1]), .Z(n411) );
  GTECH_OA21 U407 ( .A(n386), .B(n387), .C(n388), .Z(n400) );
  GTECH_OAI21 U408 ( .A(n412), .B(n413), .C(n414), .Z(n388) );
  GTECH_NOT U409 ( .A(n386), .Z(n413) );
  GTECH_AND2 U410 ( .A(I_b[4]), .B(I_a[0]), .Z(n399) );
  GTECH_XOR3 U411 ( .A(n414), .B(n387), .C(n386), .Z(N143) );
  GTECH_XOR2 U412 ( .A(n415), .B(n404), .Z(n386) );
  GTECH_NOT U413 ( .A(n416), .Z(n404) );
  GTECH_NAND2 U414 ( .A(I_b[3]), .B(I_a[0]), .Z(n416) );
  GTECH_NAND2 U415 ( .A(I_b[2]), .B(I_a[1]), .Z(n415) );
  GTECH_NOT U416 ( .A(n412), .Z(n387) );
  GTECH_XOR3 U417 ( .A(n408), .B(n410), .C(n409), .Z(n412) );
  GTECH_OAI21 U418 ( .A(n417), .B(n418), .C(n419), .Z(n409) );
  GTECH_NOT U419 ( .A(n420), .Z(n410) );
  GTECH_NAND2 U420 ( .A(I_b[1]), .B(I_a[2]), .Z(n420) );
  GTECH_NOT U421 ( .A(n406), .Z(n408) );
  GTECH_NAND2 U422 ( .A(I_b[0]), .B(I_a[3]), .Z(n406) );
  GTECH_NOT U423 ( .A(n421), .Z(n414) );
  GTECH_NAND3 U424 ( .A(I_a[0]), .B(n422), .C(I_b[2]), .Z(n421) );
  GTECH_XOR2 U425 ( .A(n423), .B(n422), .Z(N142) );
  GTECH_NOT U426 ( .A(n424), .Z(n422) );
  GTECH_XOR3 U427 ( .A(n425), .B(n426), .C(n419), .Z(n424) );
  GTECH_NAND3 U428 ( .A(n427), .B(I_b[0]), .C(I_a[1]), .Z(n419) );
  GTECH_NOT U429 ( .A(n417), .Z(n426) );
  GTECH_NAND2 U430 ( .A(I_a[1]), .B(I_b[1]), .Z(n417) );
  GTECH_NOT U431 ( .A(n418), .Z(n425) );
  GTECH_NAND2 U432 ( .A(I_b[0]), .B(I_a[2]), .Z(n418) );
  GTECH_AND2 U433 ( .A(I_b[2]), .B(I_a[0]), .Z(n423) );
  GTECH_XOR2 U434 ( .A(n427), .B(n428), .Z(N141) );
  GTECH_AND2 U435 ( .A(I_a[1]), .B(I_b[0]), .Z(n428) );
  GTECH_NOT U436 ( .A(n429), .Z(n427) );
  GTECH_NAND2 U437 ( .A(I_a[0]), .B(I_b[1]), .Z(n429) );
  GTECH_AND2 U438 ( .A(I_a[0]), .B(I_b[0]), .Z(N140) );
endmodule

