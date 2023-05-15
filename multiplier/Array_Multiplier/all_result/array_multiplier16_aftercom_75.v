
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
         n425, n426;

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
  GTECH_OAI21 U93 ( .A(n100), .B(n101), .C(n102), .Z(N155) );
  GTECH_OA22 U94 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n102) );
  GTECH_NOT U95 ( .A(n107), .Z(n104) );
  GTECH_XOR2 U96 ( .A(n108), .B(n109), .Z(N154) );
  GTECH_NOT U97 ( .A(n100), .Z(n109) );
  GTECH_XOR2 U98 ( .A(n107), .B(n103), .Z(n100) );
  GTECH_AOI2N2 U99 ( .A(n110), .B(n111), .C(n112), .D(n113), .Z(n103) );
  GTECH_NAND2 U100 ( .A(n112), .B(n113), .Z(n111) );
  GTECH_XOR2 U101 ( .A(n106), .B(n105), .Z(n107) );
  GTECH_AND2 U102 ( .A(n114), .B(n115), .Z(n105) );
  GTECH_OR_NOT U103 ( .A(n116), .B(n117), .Z(n115) );
  GTECH_OAI21 U104 ( .A(n118), .B(n117), .C(n119), .Z(n114) );
  GTECH_NAND2 U105 ( .A(I_b[7]), .B(I_a[7]), .Z(n106) );
  GTECH_NOT U106 ( .A(n101), .Z(n108) );
  GTECH_NAND2 U107 ( .A(n120), .B(n121), .Z(n101) );
  GTECH_XOR2 U108 ( .A(n121), .B(n120), .Z(N153) );
  GTECH_NOT U109 ( .A(n122), .Z(n120) );
  GTECH_XOR3 U110 ( .A(n123), .B(n112), .C(n110), .Z(n122) );
  GTECH_XOR3 U111 ( .A(n118), .B(n119), .C(n117), .Z(n110) );
  GTECH_OAI21 U112 ( .A(n124), .B(n125), .C(n126), .Z(n117) );
  GTECH_OAI21 U113 ( .A(n127), .B(n128), .C(n129), .Z(n126) );
  GTECH_NOT U114 ( .A(n128), .Z(n124) );
  GTECH_NOT U115 ( .A(n130), .Z(n119) );
  GTECH_NAND2 U116 ( .A(I_b[7]), .B(I_a[6]), .Z(n130) );
  GTECH_NOT U117 ( .A(n116), .Z(n118) );
  GTECH_NAND2 U118 ( .A(I_a[7]), .B(I_b[6]), .Z(n116) );
  GTECH_ADD_ABC U119 ( .A(n131), .B(n132), .C(n133), .COUT(n112) );
  GTECH_NOT U120 ( .A(n134), .Z(n133) );
  GTECH_XOR2 U121 ( .A(n135), .B(n136), .Z(n132) );
  GTECH_AND2 U122 ( .A(I_a[7]), .B(I_b[5]), .Z(n136) );
  GTECH_NOT U123 ( .A(n113), .Z(n123) );
  GTECH_NAND2 U124 ( .A(I_a[7]), .B(n137), .Z(n113) );
  GTECH_NOT U125 ( .A(n138), .Z(n121) );
  GTECH_NAND2 U126 ( .A(n139), .B(n140), .Z(n138) );
  GTECH_NOT U127 ( .A(n141), .Z(n140) );
  GTECH_XOR2 U128 ( .A(n141), .B(n142), .Z(N152) );
  GTECH_NOT U129 ( .A(n139), .Z(n142) );
  GTECH_XOR4 U130 ( .A(n143), .B(n135), .C(n131), .D(n134), .Z(n139) );
  GTECH_XOR3 U131 ( .A(n127), .B(n129), .C(n128), .Z(n134) );
  GTECH_OAI21 U132 ( .A(n144), .B(n145), .C(n146), .Z(n128) );
  GTECH_OAI21 U133 ( .A(n147), .B(n148), .C(n149), .Z(n146) );
  GTECH_NOT U134 ( .A(n148), .Z(n144) );
  GTECH_NOT U135 ( .A(n150), .Z(n129) );
  GTECH_NAND2 U136 ( .A(I_b[7]), .B(I_a[5]), .Z(n150) );
  GTECH_NOT U137 ( .A(n125), .Z(n127) );
  GTECH_NAND2 U138 ( .A(I_b[6]), .B(I_a[6]), .Z(n125) );
  GTECH_ADD_ABC U139 ( .A(n151), .B(n152), .C(n153), .COUT(n131) );
  GTECH_NOT U140 ( .A(n154), .Z(n153) );
  GTECH_XOR3 U141 ( .A(n155), .B(n156), .C(n157), .Z(n152) );
  GTECH_NOT U142 ( .A(n137), .Z(n135) );
  GTECH_OAI21 U143 ( .A(n157), .B(n158), .C(n159), .Z(n137) );
  GTECH_OAI21 U144 ( .A(n155), .B(n160), .C(n156), .Z(n159) );
  GTECH_NOT U145 ( .A(n158), .Z(n155) );
  GTECH_NOT U146 ( .A(n160), .Z(n157) );
  GTECH_AND2 U147 ( .A(I_a[7]), .B(I_b[5]), .Z(n143) );
  GTECH_ADD_ABC U148 ( .A(n161), .B(n162), .C(n163), .COUT(n141) );
  GTECH_NOT U149 ( .A(n164), .Z(n163) );
  GTECH_OA22 U150 ( .A(n165), .B(n166), .C(n167), .D(n168), .Z(n162) );
  GTECH_OA21 U151 ( .A(n169), .B(n170), .C(n171), .Z(n161) );
  GTECH_XOR3 U152 ( .A(n172), .B(n164), .C(n173), .Z(N151) );
  GTECH_OA21 U153 ( .A(n169), .B(n170), .C(n171), .Z(n173) );
  GTECH_OAI21 U154 ( .A(n174), .B(n175), .C(n176), .Z(n171) );
  GTECH_XOR2 U155 ( .A(n177), .B(n151), .Z(n164) );
  GTECH_ADD_ABC U156 ( .A(n178), .B(n179), .C(n180), .COUT(n151) );
  GTECH_NOT U157 ( .A(n181), .Z(n180) );
  GTECH_XOR3 U158 ( .A(n182), .B(n183), .C(n184), .Z(n179) );
  GTECH_XOR4 U159 ( .A(n156), .B(n160), .C(n158), .D(n154), .Z(n177) );
  GTECH_XOR3 U160 ( .A(n147), .B(n149), .C(n148), .Z(n154) );
  GTECH_OAI21 U161 ( .A(n185), .B(n186), .C(n187), .Z(n148) );
  GTECH_OAI21 U162 ( .A(n188), .B(n189), .C(n190), .Z(n187) );
  GTECH_NOT U163 ( .A(n189), .Z(n185) );
  GTECH_NOT U164 ( .A(n191), .Z(n149) );
  GTECH_NAND2 U165 ( .A(I_b[7]), .B(I_a[4]), .Z(n191) );
  GTECH_NOT U166 ( .A(n145), .Z(n147) );
  GTECH_NAND2 U167 ( .A(I_b[6]), .B(I_a[5]), .Z(n145) );
  GTECH_NAND2 U168 ( .A(I_a[7]), .B(I_b[4]), .Z(n158) );
  GTECH_OAI21 U169 ( .A(n184), .B(n192), .C(n193), .Z(n160) );
  GTECH_OAI21 U170 ( .A(n182), .B(n194), .C(n183), .Z(n193) );
  GTECH_NOT U171 ( .A(n192), .Z(n182) );
  GTECH_NOT U172 ( .A(n194), .Z(n184) );
  GTECH_NOT U173 ( .A(n195), .Z(n156) );
  GTECH_NAND2 U174 ( .A(I_a[6]), .B(I_b[5]), .Z(n195) );
  GTECH_OA22 U175 ( .A(n165), .B(n166), .C(n167), .D(n168), .Z(n172) );
  GTECH_NOT U176 ( .A(n196), .Z(n168) );
  GTECH_NOT U177 ( .A(I_a[7]), .Z(n166) );
  GTECH_XOR3 U178 ( .A(n169), .B(n174), .C(n197), .Z(N150) );
  GTECH_NOT U179 ( .A(n176), .Z(n197) );
  GTECH_XOR2 U180 ( .A(n198), .B(n178), .Z(n176) );
  GTECH_ADD_ABC U181 ( .A(n199), .B(n200), .C(n201), .COUT(n178) );
  GTECH_NOT U182 ( .A(n202), .Z(n201) );
  GTECH_XOR3 U183 ( .A(n203), .B(n204), .C(n205), .Z(n200) );
  GTECH_XOR4 U184 ( .A(n183), .B(n194), .C(n192), .D(n181), .Z(n198) );
  GTECH_XOR3 U185 ( .A(n188), .B(n190), .C(n189), .Z(n181) );
  GTECH_OAI21 U186 ( .A(n206), .B(n207), .C(n208), .Z(n189) );
  GTECH_OAI21 U187 ( .A(n209), .B(n210), .C(n211), .Z(n208) );
  GTECH_NOT U188 ( .A(n210), .Z(n206) );
  GTECH_NOT U189 ( .A(n212), .Z(n190) );
  GTECH_NAND2 U190 ( .A(I_b[7]), .B(I_a[3]), .Z(n212) );
  GTECH_NOT U191 ( .A(n186), .Z(n188) );
  GTECH_NAND2 U192 ( .A(I_b[6]), .B(I_a[4]), .Z(n186) );
  GTECH_NAND2 U193 ( .A(I_a[6]), .B(I_b[4]), .Z(n192) );
  GTECH_OAI21 U194 ( .A(n205), .B(n213), .C(n214), .Z(n194) );
  GTECH_OAI21 U195 ( .A(n203), .B(n215), .C(n204), .Z(n214) );
  GTECH_NOT U196 ( .A(n213), .Z(n203) );
  GTECH_NOT U197 ( .A(n215), .Z(n205) );
  GTECH_NOT U198 ( .A(n216), .Z(n183) );
  GTECH_NAND2 U199 ( .A(I_a[5]), .B(I_b[5]), .Z(n216) );
  GTECH_NOT U200 ( .A(n170), .Z(n174) );
  GTECH_XOR2 U201 ( .A(n196), .B(n167), .Z(n170) );
  GTECH_AOI2N2 U202 ( .A(n217), .B(n218), .C(n219), .D(n220), .Z(n167) );
  GTECH_NAND2 U203 ( .A(n219), .B(n220), .Z(n218) );
  GTECH_XOR2 U204 ( .A(n221), .B(n165), .Z(n196) );
  GTECH_AND2 U205 ( .A(n222), .B(n223), .Z(n165) );
  GTECH_OR_NOT U206 ( .A(n224), .B(n225), .Z(n223) );
  GTECH_OAI21 U207 ( .A(n226), .B(n225), .C(n227), .Z(n222) );
  GTECH_NAND2 U208 ( .A(I_a[7]), .B(I_b[3]), .Z(n221) );
  GTECH_NOT U209 ( .A(n175), .Z(n169) );
  GTECH_OAI2N2 U210 ( .A(n228), .B(n229), .C(n230), .D(n231), .Z(n175) );
  GTECH_NAND2 U211 ( .A(n228), .B(n229), .Z(n231) );
  GTECH_XOR3 U212 ( .A(n228), .B(n232), .C(n233), .Z(N149) );
  GTECH_NOT U213 ( .A(n230), .Z(n233) );
  GTECH_XOR2 U214 ( .A(n234), .B(n199), .Z(n230) );
  GTECH_ADD_ABC U215 ( .A(n235), .B(n236), .C(n237), .COUT(n199) );
  GTECH_XOR3 U216 ( .A(n238), .B(n239), .C(n240), .Z(n236) );
  GTECH_OA21 U217 ( .A(n241), .B(n242), .C(n243), .Z(n235) );
  GTECH_XOR4 U218 ( .A(n204), .B(n215), .C(n213), .D(n202), .Z(n234) );
  GTECH_XOR3 U219 ( .A(n209), .B(n211), .C(n210), .Z(n202) );
  GTECH_OAI21 U220 ( .A(n244), .B(n245), .C(n246), .Z(n210) );
  GTECH_NOT U221 ( .A(n247), .Z(n211) );
  GTECH_NAND2 U222 ( .A(I_b[7]), .B(I_a[2]), .Z(n247) );
  GTECH_NOT U223 ( .A(n207), .Z(n209) );
  GTECH_NAND2 U224 ( .A(I_b[6]), .B(I_a[3]), .Z(n207) );
  GTECH_NAND2 U225 ( .A(I_a[5]), .B(I_b[4]), .Z(n213) );
  GTECH_OAI21 U226 ( .A(n240), .B(n248), .C(n249), .Z(n215) );
  GTECH_OAI21 U227 ( .A(n238), .B(n250), .C(n239), .Z(n249) );
  GTECH_NOT U228 ( .A(n248), .Z(n238) );
  GTECH_NOT U229 ( .A(n250), .Z(n240) );
  GTECH_NOT U230 ( .A(n251), .Z(n204) );
  GTECH_NAND2 U231 ( .A(I_b[5]), .B(I_a[4]), .Z(n251) );
  GTECH_NOT U232 ( .A(n229), .Z(n232) );
  GTECH_XOR3 U233 ( .A(n252), .B(n219), .C(n217), .Z(n229) );
  GTECH_XOR3 U234 ( .A(n226), .B(n227), .C(n225), .Z(n217) );
  GTECH_OAI21 U235 ( .A(n253), .B(n254), .C(n255), .Z(n225) );
  GTECH_OAI21 U236 ( .A(n256), .B(n257), .C(n258), .Z(n255) );
  GTECH_NOT U237 ( .A(n257), .Z(n253) );
  GTECH_NOT U238 ( .A(n259), .Z(n227) );
  GTECH_NAND2 U239 ( .A(I_a[6]), .B(I_b[3]), .Z(n259) );
  GTECH_NOT U240 ( .A(n224), .Z(n226) );
  GTECH_NAND2 U241 ( .A(I_a[7]), .B(I_b[2]), .Z(n224) );
  GTECH_ADD_ABC U242 ( .A(n260), .B(n261), .C(n262), .COUT(n219) );
  GTECH_XOR2 U243 ( .A(n263), .B(n264), .Z(n261) );
  GTECH_AND2 U244 ( .A(I_a[7]), .B(I_b[1]), .Z(n264) );
  GTECH_NOT U245 ( .A(n220), .Z(n252) );
  GTECH_NAND2 U246 ( .A(I_a[7]), .B(n265), .Z(n220) );
  GTECH_ADD_ABC U247 ( .A(n266), .B(n267), .C(n268), .COUT(n228) );
  GTECH_XOR3 U248 ( .A(n260), .B(n269), .C(n262), .Z(n267) );
  GTECH_NOT U249 ( .A(n270), .Z(n262) );
  GTECH_XOR2 U250 ( .A(n266), .B(n271), .Z(N148) );
  GTECH_XOR4 U251 ( .A(n269), .B(n270), .C(n268), .D(n260), .Z(n271) );
  GTECH_ADD_ABC U252 ( .A(n272), .B(n273), .C(n274), .COUT(n260) );
  GTECH_XOR3 U253 ( .A(n275), .B(n276), .C(n277), .Z(n273) );
  GTECH_XOR2 U254 ( .A(n278), .B(n279), .Z(n268) );
  GTECH_OA21 U255 ( .A(n241), .B(n242), .C(n243), .Z(n279) );
  GTECH_OAI21 U256 ( .A(n280), .B(n281), .C(n282), .Z(n243) );
  GTECH_NOT U257 ( .A(n241), .Z(n281) );
  GTECH_XOR4 U258 ( .A(n239), .B(n250), .C(n248), .D(n237), .Z(n278) );
  GTECH_XOR3 U259 ( .A(n283), .B(n284), .C(n246), .Z(n237) );
  GTECH_NAND3 U260 ( .A(I_b[6]), .B(I_a[1]), .C(n285), .Z(n246) );
  GTECH_NOT U261 ( .A(n245), .Z(n284) );
  GTECH_NAND2 U262 ( .A(I_b[7]), .B(I_a[1]), .Z(n245) );
  GTECH_NOT U263 ( .A(n244), .Z(n283) );
  GTECH_NAND2 U264 ( .A(I_b[6]), .B(I_a[2]), .Z(n244) );
  GTECH_NAND2 U265 ( .A(I_b[4]), .B(I_a[4]), .Z(n248) );
  GTECH_OAI21 U266 ( .A(n286), .B(n287), .C(n288), .Z(n250) );
  GTECH_OAI21 U267 ( .A(n289), .B(n290), .C(n291), .Z(n288) );
  GTECH_NOT U268 ( .A(n290), .Z(n286) );
  GTECH_NOT U269 ( .A(n292), .Z(n239) );
  GTECH_NAND2 U270 ( .A(I_b[5]), .B(I_a[3]), .Z(n292) );
  GTECH_XOR3 U271 ( .A(n256), .B(n258), .C(n257), .Z(n270) );
  GTECH_OAI21 U272 ( .A(n293), .B(n294), .C(n295), .Z(n257) );
  GTECH_OAI21 U273 ( .A(n296), .B(n297), .C(n298), .Z(n295) );
  GTECH_NOT U274 ( .A(n297), .Z(n293) );
  GTECH_NOT U275 ( .A(n299), .Z(n258) );
  GTECH_NAND2 U276 ( .A(I_a[5]), .B(I_b[3]), .Z(n299) );
  GTECH_NOT U277 ( .A(n254), .Z(n256) );
  GTECH_NAND2 U278 ( .A(I_a[6]), .B(I_b[2]), .Z(n254) );
  GTECH_XOR2 U279 ( .A(n300), .B(n263), .Z(n269) );
  GTECH_NOT U280 ( .A(n265), .Z(n263) );
  GTECH_OAI21 U281 ( .A(n277), .B(n301), .C(n302), .Z(n265) );
  GTECH_OAI21 U282 ( .A(n275), .B(n303), .C(n276), .Z(n302) );
  GTECH_NOT U283 ( .A(n303), .Z(n277) );
  GTECH_AND2 U284 ( .A(I_a[7]), .B(I_b[1]), .Z(n300) );
  GTECH_ADD_ABC U285 ( .A(n304), .B(n305), .C(n306), .COUT(n266) );
  GTECH_NOT U286 ( .A(n307), .Z(n306) );
  GTECH_XOR3 U287 ( .A(n272), .B(n308), .C(n274), .Z(n305) );
  GTECH_NOT U288 ( .A(n309), .Z(n274) );
  GTECH_NOT U289 ( .A(n310), .Z(n308) );
  GTECH_XOR2 U290 ( .A(n311), .B(n304), .Z(N147) );
  GTECH_ADD_ABC U291 ( .A(n312), .B(n313), .C(n314), .COUT(n304) );
  GTECH_XOR3 U292 ( .A(n315), .B(n316), .C(n317), .Z(n313) );
  GTECH_OA21 U293 ( .A(n318), .B(n319), .C(n320), .Z(n312) );
  GTECH_XOR4 U294 ( .A(n309), .B(n272), .C(n310), .D(n307), .Z(n311) );
  GTECH_XOR3 U295 ( .A(n282), .B(n242), .C(n241), .Z(n307) );
  GTECH_XOR2 U296 ( .A(n321), .B(n285), .Z(n241) );
  GTECH_NOT U297 ( .A(n322), .Z(n285) );
  GTECH_NAND2 U298 ( .A(I_b[7]), .B(I_a[0]), .Z(n322) );
  GTECH_NAND2 U299 ( .A(I_b[6]), .B(I_a[1]), .Z(n321) );
  GTECH_NOT U300 ( .A(n280), .Z(n242) );
  GTECH_XOR3 U301 ( .A(n289), .B(n291), .C(n290), .Z(n280) );
  GTECH_OAI21 U302 ( .A(n323), .B(n324), .C(n325), .Z(n290) );
  GTECH_NOT U303 ( .A(n326), .Z(n291) );
  GTECH_NAND2 U304 ( .A(I_b[5]), .B(I_a[2]), .Z(n326) );
  GTECH_NOT U305 ( .A(n287), .Z(n289) );
  GTECH_NAND2 U306 ( .A(I_b[4]), .B(I_a[3]), .Z(n287) );
  GTECH_NOT U307 ( .A(n327), .Z(n282) );
  GTECH_NAND3 U308 ( .A(I_a[0]), .B(n328), .C(I_b[6]), .Z(n327) );
  GTECH_NOT U309 ( .A(n329), .Z(n328) );
  GTECH_XOR3 U310 ( .A(n275), .B(n276), .C(n303), .Z(n310) );
  GTECH_OAI21 U311 ( .A(n330), .B(n331), .C(n332), .Z(n303) );
  GTECH_OAI21 U312 ( .A(n333), .B(n334), .C(n335), .Z(n332) );
  GTECH_NOT U313 ( .A(n336), .Z(n276) );
  GTECH_NAND2 U314 ( .A(I_a[6]), .B(I_b[1]), .Z(n336) );
  GTECH_NOT U315 ( .A(n301), .Z(n275) );
  GTECH_NAND2 U316 ( .A(I_a[7]), .B(I_b[0]), .Z(n301) );
  GTECH_ADD_ABC U317 ( .A(n315), .B(n337), .C(n317), .COUT(n272) );
  GTECH_NOT U318 ( .A(n338), .Z(n317) );
  GTECH_XOR3 U319 ( .A(n333), .B(n335), .C(n330), .Z(n337) );
  GTECH_NOT U320 ( .A(n334), .Z(n330) );
  GTECH_XOR3 U321 ( .A(n296), .B(n298), .C(n297), .Z(n309) );
  GTECH_OAI21 U322 ( .A(n339), .B(n340), .C(n341), .Z(n297) );
  GTECH_OAI21 U323 ( .A(n342), .B(n343), .C(n344), .Z(n341) );
  GTECH_NOT U324 ( .A(n343), .Z(n339) );
  GTECH_NOT U325 ( .A(n345), .Z(n298) );
  GTECH_NAND2 U326 ( .A(I_b[3]), .B(I_a[4]), .Z(n345) );
  GTECH_NOT U327 ( .A(n294), .Z(n296) );
  GTECH_NAND2 U328 ( .A(I_a[5]), .B(I_b[2]), .Z(n294) );
  GTECH_XOR2 U329 ( .A(n346), .B(n347), .Z(N146) );
  GTECH_XOR4 U330 ( .A(n316), .B(n338), .C(n314), .D(n315), .Z(n347) );
  GTECH_ADD_ABC U331 ( .A(n348), .B(n349), .C(n350), .COUT(n315) );
  GTECH_NOT U332 ( .A(n351), .Z(n350) );
  GTECH_XOR3 U333 ( .A(n352), .B(n353), .C(n354), .Z(n349) );
  GTECH_XOR2 U334 ( .A(n329), .B(n355), .Z(n314) );
  GTECH_AND2 U335 ( .A(I_b[6]), .B(I_a[0]), .Z(n355) );
  GTECH_XOR3 U336 ( .A(n356), .B(n357), .C(n325), .Z(n329) );
  GTECH_NAND3 U337 ( .A(I_b[4]), .B(I_a[1]), .C(n358), .Z(n325) );
  GTECH_NOT U338 ( .A(n324), .Z(n357) );
  GTECH_NAND2 U339 ( .A(I_b[5]), .B(I_a[1]), .Z(n324) );
  GTECH_NOT U340 ( .A(n323), .Z(n356) );
  GTECH_NAND2 U341 ( .A(I_b[4]), .B(I_a[2]), .Z(n323) );
  GTECH_XOR3 U342 ( .A(n342), .B(n344), .C(n343), .Z(n338) );
  GTECH_OAI21 U343 ( .A(n359), .B(n360), .C(n361), .Z(n343) );
  GTECH_OAI21 U344 ( .A(n362), .B(n363), .C(n364), .Z(n361) );
  GTECH_NOT U345 ( .A(n363), .Z(n359) );
  GTECH_NOT U346 ( .A(n365), .Z(n344) );
  GTECH_NAND2 U347 ( .A(I_b[3]), .B(I_a[3]), .Z(n365) );
  GTECH_NOT U348 ( .A(n340), .Z(n342) );
  GTECH_NAND2 U349 ( .A(I_b[2]), .B(I_a[4]), .Z(n340) );
  GTECH_NOT U350 ( .A(n366), .Z(n316) );
  GTECH_XOR3 U351 ( .A(n333), .B(n335), .C(n334), .Z(n366) );
  GTECH_OAI21 U352 ( .A(n354), .B(n367), .C(n368), .Z(n334) );
  GTECH_OAI21 U353 ( .A(n352), .B(n369), .C(n353), .Z(n368) );
  GTECH_NOT U354 ( .A(n367), .Z(n352) );
  GTECH_NOT U355 ( .A(n369), .Z(n354) );
  GTECH_NOT U356 ( .A(n370), .Z(n335) );
  GTECH_NAND2 U357 ( .A(I_a[5]), .B(I_b[1]), .Z(n370) );
  GTECH_NOT U358 ( .A(n331), .Z(n333) );
  GTECH_NAND2 U359 ( .A(I_a[6]), .B(I_b[0]), .Z(n331) );
  GTECH_OA21 U360 ( .A(n318), .B(n319), .C(n320), .Z(n346) );
  GTECH_OAI21 U361 ( .A(n371), .B(n372), .C(n373), .Z(n320) );
  GTECH_NOT U362 ( .A(n318), .Z(n372) );
  GTECH_XOR3 U363 ( .A(n373), .B(n319), .C(n318), .Z(N145) );
  GTECH_XOR2 U364 ( .A(n374), .B(n358), .Z(n318) );
  GTECH_NOT U365 ( .A(n375), .Z(n358) );
  GTECH_NAND2 U366 ( .A(I_b[5]), .B(I_a[0]), .Z(n375) );
  GTECH_NAND2 U367 ( .A(I_b[4]), .B(I_a[1]), .Z(n374) );
  GTECH_NOT U368 ( .A(n371), .Z(n319) );
  GTECH_XOR2 U369 ( .A(n376), .B(n348), .Z(n371) );
  GTECH_ADD_ABC U370 ( .A(n377), .B(n378), .C(n379), .COUT(n348) );
  GTECH_XOR3 U371 ( .A(n380), .B(n381), .C(n382), .Z(n378) );
  GTECH_OA21 U372 ( .A(n383), .B(n384), .C(n385), .Z(n377) );
  GTECH_XOR4 U373 ( .A(n353), .B(n369), .C(n367), .D(n351), .Z(n376) );
  GTECH_XOR3 U374 ( .A(n362), .B(n364), .C(n363), .Z(n351) );
  GTECH_OAI21 U375 ( .A(n386), .B(n387), .C(n388), .Z(n363) );
  GTECH_NOT U376 ( .A(n389), .Z(n364) );
  GTECH_NAND2 U377 ( .A(I_b[3]), .B(I_a[2]), .Z(n389) );
  GTECH_NOT U378 ( .A(n360), .Z(n362) );
  GTECH_NAND2 U379 ( .A(I_b[2]), .B(I_a[3]), .Z(n360) );
  GTECH_NAND2 U380 ( .A(I_a[5]), .B(I_b[0]), .Z(n367) );
  GTECH_OAI21 U381 ( .A(n382), .B(n390), .C(n391), .Z(n369) );
  GTECH_OAI21 U382 ( .A(n380), .B(n392), .C(n381), .Z(n391) );
  GTECH_NOT U383 ( .A(n392), .Z(n382) );
  GTECH_NOT U384 ( .A(n393), .Z(n353) );
  GTECH_NAND2 U385 ( .A(I_a[4]), .B(I_b[1]), .Z(n393) );
  GTECH_NOT U386 ( .A(n394), .Z(n373) );
  GTECH_NAND3 U387 ( .A(I_a[0]), .B(n395), .C(I_b[4]), .Z(n394) );
  GTECH_XOR2 U388 ( .A(n396), .B(n395), .Z(N144) );
  GTECH_XOR2 U389 ( .A(n397), .B(n398), .Z(n395) );
  GTECH_XOR4 U390 ( .A(n381), .B(n392), .C(n379), .D(n380), .Z(n398) );
  GTECH_NOT U391 ( .A(n390), .Z(n380) );
  GTECH_NAND2 U392 ( .A(I_a[4]), .B(I_b[0]), .Z(n390) );
  GTECH_XOR3 U393 ( .A(n399), .B(n400), .C(n388), .Z(n379) );
  GTECH_NAND3 U394 ( .A(I_b[2]), .B(I_a[1]), .C(n401), .Z(n388) );
  GTECH_NOT U395 ( .A(n387), .Z(n400) );
  GTECH_NAND2 U396 ( .A(I_b[3]), .B(I_a[1]), .Z(n387) );
  GTECH_NOT U397 ( .A(n386), .Z(n399) );
  GTECH_NAND2 U398 ( .A(I_b[2]), .B(I_a[2]), .Z(n386) );
  GTECH_OAI21 U399 ( .A(n402), .B(n403), .C(n404), .Z(n392) );
  GTECH_OAI21 U400 ( .A(n405), .B(n406), .C(n407), .Z(n404) );
  GTECH_NOT U401 ( .A(n406), .Z(n402) );
  GTECH_NOT U402 ( .A(n408), .Z(n381) );
  GTECH_NAND2 U403 ( .A(I_a[3]), .B(I_b[1]), .Z(n408) );
  GTECH_OA21 U404 ( .A(n383), .B(n384), .C(n385), .Z(n397) );
  GTECH_OAI21 U405 ( .A(n409), .B(n410), .C(n411), .Z(n385) );
  GTECH_NOT U406 ( .A(n383), .Z(n410) );
  GTECH_AND2 U407 ( .A(I_b[4]), .B(I_a[0]), .Z(n396) );
  GTECH_XOR3 U408 ( .A(n411), .B(n384), .C(n383), .Z(N143) );
  GTECH_XOR2 U409 ( .A(n412), .B(n401), .Z(n383) );
  GTECH_NOT U410 ( .A(n413), .Z(n401) );
  GTECH_NAND2 U411 ( .A(I_b[3]), .B(I_a[0]), .Z(n413) );
  GTECH_NAND2 U412 ( .A(I_b[2]), .B(I_a[1]), .Z(n412) );
  GTECH_NOT U413 ( .A(n409), .Z(n384) );
  GTECH_XOR3 U414 ( .A(n405), .B(n407), .C(n406), .Z(n409) );
  GTECH_OAI21 U415 ( .A(n414), .B(n415), .C(n416), .Z(n406) );
  GTECH_NOT U416 ( .A(n417), .Z(n407) );
  GTECH_NAND2 U417 ( .A(I_b[1]), .B(I_a[2]), .Z(n417) );
  GTECH_NOT U418 ( .A(n403), .Z(n405) );
  GTECH_NAND2 U419 ( .A(I_b[0]), .B(I_a[3]), .Z(n403) );
  GTECH_NOT U420 ( .A(n418), .Z(n411) );
  GTECH_NAND3 U421 ( .A(I_a[0]), .B(n419), .C(I_b[2]), .Z(n418) );
  GTECH_XOR2 U422 ( .A(n420), .B(n419), .Z(N142) );
  GTECH_NOT U423 ( .A(n421), .Z(n419) );
  GTECH_XOR3 U424 ( .A(n422), .B(n423), .C(n416), .Z(n421) );
  GTECH_NAND3 U425 ( .A(n424), .B(I_b[0]), .C(I_a[1]), .Z(n416) );
  GTECH_NOT U426 ( .A(n414), .Z(n423) );
  GTECH_NAND2 U427 ( .A(I_a[1]), .B(I_b[1]), .Z(n414) );
  GTECH_NOT U428 ( .A(n415), .Z(n422) );
  GTECH_NAND2 U429 ( .A(I_b[0]), .B(I_a[2]), .Z(n415) );
  GTECH_AND2 U430 ( .A(I_b[2]), .B(I_a[0]), .Z(n420) );
  GTECH_XOR2 U431 ( .A(n424), .B(n425), .Z(N141) );
  GTECH_AND2 U432 ( .A(I_a[1]), .B(I_b[0]), .Z(n425) );
  GTECH_NOT U433 ( .A(n426), .Z(n424) );
  GTECH_NAND2 U434 ( .A(I_a[0]), .B(I_b[1]), .Z(n426) );
  GTECH_AND2 U435 ( .A(I_a[0]), .B(I_b[0]), .Z(N140) );
endmodule

