
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
  GTECH_OAI22 U104 ( .A(n115), .B(n116), .C(n117), .D(n118), .Z(n106) );
  GTECH_AND2 U105 ( .A(n115), .B(n116), .Z(n117) );
  GTECH_NOT U106 ( .A(n119), .Z(n115) );
  GTECH_NAND2 U107 ( .A(I_b[7]), .B(I_a[7]), .Z(n107) );
  GTECH_NOT U108 ( .A(n120), .Z(n101) );
  GTECH_NAND2 U109 ( .A(n121), .B(n122), .Z(n120) );
  GTECH_XOR2 U110 ( .A(n122), .B(n121), .Z(N153) );
  GTECH_NOT U111 ( .A(n123), .Z(n121) );
  GTECH_XOR3 U112 ( .A(n124), .B(n110), .C(n112), .Z(n123) );
  GTECH_XOR3 U113 ( .A(n125), .B(n126), .C(n119), .Z(n112) );
  GTECH_OAI22 U114 ( .A(n127), .B(n128), .C(n129), .D(n130), .Z(n119) );
  GTECH_AND2 U115 ( .A(n127), .B(n128), .Z(n129) );
  GTECH_NOT U116 ( .A(n131), .Z(n127) );
  GTECH_NOT U117 ( .A(n118), .Z(n126) );
  GTECH_NAND2 U118 ( .A(I_b[7]), .B(I_a[6]), .Z(n118) );
  GTECH_NOT U119 ( .A(n116), .Z(n125) );
  GTECH_NAND2 U120 ( .A(I_a[7]), .B(I_b[6]), .Z(n116) );
  GTECH_ADD_ABC U121 ( .A(n132), .B(n133), .C(n134), .COUT(n110) );
  GTECH_NOT U122 ( .A(n135), .Z(n134) );
  GTECH_XOR2 U123 ( .A(n136), .B(n137), .Z(n133) );
  GTECH_AND2 U124 ( .A(I_a[7]), .B(I_b[5]), .Z(n137) );
  GTECH_NOT U125 ( .A(n111), .Z(n124) );
  GTECH_NAND2 U126 ( .A(I_a[7]), .B(n138), .Z(n111) );
  GTECH_NOT U127 ( .A(n139), .Z(n122) );
  GTECH_NAND2 U128 ( .A(n140), .B(n141), .Z(n139) );
  GTECH_NOT U129 ( .A(n142), .Z(n141) );
  GTECH_XOR2 U130 ( .A(n142), .B(n143), .Z(N152) );
  GTECH_NOT U131 ( .A(n140), .Z(n143) );
  GTECH_XOR4 U132 ( .A(n144), .B(n136), .C(n132), .D(n135), .Z(n140) );
  GTECH_XOR3 U133 ( .A(n145), .B(n146), .C(n131), .Z(n135) );
  GTECH_OAI22 U134 ( .A(n147), .B(n148), .C(n149), .D(n150), .Z(n131) );
  GTECH_AND2 U135 ( .A(n147), .B(n148), .Z(n149) );
  GTECH_NOT U136 ( .A(n151), .Z(n147) );
  GTECH_NOT U137 ( .A(n130), .Z(n146) );
  GTECH_NAND2 U138 ( .A(I_b[7]), .B(I_a[5]), .Z(n130) );
  GTECH_NOT U139 ( .A(n128), .Z(n145) );
  GTECH_NAND2 U140 ( .A(I_b[6]), .B(I_a[6]), .Z(n128) );
  GTECH_ADD_ABC U141 ( .A(n152), .B(n153), .C(n154), .COUT(n132) );
  GTECH_NOT U142 ( .A(n155), .Z(n154) );
  GTECH_XOR3 U143 ( .A(n156), .B(n157), .C(n158), .Z(n153) );
  GTECH_NOT U144 ( .A(n159), .Z(n156) );
  GTECH_NOT U145 ( .A(n138), .Z(n136) );
  GTECH_OAI22 U146 ( .A(n158), .B(n159), .C(n160), .D(n161), .Z(n138) );
  GTECH_AND2 U147 ( .A(n158), .B(n159), .Z(n160) );
  GTECH_NOT U148 ( .A(n162), .Z(n158) );
  GTECH_AND2 U149 ( .A(I_a[7]), .B(I_b[5]), .Z(n144) );
  GTECH_ADD_ABC U150 ( .A(n163), .B(n164), .C(n165), .COUT(n142) );
  GTECH_NOT U151 ( .A(n166), .Z(n165) );
  GTECH_OA22 U152 ( .A(n167), .B(n168), .C(n169), .D(n170), .Z(n164) );
  GTECH_OA21 U153 ( .A(n171), .B(n172), .C(n173), .Z(n163) );
  GTECH_AO21 U154 ( .A(n171), .B(n172), .C(n174), .Z(n173) );
  GTECH_XOR3 U155 ( .A(n175), .B(n166), .C(n176), .Z(N151) );
  GTECH_OA21 U156 ( .A(n171), .B(n172), .C(n177), .Z(n176) );
  GTECH_AO21 U157 ( .A(n171), .B(n172), .C(n174), .Z(n177) );
  GTECH_XOR2 U158 ( .A(n178), .B(n152), .Z(n166) );
  GTECH_ADD_ABC U159 ( .A(n179), .B(n180), .C(n181), .COUT(n152) );
  GTECH_NOT U160 ( .A(n182), .Z(n181) );
  GTECH_XOR3 U161 ( .A(n183), .B(n184), .C(n185), .Z(n180) );
  GTECH_XOR4 U162 ( .A(n157), .B(n162), .C(n159), .D(n155), .Z(n178) );
  GTECH_XOR3 U163 ( .A(n186), .B(n187), .C(n151), .Z(n155) );
  GTECH_OAI22 U164 ( .A(n188), .B(n189), .C(n190), .D(n191), .Z(n151) );
  GTECH_AND2 U165 ( .A(n188), .B(n189), .Z(n190) );
  GTECH_NOT U166 ( .A(n192), .Z(n188) );
  GTECH_NOT U167 ( .A(n150), .Z(n187) );
  GTECH_NAND2 U168 ( .A(I_b[7]), .B(I_a[4]), .Z(n150) );
  GTECH_NOT U169 ( .A(n148), .Z(n186) );
  GTECH_NAND2 U170 ( .A(I_b[6]), .B(I_a[5]), .Z(n148) );
  GTECH_NAND2 U171 ( .A(I_a[7]), .B(I_b[4]), .Z(n159) );
  GTECH_OAI22 U172 ( .A(n185), .B(n193), .C(n194), .D(n195), .Z(n162) );
  GTECH_AND2 U173 ( .A(n185), .B(n193), .Z(n194) );
  GTECH_NOT U174 ( .A(n196), .Z(n185) );
  GTECH_NOT U175 ( .A(n161), .Z(n157) );
  GTECH_NAND2 U176 ( .A(I_a[6]), .B(I_b[5]), .Z(n161) );
  GTECH_OA22 U177 ( .A(n167), .B(n168), .C(n169), .D(n170), .Z(n175) );
  GTECH_NOT U178 ( .A(n197), .Z(n170) );
  GTECH_NOT U179 ( .A(I_a[7]), .Z(n168) );
  GTECH_XOR3 U180 ( .A(n171), .B(n198), .C(n174), .Z(N150) );
  GTECH_XOR2 U181 ( .A(n179), .B(n199), .Z(n174) );
  GTECH_XOR4 U182 ( .A(n184), .B(n196), .C(n182), .D(n183), .Z(n199) );
  GTECH_NOT U183 ( .A(n193), .Z(n183) );
  GTECH_NAND2 U184 ( .A(I_a[6]), .B(I_b[4]), .Z(n193) );
  GTECH_XOR3 U185 ( .A(n200), .B(n201), .C(n192), .Z(n182) );
  GTECH_OAI22 U186 ( .A(n202), .B(n203), .C(n204), .D(n205), .Z(n192) );
  GTECH_AND2 U187 ( .A(n202), .B(n203), .Z(n204) );
  GTECH_NOT U188 ( .A(n206), .Z(n202) );
  GTECH_NOT U189 ( .A(n191), .Z(n201) );
  GTECH_NAND2 U190 ( .A(I_b[7]), .B(I_a[3]), .Z(n191) );
  GTECH_NOT U191 ( .A(n189), .Z(n200) );
  GTECH_NAND2 U192 ( .A(I_b[6]), .B(I_a[4]), .Z(n189) );
  GTECH_OAI22 U193 ( .A(n207), .B(n208), .C(n209), .D(n210), .Z(n196) );
  GTECH_AND2 U194 ( .A(n207), .B(n208), .Z(n209) );
  GTECH_NOT U195 ( .A(n195), .Z(n184) );
  GTECH_NAND2 U196 ( .A(I_a[5]), .B(I_b[5]), .Z(n195) );
  GTECH_ADD_ABC U197 ( .A(n211), .B(n212), .C(n213), .COUT(n179) );
  GTECH_NOT U198 ( .A(n214), .Z(n213) );
  GTECH_XOR3 U199 ( .A(n215), .B(n216), .C(n207), .Z(n212) );
  GTECH_NOT U200 ( .A(n217), .Z(n207) );
  GTECH_NOT U201 ( .A(n172), .Z(n198) );
  GTECH_XOR2 U202 ( .A(n197), .B(n169), .Z(n172) );
  GTECH_AOI2N2 U203 ( .A(n218), .B(n219), .C(n220), .D(n221), .Z(n169) );
  GTECH_NAND2 U204 ( .A(n220), .B(n221), .Z(n219) );
  GTECH_XOR2 U205 ( .A(n222), .B(n167), .Z(n197) );
  GTECH_OA21 U206 ( .A(n223), .B(n224), .C(n225), .Z(n167) );
  GTECH_AO21 U207 ( .A(n223), .B(n224), .C(n226), .Z(n225) );
  GTECH_NOT U208 ( .A(n227), .Z(n223) );
  GTECH_NAND2 U209 ( .A(I_a[7]), .B(I_b[3]), .Z(n222) );
  GTECH_OA21 U210 ( .A(n228), .B(n229), .C(n230), .Z(n171) );
  GTECH_AO21 U211 ( .A(n228), .B(n229), .C(n231), .Z(n230) );
  GTECH_XOR3 U212 ( .A(n228), .B(n232), .C(n231), .Z(N149) );
  GTECH_XOR2 U213 ( .A(n211), .B(n233), .Z(n231) );
  GTECH_XOR4 U214 ( .A(n216), .B(n217), .C(n214), .D(n215), .Z(n233) );
  GTECH_NOT U215 ( .A(n208), .Z(n215) );
  GTECH_NAND2 U216 ( .A(I_a[5]), .B(I_b[4]), .Z(n208) );
  GTECH_XOR3 U217 ( .A(n234), .B(n235), .C(n206), .Z(n214) );
  GTECH_AO21 U218 ( .A(n236), .B(n237), .C(n238), .Z(n206) );
  GTECH_NOT U219 ( .A(n239), .Z(n238) );
  GTECH_NOT U220 ( .A(n205), .Z(n235) );
  GTECH_NAND2 U221 ( .A(I_b[7]), .B(I_a[2]), .Z(n205) );
  GTECH_NOT U222 ( .A(n203), .Z(n234) );
  GTECH_NAND2 U223 ( .A(I_b[6]), .B(I_a[3]), .Z(n203) );
  GTECH_OAI22 U224 ( .A(n240), .B(n241), .C(n242), .D(n243), .Z(n217) );
  GTECH_AND2 U225 ( .A(n240), .B(n241), .Z(n242) );
  GTECH_NOT U226 ( .A(n210), .Z(n216) );
  GTECH_NAND2 U227 ( .A(I_b[5]), .B(I_a[4]), .Z(n210) );
  GTECH_ADD_ABC U228 ( .A(n244), .B(n245), .C(n246), .COUT(n211) );
  GTECH_XOR3 U229 ( .A(n247), .B(n248), .C(n240), .Z(n245) );
  GTECH_NOT U230 ( .A(n249), .Z(n240) );
  GTECH_NOT U231 ( .A(n241), .Z(n247) );
  GTECH_OA21 U232 ( .A(n250), .B(n251), .C(n252), .Z(n244) );
  GTECH_AO21 U233 ( .A(n250), .B(n251), .C(n253), .Z(n252) );
  GTECH_NOT U234 ( .A(n229), .Z(n232) );
  GTECH_XOR3 U235 ( .A(n254), .B(n220), .C(n218), .Z(n229) );
  GTECH_XOR3 U236 ( .A(n255), .B(n256), .C(n227), .Z(n218) );
  GTECH_OAI22 U237 ( .A(n257), .B(n258), .C(n259), .D(n260), .Z(n227) );
  GTECH_AND2 U238 ( .A(n257), .B(n258), .Z(n259) );
  GTECH_NOT U239 ( .A(n261), .Z(n257) );
  GTECH_NOT U240 ( .A(n226), .Z(n256) );
  GTECH_NAND2 U241 ( .A(I_a[6]), .B(I_b[3]), .Z(n226) );
  GTECH_NOT U242 ( .A(n224), .Z(n255) );
  GTECH_NAND2 U243 ( .A(I_a[7]), .B(I_b[2]), .Z(n224) );
  GTECH_ADD_ABC U244 ( .A(n262), .B(n263), .C(n264), .COUT(n220) );
  GTECH_XOR2 U245 ( .A(n265), .B(n266), .Z(n263) );
  GTECH_AND2 U246 ( .A(I_a[7]), .B(I_b[1]), .Z(n266) );
  GTECH_NOT U247 ( .A(n221), .Z(n254) );
  GTECH_NAND2 U248 ( .A(I_a[7]), .B(n267), .Z(n221) );
  GTECH_ADD_ABC U249 ( .A(n268), .B(n269), .C(n270), .COUT(n228) );
  GTECH_XOR3 U250 ( .A(n262), .B(n271), .C(n264), .Z(n269) );
  GTECH_NOT U251 ( .A(n272), .Z(n264) );
  GTECH_XOR2 U252 ( .A(n268), .B(n273), .Z(N148) );
  GTECH_XOR4 U253 ( .A(n271), .B(n272), .C(n270), .D(n262), .Z(n273) );
  GTECH_ADD_ABC U254 ( .A(n274), .B(n275), .C(n276), .COUT(n262) );
  GTECH_XOR3 U255 ( .A(n277), .B(n278), .C(n279), .Z(n275) );
  GTECH_XOR2 U256 ( .A(n280), .B(n281), .Z(n270) );
  GTECH_OA21 U257 ( .A(n250), .B(n251), .C(n282), .Z(n281) );
  GTECH_AO21 U258 ( .A(n250), .B(n251), .C(n253), .Z(n282) );
  GTECH_XOR4 U259 ( .A(n248), .B(n249), .C(n241), .D(n246), .Z(n280) );
  GTECH_XOR3 U260 ( .A(n237), .B(n236), .C(n239), .Z(n246) );
  GTECH_NAND3 U261 ( .A(I_b[6]), .B(I_a[1]), .C(n283), .Z(n239) );
  GTECH_NOT U262 ( .A(n284), .Z(n236) );
  GTECH_NAND2 U263 ( .A(I_b[7]), .B(I_a[1]), .Z(n284) );
  GTECH_NOT U264 ( .A(n285), .Z(n237) );
  GTECH_NAND2 U265 ( .A(I_b[6]), .B(I_a[2]), .Z(n285) );
  GTECH_NAND2 U266 ( .A(I_b[4]), .B(I_a[4]), .Z(n241) );
  GTECH_OAI22 U267 ( .A(n286), .B(n287), .C(n288), .D(n289), .Z(n249) );
  GTECH_AND2 U268 ( .A(n286), .B(n287), .Z(n288) );
  GTECH_NOT U269 ( .A(n290), .Z(n286) );
  GTECH_NOT U270 ( .A(n243), .Z(n248) );
  GTECH_NAND2 U271 ( .A(I_b[5]), .B(I_a[3]), .Z(n243) );
  GTECH_XOR3 U272 ( .A(n291), .B(n292), .C(n261), .Z(n272) );
  GTECH_OAI22 U273 ( .A(n293), .B(n294), .C(n295), .D(n296), .Z(n261) );
  GTECH_AND2 U274 ( .A(n293), .B(n294), .Z(n295) );
  GTECH_NOT U275 ( .A(n297), .Z(n293) );
  GTECH_NOT U276 ( .A(n260), .Z(n292) );
  GTECH_NAND2 U277 ( .A(I_a[5]), .B(I_b[3]), .Z(n260) );
  GTECH_NOT U278 ( .A(n258), .Z(n291) );
  GTECH_NAND2 U279 ( .A(I_a[6]), .B(I_b[2]), .Z(n258) );
  GTECH_XOR2 U280 ( .A(n298), .B(n265), .Z(n271) );
  GTECH_NOT U281 ( .A(n267), .Z(n265) );
  GTECH_OAI22 U282 ( .A(n279), .B(n299), .C(n300), .D(n301), .Z(n267) );
  GTECH_AND2 U283 ( .A(n279), .B(n299), .Z(n300) );
  GTECH_NOT U284 ( .A(n302), .Z(n279) );
  GTECH_AND2 U285 ( .A(I_a[7]), .B(I_b[1]), .Z(n298) );
  GTECH_ADD_ABC U286 ( .A(n303), .B(n304), .C(n305), .COUT(n268) );
  GTECH_NOT U287 ( .A(n306), .Z(n305) );
  GTECH_XOR3 U288 ( .A(n274), .B(n307), .C(n276), .Z(n304) );
  GTECH_NOT U289 ( .A(n308), .Z(n276) );
  GTECH_NOT U290 ( .A(n309), .Z(n307) );
  GTECH_XOR2 U291 ( .A(n310), .B(n303), .Z(N147) );
  GTECH_ADD_ABC U292 ( .A(n311), .B(n312), .C(n313), .COUT(n303) );
  GTECH_XOR3 U293 ( .A(n314), .B(n315), .C(n316), .Z(n312) );
  GTECH_OA21 U294 ( .A(n317), .B(n318), .C(n319), .Z(n311) );
  GTECH_AO21 U295 ( .A(n317), .B(n318), .C(n320), .Z(n319) );
  GTECH_XOR4 U296 ( .A(n308), .B(n274), .C(n309), .D(n306), .Z(n310) );
  GTECH_XOR3 U297 ( .A(n321), .B(n251), .C(n250), .Z(n306) );
  GTECH_XOR2 U298 ( .A(n322), .B(n283), .Z(n250) );
  GTECH_NOT U299 ( .A(n323), .Z(n283) );
  GTECH_NAND2 U300 ( .A(I_b[7]), .B(I_a[0]), .Z(n323) );
  GTECH_NAND2 U301 ( .A(I_b[6]), .B(I_a[1]), .Z(n322) );
  GTECH_NOT U302 ( .A(n324), .Z(n251) );
  GTECH_XOR3 U303 ( .A(n325), .B(n326), .C(n290), .Z(n324) );
  GTECH_AO21 U304 ( .A(n327), .B(n328), .C(n329), .Z(n290) );
  GTECH_NOT U305 ( .A(n330), .Z(n329) );
  GTECH_NOT U306 ( .A(n289), .Z(n326) );
  GTECH_NAND2 U307 ( .A(I_b[5]), .B(I_a[2]), .Z(n289) );
  GTECH_NOT U308 ( .A(n287), .Z(n325) );
  GTECH_NAND2 U309 ( .A(I_b[4]), .B(I_a[3]), .Z(n287) );
  GTECH_NOT U310 ( .A(n253), .Z(n321) );
  GTECH_NAND3 U311 ( .A(I_a[0]), .B(n331), .C(I_b[6]), .Z(n253) );
  GTECH_NOT U312 ( .A(n332), .Z(n331) );
  GTECH_XOR3 U313 ( .A(n277), .B(n278), .C(n302), .Z(n309) );
  GTECH_OAI22 U314 ( .A(n333), .B(n334), .C(n335), .D(n336), .Z(n302) );
  GTECH_AND2 U315 ( .A(n333), .B(n334), .Z(n335) );
  GTECH_NOT U316 ( .A(n301), .Z(n278) );
  GTECH_NAND2 U317 ( .A(I_a[6]), .B(I_b[1]), .Z(n301) );
  GTECH_NOT U318 ( .A(n299), .Z(n277) );
  GTECH_NAND2 U319 ( .A(I_a[7]), .B(I_b[0]), .Z(n299) );
  GTECH_ADD_ABC U320 ( .A(n314), .B(n337), .C(n316), .COUT(n274) );
  GTECH_NOT U321 ( .A(n338), .Z(n316) );
  GTECH_XOR3 U322 ( .A(n339), .B(n340), .C(n333), .Z(n337) );
  GTECH_NOT U323 ( .A(n341), .Z(n333) );
  GTECH_XOR3 U324 ( .A(n342), .B(n343), .C(n297), .Z(n308) );
  GTECH_OAI22 U325 ( .A(n344), .B(n345), .C(n346), .D(n347), .Z(n297) );
  GTECH_AND2 U326 ( .A(n344), .B(n345), .Z(n346) );
  GTECH_NOT U327 ( .A(n348), .Z(n344) );
  GTECH_NOT U328 ( .A(n296), .Z(n343) );
  GTECH_NAND2 U329 ( .A(I_b[3]), .B(I_a[4]), .Z(n296) );
  GTECH_NOT U330 ( .A(n294), .Z(n342) );
  GTECH_NAND2 U331 ( .A(I_a[5]), .B(I_b[2]), .Z(n294) );
  GTECH_XOR2 U332 ( .A(n349), .B(n350), .Z(N146) );
  GTECH_XOR4 U333 ( .A(n315), .B(n338), .C(n313), .D(n314), .Z(n350) );
  GTECH_ADD_ABC U334 ( .A(n351), .B(n352), .C(n353), .COUT(n314) );
  GTECH_NOT U335 ( .A(n354), .Z(n353) );
  GTECH_XOR3 U336 ( .A(n355), .B(n356), .C(n357), .Z(n352) );
  GTECH_XOR2 U337 ( .A(n332), .B(n358), .Z(n313) );
  GTECH_AND2 U338 ( .A(I_b[6]), .B(I_a[0]), .Z(n358) );
  GTECH_XOR3 U339 ( .A(n328), .B(n327), .C(n330), .Z(n332) );
  GTECH_NAND3 U340 ( .A(I_b[4]), .B(I_a[1]), .C(n359), .Z(n330) );
  GTECH_NOT U341 ( .A(n360), .Z(n327) );
  GTECH_NAND2 U342 ( .A(I_b[5]), .B(I_a[1]), .Z(n360) );
  GTECH_NOT U343 ( .A(n361), .Z(n328) );
  GTECH_NAND2 U344 ( .A(I_b[4]), .B(I_a[2]), .Z(n361) );
  GTECH_XOR3 U345 ( .A(n362), .B(n363), .C(n348), .Z(n338) );
  GTECH_OAI22 U346 ( .A(n364), .B(n365), .C(n366), .D(n367), .Z(n348) );
  GTECH_AND2 U347 ( .A(n364), .B(n365), .Z(n366) );
  GTECH_NOT U348 ( .A(n368), .Z(n364) );
  GTECH_NOT U349 ( .A(n347), .Z(n363) );
  GTECH_NAND2 U350 ( .A(I_b[3]), .B(I_a[3]), .Z(n347) );
  GTECH_NOT U351 ( .A(n345), .Z(n362) );
  GTECH_NAND2 U352 ( .A(I_b[2]), .B(I_a[4]), .Z(n345) );
  GTECH_NOT U353 ( .A(n369), .Z(n315) );
  GTECH_XOR3 U354 ( .A(n339), .B(n340), .C(n341), .Z(n369) );
  GTECH_OAI22 U355 ( .A(n357), .B(n370), .C(n371), .D(n372), .Z(n341) );
  GTECH_AND2 U356 ( .A(n357), .B(n370), .Z(n371) );
  GTECH_NOT U357 ( .A(n373), .Z(n357) );
  GTECH_NOT U358 ( .A(n336), .Z(n340) );
  GTECH_NAND2 U359 ( .A(I_a[5]), .B(I_b[1]), .Z(n336) );
  GTECH_NOT U360 ( .A(n334), .Z(n339) );
  GTECH_NAND2 U361 ( .A(I_a[6]), .B(I_b[0]), .Z(n334) );
  GTECH_OA21 U362 ( .A(n317), .B(n318), .C(n374), .Z(n349) );
  GTECH_AO21 U363 ( .A(n317), .B(n318), .C(n320), .Z(n374) );
  GTECH_XOR3 U364 ( .A(n375), .B(n318), .C(n317), .Z(N145) );
  GTECH_XOR2 U365 ( .A(n376), .B(n359), .Z(n317) );
  GTECH_NOT U366 ( .A(n377), .Z(n359) );
  GTECH_NAND2 U367 ( .A(I_b[5]), .B(I_a[0]), .Z(n377) );
  GTECH_NAND2 U368 ( .A(I_b[4]), .B(I_a[1]), .Z(n376) );
  GTECH_XOR2 U369 ( .A(n351), .B(n378), .Z(n318) );
  GTECH_XOR4 U370 ( .A(n356), .B(n373), .C(n354), .D(n355), .Z(n378) );
  GTECH_NOT U371 ( .A(n370), .Z(n355) );
  GTECH_NAND2 U372 ( .A(I_a[5]), .B(I_b[0]), .Z(n370) );
  GTECH_XOR3 U373 ( .A(n379), .B(n380), .C(n368), .Z(n354) );
  GTECH_AO21 U374 ( .A(n381), .B(n382), .C(n383), .Z(n368) );
  GTECH_NOT U375 ( .A(n384), .Z(n383) );
  GTECH_NOT U376 ( .A(n367), .Z(n380) );
  GTECH_NAND2 U377 ( .A(I_b[3]), .B(I_a[2]), .Z(n367) );
  GTECH_NOT U378 ( .A(n365), .Z(n379) );
  GTECH_NAND2 U379 ( .A(I_b[2]), .B(I_a[3]), .Z(n365) );
  GTECH_OAI22 U380 ( .A(n385), .B(n386), .C(n387), .D(n388), .Z(n373) );
  GTECH_AND2 U381 ( .A(n385), .B(n386), .Z(n387) );
  GTECH_NOT U382 ( .A(n372), .Z(n356) );
  GTECH_NAND2 U383 ( .A(I_a[4]), .B(I_b[1]), .Z(n372) );
  GTECH_ADD_ABC U384 ( .A(n389), .B(n390), .C(n391), .COUT(n351) );
  GTECH_XOR3 U385 ( .A(n392), .B(n393), .C(n385), .Z(n390) );
  GTECH_NOT U386 ( .A(n394), .Z(n385) );
  GTECH_OA21 U387 ( .A(n395), .B(n396), .C(n397), .Z(n389) );
  GTECH_AO21 U388 ( .A(n395), .B(n396), .C(n398), .Z(n397) );
  GTECH_NOT U389 ( .A(n320), .Z(n375) );
  GTECH_NAND3 U390 ( .A(I_a[0]), .B(n399), .C(I_b[4]), .Z(n320) );
  GTECH_XOR2 U391 ( .A(n400), .B(n399), .Z(N144) );
  GTECH_XOR2 U392 ( .A(n401), .B(n402), .Z(n399) );
  GTECH_XOR4 U393 ( .A(n393), .B(n394), .C(n391), .D(n392), .Z(n402) );
  GTECH_NOT U394 ( .A(n386), .Z(n392) );
  GTECH_NAND2 U395 ( .A(I_a[4]), .B(I_b[0]), .Z(n386) );
  GTECH_XOR3 U396 ( .A(n382), .B(n381), .C(n384), .Z(n391) );
  GTECH_NAND3 U397 ( .A(I_b[2]), .B(I_a[1]), .C(n403), .Z(n384) );
  GTECH_NOT U398 ( .A(n404), .Z(n381) );
  GTECH_NAND2 U399 ( .A(I_b[3]), .B(I_a[1]), .Z(n404) );
  GTECH_NOT U400 ( .A(n405), .Z(n382) );
  GTECH_NAND2 U401 ( .A(I_b[2]), .B(I_a[2]), .Z(n405) );
  GTECH_OAI22 U402 ( .A(n406), .B(n407), .C(n408), .D(n409), .Z(n394) );
  GTECH_AND2 U403 ( .A(n406), .B(n407), .Z(n408) );
  GTECH_NOT U404 ( .A(n410), .Z(n406) );
  GTECH_NOT U405 ( .A(n388), .Z(n393) );
  GTECH_NAND2 U406 ( .A(I_a[3]), .B(I_b[1]), .Z(n388) );
  GTECH_OA21 U407 ( .A(n395), .B(n396), .C(n411), .Z(n401) );
  GTECH_AO21 U408 ( .A(n395), .B(n396), .C(n398), .Z(n411) );
  GTECH_AND2 U409 ( .A(I_b[4]), .B(I_a[0]), .Z(n400) );
  GTECH_XOR3 U410 ( .A(n412), .B(n396), .C(n395), .Z(N143) );
  GTECH_XOR2 U411 ( .A(n413), .B(n403), .Z(n395) );
  GTECH_NOT U412 ( .A(n414), .Z(n403) );
  GTECH_NAND2 U413 ( .A(I_b[3]), .B(I_a[0]), .Z(n414) );
  GTECH_NAND2 U414 ( .A(I_b[2]), .B(I_a[1]), .Z(n413) );
  GTECH_NOT U415 ( .A(n415), .Z(n396) );
  GTECH_XOR3 U416 ( .A(n416), .B(n417), .C(n410), .Z(n415) );
  GTECH_AO21 U417 ( .A(n418), .B(n419), .C(n420), .Z(n410) );
  GTECH_NOT U418 ( .A(n421), .Z(n420) );
  GTECH_NOT U419 ( .A(n409), .Z(n417) );
  GTECH_NAND2 U420 ( .A(I_b[1]), .B(I_a[2]), .Z(n409) );
  GTECH_NOT U421 ( .A(n407), .Z(n416) );
  GTECH_NAND2 U422 ( .A(I_b[0]), .B(I_a[3]), .Z(n407) );
  GTECH_NOT U423 ( .A(n398), .Z(n412) );
  GTECH_NAND3 U424 ( .A(I_a[0]), .B(n422), .C(I_b[2]), .Z(n398) );
  GTECH_XOR2 U425 ( .A(n423), .B(n422), .Z(N142) );
  GTECH_NOT U426 ( .A(n424), .Z(n422) );
  GTECH_XOR3 U427 ( .A(n418), .B(n419), .C(n421), .Z(n424) );
  GTECH_NAND3 U428 ( .A(n425), .B(I_b[0]), .C(I_a[1]), .Z(n421) );
  GTECH_NOT U429 ( .A(n426), .Z(n419) );
  GTECH_NAND2 U430 ( .A(I_a[1]), .B(I_b[1]), .Z(n426) );
  GTECH_NOT U431 ( .A(n427), .Z(n418) );
  GTECH_NAND2 U432 ( .A(I_b[0]), .B(I_a[2]), .Z(n427) );
  GTECH_AND2 U433 ( .A(I_b[2]), .B(I_a[0]), .Z(n423) );
  GTECH_XOR2 U434 ( .A(n425), .B(n428), .Z(N141) );
  GTECH_AND2 U435 ( .A(I_a[1]), .B(I_b[0]), .Z(n428) );
  GTECH_NOT U436 ( .A(n429), .Z(n425) );
  GTECH_NAND2 U437 ( .A(I_a[0]), .B(I_b[1]), .Z(n429) );
  GTECH_AND2 U438 ( .A(I_a[0]), .B(I_b[0]), .Z(N140) );
endmodule

