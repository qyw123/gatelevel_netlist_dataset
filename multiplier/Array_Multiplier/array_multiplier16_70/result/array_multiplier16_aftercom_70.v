
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
  GTECH_NOT U95 ( .A(n107), .Z(n102) );
  GTECH_XNOR2 U96 ( .A(n101), .B(n107), .Z(N154) );
  GTECH_XNOR2 U97 ( .A(n108), .B(n109), .Z(n107) );
  GTECH_NOT U98 ( .A(n103), .Z(n109) );
  GTECH_XNOR2 U99 ( .A(n110), .B(n105), .Z(n103) );
  GTECH_NOT U100 ( .A(n111), .Z(n105) );
  GTECH_NAND2 U101 ( .A(I_b[7]), .B(I_a[7]), .Z(n111) );
  GTECH_NOT U102 ( .A(n106), .Z(n110) );
  GTECH_OAI21 U103 ( .A(n112), .B(n113), .C(n114), .Z(n106) );
  GTECH_OAI21 U104 ( .A(n115), .B(n116), .C(n117), .Z(n114) );
  GTECH_NOT U105 ( .A(n116), .Z(n112) );
  GTECH_NOT U106 ( .A(n104), .Z(n108) );
  GTECH_OAI2N2 U107 ( .A(n118), .B(n119), .C(n120), .D(n121), .Z(n104) );
  GTECH_NAND2 U108 ( .A(n118), .B(n119), .Z(n121) );
  GTECH_NOT U109 ( .A(n122), .Z(n101) );
  GTECH_NAND2 U110 ( .A(n123), .B(n124), .Z(n122) );
  GTECH_NOT U111 ( .A(n125), .Z(n123) );
  GTECH_XNOR2 U112 ( .A(n124), .B(n125), .Z(N153) );
  GTECH_XOR3 U113 ( .A(n126), .B(n118), .C(n120), .Z(n125) );
  GTECH_XOR3 U114 ( .A(n115), .B(n117), .C(n116), .Z(n120) );
  GTECH_OAI21 U115 ( .A(n127), .B(n128), .C(n129), .Z(n116) );
  GTECH_OAI21 U116 ( .A(n130), .B(n131), .C(n132), .Z(n129) );
  GTECH_NOT U117 ( .A(n131), .Z(n127) );
  GTECH_NOT U118 ( .A(n133), .Z(n117) );
  GTECH_NAND2 U119 ( .A(I_b[7]), .B(I_a[6]), .Z(n133) );
  GTECH_NOT U120 ( .A(n113), .Z(n115) );
  GTECH_NAND2 U121 ( .A(I_a[7]), .B(I_b[6]), .Z(n113) );
  GTECH_ADD_ABC U122 ( .A(n134), .B(n135), .C(n136), .COUT(n118) );
  GTECH_NOT U123 ( .A(n137), .Z(n136) );
  GTECH_XNOR2 U124 ( .A(n138), .B(n139), .Z(n135) );
  GTECH_NAND2 U125 ( .A(I_a[7]), .B(I_b[5]), .Z(n139) );
  GTECH_NOT U126 ( .A(n119), .Z(n126) );
  GTECH_NAND2 U127 ( .A(I_a[7]), .B(n140), .Z(n119) );
  GTECH_NOT U128 ( .A(n141), .Z(n124) );
  GTECH_NAND2 U129 ( .A(n142), .B(n143), .Z(n141) );
  GTECH_NOT U130 ( .A(n144), .Z(n143) );
  GTECH_XNOR2 U131 ( .A(n144), .B(n142), .Z(N152) );
  GTECH_XOR4 U132 ( .A(n138), .B(n145), .C(n134), .D(n137), .Z(n142) );
  GTECH_XOR3 U133 ( .A(n130), .B(n132), .C(n131), .Z(n137) );
  GTECH_OAI21 U134 ( .A(n146), .B(n147), .C(n148), .Z(n131) );
  GTECH_OAI21 U135 ( .A(n149), .B(n150), .C(n151), .Z(n148) );
  GTECH_NOT U136 ( .A(n150), .Z(n146) );
  GTECH_NOT U137 ( .A(n152), .Z(n132) );
  GTECH_NAND2 U138 ( .A(I_b[7]), .B(I_a[5]), .Z(n152) );
  GTECH_NOT U139 ( .A(n128), .Z(n130) );
  GTECH_NAND2 U140 ( .A(I_b[6]), .B(I_a[6]), .Z(n128) );
  GTECH_ADD_ABC U141 ( .A(n153), .B(n154), .C(n155), .COUT(n134) );
  GTECH_NOT U142 ( .A(n156), .Z(n155) );
  GTECH_XOR3 U143 ( .A(n157), .B(n158), .C(n159), .Z(n154) );
  GTECH_AND2 U144 ( .A(I_a[7]), .B(I_b[5]), .Z(n145) );
  GTECH_NOT U145 ( .A(n140), .Z(n138) );
  GTECH_OAI21 U146 ( .A(n159), .B(n160), .C(n161), .Z(n140) );
  GTECH_OAI21 U147 ( .A(n157), .B(n162), .C(n158), .Z(n161) );
  GTECH_NOT U148 ( .A(n160), .Z(n157) );
  GTECH_NOT U149 ( .A(n162), .Z(n159) );
  GTECH_ADD_ABC U150 ( .A(n163), .B(n164), .C(n165), .COUT(n144) );
  GTECH_NOT U151 ( .A(n166), .Z(n165) );
  GTECH_OA22 U152 ( .A(n167), .B(n168), .C(n169), .D(n170), .Z(n164) );
  GTECH_OA21 U153 ( .A(n171), .B(n172), .C(n173), .Z(n163) );
  GTECH_XOR3 U154 ( .A(n174), .B(n166), .C(n175), .Z(N151) );
  GTECH_OA21 U155 ( .A(n171), .B(n172), .C(n173), .Z(n175) );
  GTECH_OAI21 U156 ( .A(n176), .B(n177), .C(n178), .Z(n173) );
  GTECH_XOR3 U157 ( .A(n156), .B(n153), .C(n179), .Z(n166) );
  GTECH_XOR3 U158 ( .A(n158), .B(n162), .C(n160), .Z(n179) );
  GTECH_NAND2 U159 ( .A(I_a[7]), .B(I_b[4]), .Z(n160) );
  GTECH_OAI21 U160 ( .A(n180), .B(n181), .C(n182), .Z(n162) );
  GTECH_OAI21 U161 ( .A(n183), .B(n184), .C(n185), .Z(n182) );
  GTECH_NOT U162 ( .A(n186), .Z(n158) );
  GTECH_NAND2 U163 ( .A(I_a[6]), .B(I_b[5]), .Z(n186) );
  GTECH_ADD_ABC U164 ( .A(n187), .B(n188), .C(n189), .COUT(n153) );
  GTECH_NOT U165 ( .A(n190), .Z(n189) );
  GTECH_XOR3 U166 ( .A(n183), .B(n185), .C(n180), .Z(n188) );
  GTECH_NOT U167 ( .A(n184), .Z(n180) );
  GTECH_NOT U168 ( .A(n181), .Z(n183) );
  GTECH_XOR3 U169 ( .A(n149), .B(n151), .C(n150), .Z(n156) );
  GTECH_OAI21 U170 ( .A(n191), .B(n192), .C(n193), .Z(n150) );
  GTECH_OAI21 U171 ( .A(n194), .B(n195), .C(n196), .Z(n193) );
  GTECH_NOT U172 ( .A(n195), .Z(n191) );
  GTECH_NOT U173 ( .A(n197), .Z(n151) );
  GTECH_NAND2 U174 ( .A(I_b[7]), .B(I_a[4]), .Z(n197) );
  GTECH_NOT U175 ( .A(n147), .Z(n149) );
  GTECH_NAND2 U176 ( .A(I_b[6]), .B(I_a[5]), .Z(n147) );
  GTECH_OA22 U177 ( .A(n167), .B(n168), .C(n169), .D(n170), .Z(n174) );
  GTECH_NOT U178 ( .A(I_a[7]), .Z(n168) );
  GTECH_XOR3 U179 ( .A(n171), .B(n176), .C(n198), .Z(N150) );
  GTECH_NOT U180 ( .A(n178), .Z(n198) );
  GTECH_XOR3 U181 ( .A(n190), .B(n187), .C(n199), .Z(n178) );
  GTECH_XOR3 U182 ( .A(n185), .B(n184), .C(n181), .Z(n199) );
  GTECH_NAND2 U183 ( .A(I_a[6]), .B(I_b[4]), .Z(n181) );
  GTECH_OAI21 U184 ( .A(n200), .B(n201), .C(n202), .Z(n184) );
  GTECH_OAI21 U185 ( .A(n203), .B(n204), .C(n205), .Z(n202) );
  GTECH_NOT U186 ( .A(n206), .Z(n185) );
  GTECH_NAND2 U187 ( .A(I_a[5]), .B(I_b[5]), .Z(n206) );
  GTECH_ADD_ABC U188 ( .A(n207), .B(n208), .C(n209), .COUT(n187) );
  GTECH_NOT U189 ( .A(n210), .Z(n209) );
  GTECH_XOR3 U190 ( .A(n203), .B(n205), .C(n200), .Z(n208) );
  GTECH_NOT U191 ( .A(n204), .Z(n200) );
  GTECH_NOT U192 ( .A(n201), .Z(n203) );
  GTECH_XOR3 U193 ( .A(n194), .B(n196), .C(n195), .Z(n190) );
  GTECH_OAI21 U194 ( .A(n211), .B(n212), .C(n213), .Z(n195) );
  GTECH_OAI21 U195 ( .A(n214), .B(n215), .C(n216), .Z(n213) );
  GTECH_NOT U196 ( .A(n215), .Z(n211) );
  GTECH_NOT U197 ( .A(n217), .Z(n196) );
  GTECH_NAND2 U198 ( .A(I_b[7]), .B(I_a[3]), .Z(n217) );
  GTECH_NOT U199 ( .A(n192), .Z(n194) );
  GTECH_NAND2 U200 ( .A(I_b[6]), .B(I_a[4]), .Z(n192) );
  GTECH_NOT U201 ( .A(n172), .Z(n176) );
  GTECH_XNOR2 U202 ( .A(n169), .B(n170), .Z(n172) );
  GTECH_XNOR2 U203 ( .A(n167), .B(n218), .Z(n170) );
  GTECH_NAND2 U204 ( .A(I_a[7]), .B(I_b[3]), .Z(n218) );
  GTECH_AND2 U205 ( .A(n219), .B(n220), .Z(n167) );
  GTECH_OR_NOT U206 ( .A(n221), .B(n222), .Z(n220) );
  GTECH_OAI21 U207 ( .A(n223), .B(n222), .C(n224), .Z(n219) );
  GTECH_AOI2N2 U208 ( .A(n225), .B(n226), .C(n227), .D(n228), .Z(n169) );
  GTECH_NAND2 U209 ( .A(n227), .B(n228), .Z(n226) );
  GTECH_NOT U210 ( .A(n177), .Z(n171) );
  GTECH_OAI2N2 U211 ( .A(n229), .B(n230), .C(n231), .D(n232), .Z(n177) );
  GTECH_NAND2 U212 ( .A(n229), .B(n230), .Z(n232) );
  GTECH_XOR3 U213 ( .A(n229), .B(n233), .C(n234), .Z(N149) );
  GTECH_NOT U214 ( .A(n231), .Z(n234) );
  GTECH_XOR3 U215 ( .A(n210), .B(n207), .C(n235), .Z(n231) );
  GTECH_XOR3 U216 ( .A(n205), .B(n204), .C(n201), .Z(n235) );
  GTECH_NAND2 U217 ( .A(I_a[5]), .B(I_b[4]), .Z(n201) );
  GTECH_OAI21 U218 ( .A(n236), .B(n237), .C(n238), .Z(n204) );
  GTECH_OAI21 U219 ( .A(n239), .B(n240), .C(n241), .Z(n238) );
  GTECH_NOT U220 ( .A(n242), .Z(n205) );
  GTECH_NAND2 U221 ( .A(I_b[5]), .B(I_a[4]), .Z(n242) );
  GTECH_ADD_ABC U222 ( .A(n243), .B(n244), .C(n245), .COUT(n207) );
  GTECH_XOR3 U223 ( .A(n239), .B(n241), .C(n236), .Z(n244) );
  GTECH_NOT U224 ( .A(n240), .Z(n236) );
  GTECH_OA21 U225 ( .A(n246), .B(n247), .C(n248), .Z(n243) );
  GTECH_XOR3 U226 ( .A(n214), .B(n216), .C(n215), .Z(n210) );
  GTECH_OAI21 U227 ( .A(n249), .B(n250), .C(n251), .Z(n215) );
  GTECH_NOT U228 ( .A(n252), .Z(n216) );
  GTECH_NAND2 U229 ( .A(I_b[7]), .B(I_a[2]), .Z(n252) );
  GTECH_NOT U230 ( .A(n212), .Z(n214) );
  GTECH_NAND2 U231 ( .A(I_b[6]), .B(I_a[3]), .Z(n212) );
  GTECH_NOT U232 ( .A(n230), .Z(n233) );
  GTECH_XOR3 U233 ( .A(n253), .B(n227), .C(n225), .Z(n230) );
  GTECH_XOR3 U234 ( .A(n223), .B(n224), .C(n222), .Z(n225) );
  GTECH_OAI21 U235 ( .A(n254), .B(n255), .C(n256), .Z(n222) );
  GTECH_OAI21 U236 ( .A(n257), .B(n258), .C(n259), .Z(n256) );
  GTECH_NOT U237 ( .A(n258), .Z(n254) );
  GTECH_NOT U238 ( .A(n260), .Z(n224) );
  GTECH_NAND2 U239 ( .A(I_a[6]), .B(I_b[3]), .Z(n260) );
  GTECH_NOT U240 ( .A(n221), .Z(n223) );
  GTECH_NAND2 U241 ( .A(I_a[7]), .B(I_b[2]), .Z(n221) );
  GTECH_ADD_ABC U242 ( .A(n261), .B(n262), .C(n263), .COUT(n227) );
  GTECH_XNOR2 U243 ( .A(n264), .B(n265), .Z(n262) );
  GTECH_NAND2 U244 ( .A(I_a[7]), .B(I_b[1]), .Z(n265) );
  GTECH_NOT U245 ( .A(n228), .Z(n253) );
  GTECH_NAND2 U246 ( .A(I_a[7]), .B(n266), .Z(n228) );
  GTECH_ADD_ABC U247 ( .A(n267), .B(n268), .C(n269), .COUT(n229) );
  GTECH_XOR3 U248 ( .A(n261), .B(n270), .C(n263), .Z(n268) );
  GTECH_NOT U249 ( .A(n271), .Z(n263) );
  GTECH_XOR3 U250 ( .A(n272), .B(n269), .C(n267), .Z(N148) );
  GTECH_ADD_ABC U251 ( .A(n273), .B(n274), .C(n275), .COUT(n267) );
  GTECH_NOT U252 ( .A(n276), .Z(n275) );
  GTECH_XOR3 U253 ( .A(n277), .B(n278), .C(n279), .Z(n274) );
  GTECH_NOT U254 ( .A(n280), .Z(n278) );
  GTECH_XOR3 U255 ( .A(n281), .B(n245), .C(n282), .Z(n269) );
  GTECH_OAI21 U256 ( .A(n246), .B(n247), .C(n248), .Z(n282) );
  GTECH_OAI21 U257 ( .A(n283), .B(n284), .C(n285), .Z(n248) );
  GTECH_NOT U258 ( .A(n246), .Z(n284) );
  GTECH_XOR3 U259 ( .A(n286), .B(n287), .C(n251), .Z(n245) );
  GTECH_NAND3 U260 ( .A(I_b[6]), .B(I_a[1]), .C(n288), .Z(n251) );
  GTECH_NOT U261 ( .A(n250), .Z(n287) );
  GTECH_NAND2 U262 ( .A(I_b[7]), .B(I_a[1]), .Z(n250) );
  GTECH_NOT U263 ( .A(n249), .Z(n286) );
  GTECH_NAND2 U264 ( .A(I_b[6]), .B(I_a[2]), .Z(n249) );
  GTECH_XOR3 U265 ( .A(n241), .B(n240), .C(n239), .Z(n281) );
  GTECH_NOT U266 ( .A(n237), .Z(n239) );
  GTECH_NAND2 U267 ( .A(I_b[4]), .B(I_a[4]), .Z(n237) );
  GTECH_OAI21 U268 ( .A(n289), .B(n290), .C(n291), .Z(n240) );
  GTECH_OAI21 U269 ( .A(n292), .B(n293), .C(n294), .Z(n291) );
  GTECH_NOT U270 ( .A(n293), .Z(n289) );
  GTECH_NOT U271 ( .A(n295), .Z(n241) );
  GTECH_NAND2 U272 ( .A(I_b[5]), .B(I_a[3]), .Z(n295) );
  GTECH_XOR3 U273 ( .A(n270), .B(n271), .C(n261), .Z(n272) );
  GTECH_ADD_ABC U274 ( .A(n277), .B(n296), .C(n279), .COUT(n261) );
  GTECH_NOT U275 ( .A(n297), .Z(n279) );
  GTECH_XOR3 U276 ( .A(n298), .B(n299), .C(n300), .Z(n296) );
  GTECH_XOR3 U277 ( .A(n257), .B(n259), .C(n258), .Z(n271) );
  GTECH_OAI21 U278 ( .A(n301), .B(n302), .C(n303), .Z(n258) );
  GTECH_OAI21 U279 ( .A(n304), .B(n305), .C(n306), .Z(n303) );
  GTECH_NOT U280 ( .A(n305), .Z(n301) );
  GTECH_NOT U281 ( .A(n307), .Z(n259) );
  GTECH_NAND2 U282 ( .A(I_a[5]), .B(I_b[3]), .Z(n307) );
  GTECH_NOT U283 ( .A(n255), .Z(n257) );
  GTECH_NAND2 U284 ( .A(I_a[6]), .B(I_b[2]), .Z(n255) );
  GTECH_XNOR2 U285 ( .A(n264), .B(n308), .Z(n270) );
  GTECH_NAND2 U286 ( .A(I_a[7]), .B(I_b[1]), .Z(n308) );
  GTECH_NOT U287 ( .A(n266), .Z(n264) );
  GTECH_OAI21 U288 ( .A(n300), .B(n309), .C(n310), .Z(n266) );
  GTECH_OAI21 U289 ( .A(n298), .B(n311), .C(n299), .Z(n310) );
  GTECH_NOT U290 ( .A(n311), .Z(n300) );
  GTECH_XOR3 U291 ( .A(n276), .B(n273), .C(n312), .Z(N147) );
  GTECH_XOR3 U292 ( .A(n297), .B(n277), .C(n280), .Z(n312) );
  GTECH_XOR3 U293 ( .A(n298), .B(n299), .C(n311), .Z(n280) );
  GTECH_OAI21 U294 ( .A(n313), .B(n314), .C(n315), .Z(n311) );
  GTECH_OAI21 U295 ( .A(n316), .B(n317), .C(n318), .Z(n315) );
  GTECH_NOT U296 ( .A(n319), .Z(n299) );
  GTECH_NAND2 U297 ( .A(I_a[6]), .B(I_b[1]), .Z(n319) );
  GTECH_NOT U298 ( .A(n309), .Z(n298) );
  GTECH_NAND2 U299 ( .A(I_a[7]), .B(I_b[0]), .Z(n309) );
  GTECH_ADD_ABC U300 ( .A(n320), .B(n321), .C(n322), .COUT(n277) );
  GTECH_XOR3 U301 ( .A(n316), .B(n318), .C(n313), .Z(n321) );
  GTECH_NOT U302 ( .A(n317), .Z(n313) );
  GTECH_XOR3 U303 ( .A(n304), .B(n306), .C(n305), .Z(n297) );
  GTECH_OAI21 U304 ( .A(n323), .B(n324), .C(n325), .Z(n305) );
  GTECH_OAI21 U305 ( .A(n326), .B(n327), .C(n328), .Z(n325) );
  GTECH_NOT U306 ( .A(n327), .Z(n323) );
  GTECH_NOT U307 ( .A(n329), .Z(n306) );
  GTECH_NAND2 U308 ( .A(I_b[3]), .B(I_a[4]), .Z(n329) );
  GTECH_NOT U309 ( .A(n302), .Z(n304) );
  GTECH_NAND2 U310 ( .A(I_a[5]), .B(I_b[2]), .Z(n302) );
  GTECH_ADD_ABC U311 ( .A(n330), .B(n331), .C(n332), .COUT(n273) );
  GTECH_XOR3 U312 ( .A(n320), .B(n333), .C(n322), .Z(n331) );
  GTECH_NOT U313 ( .A(n334), .Z(n322) );
  GTECH_OA21 U314 ( .A(n335), .B(n336), .C(n337), .Z(n330) );
  GTECH_XOR3 U315 ( .A(n285), .B(n247), .C(n246), .Z(n276) );
  GTECH_XNOR2 U316 ( .A(n288), .B(n338), .Z(n246) );
  GTECH_AND2 U317 ( .A(I_b[6]), .B(I_a[1]), .Z(n338) );
  GTECH_NOT U318 ( .A(n339), .Z(n288) );
  GTECH_NAND2 U319 ( .A(I_b[7]), .B(I_a[0]), .Z(n339) );
  GTECH_NOT U320 ( .A(n283), .Z(n247) );
  GTECH_XOR3 U321 ( .A(n292), .B(n294), .C(n293), .Z(n283) );
  GTECH_OAI21 U322 ( .A(n340), .B(n341), .C(n342), .Z(n293) );
  GTECH_NOT U323 ( .A(n343), .Z(n294) );
  GTECH_NAND2 U324 ( .A(I_b[5]), .B(I_a[2]), .Z(n343) );
  GTECH_NOT U325 ( .A(n290), .Z(n292) );
  GTECH_NAND2 U326 ( .A(I_b[4]), .B(I_a[3]), .Z(n290) );
  GTECH_NOT U327 ( .A(n344), .Z(n285) );
  GTECH_NAND3 U328 ( .A(I_a[0]), .B(n345), .C(I_b[6]), .Z(n344) );
  GTECH_XOR3 U329 ( .A(n346), .B(n332), .C(n347), .Z(N146) );
  GTECH_OA21 U330 ( .A(n335), .B(n336), .C(n337), .Z(n347) );
  GTECH_OAI21 U331 ( .A(n348), .B(n349), .C(n350), .Z(n337) );
  GTECH_NOT U332 ( .A(n335), .Z(n349) );
  GTECH_XNOR2 U333 ( .A(n351), .B(n345), .Z(n332) );
  GTECH_NOT U334 ( .A(n352), .Z(n345) );
  GTECH_XOR3 U335 ( .A(n353), .B(n354), .C(n342), .Z(n352) );
  GTECH_NAND3 U336 ( .A(I_b[4]), .B(I_a[1]), .C(n355), .Z(n342) );
  GTECH_NOT U337 ( .A(n341), .Z(n354) );
  GTECH_NAND2 U338 ( .A(I_b[5]), .B(I_a[1]), .Z(n341) );
  GTECH_NOT U339 ( .A(n340), .Z(n353) );
  GTECH_NAND2 U340 ( .A(I_b[4]), .B(I_a[2]), .Z(n340) );
  GTECH_AND2 U341 ( .A(I_b[6]), .B(I_a[0]), .Z(n351) );
  GTECH_XOR3 U342 ( .A(n333), .B(n334), .C(n320), .Z(n346) );
  GTECH_ADD_ABC U343 ( .A(n356), .B(n357), .C(n358), .COUT(n320) );
  GTECH_NOT U344 ( .A(n359), .Z(n358) );
  GTECH_XOR3 U345 ( .A(n360), .B(n361), .C(n362), .Z(n357) );
  GTECH_XOR3 U346 ( .A(n326), .B(n328), .C(n327), .Z(n334) );
  GTECH_OAI21 U347 ( .A(n363), .B(n364), .C(n365), .Z(n327) );
  GTECH_OAI21 U348 ( .A(n366), .B(n367), .C(n368), .Z(n365) );
  GTECH_NOT U349 ( .A(n367), .Z(n363) );
  GTECH_NOT U350 ( .A(n369), .Z(n328) );
  GTECH_NAND2 U351 ( .A(I_b[3]), .B(I_a[3]), .Z(n369) );
  GTECH_NOT U352 ( .A(n324), .Z(n326) );
  GTECH_NAND2 U353 ( .A(I_b[2]), .B(I_a[4]), .Z(n324) );
  GTECH_NOT U354 ( .A(n370), .Z(n333) );
  GTECH_XOR3 U355 ( .A(n316), .B(n318), .C(n317), .Z(n370) );
  GTECH_OAI21 U356 ( .A(n362), .B(n371), .C(n372), .Z(n317) );
  GTECH_OAI21 U357 ( .A(n360), .B(n373), .C(n361), .Z(n372) );
  GTECH_NOT U358 ( .A(n371), .Z(n360) );
  GTECH_NOT U359 ( .A(n373), .Z(n362) );
  GTECH_NOT U360 ( .A(n374), .Z(n318) );
  GTECH_NAND2 U361 ( .A(I_a[5]), .B(I_b[1]), .Z(n374) );
  GTECH_NOT U362 ( .A(n314), .Z(n316) );
  GTECH_NAND2 U363 ( .A(I_a[6]), .B(I_b[0]), .Z(n314) );
  GTECH_XOR3 U364 ( .A(n350), .B(n336), .C(n335), .Z(N145) );
  GTECH_XNOR2 U365 ( .A(n355), .B(n375), .Z(n335) );
  GTECH_AND2 U366 ( .A(I_b[4]), .B(I_a[1]), .Z(n375) );
  GTECH_NOT U367 ( .A(n376), .Z(n355) );
  GTECH_NAND2 U368 ( .A(I_b[5]), .B(I_a[0]), .Z(n376) );
  GTECH_NOT U369 ( .A(n348), .Z(n336) );
  GTECH_XOR3 U370 ( .A(n359), .B(n356), .C(n377), .Z(n348) );
  GTECH_XOR3 U371 ( .A(n361), .B(n373), .C(n371), .Z(n377) );
  GTECH_NAND2 U372 ( .A(I_a[5]), .B(I_b[0]), .Z(n371) );
  GTECH_OAI21 U373 ( .A(n378), .B(n379), .C(n380), .Z(n373) );
  GTECH_OAI21 U374 ( .A(n381), .B(n382), .C(n383), .Z(n380) );
  GTECH_NOT U375 ( .A(n384), .Z(n361) );
  GTECH_NAND2 U376 ( .A(I_a[4]), .B(I_b[1]), .Z(n384) );
  GTECH_ADD_ABC U377 ( .A(n385), .B(n386), .C(n387), .COUT(n356) );
  GTECH_XOR3 U378 ( .A(n381), .B(n383), .C(n378), .Z(n386) );
  GTECH_NOT U379 ( .A(n382), .Z(n378) );
  GTECH_OA21 U380 ( .A(n388), .B(n389), .C(n390), .Z(n385) );
  GTECH_XOR3 U381 ( .A(n366), .B(n368), .C(n367), .Z(n359) );
  GTECH_OAI21 U382 ( .A(n391), .B(n392), .C(n393), .Z(n367) );
  GTECH_NOT U383 ( .A(n394), .Z(n368) );
  GTECH_NAND2 U384 ( .A(I_b[3]), .B(I_a[2]), .Z(n394) );
  GTECH_NOT U385 ( .A(n364), .Z(n366) );
  GTECH_NAND2 U386 ( .A(I_b[2]), .B(I_a[3]), .Z(n364) );
  GTECH_NOT U387 ( .A(n395), .Z(n350) );
  GTECH_NAND3 U388 ( .A(I_a[0]), .B(n396), .C(I_b[4]), .Z(n395) );
  GTECH_NOT U389 ( .A(n397), .Z(n396) );
  GTECH_XNOR2 U390 ( .A(n398), .B(n397), .Z(N144) );
  GTECH_XOR3 U391 ( .A(n399), .B(n387), .C(n400), .Z(n397) );
  GTECH_OAI21 U392 ( .A(n388), .B(n389), .C(n390), .Z(n400) );
  GTECH_OAI21 U393 ( .A(n401), .B(n402), .C(n403), .Z(n390) );
  GTECH_NOT U394 ( .A(n388), .Z(n402) );
  GTECH_XOR3 U395 ( .A(n404), .B(n405), .C(n393), .Z(n387) );
  GTECH_NAND3 U396 ( .A(I_b[2]), .B(I_a[1]), .C(n406), .Z(n393) );
  GTECH_NOT U397 ( .A(n392), .Z(n405) );
  GTECH_NAND2 U398 ( .A(I_b[3]), .B(I_a[1]), .Z(n392) );
  GTECH_NOT U399 ( .A(n391), .Z(n404) );
  GTECH_NAND2 U400 ( .A(I_b[2]), .B(I_a[2]), .Z(n391) );
  GTECH_XOR3 U401 ( .A(n383), .B(n382), .C(n381), .Z(n399) );
  GTECH_NOT U402 ( .A(n379), .Z(n381) );
  GTECH_NAND2 U403 ( .A(I_a[4]), .B(I_b[0]), .Z(n379) );
  GTECH_OAI21 U404 ( .A(n407), .B(n408), .C(n409), .Z(n382) );
  GTECH_OAI21 U405 ( .A(n410), .B(n411), .C(n412), .Z(n409) );
  GTECH_NOT U406 ( .A(n411), .Z(n407) );
  GTECH_NOT U407 ( .A(n413), .Z(n383) );
  GTECH_NAND2 U408 ( .A(I_a[3]), .B(I_b[1]), .Z(n413) );
  GTECH_AND2 U409 ( .A(I_b[4]), .B(I_a[0]), .Z(n398) );
  GTECH_XOR3 U410 ( .A(n403), .B(n389), .C(n388), .Z(N143) );
  GTECH_XNOR2 U411 ( .A(n406), .B(n414), .Z(n388) );
  GTECH_AND2 U412 ( .A(I_b[2]), .B(I_a[1]), .Z(n414) );
  GTECH_NOT U413 ( .A(n415), .Z(n406) );
  GTECH_NAND2 U414 ( .A(I_b[3]), .B(I_a[0]), .Z(n415) );
  GTECH_NOT U415 ( .A(n401), .Z(n389) );
  GTECH_XOR3 U416 ( .A(n410), .B(n412), .C(n411), .Z(n401) );
  GTECH_OAI21 U417 ( .A(n416), .B(n417), .C(n418), .Z(n411) );
  GTECH_NOT U418 ( .A(n419), .Z(n412) );
  GTECH_NAND2 U419 ( .A(I_b[1]), .B(I_a[2]), .Z(n419) );
  GTECH_NOT U420 ( .A(n408), .Z(n410) );
  GTECH_NAND2 U421 ( .A(I_b[0]), .B(I_a[3]), .Z(n408) );
  GTECH_NOT U422 ( .A(n420), .Z(n403) );
  GTECH_NAND3 U423 ( .A(I_a[0]), .B(n421), .C(I_b[2]), .Z(n420) );
  GTECH_NOT U424 ( .A(n422), .Z(n421) );
  GTECH_XNOR2 U425 ( .A(n423), .B(n422), .Z(N142) );
  GTECH_XOR3 U426 ( .A(n424), .B(n425), .C(n418), .Z(n422) );
  GTECH_NAND3 U427 ( .A(n426), .B(I_b[0]), .C(I_a[1]), .Z(n418) );
  GTECH_NOT U428 ( .A(n416), .Z(n425) );
  GTECH_NAND2 U429 ( .A(I_a[1]), .B(I_b[1]), .Z(n416) );
  GTECH_NOT U430 ( .A(n417), .Z(n424) );
  GTECH_NAND2 U431 ( .A(I_b[0]), .B(I_a[2]), .Z(n417) );
  GTECH_AND2 U432 ( .A(I_b[2]), .B(I_a[0]), .Z(n423) );
  GTECH_XNOR2 U433 ( .A(n426), .B(n427), .Z(N141) );
  GTECH_NAND2 U434 ( .A(I_a[1]), .B(I_b[0]), .Z(n427) );
  GTECH_NOT U435 ( .A(n428), .Z(n426) );
  GTECH_NAND2 U436 ( .A(I_a[0]), .B(I_b[1]), .Z(n428) );
  GTECH_AND2 U437 ( .A(I_a[0]), .B(I_b[0]), .Z(N140) );
endmodule

