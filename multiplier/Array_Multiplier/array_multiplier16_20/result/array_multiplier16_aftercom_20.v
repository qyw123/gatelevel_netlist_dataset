
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
         n425, n426, n427, n428;

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
  GTECH_AOI2N2 U152 ( .A(n167), .B(n168), .C(n169), .D(n170), .Z(n164) );
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
  GTECH_AOI2N2 U177 ( .A(n167), .B(n168), .C(n169), .D(n170), .Z(n174) );
  GTECH_NOT U178 ( .A(I_a[7]), .Z(n170) );
  GTECH_XOR3 U179 ( .A(n171), .B(n176), .C(n198), .Z(N150) );
  GTECH_NOT U180 ( .A(n178), .Z(n198) );
  GTECH_XOR2 U181 ( .A(n199), .B(n180), .Z(n178) );
  GTECH_ADD_ABC U182 ( .A(n200), .B(n201), .C(n202), .COUT(n180) );
  GTECH_NOT U183 ( .A(n203), .Z(n202) );
  GTECH_XOR3 U184 ( .A(n204), .B(n205), .C(n206), .Z(n201) );
  GTECH_XOR4 U185 ( .A(n185), .B(n196), .C(n194), .D(n183), .Z(n199) );
  GTECH_XOR3 U186 ( .A(n190), .B(n192), .C(n191), .Z(n183) );
  GTECH_OAI21 U187 ( .A(n207), .B(n208), .C(n209), .Z(n191) );
  GTECH_OAI21 U188 ( .A(n210), .B(n211), .C(n212), .Z(n209) );
  GTECH_NOT U189 ( .A(n211), .Z(n207) );
  GTECH_NOT U190 ( .A(n213), .Z(n192) );
  GTECH_NAND2 U191 ( .A(I_b[7]), .B(I_a[3]), .Z(n213) );
  GTECH_NOT U192 ( .A(n188), .Z(n190) );
  GTECH_NAND2 U193 ( .A(I_b[6]), .B(I_a[4]), .Z(n188) );
  GTECH_NAND2 U194 ( .A(I_a[6]), .B(I_b[4]), .Z(n194) );
  GTECH_OAI21 U195 ( .A(n206), .B(n214), .C(n215), .Z(n196) );
  GTECH_OAI21 U196 ( .A(n204), .B(n216), .C(n205), .Z(n215) );
  GTECH_NOT U197 ( .A(n214), .Z(n204) );
  GTECH_NOT U198 ( .A(n216), .Z(n206) );
  GTECH_NOT U199 ( .A(n217), .Z(n185) );
  GTECH_NAND2 U200 ( .A(I_a[5]), .B(I_b[5]), .Z(n217) );
  GTECH_NOT U201 ( .A(n172), .Z(n176) );
  GTECH_XOR2 U202 ( .A(n167), .B(n218), .Z(n172) );
  GTECH_NOT U203 ( .A(n168), .Z(n218) );
  GTECH_OAI2N2 U204 ( .A(n219), .B(n220), .C(n221), .D(n222), .Z(n168) );
  GTECH_NAND2 U205 ( .A(n219), .B(n220), .Z(n222) );
  GTECH_XOR2 U206 ( .A(n223), .B(n169), .Z(n167) );
  GTECH_AND2 U207 ( .A(n224), .B(n225), .Z(n169) );
  GTECH_OR_NOT U208 ( .A(n226), .B(n227), .Z(n225) );
  GTECH_OAI21 U209 ( .A(n228), .B(n227), .C(n229), .Z(n224) );
  GTECH_NAND2 U210 ( .A(I_a[7]), .B(I_b[3]), .Z(n223) );
  GTECH_NOT U211 ( .A(n177), .Z(n171) );
  GTECH_OAI2N2 U212 ( .A(n230), .B(n231), .C(n232), .D(n233), .Z(n177) );
  GTECH_NAND2 U213 ( .A(n230), .B(n231), .Z(n233) );
  GTECH_XOR3 U214 ( .A(n230), .B(n234), .C(n235), .Z(N149) );
  GTECH_NOT U215 ( .A(n232), .Z(n235) );
  GTECH_XOR2 U216 ( .A(n236), .B(n200), .Z(n232) );
  GTECH_ADD_ABC U217 ( .A(n237), .B(n238), .C(n239), .COUT(n200) );
  GTECH_XOR3 U218 ( .A(n240), .B(n241), .C(n242), .Z(n238) );
  GTECH_OA21 U219 ( .A(n243), .B(n244), .C(n245), .Z(n237) );
  GTECH_XOR4 U220 ( .A(n205), .B(n216), .C(n214), .D(n203), .Z(n236) );
  GTECH_XOR3 U221 ( .A(n210), .B(n212), .C(n211), .Z(n203) );
  GTECH_OAI21 U222 ( .A(n246), .B(n247), .C(n248), .Z(n211) );
  GTECH_NOT U223 ( .A(n249), .Z(n212) );
  GTECH_NAND2 U224 ( .A(I_b[7]), .B(I_a[2]), .Z(n249) );
  GTECH_NOT U225 ( .A(n208), .Z(n210) );
  GTECH_NAND2 U226 ( .A(I_b[6]), .B(I_a[3]), .Z(n208) );
  GTECH_NAND2 U227 ( .A(I_a[5]), .B(I_b[4]), .Z(n214) );
  GTECH_OAI21 U228 ( .A(n242), .B(n250), .C(n251), .Z(n216) );
  GTECH_OAI21 U229 ( .A(n240), .B(n252), .C(n241), .Z(n251) );
  GTECH_NOT U230 ( .A(n250), .Z(n240) );
  GTECH_NOT U231 ( .A(n252), .Z(n242) );
  GTECH_NOT U232 ( .A(n253), .Z(n205) );
  GTECH_NAND2 U233 ( .A(I_b[5]), .B(I_a[4]), .Z(n253) );
  GTECH_NOT U234 ( .A(n231), .Z(n234) );
  GTECH_XOR3 U235 ( .A(n254), .B(n219), .C(n221), .Z(n231) );
  GTECH_XOR3 U236 ( .A(n228), .B(n229), .C(n227), .Z(n221) );
  GTECH_OAI21 U237 ( .A(n255), .B(n256), .C(n257), .Z(n227) );
  GTECH_OAI21 U238 ( .A(n258), .B(n259), .C(n260), .Z(n257) );
  GTECH_NOT U239 ( .A(n259), .Z(n255) );
  GTECH_NOT U240 ( .A(n261), .Z(n229) );
  GTECH_NAND2 U241 ( .A(I_a[6]), .B(I_b[3]), .Z(n261) );
  GTECH_NOT U242 ( .A(n226), .Z(n228) );
  GTECH_NAND2 U243 ( .A(I_a[7]), .B(I_b[2]), .Z(n226) );
  GTECH_ADD_ABC U244 ( .A(n262), .B(n263), .C(n264), .COUT(n219) );
  GTECH_XOR2 U245 ( .A(n265), .B(n266), .Z(n263) );
  GTECH_AND2 U246 ( .A(I_a[7]), .B(I_b[1]), .Z(n266) );
  GTECH_NOT U247 ( .A(n220), .Z(n254) );
  GTECH_NAND2 U248 ( .A(I_a[7]), .B(n267), .Z(n220) );
  GTECH_ADD_ABC U249 ( .A(n268), .B(n269), .C(n270), .COUT(n230) );
  GTECH_XOR3 U250 ( .A(n262), .B(n271), .C(n264), .Z(n269) );
  GTECH_NOT U251 ( .A(n272), .Z(n264) );
  GTECH_XOR2 U252 ( .A(n268), .B(n273), .Z(N148) );
  GTECH_XOR4 U253 ( .A(n271), .B(n272), .C(n270), .D(n262), .Z(n273) );
  GTECH_ADD_ABC U254 ( .A(n274), .B(n275), .C(n276), .COUT(n262) );
  GTECH_XOR3 U255 ( .A(n277), .B(n278), .C(n279), .Z(n275) );
  GTECH_XOR2 U256 ( .A(n280), .B(n281), .Z(n270) );
  GTECH_OA21 U257 ( .A(n243), .B(n244), .C(n245), .Z(n281) );
  GTECH_OAI21 U258 ( .A(n282), .B(n283), .C(n284), .Z(n245) );
  GTECH_NOT U259 ( .A(n243), .Z(n283) );
  GTECH_XOR4 U260 ( .A(n241), .B(n252), .C(n250), .D(n239), .Z(n280) );
  GTECH_XOR3 U261 ( .A(n285), .B(n286), .C(n248), .Z(n239) );
  GTECH_NAND3 U262 ( .A(I_b[6]), .B(I_a[1]), .C(n287), .Z(n248) );
  GTECH_NOT U263 ( .A(n247), .Z(n286) );
  GTECH_NAND2 U264 ( .A(I_b[7]), .B(I_a[1]), .Z(n247) );
  GTECH_NOT U265 ( .A(n246), .Z(n285) );
  GTECH_NAND2 U266 ( .A(I_b[6]), .B(I_a[2]), .Z(n246) );
  GTECH_NAND2 U267 ( .A(I_b[4]), .B(I_a[4]), .Z(n250) );
  GTECH_OAI21 U268 ( .A(n288), .B(n289), .C(n290), .Z(n252) );
  GTECH_OAI21 U269 ( .A(n291), .B(n292), .C(n293), .Z(n290) );
  GTECH_NOT U270 ( .A(n292), .Z(n288) );
  GTECH_NOT U271 ( .A(n294), .Z(n241) );
  GTECH_NAND2 U272 ( .A(I_b[5]), .B(I_a[3]), .Z(n294) );
  GTECH_XOR3 U273 ( .A(n258), .B(n260), .C(n259), .Z(n272) );
  GTECH_OAI21 U274 ( .A(n295), .B(n296), .C(n297), .Z(n259) );
  GTECH_OAI21 U275 ( .A(n298), .B(n299), .C(n300), .Z(n297) );
  GTECH_NOT U276 ( .A(n299), .Z(n295) );
  GTECH_NOT U277 ( .A(n301), .Z(n260) );
  GTECH_NAND2 U278 ( .A(I_a[5]), .B(I_b[3]), .Z(n301) );
  GTECH_NOT U279 ( .A(n256), .Z(n258) );
  GTECH_NAND2 U280 ( .A(I_a[6]), .B(I_b[2]), .Z(n256) );
  GTECH_XOR2 U281 ( .A(n302), .B(n265), .Z(n271) );
  GTECH_NOT U282 ( .A(n267), .Z(n265) );
  GTECH_OAI21 U283 ( .A(n279), .B(n303), .C(n304), .Z(n267) );
  GTECH_OAI21 U284 ( .A(n277), .B(n305), .C(n278), .Z(n304) );
  GTECH_NOT U285 ( .A(n305), .Z(n279) );
  GTECH_AND2 U286 ( .A(I_a[7]), .B(I_b[1]), .Z(n302) );
  GTECH_ADD_ABC U287 ( .A(n306), .B(n307), .C(n308), .COUT(n268) );
  GTECH_NOT U288 ( .A(n309), .Z(n308) );
  GTECH_XOR3 U289 ( .A(n274), .B(n310), .C(n276), .Z(n307) );
  GTECH_NOT U290 ( .A(n311), .Z(n276) );
  GTECH_NOT U291 ( .A(n312), .Z(n310) );
  GTECH_XOR2 U292 ( .A(n313), .B(n306), .Z(N147) );
  GTECH_ADD_ABC U293 ( .A(n314), .B(n315), .C(n316), .COUT(n306) );
  GTECH_XOR3 U294 ( .A(n317), .B(n318), .C(n319), .Z(n315) );
  GTECH_OA21 U295 ( .A(n320), .B(n321), .C(n322), .Z(n314) );
  GTECH_XOR4 U296 ( .A(n311), .B(n274), .C(n312), .D(n309), .Z(n313) );
  GTECH_XOR3 U297 ( .A(n284), .B(n244), .C(n243), .Z(n309) );
  GTECH_XOR2 U298 ( .A(n323), .B(n287), .Z(n243) );
  GTECH_NOT U299 ( .A(n324), .Z(n287) );
  GTECH_NAND2 U300 ( .A(I_b[7]), .B(I_a[0]), .Z(n324) );
  GTECH_NAND2 U301 ( .A(I_b[6]), .B(I_a[1]), .Z(n323) );
  GTECH_NOT U302 ( .A(n282), .Z(n244) );
  GTECH_XOR3 U303 ( .A(n291), .B(n293), .C(n292), .Z(n282) );
  GTECH_OAI21 U304 ( .A(n325), .B(n326), .C(n327), .Z(n292) );
  GTECH_NOT U305 ( .A(n328), .Z(n293) );
  GTECH_NAND2 U306 ( .A(I_b[5]), .B(I_a[2]), .Z(n328) );
  GTECH_NOT U307 ( .A(n289), .Z(n291) );
  GTECH_NAND2 U308 ( .A(I_b[4]), .B(I_a[3]), .Z(n289) );
  GTECH_NOT U309 ( .A(n329), .Z(n284) );
  GTECH_NAND3 U310 ( .A(I_a[0]), .B(n330), .C(I_b[6]), .Z(n329) );
  GTECH_NOT U311 ( .A(n331), .Z(n330) );
  GTECH_XOR3 U312 ( .A(n277), .B(n278), .C(n305), .Z(n312) );
  GTECH_OAI21 U313 ( .A(n332), .B(n333), .C(n334), .Z(n305) );
  GTECH_OAI21 U314 ( .A(n335), .B(n336), .C(n337), .Z(n334) );
  GTECH_NOT U315 ( .A(n338), .Z(n278) );
  GTECH_NAND2 U316 ( .A(I_a[6]), .B(I_b[1]), .Z(n338) );
  GTECH_NOT U317 ( .A(n303), .Z(n277) );
  GTECH_NAND2 U318 ( .A(I_a[7]), .B(I_b[0]), .Z(n303) );
  GTECH_ADD_ABC U319 ( .A(n317), .B(n339), .C(n319), .COUT(n274) );
  GTECH_NOT U320 ( .A(n340), .Z(n319) );
  GTECH_XOR3 U321 ( .A(n335), .B(n337), .C(n332), .Z(n339) );
  GTECH_NOT U322 ( .A(n336), .Z(n332) );
  GTECH_XOR3 U323 ( .A(n298), .B(n300), .C(n299), .Z(n311) );
  GTECH_OAI21 U324 ( .A(n341), .B(n342), .C(n343), .Z(n299) );
  GTECH_OAI21 U325 ( .A(n344), .B(n345), .C(n346), .Z(n343) );
  GTECH_NOT U326 ( .A(n345), .Z(n341) );
  GTECH_NOT U327 ( .A(n347), .Z(n300) );
  GTECH_NAND2 U328 ( .A(I_b[3]), .B(I_a[4]), .Z(n347) );
  GTECH_NOT U329 ( .A(n296), .Z(n298) );
  GTECH_NAND2 U330 ( .A(I_a[5]), .B(I_b[2]), .Z(n296) );
  GTECH_XOR2 U331 ( .A(n348), .B(n349), .Z(N146) );
  GTECH_XOR4 U332 ( .A(n318), .B(n340), .C(n316), .D(n317), .Z(n349) );
  GTECH_ADD_ABC U333 ( .A(n350), .B(n351), .C(n352), .COUT(n317) );
  GTECH_NOT U334 ( .A(n353), .Z(n352) );
  GTECH_XOR3 U335 ( .A(n354), .B(n355), .C(n356), .Z(n351) );
  GTECH_XOR2 U336 ( .A(n331), .B(n357), .Z(n316) );
  GTECH_AND2 U337 ( .A(I_b[6]), .B(I_a[0]), .Z(n357) );
  GTECH_XOR3 U338 ( .A(n358), .B(n359), .C(n327), .Z(n331) );
  GTECH_NAND3 U339 ( .A(I_b[4]), .B(I_a[1]), .C(n360), .Z(n327) );
  GTECH_NOT U340 ( .A(n326), .Z(n359) );
  GTECH_NAND2 U341 ( .A(I_b[5]), .B(I_a[1]), .Z(n326) );
  GTECH_NOT U342 ( .A(n325), .Z(n358) );
  GTECH_NAND2 U343 ( .A(I_b[4]), .B(I_a[2]), .Z(n325) );
  GTECH_XOR3 U344 ( .A(n344), .B(n346), .C(n345), .Z(n340) );
  GTECH_OAI21 U345 ( .A(n361), .B(n362), .C(n363), .Z(n345) );
  GTECH_OAI21 U346 ( .A(n364), .B(n365), .C(n366), .Z(n363) );
  GTECH_NOT U347 ( .A(n365), .Z(n361) );
  GTECH_NOT U348 ( .A(n367), .Z(n346) );
  GTECH_NAND2 U349 ( .A(I_b[3]), .B(I_a[3]), .Z(n367) );
  GTECH_NOT U350 ( .A(n342), .Z(n344) );
  GTECH_NAND2 U351 ( .A(I_b[2]), .B(I_a[4]), .Z(n342) );
  GTECH_NOT U352 ( .A(n368), .Z(n318) );
  GTECH_XOR3 U353 ( .A(n335), .B(n337), .C(n336), .Z(n368) );
  GTECH_OAI21 U354 ( .A(n356), .B(n369), .C(n370), .Z(n336) );
  GTECH_OAI21 U355 ( .A(n354), .B(n371), .C(n355), .Z(n370) );
  GTECH_NOT U356 ( .A(n369), .Z(n354) );
  GTECH_NOT U357 ( .A(n371), .Z(n356) );
  GTECH_NOT U358 ( .A(n372), .Z(n337) );
  GTECH_NAND2 U359 ( .A(I_a[5]), .B(I_b[1]), .Z(n372) );
  GTECH_NOT U360 ( .A(n333), .Z(n335) );
  GTECH_NAND2 U361 ( .A(I_a[6]), .B(I_b[0]), .Z(n333) );
  GTECH_OA21 U362 ( .A(n320), .B(n321), .C(n322), .Z(n348) );
  GTECH_OAI21 U363 ( .A(n373), .B(n374), .C(n375), .Z(n322) );
  GTECH_NOT U364 ( .A(n320), .Z(n374) );
  GTECH_XOR3 U365 ( .A(n375), .B(n321), .C(n320), .Z(N145) );
  GTECH_XOR2 U366 ( .A(n376), .B(n360), .Z(n320) );
  GTECH_NOT U367 ( .A(n377), .Z(n360) );
  GTECH_NAND2 U368 ( .A(I_b[5]), .B(I_a[0]), .Z(n377) );
  GTECH_NAND2 U369 ( .A(I_b[4]), .B(I_a[1]), .Z(n376) );
  GTECH_NOT U370 ( .A(n373), .Z(n321) );
  GTECH_XOR2 U371 ( .A(n378), .B(n350), .Z(n373) );
  GTECH_ADD_ABC U372 ( .A(n379), .B(n380), .C(n381), .COUT(n350) );
  GTECH_XOR3 U373 ( .A(n382), .B(n383), .C(n384), .Z(n380) );
  GTECH_OA21 U374 ( .A(n385), .B(n386), .C(n387), .Z(n379) );
  GTECH_XOR4 U375 ( .A(n355), .B(n371), .C(n369), .D(n353), .Z(n378) );
  GTECH_XOR3 U376 ( .A(n364), .B(n366), .C(n365), .Z(n353) );
  GTECH_OAI21 U377 ( .A(n388), .B(n389), .C(n390), .Z(n365) );
  GTECH_NOT U378 ( .A(n391), .Z(n366) );
  GTECH_NAND2 U379 ( .A(I_b[3]), .B(I_a[2]), .Z(n391) );
  GTECH_NOT U380 ( .A(n362), .Z(n364) );
  GTECH_NAND2 U381 ( .A(I_b[2]), .B(I_a[3]), .Z(n362) );
  GTECH_NAND2 U382 ( .A(I_a[5]), .B(I_b[0]), .Z(n369) );
  GTECH_OAI21 U383 ( .A(n384), .B(n392), .C(n393), .Z(n371) );
  GTECH_OAI21 U384 ( .A(n382), .B(n394), .C(n383), .Z(n393) );
  GTECH_NOT U385 ( .A(n394), .Z(n384) );
  GTECH_NOT U386 ( .A(n395), .Z(n355) );
  GTECH_NAND2 U387 ( .A(I_a[4]), .B(I_b[1]), .Z(n395) );
  GTECH_NOT U388 ( .A(n396), .Z(n375) );
  GTECH_NAND3 U389 ( .A(I_a[0]), .B(n397), .C(I_b[4]), .Z(n396) );
  GTECH_XOR2 U390 ( .A(n398), .B(n397), .Z(N144) );
  GTECH_XOR2 U391 ( .A(n399), .B(n400), .Z(n397) );
  GTECH_XOR4 U392 ( .A(n383), .B(n394), .C(n381), .D(n382), .Z(n400) );
  GTECH_NOT U393 ( .A(n392), .Z(n382) );
  GTECH_NAND2 U394 ( .A(I_a[4]), .B(I_b[0]), .Z(n392) );
  GTECH_XOR3 U395 ( .A(n401), .B(n402), .C(n390), .Z(n381) );
  GTECH_NAND3 U396 ( .A(I_b[2]), .B(I_a[1]), .C(n403), .Z(n390) );
  GTECH_NOT U397 ( .A(n389), .Z(n402) );
  GTECH_NAND2 U398 ( .A(I_b[3]), .B(I_a[1]), .Z(n389) );
  GTECH_NOT U399 ( .A(n388), .Z(n401) );
  GTECH_NAND2 U400 ( .A(I_b[2]), .B(I_a[2]), .Z(n388) );
  GTECH_OAI21 U401 ( .A(n404), .B(n405), .C(n406), .Z(n394) );
  GTECH_OAI21 U402 ( .A(n407), .B(n408), .C(n409), .Z(n406) );
  GTECH_NOT U403 ( .A(n408), .Z(n404) );
  GTECH_NOT U404 ( .A(n410), .Z(n383) );
  GTECH_NAND2 U405 ( .A(I_a[3]), .B(I_b[1]), .Z(n410) );
  GTECH_OA21 U406 ( .A(n385), .B(n386), .C(n387), .Z(n399) );
  GTECH_OAI21 U407 ( .A(n411), .B(n412), .C(n413), .Z(n387) );
  GTECH_NOT U408 ( .A(n385), .Z(n412) );
  GTECH_AND2 U409 ( .A(I_b[4]), .B(I_a[0]), .Z(n398) );
  GTECH_XOR3 U410 ( .A(n413), .B(n386), .C(n385), .Z(N143) );
  GTECH_XOR2 U411 ( .A(n414), .B(n403), .Z(n385) );
  GTECH_NOT U412 ( .A(n415), .Z(n403) );
  GTECH_NAND2 U413 ( .A(I_b[3]), .B(I_a[0]), .Z(n415) );
  GTECH_NAND2 U414 ( .A(I_b[2]), .B(I_a[1]), .Z(n414) );
  GTECH_NOT U415 ( .A(n411), .Z(n386) );
  GTECH_XOR3 U416 ( .A(n407), .B(n409), .C(n408), .Z(n411) );
  GTECH_OAI21 U417 ( .A(n416), .B(n417), .C(n418), .Z(n408) );
  GTECH_NOT U418 ( .A(n419), .Z(n409) );
  GTECH_NAND2 U419 ( .A(I_b[1]), .B(I_a[2]), .Z(n419) );
  GTECH_NOT U420 ( .A(n405), .Z(n407) );
  GTECH_NAND2 U421 ( .A(I_b[0]), .B(I_a[3]), .Z(n405) );
  GTECH_NOT U422 ( .A(n420), .Z(n413) );
  GTECH_NAND3 U423 ( .A(I_a[0]), .B(n421), .C(I_b[2]), .Z(n420) );
  GTECH_XOR2 U424 ( .A(n422), .B(n421), .Z(N142) );
  GTECH_NOT U425 ( .A(n423), .Z(n421) );
  GTECH_XOR3 U426 ( .A(n424), .B(n425), .C(n418), .Z(n423) );
  GTECH_NAND3 U427 ( .A(n426), .B(I_b[0]), .C(I_a[1]), .Z(n418) );
  GTECH_NOT U428 ( .A(n416), .Z(n425) );
  GTECH_NAND2 U429 ( .A(I_a[1]), .B(I_b[1]), .Z(n416) );
  GTECH_NOT U430 ( .A(n417), .Z(n424) );
  GTECH_NAND2 U431 ( .A(I_b[0]), .B(I_a[2]), .Z(n417) );
  GTECH_AND2 U432 ( .A(I_b[2]), .B(I_a[0]), .Z(n422) );
  GTECH_XOR2 U433 ( .A(n426), .B(n427), .Z(N141) );
  GTECH_AND2 U434 ( .A(I_a[1]), .B(I_b[0]), .Z(n427) );
  GTECH_NOT U435 ( .A(n428), .Z(n426) );
  GTECH_NAND2 U436 ( .A(I_a[0]), .B(I_b[1]), .Z(n428) );
  GTECH_AND2 U437 ( .A(I_a[0]), .B(I_b[0]), .Z(N140) );
endmodule

