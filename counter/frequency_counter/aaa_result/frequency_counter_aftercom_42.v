
module frequency_counter ( clk, reset, signal, period, period_load, segments, 
        digit, dbg_state, dbg_clk_count, dbg_edge_count );
  input [11:0] period;
  output [6:0] segments;
  output [1:0] dbg_state;
  output [2:0] dbg_clk_count;
  output [2:0] dbg_edge_count;
  input clk, reset, signal, period_load;
  output digit;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         update_digits, N62, N112, N114, N116, N118, N120, N122, N124, N126,
         N128, N130, N132, N133, N134, N136, N138, N140, N142, N144, N146,
         N147, N148, N150, N151, N152, N154, N156, N158, N159, N160, N162,
         N164, N166, N167, N168, N169, N170, edge_detect0_q2, edge_detect0_q1,
         edge_detect0_q0, seven_segment0_N22, seven_segment0_N20,
         seven_segment0_N18, seven_segment0_N16, seven_segment0_N14,
         seven_segment0_N12, seven_segment0_N10, seven_segment0_N9,
         seven_segment0_N8, seven_segment0_N6, n13, n14, n15, n16, n20, n22,
         n27, n28, n29, n31, n32, n33, n86, n87, n214, n217, sub_85_carry_2_,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n234, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK2S update_period_reg_11_ ( .J(n87), .K(n87), .TI(N21), .TE(N20), 
        .CP(clk), .CD(n86), .Q(update_period[11]) );
  GTECH_FJK2S update_period_reg_10_ ( .J(n87), .K(n87), .TI(N19), .TE(N20), 
        .CP(clk), .CD(n86), .Q(update_period[10]) );
  GTECH_FJK2S update_period_reg_9_ ( .J(n87), .K(n87), .TI(N18), .TE(N20), 
        .CP(clk), .CD(n86), .Q(update_period[9]) );
  GTECH_FJK2S update_period_reg_8_ ( .J(n87), .K(n87), .TI(N17), .TE(N20), 
        .CP(clk), .CD(n86), .Q(update_period[8]) );
  GTECH_FJK2S update_period_reg_7_ ( .J(n87), .K(n87), .TI(N16), .TE(N20), 
        .CP(clk), .CD(n86), .Q(update_period[7]) );
  GTECH_FJK2S update_period_reg_6_ ( .J(n87), .K(n87), .TI(N15), .TE(N20), 
        .CP(clk), .CD(n86), .Q(update_period[6]) );
  GTECH_FJK2S update_period_reg_5_ ( .J(n87), .K(n87), .TI(N14), .TE(N20), 
        .CP(clk), .CD(n86), .Q(update_period[5]) );
  GTECH_FJK2S update_period_reg_4_ ( .J(n87), .K(n87), .TI(N13), .TE(N20), 
        .CP(clk), .CD(n86), .Q(update_period[4]) );
  GTECH_FJK2S update_period_reg_3_ ( .J(n87), .K(n87), .TI(N12), .TE(N20), 
        .CP(clk), .CD(n86), .Q(update_period[3]) );
  GTECH_FJK2S update_period_reg_2_ ( .J(n87), .K(n87), .TI(N11), .TE(N20), 
        .CP(clk), .CD(n86), .Q(update_period[2]) );
  GTECH_FJK2S update_period_reg_1_ ( .J(n87), .K(n87), .TI(N10), .TE(N20), 
        .CP(clk), .CD(n86), .Q(update_period[1]), .QN(n234) );
  GTECH_FJK2S update_period_reg_0_ ( .J(n87), .K(n87), .TI(N9), .TE(N20), .CP(
        clk), .CD(n86), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK2S edge_counter_reg_5_ ( .J(n87), .K(n87), .TI(N146), .TE(N147), 
        .CP(clk), .CD(n86), .Q(dbg_edge_count[1]), .QN(n232) );
  GTECH_FJK2S edge_counter_reg_6_ ( .J(n87), .K(n87), .TI(N148), .TE(N147), 
        .CP(clk), .CD(n86), .Q(dbg_edge_count[2]), .QN(n231) );
  GTECH_FJK2S state_reg_0_ ( .J(n87), .K(n87), .TI(N150), .TE(N151), .CP(clk), 
        .CD(n86), .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK2S state_reg_1_ ( .J(n87), .K(n87), .TI(N152), .TE(N151), .CP(clk), 
        .CD(n86), .Q(dbg_state[1]), .QN(n217) );
  GTECH_FJK2S update_digits_reg ( .J(n87), .K(n87), .TI(N170), .TE(N169), .CP(
        clk), .CD(n86), .Q(update_digits), .QN(n15) );
  GTECH_FJK2S clk_counter_reg_10_ ( .J(n87), .K(n87), .TI(N132), .TE(N133), 
        .CP(clk), .CD(n86), .Q(dbg_clk_count[1]), .QN(n230) );
  GTECH_FJK2S clk_counter_reg_0_ ( .J(n87), .K(n87), .TI(N112), .TE(N133), 
        .CP(clk), .CD(n86), .Q(clk_counter[0]), .QN(n229) );
  GTECH_FJK2S clk_counter_reg_1_ ( .J(n87), .K(n87), .TI(N114), .TE(N133), 
        .CP(clk), .CD(n86), .Q(clk_counter[1]), .QN(n228) );
  GTECH_FJK2S clk_counter_reg_2_ ( .J(n87), .K(n87), .TI(N116), .TE(N133), 
        .CP(clk), .CD(n86), .Q(clk_counter[2]), .QN(n227) );
  GTECH_FJK2S clk_counter_reg_3_ ( .J(n87), .K(n87), .TI(N118), .TE(N133), 
        .CP(clk), .CD(n86), .Q(clk_counter[3]), .QN(n226) );
  GTECH_FJK2S clk_counter_reg_4_ ( .J(n87), .K(n87), .TI(N120), .TE(N133), 
        .CP(clk), .CD(n86), .Q(clk_counter[4]), .QN(n225) );
  GTECH_FJK2S clk_counter_reg_5_ ( .J(n87), .K(n87), .TI(N122), .TE(N133), 
        .CP(clk), .CD(n86), .Q(clk_counter[5]), .QN(n224) );
  GTECH_FJK2S clk_counter_reg_6_ ( .J(n87), .K(n87), .TI(N124), .TE(N133), 
        .CP(clk), .CD(n86), .Q(clk_counter[6]), .QN(n223) );
  GTECH_FJK2S clk_counter_reg_7_ ( .J(n87), .K(n87), .TI(N126), .TE(N133), 
        .CP(clk), .CD(n86), .Q(clk_counter[7]), .QN(n222) );
  GTECH_FJK2S clk_counter_reg_8_ ( .J(n87), .K(n87), .TI(N128), .TE(N133), 
        .CP(clk), .CD(n86), .Q(clk_counter[8]), .QN(n221) );
  GTECH_FJK2S clk_counter_reg_9_ ( .J(n87), .K(n87), .TI(N130), .TE(N133), 
        .CP(clk), .CD(n86), .Q(dbg_clk_count[0]), .QN(n220) );
  GTECH_FJK2S clk_counter_reg_11_ ( .J(n87), .K(n87), .TI(N134), .TE(N133), 
        .CP(clk), .CD(n86), .Q(dbg_clk_count[2]), .QN(n219) );
  GTECH_FJK2S edge_counter_reg_4_ ( .J(n87), .K(n87), .TI(N144), .TE(N147), 
        .CP(clk), .CD(n86), .Q(dbg_edge_count[0]), .QN(n218) );
  GTECH_FJK2S edge_counter_reg_0_ ( .J(n87), .K(n87), .TI(N136), .TE(N147), 
        .CP(clk), .CD(n86), .Q(N62), .QN(n16) );
  GTECH_FJK2S unit_count_reg_0_ ( .J(n87), .K(n87), .TI(N162), .TE(N167), .CP(
        clk), .CD(n86), .Q(unit_count[0]) );
  GTECH_FJK2S edge_counter_reg_1_ ( .J(n87), .K(n87), .TI(N138), .TE(N147), 
        .CP(clk), .CD(n86), .Q(sub_85_carry_2_) );
  GTECH_FJK2S unit_count_reg_1_ ( .J(n87), .K(n87), .TI(N164), .TE(N167), .CP(
        clk), .CD(n86), .Q(unit_count[1]) );
  GTECH_FJK2S edge_counter_reg_2_ ( .J(n87), .K(n87), .TI(N140), .TE(N147), 
        .CP(clk), .CD(n86), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK2S unit_count_reg_2_ ( .J(n87), .K(n87), .TI(N166), .TE(N167), .CP(
        clk), .CD(n86), .Q(unit_count[2]) );
  GTECH_FJK2S edge_counter_reg_3_ ( .J(n87), .K(n87), .TI(N142), .TE(N147), 
        .CP(clk), .CD(n86), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK2S unit_count_reg_3_ ( .J(n87), .K(n87), .TI(N168), .TE(N167), .CP(
        clk), .CD(n86), .Q(unit_count[3]) );
  GTECH_FJK2S ten_count_reg_0_ ( .J(n87), .K(n87), .TI(N154), .TE(N159), .CP(
        clk), .CD(n86), .Q(ten_count[0]) );
  GTECH_FJK2S ten_count_reg_1_ ( .J(n87), .K(n87), .TI(N156), .TE(N159), .CP(
        clk), .CD(n86), .Q(ten_count[1]) );
  GTECH_FJK2S ten_count_reg_2_ ( .J(n87), .K(n87), .TI(N158), .TE(N159), .CP(
        clk), .CD(n86), .Q(ten_count[2]) );
  GTECH_FJK2S ten_count_reg_3_ ( .J(n87), .K(n87), .TI(N160), .TE(N159), .CP(
        clk), .CD(n86), .Q(ten_count[3]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_0_ ( .J(n87), .K(n87), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .CD(n86), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_1_ ( .J(n87), .K(n87), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .CD(n86), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n27) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_2_ ( .J(n87), .K(n87), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .CD(n86), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n28) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_3_ ( .J(n87), .K(n87), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .CD(n86), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n29) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_0_ ( .J(n87), .K(n87), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .CD(n86), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_1_ ( .J(n87), .K(n87), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .CD(n86), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n31) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_2_ ( .J(n87), .K(n87), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .CD(n86), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n32) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_3_ ( .J(n87), .K(n87), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .CD(n86), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n33) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n214) );
  GTECH_ZERO U226 ( .Z(n87) );
  GTECH_ONE U227 ( .Z(n86) );
  GTECH_NAND2 U228 ( .A(n15), .B(n245), .Z(seven_segment0_N9) );
  GTECH_AND2 U229 ( .A(ten_count[0]), .B(n245), .Z(seven_segment0_N8) );
  GTECH_AND2 U230 ( .A(n214), .B(n245), .Z(seven_segment0_N6) );
  GTECH_AND2 U231 ( .A(unit_count[3]), .B(n245), .Z(seven_segment0_N22) );
  GTECH_AND2 U232 ( .A(unit_count[2]), .B(n245), .Z(seven_segment0_N20) );
  GTECH_AND2 U233 ( .A(unit_count[1]), .B(n245), .Z(seven_segment0_N18) );
  GTECH_AND2 U234 ( .A(unit_count[0]), .B(n245), .Z(seven_segment0_N16) );
  GTECH_AND2 U235 ( .A(ten_count[3]), .B(n245), .Z(seven_segment0_N14) );
  GTECH_AND2 U236 ( .A(ten_count[2]), .B(n245), .Z(seven_segment0_N12) );
  GTECH_AND2 U237 ( .A(ten_count[1]), .B(n245), .Z(seven_segment0_N10) );
  GTECH_NAND2 U238 ( .A(n246), .B(n247), .Z(segments[6]) );
  GTECH_NOT U239 ( .A(n248), .Z(segments[4]) );
  GTECH_NAND3 U240 ( .A(n247), .B(n248), .C(n249), .Z(segments[3]) );
  GTECH_OAI21 U241 ( .A(n250), .B(n251), .C(n252), .Z(n248) );
  GTECH_NOT U242 ( .A(n253), .Z(n251) );
  GTECH_NAND2 U243 ( .A(n254), .B(n255), .Z(segments[2]) );
  GTECH_NOT U244 ( .A(segments[5]), .Z(n255) );
  GTECH_OAI21 U245 ( .A(n256), .B(n253), .C(n246), .Z(segments[5]) );
  GTECH_AND2 U246 ( .A(n257), .B(n249), .Z(n246) );
  GTECH_MUX2 U247 ( .A(n253), .B(n258), .S(n259), .Z(n257) );
  GTECH_NAND2 U248 ( .A(n252), .B(n260), .Z(n258) );
  GTECH_NAND3 U249 ( .A(n261), .B(n247), .C(n254), .Z(segments[1]) );
  GTECH_NOT U250 ( .A(n262), .Z(n254) );
  GTECH_OAI21 U251 ( .A(n263), .B(n252), .C(n253), .Z(n262) );
  GTECH_NAND3 U252 ( .A(n259), .B(n252), .C(n264), .Z(n261) );
  GTECH_NAND3 U253 ( .A(n249), .B(n247), .C(n265), .Z(segments[0]) );
  GTECH_OA22 U254 ( .A(n266), .B(n253), .C(n263), .D(n252), .Z(n265) );
  GTECH_NOT U255 ( .A(n256), .Z(n252) );
  GTECH_NAND2 U256 ( .A(n264), .B(n267), .Z(n253) );
  GTECH_NAND2 U257 ( .A(n250), .B(n267), .Z(n247) );
  GTECH_NOT U258 ( .A(n263), .Z(n250) );
  GTECH_NAND2 U259 ( .A(n259), .B(n268), .Z(n263) );
  GTECH_NOT U260 ( .A(n264), .Z(n268) );
  GTECH_NAND3 U261 ( .A(n264), .B(n260), .C(n266), .Z(n249) );
  GTECH_NOT U262 ( .A(n269), .Z(n266) );
  GTECH_NAND2 U263 ( .A(n256), .B(n259), .Z(n269) );
  GTECH_MUX2 U264 ( .A(n33), .B(n29), .S(n214), .Z(n259) );
  GTECH_MUX2 U265 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n214), .Z(n256) );
  GTECH_NOT U266 ( .A(n267), .Z(n260) );
  GTECH_MUX2 U267 ( .A(n32), .B(n28), .S(n214), .Z(n267) );
  GTECH_MUX2 U268 ( .A(n31), .B(n27), .S(n214), .Z(n264) );
  GTECH_NOT U269 ( .A(n270), .Z(N9) );
  GTECH_AOI21 U270 ( .A(period[0]), .B(n271), .C(reset), .Z(n270) );
  GTECH_AND2 U271 ( .A(period[11]), .B(n271), .Z(N21) );
  GTECH_NAND2 U272 ( .A(n245), .B(n272), .Z(N20) );
  GTECH_NOT U273 ( .A(n273), .Z(N19) );
  GTECH_AOI21 U274 ( .A(period[10]), .B(n271), .C(reset), .Z(n273) );
  GTECH_AND2 U275 ( .A(period[9]), .B(n271), .Z(N18) );
  GTECH_AND2 U276 ( .A(period[8]), .B(n271), .Z(N17) );
  GTECH_AND2 U277 ( .A(N170), .B(n274), .Z(N168) );
  GTECH_NAND2 U278 ( .A(n275), .B(n276), .Z(N167) );
  GTECH_AND2 U279 ( .A(N170), .B(n277), .Z(N166) );
  GTECH_AND2 U280 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U281 ( .A(N170), .B(n278), .Z(N162) );
  GTECH_NOT U282 ( .A(n279), .Z(N170) );
  GTECH_NAND2 U283 ( .A(n280), .B(n245), .Z(n279) );
  GTECH_NOT U284 ( .A(n276), .Z(n280) );
  GTECH_OAI22 U285 ( .A(n281), .B(n282), .C(n283), .D(n284), .Z(N160) );
  GTECH_MUX2 U286 ( .A(n281), .B(n285), .S(ten_count[2]), .Z(n284) );
  GTECH_NAND2 U287 ( .A(n286), .B(n281), .Z(n285) );
  GTECH_NOT U288 ( .A(ten_count[3]), .Z(n281) );
  GTECH_NOT U289 ( .A(n287), .Z(N16) );
  GTECH_AOI21 U290 ( .A(period[7]), .B(n271), .C(reset), .Z(n287) );
  GTECH_OAI21 U291 ( .A(n288), .B(n289), .C(n290), .Z(N159) );
  GTECH_MUX2 U292 ( .A(n291), .B(n292), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U293 ( .A(n282), .Z(n292) );
  GTECH_NAND2 U294 ( .A(N152), .B(n293), .Z(n282) );
  GTECH_AND2 U295 ( .A(N152), .B(n286), .Z(n291) );
  GTECH_NOT U296 ( .A(n293), .Z(n286) );
  GTECH_NAND2 U297 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n293) );
  GTECH_MUX2 U298 ( .A(n294), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U299 ( .A(N152), .B(ten_count[0]), .Z(n294) );
  GTECH_NOT U300 ( .A(n295), .Z(N154) );
  GTECH_NAND2 U301 ( .A(N152), .B(n296), .Z(n295) );
  GTECH_NOT U302 ( .A(ten_count[0]), .Z(n296) );
  GTECH_NAND2 U303 ( .A(n297), .B(n217), .Z(N151) );
  GTECH_OA21 U304 ( .A(n14), .B(n298), .C(n275), .Z(n297) );
  GTECH_NOT U305 ( .A(n299), .Z(n275) );
  GTECH_OAI21 U306 ( .A(n300), .B(n288), .C(n245), .Z(n299) );
  GTECH_AND2 U307 ( .A(period[6]), .B(n271), .Z(N15) );
  GTECH_OAI21 U308 ( .A(n283), .B(n298), .C(n301), .Z(N148) );
  GTECH_MUX2 U309 ( .A(n302), .B(n303), .S(n231), .Z(n301) );
  GTECH_OR3 U310 ( .A(n232), .B(n304), .C(n305), .Z(n303) );
  GTECH_AND_NOT U311 ( .A(n306), .B(n307), .Z(n302) );
  GTECH_MUX2 U312 ( .A(n283), .B(n304), .S(n232), .Z(n306) );
  GTECH_NAND3 U313 ( .A(n308), .B(n276), .C(n290), .Z(N147) );
  GTECH_AND2 U314 ( .A(n245), .B(n309), .Z(n290) );
  GTECH_NAND3 U315 ( .A(n300), .B(n217), .C(n298), .Z(n309) );
  GTECH_NAND4 U316 ( .A(n232), .B(n231), .C(n218), .D(n310), .Z(n298) );
  GTECH_NAND2 U317 ( .A(n14), .B(n311), .Z(n276) );
  GTECH_NOT U318 ( .A(n217), .Z(n311) );
  GTECH_NAND3 U319 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n308) );
  GTECH_MUX2 U320 ( .A(n307), .B(n312), .S(n232), .Z(N146) );
  GTECH_OAI21 U321 ( .A(n305), .B(n304), .C(n313), .Z(n312) );
  GTECH_OAI22 U322 ( .A(n314), .B(n283), .C(n315), .D(n304), .Z(n307) );
  GTECH_NOT U323 ( .A(n305), .Z(n315) );
  GTECH_NAND3 U324 ( .A(n316), .B(n274), .C(n317), .Z(n305) );
  GTECH_NOT U325 ( .A(n218), .Z(n316) );
  GTECH_AND2 U326 ( .A(n310), .B(n218), .Z(n314) );
  GTECH_NAND2 U327 ( .A(n318), .B(n313), .Z(N144) );
  GTECH_NAND3 U328 ( .A(N152), .B(n310), .C(n218), .Z(n313) );
  GTECH_MUX2 U329 ( .A(n319), .B(n320), .S(n218), .Z(n318) );
  GTECH_NAND3 U330 ( .A(n317), .B(n274), .C(N150), .Z(n320) );
  GTECH_OA21 U331 ( .A(n283), .B(n310), .C(n321), .Z(n319) );
  GTECH_OAI21 U332 ( .A(n22), .B(n322), .C(N150), .Z(n321) );
  GTECH_NAND2 U333 ( .A(n323), .B(n274), .Z(n310) );
  GTECH_NOT U334 ( .A(n22), .Z(n274) );
  GTECH_OAI21 U335 ( .A(n304), .B(n324), .C(n325), .Z(N142) );
  GTECH_MUX2 U336 ( .A(n326), .B(n327), .S(n22), .Z(n325) );
  GTECH_NAND2 U337 ( .A(N152), .B(n323), .Z(n327) );
  GTECH_XOR2 U338 ( .A(n22), .B(n317), .Z(n324) );
  GTECH_NOT U339 ( .A(n322), .Z(n317) );
  GTECH_NAND3 U340 ( .A(n278), .B(n277), .C(sub_85_carry_2_), .Z(n322) );
  GTECH_NOT U341 ( .A(n20), .Z(n277) );
  GTECH_NAND2 U342 ( .A(n328), .B(n326), .Z(N140) );
  GTECH_NAND2 U343 ( .A(n329), .B(N152), .Z(n326) );
  GTECH_NOT U344 ( .A(n283), .Z(N152) );
  GTECH_NOT U345 ( .A(n323), .Z(n329) );
  GTECH_NAND2 U346 ( .A(n20), .B(n330), .Z(n323) );
  GTECH_NOT U347 ( .A(sub_85_carry_2_), .Z(n330) );
  GTECH_MUX2 U348 ( .A(n331), .B(n332), .S(n20), .Z(n328) );
  GTECH_NAND3 U349 ( .A(sub_85_carry_2_), .B(n278), .C(N150), .Z(n332) );
  GTECH_NOT U350 ( .A(n16), .Z(n278) );
  GTECH_AND2 U351 ( .A(n333), .B(n334), .Z(n331) );
  GTECH_MUX2 U352 ( .A(n304), .B(n283), .S(sub_85_carry_2_), .Z(n333) );
  GTECH_NOT U353 ( .A(n335), .Z(N14) );
  GTECH_AOI21 U354 ( .A(period[5]), .B(n271), .C(reset), .Z(n335) );
  GTECH_MUX2 U355 ( .A(n336), .B(n337), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U356 ( .A(n334), .Z(n337) );
  GTECH_OAI21 U357 ( .A(n16), .B(n304), .C(n283), .Z(n336) );
  GTECH_OAI21 U358 ( .A(n16), .B(n283), .C(n334), .Z(N136) );
  GTECH_NAND2 U359 ( .A(n16), .B(N150), .Z(n334) );
  GTECH_NOT U360 ( .A(n304), .Z(N150) );
  GTECH_NAND2 U361 ( .A(n338), .B(n245), .Z(n304) );
  GTECH_NOT U362 ( .A(n289), .Z(n338) );
  GTECH_NAND2 U363 ( .A(n217), .B(n339), .Z(n283) );
  GTECH_NOT U364 ( .A(N169), .Z(n339) );
  GTECH_NAND2 U365 ( .A(n245), .B(n300), .Z(N169) );
  GTECH_NOT U366 ( .A(n14), .Z(n300) );
  GTECH_AND2 U367 ( .A(n340), .B(n341), .Z(N134) );
  GTECH_OAI21 U368 ( .A(n230), .B(n342), .C(n219), .Z(n341) );
  GTECH_NAND2 U369 ( .A(n245), .B(n289), .Z(N133) );
  GTECH_NAND2 U370 ( .A(n217), .B(n14), .Z(n289) );
  GTECH_AND2 U371 ( .A(n343), .B(n340), .Z(N132) );
  GTECH_XOR2 U372 ( .A(n342), .B(n230), .Z(n343) );
  GTECH_NAND2 U373 ( .A(n344), .B(n345), .Z(n342) );
  GTECH_NOT U374 ( .A(n346), .Z(n344) );
  GTECH_AND2 U375 ( .A(n347), .B(n340), .Z(N130) );
  GTECH_XOR2 U376 ( .A(n346), .B(n220), .Z(n347) );
  GTECH_NAND2 U377 ( .A(n348), .B(n349), .Z(n346) );
  GTECH_NOT U378 ( .A(n221), .Z(n349) );
  GTECH_NOT U379 ( .A(n350), .Z(n348) );
  GTECH_AND2 U380 ( .A(period[4]), .B(n271), .Z(N13) );
  GTECH_AND2 U381 ( .A(n351), .B(n340), .Z(N128) );
  GTECH_XOR2 U382 ( .A(n350), .B(n221), .Z(n351) );
  GTECH_NAND2 U383 ( .A(n352), .B(n353), .Z(n350) );
  GTECH_NOT U384 ( .A(n354), .Z(n352) );
  GTECH_AND2 U385 ( .A(n355), .B(n340), .Z(N126) );
  GTECH_XOR2 U386 ( .A(n354), .B(n222), .Z(n355) );
  GTECH_NAND2 U387 ( .A(n356), .B(n357), .Z(n354) );
  GTECH_NOT U388 ( .A(n223), .Z(n357) );
  GTECH_NOT U389 ( .A(n358), .Z(n356) );
  GTECH_AND2 U390 ( .A(n359), .B(n340), .Z(N124) );
  GTECH_XOR2 U391 ( .A(n358), .B(n223), .Z(n359) );
  GTECH_NAND2 U392 ( .A(n360), .B(n361), .Z(n358) );
  GTECH_NOT U393 ( .A(n224), .Z(n361) );
  GTECH_NOT U394 ( .A(n362), .Z(n360) );
  GTECH_AND2 U395 ( .A(n363), .B(n340), .Z(N122) );
  GTECH_XOR2 U396 ( .A(n362), .B(n224), .Z(n363) );
  GTECH_NAND2 U397 ( .A(n364), .B(n365), .Z(n362) );
  GTECH_NOT U398 ( .A(n225), .Z(n365) );
  GTECH_NOT U399 ( .A(n366), .Z(n364) );
  GTECH_AND2 U400 ( .A(n367), .B(n340), .Z(N120) );
  GTECH_XOR2 U401 ( .A(n366), .B(n225), .Z(n367) );
  GTECH_NAND2 U402 ( .A(n368), .B(n369), .Z(n366) );
  GTECH_NOT U403 ( .A(n370), .Z(n368) );
  GTECH_NOT U404 ( .A(n371), .Z(N12) );
  GTECH_AOI21 U405 ( .A(period[3]), .B(n271), .C(reset), .Z(n371) );
  GTECH_AND2 U406 ( .A(n372), .B(n340), .Z(N118) );
  GTECH_XOR2 U407 ( .A(n370), .B(n226), .Z(n372) );
  GTECH_NAND3 U408 ( .A(n373), .B(n374), .C(n375), .Z(n370) );
  GTECH_NOT U409 ( .A(n227), .Z(n375) );
  GTECH_OAI22 U410 ( .A(n227), .B(n376), .C(n377), .D(n378), .Z(N116) );
  GTECH_MUX2 U411 ( .A(n373), .B(n379), .S(n227), .Z(n378) );
  GTECH_NAND2 U412 ( .A(n373), .B(n374), .Z(n379) );
  GTECH_MUX2 U413 ( .A(N112), .B(n380), .S(n228), .Z(N114) );
  GTECH_AND2 U414 ( .A(n340), .B(n374), .Z(n380) );
  GTECH_NOT U415 ( .A(n229), .Z(n374) );
  GTECH_NOT U416 ( .A(n376), .Z(N112) );
  GTECH_NAND2 U417 ( .A(n340), .B(n229), .Z(n376) );
  GTECH_NOT U418 ( .A(n377), .Z(n340) );
  GTECH_NAND2 U419 ( .A(n288), .B(n245), .Z(n377) );
  GTECH_NOT U420 ( .A(n381), .Z(n288) );
  GTECH_AOI222 U421 ( .A(n382), .B(n383), .C(update_period[11]), .D(n219), .E(
        n384), .F(n385), .Z(n381) );
  GTECH_OAI2N2 U422 ( .A(n386), .B(n387), .C(n388), .D(n389), .Z(n384) );
  GTECH_OAI21 U423 ( .A(n390), .B(n345), .C(n391), .Z(n389) );
  GTECH_NAND3 U424 ( .A(n392), .B(update_period[8]), .C(n221), .Z(n391) );
  GTECH_AND3 U425 ( .A(n385), .B(n392), .C(n388), .Z(n383) );
  GTECH_NAND2 U426 ( .A(n387), .B(n386), .Z(n388) );
  GTECH_NOT U427 ( .A(n230), .Z(n386) );
  GTECH_NOT U428 ( .A(update_period[10]), .Z(n387) );
  GTECH_NAND2 U429 ( .A(n390), .B(n345), .Z(n392) );
  GTECH_NOT U430 ( .A(n220), .Z(n345) );
  GTECH_NOT U431 ( .A(update_period[9]), .Z(n390) );
  GTECH_NAND2 U432 ( .A(n393), .B(n394), .Z(n385) );
  GTECH_NOT U433 ( .A(n219), .Z(n394) );
  GTECH_NOT U434 ( .A(update_period[11]), .Z(n393) );
  GTECH_OA22 U435 ( .A(n221), .B(update_period[8]), .C(n395), .D(n396), .Z(
        n382) );
  GTECH_OAI21 U436 ( .A(n353), .B(n397), .C(n398), .Z(n396) );
  GTECH_NAND3 U437 ( .A(n399), .B(update_period[6]), .C(n223), .Z(n398) );
  GTECH_OAI2N2 U438 ( .A(n400), .B(n401), .C(n402), .D(n403), .Z(n395) );
  GTECH_ADD_ABC U439 ( .A(n404), .B(n224), .C(update_period[5]), .COUT(n403)
         );
  GTECH_AND2 U440 ( .A(update_period[4]), .B(n225), .Z(n404) );
  GTECH_OAI21 U441 ( .A(update_period[4]), .B(n225), .C(n402), .Z(n401) );
  GTECH_NOT U442 ( .A(n405), .Z(n402) );
  GTECH_OAI21 U443 ( .A(update_period[6]), .B(n223), .C(n399), .Z(n405) );
  GTECH_NAND2 U444 ( .A(n397), .B(n353), .Z(n399) );
  GTECH_NOT U445 ( .A(n222), .Z(n353) );
  GTECH_NOT U446 ( .A(update_period[7]), .Z(n397) );
  GTECH_OAI22 U447 ( .A(update_period[5]), .B(n224), .C(n406), .D(n407), .Z(
        n400) );
  GTECH_OAI21 U448 ( .A(n369), .B(n408), .C(n409), .Z(n407) );
  GTECH_NAND3 U449 ( .A(n410), .B(update_period[2]), .C(n227), .Z(n409) );
  GTECH_AND3 U450 ( .A(n411), .B(n412), .C(n410), .Z(n406) );
  GTECH_NAND2 U451 ( .A(n408), .B(n369), .Z(n410) );
  GTECH_NOT U452 ( .A(n226), .Z(n369) );
  GTECH_NOT U453 ( .A(update_period[3]), .Z(n408) );
  GTECH_OAI21 U454 ( .A(n413), .B(n373), .C(n234), .Z(n412) );
  GTECH_NOT U455 ( .A(n228), .Z(n373) );
  GTECH_OA21 U456 ( .A(n227), .B(update_period[2]), .C(n414), .Z(n411) );
  GTECH_OR_NOT U457 ( .A(n228), .B(n413), .Z(n414) );
  GTECH_NAND2 U458 ( .A(update_period[0]), .B(n229), .Z(n413) );
  GTECH_NOT U459 ( .A(n415), .Z(N11) );
  GTECH_AOI21 U460 ( .A(period[2]), .B(n271), .C(reset), .Z(n415) );
  GTECH_NOT U461 ( .A(n416), .Z(N10) );
  GTECH_AOI21 U462 ( .A(period[1]), .B(n271), .C(reset), .Z(n416) );
  GTECH_NOT U463 ( .A(n272), .Z(n271) );
  GTECH_NAND2 U464 ( .A(period_load), .B(n245), .Z(n272) );
  GTECH_NOT U465 ( .A(reset), .Z(n245) );
endmodule

