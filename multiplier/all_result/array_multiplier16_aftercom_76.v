
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
         n425, n426, n427, n428, n429, n430;

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
  GTECH_OAI21 U100 ( .A(n110), .B(n111), .C(n112), .Z(n104) );
  GTECH_OAI21 U101 ( .A(n113), .B(n114), .C(n115), .Z(n112) );
  GTECH_NOT U102 ( .A(n110), .Z(n114) );
  GTECH_XOR2 U103 ( .A(n107), .B(n116), .Z(n103) );
  GTECH_NOT U104 ( .A(n106), .Z(n116) );
  GTECH_OAI21 U105 ( .A(n117), .B(n118), .C(n119), .Z(n106) );
  GTECH_OAI21 U106 ( .A(n120), .B(n121), .C(n122), .Z(n119) );
  GTECH_NOT U107 ( .A(n121), .Z(n117) );
  GTECH_NAND2 U108 ( .A(I_b[7]), .B(I_a[7]), .Z(n107) );
  GTECH_NOT U109 ( .A(n123), .Z(n101) );
  GTECH_NAND2 U110 ( .A(n124), .B(n125), .Z(n123) );
  GTECH_XOR2 U111 ( .A(n125), .B(n124), .Z(N153) );
  GTECH_NOT U112 ( .A(n126), .Z(n124) );
  GTECH_XOR3 U113 ( .A(n113), .B(n110), .C(n115), .Z(n126) );
  GTECH_XOR3 U114 ( .A(n120), .B(n122), .C(n121), .Z(n115) );
  GTECH_OAI21 U115 ( .A(n127), .B(n128), .C(n129), .Z(n121) );
  GTECH_OAI21 U116 ( .A(n130), .B(n131), .C(n132), .Z(n129) );
  GTECH_NOT U117 ( .A(n131), .Z(n127) );
  GTECH_NOT U118 ( .A(n133), .Z(n122) );
  GTECH_NAND2 U119 ( .A(I_b[7]), .B(I_a[6]), .Z(n133) );
  GTECH_NOT U120 ( .A(n118), .Z(n120) );
  GTECH_NAND2 U121 ( .A(I_a[7]), .B(I_b[6]), .Z(n118) );
  GTECH_ADD_ABC U122 ( .A(n134), .B(n135), .C(n136), .COUT(n110) );
  GTECH_NOT U123 ( .A(n137), .Z(n136) );
  GTECH_XOR2 U124 ( .A(n138), .B(n139), .Z(n135) );
  GTECH_AND2 U125 ( .A(I_a[7]), .B(I_b[5]), .Z(n139) );
  GTECH_NOT U126 ( .A(n111), .Z(n113) );
  GTECH_NAND2 U127 ( .A(I_a[7]), .B(n140), .Z(n111) );
  GTECH_NOT U128 ( .A(n141), .Z(n125) );
  GTECH_NAND2 U129 ( .A(n142), .B(n143), .Z(n141) );
  GTECH_NOT U130 ( .A(n144), .Z(n143) );
  GTECH_XOR2 U131 ( .A(n144), .B(n145), .Z(N152) );
  GTECH_NOT U132 ( .A(n142), .Z(n145) );
  GTECH_XOR4 U133 ( .A(n146), .B(n138), .C(n134), .D(n137), .Z(n142) );
  GTECH_XOR3 U134 ( .A(n130), .B(n132), .C(n131), .Z(n137) );
  GTECH_OAI21 U135 ( .A(n147), .B(n148), .C(n149), .Z(n131) );
  GTECH_OAI21 U136 ( .A(n150), .B(n151), .C(n152), .Z(n149) );
  GTECH_NOT U137 ( .A(n151), .Z(n147) );
  GTECH_NOT U138 ( .A(n153), .Z(n132) );
  GTECH_NAND2 U139 ( .A(I_b[7]), .B(I_a[5]), .Z(n153) );
  GTECH_NOT U140 ( .A(n128), .Z(n130) );
  GTECH_NAND2 U141 ( .A(I_b[6]), .B(I_a[6]), .Z(n128) );
  GTECH_ADD_ABC U142 ( .A(n154), .B(n155), .C(n156), .COUT(n134) );
  GTECH_NOT U143 ( .A(n157), .Z(n156) );
  GTECH_XOR3 U144 ( .A(n158), .B(n159), .C(n160), .Z(n155) );
  GTECH_NOT U145 ( .A(n140), .Z(n138) );
  GTECH_OAI21 U146 ( .A(n160), .B(n161), .C(n162), .Z(n140) );
  GTECH_OAI21 U147 ( .A(n158), .B(n163), .C(n159), .Z(n162) );
  GTECH_NOT U148 ( .A(n161), .Z(n158) );
  GTECH_NOT U149 ( .A(n163), .Z(n160) );
  GTECH_AND2 U150 ( .A(I_a[7]), .B(I_b[5]), .Z(n146) );
  GTECH_ADD_ABC U151 ( .A(n164), .B(n165), .C(n166), .COUT(n144) );
  GTECH_NOT U152 ( .A(n167), .Z(n166) );
  GTECH_OA22 U153 ( .A(n168), .B(n169), .C(n170), .D(n171), .Z(n165) );
  GTECH_OA21 U154 ( .A(n172), .B(n173), .C(n174), .Z(n164) );
  GTECH_XOR3 U155 ( .A(n175), .B(n167), .C(n176), .Z(N151) );
  GTECH_OA21 U156 ( .A(n172), .B(n173), .C(n174), .Z(n176) );
  GTECH_OAI21 U157 ( .A(n177), .B(n178), .C(n179), .Z(n174) );
  GTECH_XOR2 U158 ( .A(n180), .B(n154), .Z(n167) );
  GTECH_ADD_ABC U159 ( .A(n181), .B(n182), .C(n183), .COUT(n154) );
  GTECH_NOT U160 ( .A(n184), .Z(n183) );
  GTECH_XOR3 U161 ( .A(n185), .B(n186), .C(n187), .Z(n182) );
  GTECH_XOR4 U162 ( .A(n159), .B(n163), .C(n161), .D(n157), .Z(n180) );
  GTECH_XOR3 U163 ( .A(n150), .B(n152), .C(n151), .Z(n157) );
  GTECH_OAI21 U164 ( .A(n188), .B(n189), .C(n190), .Z(n151) );
  GTECH_OAI21 U165 ( .A(n191), .B(n192), .C(n193), .Z(n190) );
  GTECH_NOT U166 ( .A(n192), .Z(n188) );
  GTECH_NOT U167 ( .A(n194), .Z(n152) );
  GTECH_NAND2 U168 ( .A(I_b[7]), .B(I_a[4]), .Z(n194) );
  GTECH_NOT U169 ( .A(n148), .Z(n150) );
  GTECH_NAND2 U170 ( .A(I_b[6]), .B(I_a[5]), .Z(n148) );
  GTECH_NAND2 U171 ( .A(I_a[7]), .B(I_b[4]), .Z(n161) );
  GTECH_OAI21 U172 ( .A(n187), .B(n195), .C(n196), .Z(n163) );
  GTECH_OAI21 U173 ( .A(n185), .B(n197), .C(n186), .Z(n196) );
  GTECH_NOT U174 ( .A(n195), .Z(n185) );
  GTECH_NOT U175 ( .A(n197), .Z(n187) );
  GTECH_NOT U176 ( .A(n198), .Z(n159) );
  GTECH_NAND2 U177 ( .A(I_a[6]), .B(I_b[5]), .Z(n198) );
  GTECH_OA22 U178 ( .A(n168), .B(n169), .C(n170), .D(n171), .Z(n175) );
  GTECH_NOT U179 ( .A(n199), .Z(n171) );
  GTECH_NOT U180 ( .A(I_a[7]), .Z(n169) );
  GTECH_XOR3 U181 ( .A(n172), .B(n177), .C(n200), .Z(N150) );
  GTECH_NOT U182 ( .A(n179), .Z(n200) );
  GTECH_XOR2 U183 ( .A(n201), .B(n181), .Z(n179) );
  GTECH_ADD_ABC U184 ( .A(n202), .B(n203), .C(n204), .COUT(n181) );
  GTECH_NOT U185 ( .A(n205), .Z(n204) );
  GTECH_XOR3 U186 ( .A(n206), .B(n207), .C(n208), .Z(n203) );
  GTECH_XOR4 U187 ( .A(n186), .B(n197), .C(n195), .D(n184), .Z(n201) );
  GTECH_XOR3 U188 ( .A(n191), .B(n193), .C(n192), .Z(n184) );
  GTECH_OAI21 U189 ( .A(n209), .B(n210), .C(n211), .Z(n192) );
  GTECH_OAI21 U190 ( .A(n212), .B(n213), .C(n214), .Z(n211) );
  GTECH_NOT U191 ( .A(n213), .Z(n209) );
  GTECH_NOT U192 ( .A(n215), .Z(n193) );
  GTECH_NAND2 U193 ( .A(I_b[7]), .B(I_a[3]), .Z(n215) );
  GTECH_NOT U194 ( .A(n189), .Z(n191) );
  GTECH_NAND2 U195 ( .A(I_b[6]), .B(I_a[4]), .Z(n189) );
  GTECH_NAND2 U196 ( .A(I_a[6]), .B(I_b[4]), .Z(n195) );
  GTECH_OAI21 U197 ( .A(n208), .B(n216), .C(n217), .Z(n197) );
  GTECH_OAI21 U198 ( .A(n206), .B(n218), .C(n207), .Z(n217) );
  GTECH_NOT U199 ( .A(n216), .Z(n206) );
  GTECH_NOT U200 ( .A(n218), .Z(n208) );
  GTECH_NOT U201 ( .A(n219), .Z(n186) );
  GTECH_NAND2 U202 ( .A(I_a[5]), .B(I_b[5]), .Z(n219) );
  GTECH_NOT U203 ( .A(n173), .Z(n177) );
  GTECH_XOR2 U204 ( .A(n199), .B(n170), .Z(n173) );
  GTECH_AOI2N2 U205 ( .A(n220), .B(n221), .C(n222), .D(n223), .Z(n170) );
  GTECH_NAND2 U206 ( .A(n222), .B(n223), .Z(n221) );
  GTECH_XOR2 U207 ( .A(n224), .B(n168), .Z(n199) );
  GTECH_AND2 U208 ( .A(n225), .B(n226), .Z(n168) );
  GTECH_OR_NOT U209 ( .A(n227), .B(n228), .Z(n226) );
  GTECH_OAI21 U210 ( .A(n229), .B(n228), .C(n230), .Z(n225) );
  GTECH_NAND2 U211 ( .A(I_a[7]), .B(I_b[3]), .Z(n224) );
  GTECH_NOT U212 ( .A(n178), .Z(n172) );
  GTECH_OAI21 U213 ( .A(n231), .B(n232), .C(n233), .Z(n178) );
  GTECH_OAI21 U214 ( .A(n234), .B(n235), .C(n236), .Z(n233) );
  GTECH_NOT U215 ( .A(n231), .Z(n235) );
  GTECH_XOR3 U216 ( .A(n231), .B(n234), .C(n237), .Z(N149) );
  GTECH_NOT U217 ( .A(n236), .Z(n237) );
  GTECH_XOR2 U218 ( .A(n238), .B(n202), .Z(n236) );
  GTECH_ADD_ABC U219 ( .A(n239), .B(n240), .C(n241), .COUT(n202) );
  GTECH_XOR3 U220 ( .A(n242), .B(n243), .C(n244), .Z(n240) );
  GTECH_OA21 U221 ( .A(n245), .B(n246), .C(n247), .Z(n239) );
  GTECH_XOR4 U222 ( .A(n207), .B(n218), .C(n216), .D(n205), .Z(n238) );
  GTECH_XOR3 U223 ( .A(n212), .B(n214), .C(n213), .Z(n205) );
  GTECH_OAI21 U224 ( .A(n248), .B(n249), .C(n250), .Z(n213) );
  GTECH_NOT U225 ( .A(n251), .Z(n214) );
  GTECH_NAND2 U226 ( .A(I_b[7]), .B(I_a[2]), .Z(n251) );
  GTECH_NOT U227 ( .A(n210), .Z(n212) );
  GTECH_NAND2 U228 ( .A(I_b[6]), .B(I_a[3]), .Z(n210) );
  GTECH_NAND2 U229 ( .A(I_a[5]), .B(I_b[4]), .Z(n216) );
  GTECH_OAI21 U230 ( .A(n244), .B(n252), .C(n253), .Z(n218) );
  GTECH_OAI21 U231 ( .A(n242), .B(n254), .C(n243), .Z(n253) );
  GTECH_NOT U232 ( .A(n252), .Z(n242) );
  GTECH_NOT U233 ( .A(n254), .Z(n244) );
  GTECH_NOT U234 ( .A(n255), .Z(n207) );
  GTECH_NAND2 U235 ( .A(I_b[5]), .B(I_a[4]), .Z(n255) );
  GTECH_NOT U236 ( .A(n232), .Z(n234) );
  GTECH_XOR3 U237 ( .A(n256), .B(n222), .C(n220), .Z(n232) );
  GTECH_XOR3 U238 ( .A(n229), .B(n230), .C(n228), .Z(n220) );
  GTECH_OAI21 U239 ( .A(n257), .B(n258), .C(n259), .Z(n228) );
  GTECH_OAI21 U240 ( .A(n260), .B(n261), .C(n262), .Z(n259) );
  GTECH_NOT U241 ( .A(n261), .Z(n257) );
  GTECH_NOT U242 ( .A(n263), .Z(n230) );
  GTECH_NAND2 U243 ( .A(I_a[6]), .B(I_b[3]), .Z(n263) );
  GTECH_NOT U244 ( .A(n227), .Z(n229) );
  GTECH_NAND2 U245 ( .A(I_a[7]), .B(I_b[2]), .Z(n227) );
  GTECH_ADD_ABC U246 ( .A(n264), .B(n265), .C(n266), .COUT(n222) );
  GTECH_XOR2 U247 ( .A(n267), .B(n268), .Z(n265) );
  GTECH_AND2 U248 ( .A(I_a[7]), .B(I_b[1]), .Z(n268) );
  GTECH_NOT U249 ( .A(n223), .Z(n256) );
  GTECH_NAND2 U250 ( .A(I_a[7]), .B(n269), .Z(n223) );
  GTECH_ADD_ABC U251 ( .A(n270), .B(n271), .C(n272), .COUT(n231) );
  GTECH_XOR3 U252 ( .A(n264), .B(n273), .C(n266), .Z(n271) );
  GTECH_NOT U253 ( .A(n274), .Z(n266) );
  GTECH_XOR2 U254 ( .A(n270), .B(n275), .Z(N148) );
  GTECH_XOR4 U255 ( .A(n273), .B(n274), .C(n272), .D(n264), .Z(n275) );
  GTECH_ADD_ABC U256 ( .A(n276), .B(n277), .C(n278), .COUT(n264) );
  GTECH_XOR3 U257 ( .A(n279), .B(n280), .C(n281), .Z(n277) );
  GTECH_XOR2 U258 ( .A(n282), .B(n283), .Z(n272) );
  GTECH_OA21 U259 ( .A(n245), .B(n246), .C(n247), .Z(n283) );
  GTECH_OAI21 U260 ( .A(n284), .B(n285), .C(n286), .Z(n247) );
  GTECH_NOT U261 ( .A(n245), .Z(n285) );
  GTECH_XOR4 U262 ( .A(n243), .B(n254), .C(n252), .D(n241), .Z(n282) );
  GTECH_XOR3 U263 ( .A(n287), .B(n288), .C(n250), .Z(n241) );
  GTECH_NAND3 U264 ( .A(I_b[6]), .B(I_a[1]), .C(n289), .Z(n250) );
  GTECH_NOT U265 ( .A(n249), .Z(n288) );
  GTECH_NAND2 U266 ( .A(I_b[7]), .B(I_a[1]), .Z(n249) );
  GTECH_NOT U267 ( .A(n248), .Z(n287) );
  GTECH_NAND2 U268 ( .A(I_b[6]), .B(I_a[2]), .Z(n248) );
  GTECH_NAND2 U269 ( .A(I_b[4]), .B(I_a[4]), .Z(n252) );
  GTECH_OAI21 U270 ( .A(n290), .B(n291), .C(n292), .Z(n254) );
  GTECH_OAI21 U271 ( .A(n293), .B(n294), .C(n295), .Z(n292) );
  GTECH_NOT U272 ( .A(n294), .Z(n290) );
  GTECH_NOT U273 ( .A(n296), .Z(n243) );
  GTECH_NAND2 U274 ( .A(I_b[5]), .B(I_a[3]), .Z(n296) );
  GTECH_XOR3 U275 ( .A(n260), .B(n262), .C(n261), .Z(n274) );
  GTECH_OAI21 U276 ( .A(n297), .B(n298), .C(n299), .Z(n261) );
  GTECH_OAI21 U277 ( .A(n300), .B(n301), .C(n302), .Z(n299) );
  GTECH_NOT U278 ( .A(n301), .Z(n297) );
  GTECH_NOT U279 ( .A(n303), .Z(n262) );
  GTECH_NAND2 U280 ( .A(I_a[5]), .B(I_b[3]), .Z(n303) );
  GTECH_NOT U281 ( .A(n258), .Z(n260) );
  GTECH_NAND2 U282 ( .A(I_a[6]), .B(I_b[2]), .Z(n258) );
  GTECH_XOR2 U283 ( .A(n304), .B(n267), .Z(n273) );
  GTECH_NOT U284 ( .A(n269), .Z(n267) );
  GTECH_OAI21 U285 ( .A(n281), .B(n305), .C(n306), .Z(n269) );
  GTECH_OAI21 U286 ( .A(n279), .B(n307), .C(n280), .Z(n306) );
  GTECH_NOT U287 ( .A(n307), .Z(n281) );
  GTECH_AND2 U288 ( .A(I_a[7]), .B(I_b[1]), .Z(n304) );
  GTECH_ADD_ABC U289 ( .A(n308), .B(n309), .C(n310), .COUT(n270) );
  GTECH_NOT U290 ( .A(n311), .Z(n310) );
  GTECH_XOR3 U291 ( .A(n276), .B(n312), .C(n278), .Z(n309) );
  GTECH_NOT U292 ( .A(n313), .Z(n278) );
  GTECH_NOT U293 ( .A(n314), .Z(n312) );
  GTECH_XOR2 U294 ( .A(n315), .B(n308), .Z(N147) );
  GTECH_ADD_ABC U295 ( .A(n316), .B(n317), .C(n318), .COUT(n308) );
  GTECH_XOR3 U296 ( .A(n319), .B(n320), .C(n321), .Z(n317) );
  GTECH_OA21 U297 ( .A(n322), .B(n323), .C(n324), .Z(n316) );
  GTECH_XOR4 U298 ( .A(n313), .B(n276), .C(n314), .D(n311), .Z(n315) );
  GTECH_XOR3 U299 ( .A(n286), .B(n246), .C(n245), .Z(n311) );
  GTECH_XOR2 U300 ( .A(n325), .B(n289), .Z(n245) );
  GTECH_NOT U301 ( .A(n326), .Z(n289) );
  GTECH_NAND2 U302 ( .A(I_b[7]), .B(I_a[0]), .Z(n326) );
  GTECH_NAND2 U303 ( .A(I_b[6]), .B(I_a[1]), .Z(n325) );
  GTECH_NOT U304 ( .A(n284), .Z(n246) );
  GTECH_XOR3 U305 ( .A(n293), .B(n295), .C(n294), .Z(n284) );
  GTECH_OAI21 U306 ( .A(n327), .B(n328), .C(n329), .Z(n294) );
  GTECH_NOT U307 ( .A(n330), .Z(n295) );
  GTECH_NAND2 U308 ( .A(I_b[5]), .B(I_a[2]), .Z(n330) );
  GTECH_NOT U309 ( .A(n291), .Z(n293) );
  GTECH_NAND2 U310 ( .A(I_b[4]), .B(I_a[3]), .Z(n291) );
  GTECH_NOT U311 ( .A(n331), .Z(n286) );
  GTECH_NAND3 U312 ( .A(I_a[0]), .B(n332), .C(I_b[6]), .Z(n331) );
  GTECH_NOT U313 ( .A(n333), .Z(n332) );
  GTECH_XOR3 U314 ( .A(n279), .B(n280), .C(n307), .Z(n314) );
  GTECH_OAI21 U315 ( .A(n334), .B(n335), .C(n336), .Z(n307) );
  GTECH_OAI21 U316 ( .A(n337), .B(n338), .C(n339), .Z(n336) );
  GTECH_NOT U317 ( .A(n340), .Z(n280) );
  GTECH_NAND2 U318 ( .A(I_a[6]), .B(I_b[1]), .Z(n340) );
  GTECH_NOT U319 ( .A(n305), .Z(n279) );
  GTECH_NAND2 U320 ( .A(I_a[7]), .B(I_b[0]), .Z(n305) );
  GTECH_ADD_ABC U321 ( .A(n319), .B(n341), .C(n321), .COUT(n276) );
  GTECH_NOT U322 ( .A(n342), .Z(n321) );
  GTECH_XOR3 U323 ( .A(n337), .B(n339), .C(n334), .Z(n341) );
  GTECH_NOT U324 ( .A(n338), .Z(n334) );
  GTECH_XOR3 U325 ( .A(n300), .B(n302), .C(n301), .Z(n313) );
  GTECH_OAI21 U326 ( .A(n343), .B(n344), .C(n345), .Z(n301) );
  GTECH_OAI21 U327 ( .A(n346), .B(n347), .C(n348), .Z(n345) );
  GTECH_NOT U328 ( .A(n347), .Z(n343) );
  GTECH_NOT U329 ( .A(n349), .Z(n302) );
  GTECH_NAND2 U330 ( .A(I_b[3]), .B(I_a[4]), .Z(n349) );
  GTECH_NOT U331 ( .A(n298), .Z(n300) );
  GTECH_NAND2 U332 ( .A(I_a[5]), .B(I_b[2]), .Z(n298) );
  GTECH_XOR2 U333 ( .A(n350), .B(n351), .Z(N146) );
  GTECH_XOR4 U334 ( .A(n320), .B(n342), .C(n318), .D(n319), .Z(n351) );
  GTECH_ADD_ABC U335 ( .A(n352), .B(n353), .C(n354), .COUT(n319) );
  GTECH_NOT U336 ( .A(n355), .Z(n354) );
  GTECH_XOR3 U337 ( .A(n356), .B(n357), .C(n358), .Z(n353) );
  GTECH_XOR2 U338 ( .A(n333), .B(n359), .Z(n318) );
  GTECH_AND2 U339 ( .A(I_b[6]), .B(I_a[0]), .Z(n359) );
  GTECH_XOR3 U340 ( .A(n360), .B(n361), .C(n329), .Z(n333) );
  GTECH_NAND3 U341 ( .A(I_b[4]), .B(I_a[1]), .C(n362), .Z(n329) );
  GTECH_NOT U342 ( .A(n328), .Z(n361) );
  GTECH_NAND2 U343 ( .A(I_b[5]), .B(I_a[1]), .Z(n328) );
  GTECH_NOT U344 ( .A(n327), .Z(n360) );
  GTECH_NAND2 U345 ( .A(I_b[4]), .B(I_a[2]), .Z(n327) );
  GTECH_XOR3 U346 ( .A(n346), .B(n348), .C(n347), .Z(n342) );
  GTECH_OAI21 U347 ( .A(n363), .B(n364), .C(n365), .Z(n347) );
  GTECH_OAI21 U348 ( .A(n366), .B(n367), .C(n368), .Z(n365) );
  GTECH_NOT U349 ( .A(n367), .Z(n363) );
  GTECH_NOT U350 ( .A(n369), .Z(n348) );
  GTECH_NAND2 U351 ( .A(I_b[3]), .B(I_a[3]), .Z(n369) );
  GTECH_NOT U352 ( .A(n344), .Z(n346) );
  GTECH_NAND2 U353 ( .A(I_b[2]), .B(I_a[4]), .Z(n344) );
  GTECH_NOT U354 ( .A(n370), .Z(n320) );
  GTECH_XOR3 U355 ( .A(n337), .B(n339), .C(n338), .Z(n370) );
  GTECH_OAI21 U356 ( .A(n358), .B(n371), .C(n372), .Z(n338) );
  GTECH_OAI21 U357 ( .A(n356), .B(n373), .C(n357), .Z(n372) );
  GTECH_NOT U358 ( .A(n371), .Z(n356) );
  GTECH_NOT U359 ( .A(n373), .Z(n358) );
  GTECH_NOT U360 ( .A(n374), .Z(n339) );
  GTECH_NAND2 U361 ( .A(I_a[5]), .B(I_b[1]), .Z(n374) );
  GTECH_NOT U362 ( .A(n335), .Z(n337) );
  GTECH_NAND2 U363 ( .A(I_a[6]), .B(I_b[0]), .Z(n335) );
  GTECH_OA21 U364 ( .A(n322), .B(n323), .C(n324), .Z(n350) );
  GTECH_OAI21 U365 ( .A(n375), .B(n376), .C(n377), .Z(n324) );
  GTECH_NOT U366 ( .A(n322), .Z(n376) );
  GTECH_XOR3 U367 ( .A(n377), .B(n323), .C(n322), .Z(N145) );
  GTECH_XOR2 U368 ( .A(n378), .B(n362), .Z(n322) );
  GTECH_NOT U369 ( .A(n379), .Z(n362) );
  GTECH_NAND2 U370 ( .A(I_b[5]), .B(I_a[0]), .Z(n379) );
  GTECH_NAND2 U371 ( .A(I_b[4]), .B(I_a[1]), .Z(n378) );
  GTECH_NOT U372 ( .A(n375), .Z(n323) );
  GTECH_XOR2 U373 ( .A(n380), .B(n352), .Z(n375) );
  GTECH_ADD_ABC U374 ( .A(n381), .B(n382), .C(n383), .COUT(n352) );
  GTECH_XOR3 U375 ( .A(n384), .B(n385), .C(n386), .Z(n382) );
  GTECH_OA21 U376 ( .A(n387), .B(n388), .C(n389), .Z(n381) );
  GTECH_XOR4 U377 ( .A(n357), .B(n373), .C(n371), .D(n355), .Z(n380) );
  GTECH_XOR3 U378 ( .A(n366), .B(n368), .C(n367), .Z(n355) );
  GTECH_OAI21 U379 ( .A(n390), .B(n391), .C(n392), .Z(n367) );
  GTECH_NOT U380 ( .A(n393), .Z(n368) );
  GTECH_NAND2 U381 ( .A(I_b[3]), .B(I_a[2]), .Z(n393) );
  GTECH_NOT U382 ( .A(n364), .Z(n366) );
  GTECH_NAND2 U383 ( .A(I_b[2]), .B(I_a[3]), .Z(n364) );
  GTECH_NAND2 U384 ( .A(I_a[5]), .B(I_b[0]), .Z(n371) );
  GTECH_OAI21 U385 ( .A(n386), .B(n394), .C(n395), .Z(n373) );
  GTECH_OAI21 U386 ( .A(n384), .B(n396), .C(n385), .Z(n395) );
  GTECH_NOT U387 ( .A(n396), .Z(n386) );
  GTECH_NOT U388 ( .A(n397), .Z(n357) );
  GTECH_NAND2 U389 ( .A(I_a[4]), .B(I_b[1]), .Z(n397) );
  GTECH_NOT U390 ( .A(n398), .Z(n377) );
  GTECH_NAND3 U391 ( .A(I_a[0]), .B(n399), .C(I_b[4]), .Z(n398) );
  GTECH_XOR2 U392 ( .A(n400), .B(n399), .Z(N144) );
  GTECH_XOR2 U393 ( .A(n401), .B(n402), .Z(n399) );
  GTECH_XOR4 U394 ( .A(n385), .B(n396), .C(n383), .D(n384), .Z(n402) );
  GTECH_NOT U395 ( .A(n394), .Z(n384) );
  GTECH_NAND2 U396 ( .A(I_a[4]), .B(I_b[0]), .Z(n394) );
  GTECH_XOR3 U397 ( .A(n403), .B(n404), .C(n392), .Z(n383) );
  GTECH_NAND3 U398 ( .A(I_b[2]), .B(I_a[1]), .C(n405), .Z(n392) );
  GTECH_NOT U399 ( .A(n391), .Z(n404) );
  GTECH_NAND2 U400 ( .A(I_b[3]), .B(I_a[1]), .Z(n391) );
  GTECH_NOT U401 ( .A(n390), .Z(n403) );
  GTECH_NAND2 U402 ( .A(I_b[2]), .B(I_a[2]), .Z(n390) );
  GTECH_OAI21 U403 ( .A(n406), .B(n407), .C(n408), .Z(n396) );
  GTECH_OAI21 U404 ( .A(n409), .B(n410), .C(n411), .Z(n408) );
  GTECH_NOT U405 ( .A(n410), .Z(n406) );
  GTECH_NOT U406 ( .A(n412), .Z(n385) );
  GTECH_NAND2 U407 ( .A(I_a[3]), .B(I_b[1]), .Z(n412) );
  GTECH_OA21 U408 ( .A(n387), .B(n388), .C(n389), .Z(n401) );
  GTECH_OAI21 U409 ( .A(n413), .B(n414), .C(n415), .Z(n389) );
  GTECH_NOT U410 ( .A(n387), .Z(n414) );
  GTECH_AND2 U411 ( .A(I_b[4]), .B(I_a[0]), .Z(n400) );
  GTECH_XOR3 U412 ( .A(n415), .B(n388), .C(n387), .Z(N143) );
  GTECH_XOR2 U413 ( .A(n416), .B(n405), .Z(n387) );
  GTECH_NOT U414 ( .A(n417), .Z(n405) );
  GTECH_NAND2 U415 ( .A(I_b[3]), .B(I_a[0]), .Z(n417) );
  GTECH_NAND2 U416 ( .A(I_b[2]), .B(I_a[1]), .Z(n416) );
  GTECH_NOT U417 ( .A(n413), .Z(n388) );
  GTECH_XOR3 U418 ( .A(n409), .B(n411), .C(n410), .Z(n413) );
  GTECH_OAI21 U419 ( .A(n418), .B(n419), .C(n420), .Z(n410) );
  GTECH_NOT U420 ( .A(n421), .Z(n411) );
  GTECH_NAND2 U421 ( .A(I_b[1]), .B(I_a[2]), .Z(n421) );
  GTECH_NOT U422 ( .A(n407), .Z(n409) );
  GTECH_NAND2 U423 ( .A(I_b[0]), .B(I_a[3]), .Z(n407) );
  GTECH_NOT U424 ( .A(n422), .Z(n415) );
  GTECH_NAND3 U425 ( .A(I_a[0]), .B(n423), .C(I_b[2]), .Z(n422) );
  GTECH_XOR2 U426 ( .A(n424), .B(n423), .Z(N142) );
  GTECH_NOT U427 ( .A(n425), .Z(n423) );
  GTECH_XOR3 U428 ( .A(n426), .B(n427), .C(n420), .Z(n425) );
  GTECH_NAND3 U429 ( .A(n428), .B(I_b[0]), .C(I_a[1]), .Z(n420) );
  GTECH_NOT U430 ( .A(n418), .Z(n427) );
  GTECH_NAND2 U431 ( .A(I_a[1]), .B(I_b[1]), .Z(n418) );
  GTECH_NOT U432 ( .A(n419), .Z(n426) );
  GTECH_NAND2 U433 ( .A(I_b[0]), .B(I_a[2]), .Z(n419) );
  GTECH_AND2 U434 ( .A(I_b[2]), .B(I_a[0]), .Z(n424) );
  GTECH_XOR2 U435 ( .A(n428), .B(n429), .Z(N141) );
  GTECH_AND2 U436 ( .A(I_a[1]), .B(I_b[0]), .Z(n429) );
  GTECH_NOT U437 ( .A(n430), .Z(n428) );
  GTECH_NAND2 U438 ( .A(I_a[0]), .B(I_b[1]), .Z(n430) );
  GTECH_AND2 U439 ( .A(I_a[0]), .B(I_b[0]), .Z(N140) );
endmodule

