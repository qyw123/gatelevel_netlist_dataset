
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
         n425, n426, n427, n428, n429, n430, n431;

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
  GTECH_NAND2 U106 ( .A(I_b[7]), .B(I_a[7]), .Z(n107) );
  GTECH_NOT U107 ( .A(n121), .Z(n101) );
  GTECH_NAND2 U108 ( .A(n122), .B(n123), .Z(n121) );
  GTECH_XOR2 U109 ( .A(n123), .B(n122), .Z(N153) );
  GTECH_NOT U110 ( .A(n124), .Z(n122) );
  GTECH_XNOR3 U111 ( .A(n125), .B(n110), .C(n126), .Z(n124) );
  GTECH_NOT U112 ( .A(n112), .Z(n126) );
  GTECH_XNOR3 U113 ( .A(n118), .B(n120), .C(n115), .Z(n112) );
  GTECH_NOT U114 ( .A(n119), .Z(n115) );
  GTECH_OAI21 U115 ( .A(n127), .B(n128), .C(n129), .Z(n119) );
  GTECH_OAI21 U116 ( .A(n130), .B(n131), .C(n132), .Z(n129) );
  GTECH_NOT U117 ( .A(n133), .Z(n120) );
  GTECH_NAND2 U118 ( .A(I_b[7]), .B(I_a[6]), .Z(n133) );
  GTECH_NOT U119 ( .A(n116), .Z(n118) );
  GTECH_NAND2 U120 ( .A(I_a[7]), .B(I_b[6]), .Z(n116) );
  GTECH_ADD_ABC U121 ( .A(n134), .B(n135), .C(n136), .COUT(n110) );
  GTECH_NOT U122 ( .A(n137), .Z(n136) );
  GTECH_XOR2 U123 ( .A(n138), .B(n139), .Z(n135) );
  GTECH_AND2 U124 ( .A(I_a[7]), .B(I_b[5]), .Z(n139) );
  GTECH_NOT U125 ( .A(n111), .Z(n125) );
  GTECH_NAND2 U126 ( .A(I_a[7]), .B(n140), .Z(n111) );
  GTECH_NOT U127 ( .A(n141), .Z(n123) );
  GTECH_NAND2 U128 ( .A(n142), .B(n143), .Z(n141) );
  GTECH_NOT U129 ( .A(n144), .Z(n143) );
  GTECH_XOR2 U130 ( .A(n144), .B(n145), .Z(N152) );
  GTECH_NOT U131 ( .A(n142), .Z(n145) );
  GTECH_XOR4 U132 ( .A(n146), .B(n138), .C(n137), .D(n134), .Z(n142) );
  GTECH_ADD_ABC U133 ( .A(n147), .B(n148), .C(n149), .COUT(n134) );
  GTECH_XNOR3 U134 ( .A(n150), .B(n151), .C(n152), .Z(n148) );
  GTECH_XNOR3 U135 ( .A(n130), .B(n132), .C(n127), .Z(n137) );
  GTECH_NOT U136 ( .A(n131), .Z(n127) );
  GTECH_OAI21 U137 ( .A(n153), .B(n154), .C(n155), .Z(n131) );
  GTECH_OAI21 U138 ( .A(n156), .B(n157), .C(n158), .Z(n155) );
  GTECH_NOT U139 ( .A(n159), .Z(n132) );
  GTECH_NAND2 U140 ( .A(I_b[7]), .B(I_a[5]), .Z(n159) );
  GTECH_NOT U141 ( .A(n128), .Z(n130) );
  GTECH_NAND2 U142 ( .A(I_b[6]), .B(I_a[6]), .Z(n128) );
  GTECH_NOT U143 ( .A(n140), .Z(n138) );
  GTECH_OAI21 U144 ( .A(n160), .B(n161), .C(n162), .Z(n140) );
  GTECH_OAI21 U145 ( .A(n150), .B(n152), .C(n151), .Z(n162) );
  GTECH_AND2 U146 ( .A(I_a[7]), .B(I_b[5]), .Z(n146) );
  GTECH_ADD_ABC U147 ( .A(n163), .B(n164), .C(n165), .COUT(n144) );
  GTECH_OA22 U148 ( .A(n166), .B(n167), .C(n168), .D(n169), .Z(n164) );
  GTECH_OA21 U149 ( .A(n170), .B(n171), .C(n172), .Z(n163) );
  GTECH_XNOR3 U150 ( .A(n173), .B(n165), .C(n174), .Z(N151) );
  GTECH_OA21 U151 ( .A(n170), .B(n171), .C(n172), .Z(n174) );
  GTECH_OAI21 U152 ( .A(n175), .B(n176), .C(n177), .Z(n172) );
  GTECH_XOR2 U153 ( .A(n147), .B(n178), .Z(n165) );
  GTECH_XOR4 U154 ( .A(n151), .B(n160), .C(n149), .D(n150), .Z(n178) );
  GTECH_NOT U155 ( .A(n161), .Z(n150) );
  GTECH_NAND2 U156 ( .A(I_a[7]), .B(I_b[4]), .Z(n161) );
  GTECH_NOT U157 ( .A(n179), .Z(n149) );
  GTECH_XNOR3 U158 ( .A(n156), .B(n158), .C(n153), .Z(n179) );
  GTECH_NOT U159 ( .A(n157), .Z(n153) );
  GTECH_OAI21 U160 ( .A(n180), .B(n181), .C(n182), .Z(n157) );
  GTECH_OAI21 U161 ( .A(n183), .B(n184), .C(n185), .Z(n182) );
  GTECH_NOT U162 ( .A(n186), .Z(n158) );
  GTECH_NAND2 U163 ( .A(I_b[7]), .B(I_a[4]), .Z(n186) );
  GTECH_NOT U164 ( .A(n154), .Z(n156) );
  GTECH_NAND2 U165 ( .A(I_b[6]), .B(I_a[5]), .Z(n154) );
  GTECH_NOT U166 ( .A(n152), .Z(n160) );
  GTECH_OAI21 U167 ( .A(n187), .B(n188), .C(n189), .Z(n152) );
  GTECH_OAI21 U168 ( .A(n190), .B(n191), .C(n192), .Z(n189) );
  GTECH_NOT U169 ( .A(n193), .Z(n151) );
  GTECH_NAND2 U170 ( .A(I_a[6]), .B(I_b[5]), .Z(n193) );
  GTECH_ADD_ABC U171 ( .A(n194), .B(n195), .C(n196), .COUT(n147) );
  GTECH_NOT U172 ( .A(n197), .Z(n196) );
  GTECH_XNOR3 U173 ( .A(n190), .B(n192), .C(n191), .Z(n195) );
  GTECH_OA22 U174 ( .A(n166), .B(n167), .C(n168), .D(n169), .Z(n173) );
  GTECH_NOT U175 ( .A(n198), .Z(n169) );
  GTECH_NOT U176 ( .A(I_a[7]), .Z(n167) );
  GTECH_XNOR3 U177 ( .A(n170), .B(n175), .C(n177), .Z(N150) );
  GTECH_XOR2 U178 ( .A(n199), .B(n194), .Z(n177) );
  GTECH_ADD_ABC U179 ( .A(n200), .B(n201), .C(n202), .COUT(n194) );
  GTECH_NOT U180 ( .A(n203), .Z(n202) );
  GTECH_XNOR3 U181 ( .A(n204), .B(n205), .C(n206), .Z(n201) );
  GTECH_XOR4 U182 ( .A(n192), .B(n187), .C(n197), .D(n190), .Z(n199) );
  GTECH_NOT U183 ( .A(n188), .Z(n190) );
  GTECH_NAND2 U184 ( .A(I_a[6]), .B(I_b[4]), .Z(n188) );
  GTECH_XNOR3 U185 ( .A(n183), .B(n185), .C(n180), .Z(n197) );
  GTECH_NOT U186 ( .A(n184), .Z(n180) );
  GTECH_OAI21 U187 ( .A(n207), .B(n208), .C(n209), .Z(n184) );
  GTECH_OAI21 U188 ( .A(n210), .B(n211), .C(n212), .Z(n209) );
  GTECH_NOT U189 ( .A(n213), .Z(n185) );
  GTECH_NAND2 U190 ( .A(I_b[7]), .B(I_a[3]), .Z(n213) );
  GTECH_NOT U191 ( .A(n181), .Z(n183) );
  GTECH_NAND2 U192 ( .A(I_b[6]), .B(I_a[4]), .Z(n181) );
  GTECH_NOT U193 ( .A(n191), .Z(n187) );
  GTECH_OAI21 U194 ( .A(n214), .B(n215), .C(n216), .Z(n191) );
  GTECH_OAI21 U195 ( .A(n204), .B(n206), .C(n205), .Z(n216) );
  GTECH_NOT U196 ( .A(n217), .Z(n192) );
  GTECH_NAND2 U197 ( .A(I_a[5]), .B(I_b[5]), .Z(n217) );
  GTECH_NOT U198 ( .A(n171), .Z(n175) );
  GTECH_XOR2 U199 ( .A(n198), .B(n168), .Z(n171) );
  GTECH_AOI2N2 U200 ( .A(n218), .B(n219), .C(n220), .D(n221), .Z(n168) );
  GTECH_NAND2 U201 ( .A(n220), .B(n221), .Z(n219) );
  GTECH_XOR2 U202 ( .A(n222), .B(n166), .Z(n198) );
  GTECH_OA21 U203 ( .A(n223), .B(n224), .C(n225), .Z(n166) );
  GTECH_OAI21 U204 ( .A(n226), .B(n227), .C(n228), .Z(n225) );
  GTECH_NAND2 U205 ( .A(I_a[7]), .B(I_b[3]), .Z(n222) );
  GTECH_NOT U206 ( .A(n176), .Z(n170) );
  GTECH_OAI2N2 U207 ( .A(n229), .B(n230), .C(n231), .D(n232), .Z(n176) );
  GTECH_NAND2 U208 ( .A(n229), .B(n230), .Z(n232) );
  GTECH_XNOR3 U209 ( .A(n229), .B(n233), .C(n231), .Z(N149) );
  GTECH_XOR2 U210 ( .A(n234), .B(n200), .Z(n231) );
  GTECH_ADD_ABC U211 ( .A(n235), .B(n236), .C(n237), .COUT(n200) );
  GTECH_XNOR3 U212 ( .A(n238), .B(n239), .C(n240), .Z(n236) );
  GTECH_OA21 U213 ( .A(n241), .B(n242), .C(n243), .Z(n235) );
  GTECH_XOR4 U214 ( .A(n205), .B(n214), .C(n203), .D(n204), .Z(n234) );
  GTECH_NOT U215 ( .A(n215), .Z(n204) );
  GTECH_NAND2 U216 ( .A(I_a[5]), .B(I_b[4]), .Z(n215) );
  GTECH_XNOR3 U217 ( .A(n210), .B(n212), .C(n207), .Z(n203) );
  GTECH_NOT U218 ( .A(n211), .Z(n207) );
  GTECH_OAI21 U219 ( .A(n244), .B(n245), .C(n246), .Z(n211) );
  GTECH_NOT U220 ( .A(n247), .Z(n212) );
  GTECH_NAND2 U221 ( .A(I_b[7]), .B(I_a[2]), .Z(n247) );
  GTECH_NOT U222 ( .A(n208), .Z(n210) );
  GTECH_NAND2 U223 ( .A(I_b[6]), .B(I_a[3]), .Z(n208) );
  GTECH_NOT U224 ( .A(n206), .Z(n214) );
  GTECH_OAI21 U225 ( .A(n248), .B(n249), .C(n250), .Z(n206) );
  GTECH_OAI21 U226 ( .A(n238), .B(n240), .C(n239), .Z(n250) );
  GTECH_NOT U227 ( .A(n251), .Z(n205) );
  GTECH_NAND2 U228 ( .A(I_b[5]), .B(I_a[4]), .Z(n251) );
  GTECH_NOT U229 ( .A(n230), .Z(n233) );
  GTECH_XNOR3 U230 ( .A(n252), .B(n220), .C(n253), .Z(n230) );
  GTECH_NOT U231 ( .A(n218), .Z(n253) );
  GTECH_XNOR3 U232 ( .A(n226), .B(n228), .C(n223), .Z(n218) );
  GTECH_NOT U233 ( .A(n227), .Z(n223) );
  GTECH_OAI21 U234 ( .A(n254), .B(n255), .C(n256), .Z(n227) );
  GTECH_OAI21 U235 ( .A(n257), .B(n258), .C(n259), .Z(n256) );
  GTECH_NOT U236 ( .A(n260), .Z(n228) );
  GTECH_NAND2 U237 ( .A(I_a[6]), .B(I_b[3]), .Z(n260) );
  GTECH_NOT U238 ( .A(n224), .Z(n226) );
  GTECH_NAND2 U239 ( .A(I_a[7]), .B(I_b[2]), .Z(n224) );
  GTECH_ADD_ABC U240 ( .A(n261), .B(n262), .C(n263), .COUT(n220) );
  GTECH_NOT U241 ( .A(n264), .Z(n263) );
  GTECH_XOR2 U242 ( .A(n265), .B(n266), .Z(n262) );
  GTECH_AND2 U243 ( .A(I_a[7]), .B(I_b[1]), .Z(n266) );
  GTECH_NOT U244 ( .A(n221), .Z(n252) );
  GTECH_NAND2 U245 ( .A(I_a[7]), .B(n267), .Z(n221) );
  GTECH_ADD_ABC U246 ( .A(n268), .B(n269), .C(n270), .COUT(n229) );
  GTECH_XNOR3 U247 ( .A(n261), .B(n271), .C(n264), .Z(n269) );
  GTECH_XOR2 U248 ( .A(n272), .B(n268), .Z(N148) );
  GTECH_ADD_ABC U249 ( .A(n273), .B(n274), .C(n275), .COUT(n268) );
  GTECH_NOT U250 ( .A(n276), .Z(n275) );
  GTECH_XNOR3 U251 ( .A(n277), .B(n278), .C(n279), .Z(n274) );
  GTECH_XOR4 U252 ( .A(n271), .B(n261), .C(n264), .D(n270), .Z(n272) );
  GTECH_XOR2 U253 ( .A(n280), .B(n281), .Z(n270) );
  GTECH_XOR4 U254 ( .A(n239), .B(n248), .C(n237), .D(n238), .Z(n281) );
  GTECH_NOT U255 ( .A(n249), .Z(n238) );
  GTECH_NAND2 U256 ( .A(I_b[4]), .B(I_a[4]), .Z(n249) );
  GTECH_XNOR3 U257 ( .A(n282), .B(n283), .C(n284), .Z(n237) );
  GTECH_NOT U258 ( .A(n246), .Z(n284) );
  GTECH_NAND3 U259 ( .A(I_b[6]), .B(I_a[1]), .C(n285), .Z(n246) );
  GTECH_NOT U260 ( .A(n245), .Z(n283) );
  GTECH_NAND2 U261 ( .A(I_b[7]), .B(I_a[1]), .Z(n245) );
  GTECH_NOT U262 ( .A(n244), .Z(n282) );
  GTECH_NAND2 U263 ( .A(I_b[6]), .B(I_a[2]), .Z(n244) );
  GTECH_NOT U264 ( .A(n240), .Z(n248) );
  GTECH_OAI21 U265 ( .A(n286), .B(n287), .C(n288), .Z(n240) );
  GTECH_OAI21 U266 ( .A(n289), .B(n290), .C(n291), .Z(n288) );
  GTECH_NOT U267 ( .A(n292), .Z(n239) );
  GTECH_NAND2 U268 ( .A(I_b[5]), .B(I_a[3]), .Z(n292) );
  GTECH_OA21 U269 ( .A(n241), .B(n242), .C(n243), .Z(n280) );
  GTECH_OAI21 U270 ( .A(n293), .B(n294), .C(n295), .Z(n243) );
  GTECH_XNOR3 U271 ( .A(n257), .B(n259), .C(n254), .Z(n264) );
  GTECH_NOT U272 ( .A(n258), .Z(n254) );
  GTECH_OAI21 U273 ( .A(n296), .B(n297), .C(n298), .Z(n258) );
  GTECH_OAI21 U274 ( .A(n299), .B(n300), .C(n301), .Z(n298) );
  GTECH_NOT U275 ( .A(n302), .Z(n259) );
  GTECH_NAND2 U276 ( .A(I_a[5]), .B(I_b[3]), .Z(n302) );
  GTECH_NOT U277 ( .A(n255), .Z(n257) );
  GTECH_NAND2 U278 ( .A(I_a[6]), .B(I_b[2]), .Z(n255) );
  GTECH_ADD_ABC U279 ( .A(n277), .B(n303), .C(n304), .COUT(n261) );
  GTECH_XNOR3 U280 ( .A(n305), .B(n306), .C(n307), .Z(n303) );
  GTECH_XOR2 U281 ( .A(n308), .B(n265), .Z(n271) );
  GTECH_NOT U282 ( .A(n267), .Z(n265) );
  GTECH_OAI21 U283 ( .A(n309), .B(n310), .C(n311), .Z(n267) );
  GTECH_OAI21 U284 ( .A(n305), .B(n307), .C(n306), .Z(n311) );
  GTECH_AND2 U285 ( .A(I_a[7]), .B(I_b[1]), .Z(n308) );
  GTECH_XOR2 U286 ( .A(n312), .B(n273), .Z(N147) );
  GTECH_ADD_ABC U287 ( .A(n313), .B(n314), .C(n315), .COUT(n273) );
  GTECH_XNOR3 U288 ( .A(n316), .B(n317), .C(n318), .Z(n314) );
  GTECH_OA21 U289 ( .A(n319), .B(n320), .C(n321), .Z(n313) );
  GTECH_XOR4 U290 ( .A(n278), .B(n304), .C(n276), .D(n277), .Z(n312) );
  GTECH_ADD_ABC U291 ( .A(n316), .B(n322), .C(n323), .COUT(n277) );
  GTECH_NOT U292 ( .A(n318), .Z(n323) );
  GTECH_XNOR3 U293 ( .A(n324), .B(n325), .C(n326), .Z(n322) );
  GTECH_XNOR3 U294 ( .A(n295), .B(n242), .C(n294), .Z(n276) );
  GTECH_NOT U295 ( .A(n241), .Z(n294) );
  GTECH_XOR2 U296 ( .A(n327), .B(n285), .Z(n241) );
  GTECH_NOT U297 ( .A(n328), .Z(n285) );
  GTECH_NAND2 U298 ( .A(I_b[7]), .B(I_a[0]), .Z(n328) );
  GTECH_NAND2 U299 ( .A(I_b[6]), .B(I_a[1]), .Z(n327) );
  GTECH_NOT U300 ( .A(n293), .Z(n242) );
  GTECH_XNOR3 U301 ( .A(n289), .B(n291), .C(n286), .Z(n293) );
  GTECH_NOT U302 ( .A(n290), .Z(n286) );
  GTECH_OAI21 U303 ( .A(n329), .B(n330), .C(n331), .Z(n290) );
  GTECH_NOT U304 ( .A(n332), .Z(n291) );
  GTECH_NAND2 U305 ( .A(I_b[5]), .B(I_a[2]), .Z(n332) );
  GTECH_NOT U306 ( .A(n287), .Z(n289) );
  GTECH_NAND2 U307 ( .A(I_b[4]), .B(I_a[3]), .Z(n287) );
  GTECH_NOT U308 ( .A(n333), .Z(n295) );
  GTECH_NAND3 U309 ( .A(I_a[0]), .B(n334), .C(I_b[6]), .Z(n333) );
  GTECH_NOT U310 ( .A(n335), .Z(n334) );
  GTECH_NOT U311 ( .A(n279), .Z(n304) );
  GTECH_XNOR3 U312 ( .A(n299), .B(n301), .C(n296), .Z(n279) );
  GTECH_NOT U313 ( .A(n300), .Z(n296) );
  GTECH_OAI21 U314 ( .A(n336), .B(n337), .C(n338), .Z(n300) );
  GTECH_OAI21 U315 ( .A(n339), .B(n340), .C(n341), .Z(n338) );
  GTECH_NOT U316 ( .A(n342), .Z(n301) );
  GTECH_NAND2 U317 ( .A(I_b[3]), .B(I_a[4]), .Z(n342) );
  GTECH_NOT U318 ( .A(n297), .Z(n299) );
  GTECH_NAND2 U319 ( .A(I_a[5]), .B(I_b[2]), .Z(n297) );
  GTECH_NOT U320 ( .A(n343), .Z(n278) );
  GTECH_XNOR3 U321 ( .A(n305), .B(n306), .C(n309), .Z(n343) );
  GTECH_NOT U322 ( .A(n307), .Z(n309) );
  GTECH_OAI21 U323 ( .A(n344), .B(n345), .C(n346), .Z(n307) );
  GTECH_OAI21 U324 ( .A(n324), .B(n326), .C(n325), .Z(n346) );
  GTECH_NOT U325 ( .A(n347), .Z(n306) );
  GTECH_NAND2 U326 ( .A(I_a[6]), .B(I_b[1]), .Z(n347) );
  GTECH_NOT U327 ( .A(n310), .Z(n305) );
  GTECH_NAND2 U328 ( .A(I_a[7]), .B(I_b[0]), .Z(n310) );
  GTECH_XOR2 U329 ( .A(n348), .B(n349), .Z(N146) );
  GTECH_OA21 U330 ( .A(n319), .B(n320), .C(n321), .Z(n349) );
  GTECH_OAI21 U331 ( .A(n350), .B(n351), .C(n352), .Z(n321) );
  GTECH_XOR4 U332 ( .A(n317), .B(n316), .C(n318), .D(n315), .Z(n348) );
  GTECH_XOR2 U333 ( .A(n335), .B(n353), .Z(n315) );
  GTECH_AND2 U334 ( .A(I_b[6]), .B(I_a[0]), .Z(n353) );
  GTECH_XNOR3 U335 ( .A(n354), .B(n355), .C(n356), .Z(n335) );
  GTECH_NOT U336 ( .A(n331), .Z(n356) );
  GTECH_NAND3 U337 ( .A(I_b[4]), .B(I_a[1]), .C(n357), .Z(n331) );
  GTECH_NOT U338 ( .A(n330), .Z(n355) );
  GTECH_NAND2 U339 ( .A(I_b[5]), .B(I_a[1]), .Z(n330) );
  GTECH_NOT U340 ( .A(n329), .Z(n354) );
  GTECH_NAND2 U341 ( .A(I_b[4]), .B(I_a[2]), .Z(n329) );
  GTECH_XNOR3 U342 ( .A(n339), .B(n341), .C(n336), .Z(n318) );
  GTECH_NOT U343 ( .A(n340), .Z(n336) );
  GTECH_OAI21 U344 ( .A(n358), .B(n359), .C(n360), .Z(n340) );
  GTECH_OAI21 U345 ( .A(n361), .B(n362), .C(n363), .Z(n360) );
  GTECH_NOT U346 ( .A(n364), .Z(n341) );
  GTECH_NAND2 U347 ( .A(I_b[3]), .B(I_a[3]), .Z(n364) );
  GTECH_NOT U348 ( .A(n337), .Z(n339) );
  GTECH_NAND2 U349 ( .A(I_b[2]), .B(I_a[4]), .Z(n337) );
  GTECH_ADD_ABC U350 ( .A(n365), .B(n366), .C(n367), .COUT(n316) );
  GTECH_NOT U351 ( .A(n368), .Z(n367) );
  GTECH_XNOR3 U352 ( .A(n369), .B(n370), .C(n371), .Z(n366) );
  GTECH_NOT U353 ( .A(n372), .Z(n317) );
  GTECH_XNOR3 U354 ( .A(n324), .B(n325), .C(n344), .Z(n372) );
  GTECH_NOT U355 ( .A(n326), .Z(n344) );
  GTECH_OAI21 U356 ( .A(n373), .B(n374), .C(n375), .Z(n326) );
  GTECH_OAI21 U357 ( .A(n369), .B(n371), .C(n370), .Z(n375) );
  GTECH_NOT U358 ( .A(n376), .Z(n325) );
  GTECH_NAND2 U359 ( .A(I_a[5]), .B(I_b[1]), .Z(n376) );
  GTECH_NOT U360 ( .A(n345), .Z(n324) );
  GTECH_NAND2 U361 ( .A(I_a[6]), .B(I_b[0]), .Z(n345) );
  GTECH_XNOR3 U362 ( .A(n352), .B(n320), .C(n351), .Z(N145) );
  GTECH_NOT U363 ( .A(n319), .Z(n351) );
  GTECH_XOR2 U364 ( .A(n377), .B(n357), .Z(n319) );
  GTECH_NOT U365 ( .A(n378), .Z(n357) );
  GTECH_NAND2 U366 ( .A(I_b[5]), .B(I_a[0]), .Z(n378) );
  GTECH_NAND2 U367 ( .A(I_b[4]), .B(I_a[1]), .Z(n377) );
  GTECH_NOT U368 ( .A(n350), .Z(n320) );
  GTECH_XOR2 U369 ( .A(n379), .B(n365), .Z(n350) );
  GTECH_ADD_ABC U370 ( .A(n380), .B(n381), .C(n382), .COUT(n365) );
  GTECH_XNOR3 U371 ( .A(n383), .B(n384), .C(n385), .Z(n381) );
  GTECH_OA21 U372 ( .A(n386), .B(n387), .C(n388), .Z(n380) );
  GTECH_XOR4 U373 ( .A(n370), .B(n373), .C(n368), .D(n369), .Z(n379) );
  GTECH_NOT U374 ( .A(n374), .Z(n369) );
  GTECH_NAND2 U375 ( .A(I_a[5]), .B(I_b[0]), .Z(n374) );
  GTECH_XNOR3 U376 ( .A(n361), .B(n363), .C(n358), .Z(n368) );
  GTECH_NOT U377 ( .A(n362), .Z(n358) );
  GTECH_OAI21 U378 ( .A(n389), .B(n390), .C(n391), .Z(n362) );
  GTECH_NOT U379 ( .A(n392), .Z(n363) );
  GTECH_NAND2 U380 ( .A(I_b[3]), .B(I_a[2]), .Z(n392) );
  GTECH_NOT U381 ( .A(n359), .Z(n361) );
  GTECH_NAND2 U382 ( .A(I_b[2]), .B(I_a[3]), .Z(n359) );
  GTECH_NOT U383 ( .A(n371), .Z(n373) );
  GTECH_OAI21 U384 ( .A(n393), .B(n394), .C(n395), .Z(n371) );
  GTECH_OAI21 U385 ( .A(n383), .B(n385), .C(n384), .Z(n395) );
  GTECH_NOT U386 ( .A(n394), .Z(n383) );
  GTECH_NOT U387 ( .A(n396), .Z(n370) );
  GTECH_NAND2 U388 ( .A(I_a[4]), .B(I_b[1]), .Z(n396) );
  GTECH_NOT U389 ( .A(n397), .Z(n352) );
  GTECH_NAND3 U390 ( .A(I_a[0]), .B(n398), .C(I_b[4]), .Z(n397) );
  GTECH_XOR2 U391 ( .A(n399), .B(n398), .Z(N144) );
  GTECH_XOR2 U392 ( .A(n400), .B(n401), .Z(n398) );
  GTECH_OA21 U393 ( .A(n386), .B(n387), .C(n388), .Z(n401) );
  GTECH_OAI21 U394 ( .A(n402), .B(n403), .C(n404), .Z(n388) );
  GTECH_XOR4 U395 ( .A(n384), .B(n393), .C(n394), .D(n382), .Z(n400) );
  GTECH_XNOR3 U396 ( .A(n405), .B(n406), .C(n407), .Z(n382) );
  GTECH_NOT U397 ( .A(n391), .Z(n407) );
  GTECH_NAND3 U398 ( .A(I_b[2]), .B(I_a[1]), .C(n408), .Z(n391) );
  GTECH_NOT U399 ( .A(n390), .Z(n406) );
  GTECH_NAND2 U400 ( .A(I_b[3]), .B(I_a[1]), .Z(n390) );
  GTECH_NOT U401 ( .A(n389), .Z(n405) );
  GTECH_NAND2 U402 ( .A(I_b[2]), .B(I_a[2]), .Z(n389) );
  GTECH_NAND2 U403 ( .A(I_a[4]), .B(I_b[0]), .Z(n394) );
  GTECH_NOT U404 ( .A(n385), .Z(n393) );
  GTECH_OAI21 U405 ( .A(n409), .B(n410), .C(n411), .Z(n385) );
  GTECH_OAI21 U406 ( .A(n412), .B(n413), .C(n414), .Z(n411) );
  GTECH_NOT U407 ( .A(n415), .Z(n384) );
  GTECH_NAND2 U408 ( .A(I_a[3]), .B(I_b[1]), .Z(n415) );
  GTECH_AND2 U409 ( .A(I_b[4]), .B(I_a[0]), .Z(n399) );
  GTECH_XNOR3 U410 ( .A(n404), .B(n387), .C(n403), .Z(N143) );
  GTECH_NOT U411 ( .A(n386), .Z(n403) );
  GTECH_XOR2 U412 ( .A(n416), .B(n408), .Z(n386) );
  GTECH_NOT U413 ( .A(n417), .Z(n408) );
  GTECH_NAND2 U414 ( .A(I_b[3]), .B(I_a[0]), .Z(n417) );
  GTECH_NAND2 U415 ( .A(I_b[2]), .B(I_a[1]), .Z(n416) );
  GTECH_NOT U416 ( .A(n402), .Z(n387) );
  GTECH_XNOR3 U417 ( .A(n412), .B(n414), .C(n409), .Z(n402) );
  GTECH_NOT U418 ( .A(n413), .Z(n409) );
  GTECH_OAI21 U419 ( .A(n418), .B(n419), .C(n420), .Z(n413) );
  GTECH_NOT U420 ( .A(n421), .Z(n414) );
  GTECH_NAND2 U421 ( .A(I_b[1]), .B(I_a[2]), .Z(n421) );
  GTECH_NOT U422 ( .A(n410), .Z(n412) );
  GTECH_NAND2 U423 ( .A(I_b[0]), .B(I_a[3]), .Z(n410) );
  GTECH_NOT U424 ( .A(n422), .Z(n404) );
  GTECH_NAND3 U425 ( .A(I_a[0]), .B(n423), .C(I_b[2]), .Z(n422) );
  GTECH_XOR2 U426 ( .A(n424), .B(n423), .Z(N142) );
  GTECH_NOT U427 ( .A(n425), .Z(n423) );
  GTECH_XNOR3 U428 ( .A(n426), .B(n427), .C(n428), .Z(n425) );
  GTECH_NOT U429 ( .A(n420), .Z(n428) );
  GTECH_NAND3 U430 ( .A(n429), .B(I_b[0]), .C(I_a[1]), .Z(n420) );
  GTECH_NOT U431 ( .A(n418), .Z(n427) );
  GTECH_NAND2 U432 ( .A(I_a[1]), .B(I_b[1]), .Z(n418) );
  GTECH_NOT U433 ( .A(n419), .Z(n426) );
  GTECH_NAND2 U434 ( .A(I_b[0]), .B(I_a[2]), .Z(n419) );
  GTECH_AND2 U435 ( .A(I_b[2]), .B(I_a[0]), .Z(n424) );
  GTECH_XOR2 U436 ( .A(n429), .B(n430), .Z(N141) );
  GTECH_AND2 U437 ( .A(I_a[1]), .B(I_b[0]), .Z(n430) );
  GTECH_NOT U438 ( .A(n431), .Z(n429) );
  GTECH_NAND2 U439 ( .A(I_a[0]), .B(I_b[1]), .Z(n431) );
  GTECH_AND2 U440 ( .A(I_a[0]), .B(I_b[0]), .Z(N140) );
endmodule

