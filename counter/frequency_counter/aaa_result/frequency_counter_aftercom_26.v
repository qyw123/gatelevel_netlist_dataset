
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
         seven_segment0_N8, seven_segment0_N6, n13, n14, n15, n16, n17, n21,
         n23, n26, n28, n30, n32, n34, n83, n84, n212, sub_85_carry_2_, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n231, n242, n243, n244, n245, n246, n247, n248,
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
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK2S update_period_reg_11_ ( .J(n84), .K(n84), .TI(N21), .TE(N20), 
        .CP(clk), .CD(n83), .Q(update_period[11]) );
  GTECH_FJK2S update_period_reg_10_ ( .J(n84), .K(n84), .TI(N19), .TE(N20), 
        .CP(clk), .CD(n83), .Q(update_period[10]) );
  GTECH_FJK2S update_period_reg_9_ ( .J(n84), .K(n84), .TI(N18), .TE(N20), 
        .CP(clk), .CD(n83), .Q(update_period[9]) );
  GTECH_FJK2S update_period_reg_8_ ( .J(n84), .K(n84), .TI(N17), .TE(N20), 
        .CP(clk), .CD(n83), .Q(update_period[8]) );
  GTECH_FJK2S update_period_reg_7_ ( .J(n84), .K(n84), .TI(N16), .TE(N20), 
        .CP(clk), .CD(n83), .Q(update_period[7]) );
  GTECH_FJK2S update_period_reg_6_ ( .J(n84), .K(n84), .TI(N15), .TE(N20), 
        .CP(clk), .CD(n83), .Q(update_period[6]) );
  GTECH_FJK2S update_period_reg_5_ ( .J(n84), .K(n84), .TI(N14), .TE(N20), 
        .CP(clk), .CD(n83), .Q(update_period[5]) );
  GTECH_FJK2S update_period_reg_4_ ( .J(n84), .K(n84), .TI(N13), .TE(N20), 
        .CP(clk), .CD(n83), .Q(update_period[4]) );
  GTECH_FJK2S update_period_reg_3_ ( .J(n84), .K(n84), .TI(N12), .TE(N20), 
        .CP(clk), .CD(n83), .Q(update_period[3]) );
  GTECH_FJK2S update_period_reg_2_ ( .J(n84), .K(n84), .TI(N11), .TE(N20), 
        .CP(clk), .CD(n83), .Q(update_period[2]) );
  GTECH_FJK2S update_period_reg_1_ ( .J(n84), .K(n84), .TI(N10), .TE(N20), 
        .CP(clk), .CD(n83), .Q(update_period[1]), .QN(n231) );
  GTECH_FJK2S update_period_reg_0_ ( .J(n84), .K(n84), .TI(N9), .TE(N20), .CP(
        clk), .CD(n83), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK2S edge_counter_reg_5_ ( .J(n84), .K(n84), .TI(N146), .TE(N147), 
        .CP(clk), .CD(n83), .Q(dbg_edge_count[1]), .QN(n229) );
  GTECH_FJK2S edge_counter_reg_6_ ( .J(n84), .K(n84), .TI(N148), .TE(N147), 
        .CP(clk), .CD(n83), .Q(dbg_edge_count[2]), .QN(n228) );
  GTECH_FJK2S state_reg_0_ ( .J(n84), .K(n84), .TI(N150), .TE(N151), .CP(clk), 
        .CD(n83), .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK2S state_reg_1_ ( .J(n84), .K(n84), .TI(N152), .TE(N151), .CP(clk), 
        .CD(n83), .Q(dbg_state[1]), .QN(n15) );
  GTECH_FJK2S clk_counter_reg_10_ ( .J(n84), .K(n84), .TI(N132), .TE(N133), 
        .CP(clk), .CD(n83), .Q(dbg_clk_count[1]), .QN(n227) );
  GTECH_FJK2S clk_counter_reg_0_ ( .J(n84), .K(n84), .TI(N112), .TE(N133), 
        .CP(clk), .CD(n83), .Q(clk_counter[0]), .QN(n226) );
  GTECH_FJK2S clk_counter_reg_1_ ( .J(n84), .K(n84), .TI(N114), .TE(N133), 
        .CP(clk), .CD(n83), .Q(clk_counter[1]), .QN(n225) );
  GTECH_FJK2S clk_counter_reg_2_ ( .J(n84), .K(n84), .TI(N116), .TE(N133), 
        .CP(clk), .CD(n83), .Q(clk_counter[2]), .QN(n224) );
  GTECH_FJK2S clk_counter_reg_3_ ( .J(n84), .K(n84), .TI(N118), .TE(N133), 
        .CP(clk), .CD(n83), .Q(clk_counter[3]), .QN(n223) );
  GTECH_FJK2S clk_counter_reg_4_ ( .J(n84), .K(n84), .TI(N120), .TE(N133), 
        .CP(clk), .CD(n83), .Q(clk_counter[4]), .QN(n222) );
  GTECH_FJK2S clk_counter_reg_5_ ( .J(n84), .K(n84), .TI(N122), .TE(N133), 
        .CP(clk), .CD(n83), .Q(clk_counter[5]), .QN(n221) );
  GTECH_FJK2S clk_counter_reg_6_ ( .J(n84), .K(n84), .TI(N124), .TE(N133), 
        .CP(clk), .CD(n83), .Q(clk_counter[6]), .QN(n220) );
  GTECH_FJK2S clk_counter_reg_7_ ( .J(n84), .K(n84), .TI(N126), .TE(N133), 
        .CP(clk), .CD(n83), .Q(clk_counter[7]), .QN(n219) );
  GTECH_FJK2S clk_counter_reg_8_ ( .J(n84), .K(n84), .TI(N128), .TE(N133), 
        .CP(clk), .CD(n83), .Q(clk_counter[8]), .QN(n218) );
  GTECH_FJK2S clk_counter_reg_9_ ( .J(n84), .K(n84), .TI(N130), .TE(N133), 
        .CP(clk), .CD(n83), .Q(dbg_clk_count[0]), .QN(n217) );
  GTECH_FJK2S clk_counter_reg_11_ ( .J(n84), .K(n84), .TI(N134), .TE(N133), 
        .CP(clk), .CD(n83), .Q(dbg_clk_count[2]), .QN(n216) );
  GTECH_FJK2S update_digits_reg ( .J(n84), .K(n84), .TI(N170), .TE(N169), .CP(
        clk), .CD(n83), .Q(update_digits), .QN(n16) );
  GTECH_FJK2S edge_counter_reg_4_ ( .J(n84), .K(n84), .TI(N144), .TE(N147), 
        .CP(clk), .CD(n83), .Q(dbg_edge_count[0]), .QN(n215) );
  GTECH_FJK2S edge_counter_reg_0_ ( .J(n84), .K(n84), .TI(N136), .TE(N147), 
        .CP(clk), .CD(n83), .Q(N62), .QN(n17) );
  GTECH_FJK2S unit_count_reg_0_ ( .J(n84), .K(n84), .TI(N162), .TE(N167), .CP(
        clk), .CD(n83), .Q(unit_count[0]) );
  GTECH_FJK2S edge_counter_reg_1_ ( .J(n84), .K(n84), .TI(N138), .TE(N147), 
        .CP(clk), .CD(n83), .Q(sub_85_carry_2_) );
  GTECH_FJK2S unit_count_reg_1_ ( .J(n84), .K(n84), .TI(N164), .TE(N167), .CP(
        clk), .CD(n83), .Q(unit_count[1]) );
  GTECH_FJK2S edge_counter_reg_2_ ( .J(n84), .K(n84), .TI(N140), .TE(N147), 
        .CP(clk), .CD(n83), .Q(edge_counter[2]), .QN(n21) );
  GTECH_FJK2S unit_count_reg_2_ ( .J(n84), .K(n84), .TI(N166), .TE(N167), .CP(
        clk), .CD(n83), .Q(unit_count[2]) );
  GTECH_FJK2S edge_counter_reg_3_ ( .J(n84), .K(n84), .TI(N142), .TE(N147), 
        .CP(clk), .CD(n83), .Q(edge_counter[3]), .QN(n23) );
  GTECH_FJK2S unit_count_reg_3_ ( .J(n84), .K(n84), .TI(N168), .TE(N167), .CP(
        clk), .CD(n83), .Q(unit_count[3]) );
  GTECH_FJK2S ten_count_reg_0_ ( .J(n84), .K(n84), .TI(N154), .TE(N159), .CP(
        clk), .CD(n83), .Q(ten_count[0]) );
  GTECH_FJK2S ten_count_reg_1_ ( .J(n84), .K(n84), .TI(N156), .TE(N159), .CP(
        clk), .CD(n83), .Q(ten_count[1]) );
  GTECH_FJK2S ten_count_reg_2_ ( .J(n84), .K(n84), .TI(N158), .TE(N159), .CP(
        clk), .CD(n83), .Q(ten_count[2]) );
  GTECH_FJK2S ten_count_reg_3_ ( .J(n84), .K(n84), .TI(N160), .TE(N159), .CP(
        clk), .CD(n83), .Q(n26) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_0_ ( .J(n84), .K(n84), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .CD(n83), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_1_ ( .J(n84), .K(n84), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .CD(n83), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n28) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_2_ ( .J(n84), .K(n84), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .CD(n83), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_3_ ( .J(n84), .K(n84), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .CD(n83), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n30) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_0_ ( .J(n84), .K(n84), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .CD(n83), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_1_ ( .J(n84), .K(n84), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .CD(n83), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n32) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_2_ ( .J(n84), .K(n84), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .CD(n83), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_3_ ( .J(n84), .K(n84), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .CD(n83), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n34) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n212) );
  GTECH_ZERO U222 ( .Z(n84) );
  GTECH_ONE U223 ( .Z(n83) );
  GTECH_OR_NOT U224 ( .A(reset), .B(n16), .Z(seven_segment0_N9) );
  GTECH_AND2 U225 ( .A(ten_count[0]), .B(n242), .Z(seven_segment0_N8) );
  GTECH_AND2 U226 ( .A(n212), .B(n242), .Z(seven_segment0_N6) );
  GTECH_AND2 U227 ( .A(unit_count[3]), .B(n242), .Z(seven_segment0_N22) );
  GTECH_AND2 U228 ( .A(unit_count[2]), .B(n242), .Z(seven_segment0_N20) );
  GTECH_AND2 U229 ( .A(unit_count[1]), .B(n242), .Z(seven_segment0_N18) );
  GTECH_AND2 U230 ( .A(unit_count[0]), .B(n242), .Z(seven_segment0_N16) );
  GTECH_AND2 U231 ( .A(n26), .B(n242), .Z(seven_segment0_N14) );
  GTECH_AND2 U232 ( .A(ten_count[2]), .B(n242), .Z(seven_segment0_N12) );
  GTECH_AND2 U233 ( .A(ten_count[1]), .B(n242), .Z(seven_segment0_N10) );
  GTECH_OR_NOT U234 ( .A(n243), .B(n244), .Z(segments[6]) );
  GTECH_OR_NOT U235 ( .A(n243), .B(n245), .Z(segments[5]) );
  GTECH_OA21 U236 ( .A(n246), .B(n247), .C(n248), .Z(n245) );
  GTECH_OAI21 U237 ( .A(n249), .B(n250), .C(n251), .Z(segments[3]) );
  GTECH_AND_NOT U238 ( .A(n252), .B(segments[4]), .Z(n251) );
  GTECH_OAI21 U239 ( .A(n253), .B(n250), .C(n248), .Z(segments[4]) );
  GTECH_OR_NOT U240 ( .A(n243), .B(n254), .Z(segments[2]) );
  GTECH_OAI21 U241 ( .A(n255), .B(n256), .C(n252), .Z(n243) );
  GTECH_OR_NOT U242 ( .A(n253), .B(n246), .Z(n256) );
  GTECH_NOT U243 ( .A(n249), .Z(n255) );
  GTECH_NAND3 U244 ( .A(n244), .B(n257), .C(n254), .Z(segments[1]) );
  GTECH_NOT U245 ( .A(n258), .Z(n254) );
  GTECH_OAI21 U246 ( .A(n250), .B(n259), .C(n247), .Z(n258) );
  GTECH_NAND3 U247 ( .A(n260), .B(n259), .C(n246), .Z(n257) );
  GTECH_NAND3 U248 ( .A(n252), .B(n248), .C(n261), .Z(segments[0]) );
  GTECH_OA21 U249 ( .A(n250), .B(n259), .C(n244), .Z(n261) );
  GTECH_NOT U250 ( .A(n262), .Z(n244) );
  GTECH_OAI22 U251 ( .A(n249), .B(n250), .C(n246), .D(n247), .Z(n262) );
  GTECH_NOT U252 ( .A(n253), .Z(n259) );
  GTECH_OR_NOT U253 ( .A(n260), .B(n246), .Z(n250) );
  GTECH_OR_NOT U254 ( .A(n253), .B(n263), .Z(n248) );
  GTECH_NOT U255 ( .A(n247), .Z(n263) );
  GTECH_OR_NOT U256 ( .A(n249), .B(n260), .Z(n247) );
  GTECH_NAND4 U257 ( .A(n249), .B(n253), .C(n260), .D(n246), .Z(n252) );
  GTECH_MUX2 U258 ( .A(n34), .B(n30), .S(n212), .Z(n246) );
  GTECH_MUX2 U259 ( .A(n32), .B(n28), .S(n212), .Z(n260) );
  GTECH_MUX2 U260 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n212), .Z(n253) );
  GTECH_MUX2 U261 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n212), .Z(n249) );
  GTECH_AO21 U262 ( .A(period[0]), .B(n264), .C(reset), .Z(N9) );
  GTECH_AND2 U263 ( .A(period[11]), .B(n264), .Z(N21) );
  GTECH_OR_NOT U264 ( .A(n264), .B(n242), .Z(N20) );
  GTECH_AO21 U265 ( .A(period[10]), .B(n264), .C(reset), .Z(N19) );
  GTECH_AND2 U266 ( .A(period[9]), .B(n264), .Z(N18) );
  GTECH_AND2 U267 ( .A(period[8]), .B(n264), .Z(N17) );
  GTECH_AND2 U268 ( .A(N170), .B(n265), .Z(N168) );
  GTECH_OR_NOT U269 ( .A(n266), .B(n267), .Z(N167) );
  GTECH_AND2 U270 ( .A(N170), .B(n268), .Z(N166) );
  GTECH_AND2 U271 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U272 ( .A(N170), .B(n269), .Z(N162) );
  GTECH_NOT U273 ( .A(n270), .Z(N170) );
  GTECH_OR_NOT U274 ( .A(reset), .B(n266), .Z(n270) );
  GTECH_NOT U275 ( .A(n271), .Z(n266) );
  GTECH_MUX2 U276 ( .A(n272), .B(n273), .S(n26), .Z(N160) );
  GTECH_OAI21 U277 ( .A(ten_count[2]), .B(n274), .C(n275), .Z(n273) );
  GTECH_NOT U278 ( .A(n276), .Z(n275) );
  GTECH_AND2 U279 ( .A(n277), .B(ten_count[2]), .Z(n272) );
  GTECH_AO21 U280 ( .A(period[7]), .B(n264), .C(reset), .Z(N16) );
  GTECH_OAI21 U281 ( .A(n278), .B(n279), .C(n280), .Z(N159) );
  GTECH_MUX2 U282 ( .A(n277), .B(n276), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U283 ( .A(ten_count[1]), .B(n274), .C(n281), .Z(n276) );
  GTECH_NOT U284 ( .A(n282), .Z(n277) );
  GTECH_NAND3 U285 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n282) );
  GTECH_MUX2 U286 ( .A(n283), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U287 ( .A(N152), .B(ten_count[0]), .Z(n283) );
  GTECH_NOT U288 ( .A(n281), .Z(N154) );
  GTECH_OR_NOT U289 ( .A(ten_count[0]), .B(N152), .Z(n281) );
  GTECH_OR_NOT U290 ( .A(n284), .B(n285), .Z(N151) );
  GTECH_OA21 U291 ( .A(n14), .B(n286), .C(n267), .Z(n285) );
  GTECH_NOT U292 ( .A(n287), .Z(n267) );
  GTECH_OAI21 U293 ( .A(n288), .B(n278), .C(n242), .Z(n287) );
  GTECH_AND2 U294 ( .A(period[6]), .B(n264), .Z(N15) );
  GTECH_OAI21 U295 ( .A(n274), .B(n286), .C(n289), .Z(N148) );
  GTECH_MUX2 U296 ( .A(n290), .B(n291), .S(n228), .Z(n289) );
  GTECH_OR3 U297 ( .A(n229), .B(n292), .C(n293), .Z(n291) );
  GTECH_AND_NOT U298 ( .A(n294), .B(n295), .Z(n290) );
  GTECH_MUX2 U299 ( .A(n274), .B(n292), .S(n229), .Z(n294) );
  GTECH_NAND3 U300 ( .A(n296), .B(n271), .C(n280), .Z(N147) );
  GTECH_OA21 U301 ( .A(n284), .B(n297), .C(n242), .Z(n280) );
  GTECH_OR_NOT U302 ( .A(n14), .B(n286), .Z(n297) );
  GTECH_NAND4 U303 ( .A(n229), .B(n228), .C(n215), .D(n298), .Z(n286) );
  GTECH_NOT U304 ( .A(n15), .Z(n284) );
  GTECH_OR_NOT U305 ( .A(n15), .B(n14), .Z(n271) );
  GTECH_NAND3 U306 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n296) );
  GTECH_MUX2 U307 ( .A(n295), .B(n299), .S(n229), .Z(N146) );
  GTECH_OAI21 U308 ( .A(n293), .B(n292), .C(n300), .Z(n299) );
  GTECH_OAI21 U309 ( .A(n301), .B(n292), .C(n302), .Z(n295) );
  GTECH_AO21 U310 ( .A(n298), .B(n215), .C(n274), .Z(n302) );
  GTECH_NOT U311 ( .A(n293), .Z(n301) );
  GTECH_NAND3 U312 ( .A(n303), .B(n265), .C(n304), .Z(n293) );
  GTECH_NOT U313 ( .A(n215), .Z(n303) );
  GTECH_OR_NOT U314 ( .A(n305), .B(n300), .Z(N144) );
  GTECH_NAND3 U315 ( .A(N152), .B(n298), .C(n215), .Z(n300) );
  GTECH_MUX2 U316 ( .A(n306), .B(n307), .S(n215), .Z(n305) );
  GTECH_AND3 U317 ( .A(n265), .B(N150), .C(n304), .Z(n307) );
  GTECH_NOT U318 ( .A(n23), .Z(n265) );
  GTECH_OAI21 U319 ( .A(n298), .B(n274), .C(n308), .Z(n306) );
  GTECH_OAI21 U320 ( .A(n23), .B(n309), .C(N150), .Z(n308) );
  GTECH_OR_NOT U321 ( .A(n23), .B(n310), .Z(n298) );
  GTECH_OAI21 U322 ( .A(n292), .B(n311), .C(n312), .Z(N142) );
  GTECH_MUX2 U323 ( .A(n313), .B(n314), .S(n23), .Z(n312) );
  GTECH_OR_NOT U324 ( .A(n315), .B(N152), .Z(n314) );
  GTECH_NOT U325 ( .A(n274), .Z(N152) );
  GTECH_XOR2 U326 ( .A(n23), .B(n304), .Z(n311) );
  GTECH_NOT U327 ( .A(n309), .Z(n304) );
  GTECH_NAND3 U328 ( .A(n269), .B(n268), .C(sub_85_carry_2_), .Z(n309) );
  GTECH_NOT U329 ( .A(n21), .Z(n268) );
  GTECH_OR_NOT U330 ( .A(n316), .B(n317), .Z(N140) );
  GTECH_MUX2 U331 ( .A(n318), .B(n319), .S(n21), .Z(n317) );
  GTECH_NAND3 U332 ( .A(sub_85_carry_2_), .B(n269), .C(N150), .Z(n319) );
  GTECH_NOT U333 ( .A(n292), .Z(N150) );
  GTECH_NOT U334 ( .A(n17), .Z(n269) );
  GTECH_AND2 U335 ( .A(n320), .B(n321), .Z(n318) );
  GTECH_MUX2 U336 ( .A(n292), .B(n274), .S(sub_85_carry_2_), .Z(n320) );
  GTECH_NOT U337 ( .A(n313), .Z(n316) );
  GTECH_OR_NOT U338 ( .A(n274), .B(n315), .Z(n313) );
  GTECH_NOT U339 ( .A(n310), .Z(n315) );
  GTECH_OR_NOT U340 ( .A(sub_85_carry_2_), .B(n21), .Z(n310) );
  GTECH_AO21 U341 ( .A(period[5]), .B(n264), .C(reset), .Z(N14) );
  GTECH_MUX2 U342 ( .A(n322), .B(n323), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U343 ( .A(n321), .Z(n323) );
  GTECH_OAI21 U344 ( .A(n17), .B(n292), .C(n274), .Z(n322) );
  GTECH_OAI21 U345 ( .A(n17), .B(n274), .C(n321), .Z(N136) );
  GTECH_OR_NOT U346 ( .A(n292), .B(n17), .Z(n321) );
  GTECH_OR_NOT U347 ( .A(reset), .B(n324), .Z(n292) );
  GTECH_OR_NOT U348 ( .A(N169), .B(n15), .Z(n274) );
  GTECH_OR_NOT U349 ( .A(n14), .B(n242), .Z(N169) );
  GTECH_AND2 U350 ( .A(n325), .B(n326), .Z(N134) );
  GTECH_OAI21 U351 ( .A(n227), .B(n327), .C(n216), .Z(n326) );
  GTECH_OR_NOT U352 ( .A(n324), .B(n242), .Z(N133) );
  GTECH_NOT U353 ( .A(reset), .Z(n242) );
  GTECH_NOT U354 ( .A(n279), .Z(n324) );
  GTECH_OR_NOT U355 ( .A(n288), .B(n15), .Z(n279) );
  GTECH_NOT U356 ( .A(n14), .Z(n288) );
  GTECH_AND2 U357 ( .A(n328), .B(n325), .Z(N132) );
  GTECH_XOR2 U358 ( .A(n327), .B(n227), .Z(n328) );
  GTECH_OR_NOT U359 ( .A(n217), .B(n329), .Z(n327) );
  GTECH_NOT U360 ( .A(n330), .Z(n329) );
  GTECH_AND2 U361 ( .A(n331), .B(n325), .Z(N130) );
  GTECH_XOR2 U362 ( .A(n330), .B(n217), .Z(n331) );
  GTECH_OR_NOT U363 ( .A(n218), .B(n332), .Z(n330) );
  GTECH_NOT U364 ( .A(n333), .Z(n332) );
  GTECH_AND2 U365 ( .A(period[4]), .B(n264), .Z(N13) );
  GTECH_AND2 U366 ( .A(n334), .B(n325), .Z(N128) );
  GTECH_XOR2 U367 ( .A(n333), .B(n218), .Z(n334) );
  GTECH_OR_NOT U368 ( .A(n219), .B(n335), .Z(n333) );
  GTECH_NOT U369 ( .A(n336), .Z(n335) );
  GTECH_AND2 U370 ( .A(n337), .B(n325), .Z(N126) );
  GTECH_XOR2 U371 ( .A(n336), .B(n219), .Z(n337) );
  GTECH_OR_NOT U372 ( .A(n220), .B(n338), .Z(n336) );
  GTECH_NOT U373 ( .A(n339), .Z(n338) );
  GTECH_AND2 U374 ( .A(n340), .B(n325), .Z(N124) );
  GTECH_XOR2 U375 ( .A(n339), .B(n220), .Z(n340) );
  GTECH_OR_NOT U376 ( .A(n221), .B(n341), .Z(n339) );
  GTECH_NOT U377 ( .A(n342), .Z(n341) );
  GTECH_AND2 U378 ( .A(n343), .B(n325), .Z(N122) );
  GTECH_XOR2 U379 ( .A(n342), .B(n221), .Z(n343) );
  GTECH_OR_NOT U380 ( .A(n222), .B(n344), .Z(n342) );
  GTECH_NOT U381 ( .A(n345), .Z(n344) );
  GTECH_AND2 U382 ( .A(n346), .B(n325), .Z(N120) );
  GTECH_XOR2 U383 ( .A(n345), .B(n222), .Z(n346) );
  GTECH_OR_NOT U384 ( .A(n223), .B(n347), .Z(n345) );
  GTECH_NOT U385 ( .A(n348), .Z(n347) );
  GTECH_AO21 U386 ( .A(period[3]), .B(n264), .C(reset), .Z(N12) );
  GTECH_AND2 U387 ( .A(n349), .B(n325), .Z(N118) );
  GTECH_XOR2 U388 ( .A(n348), .B(n223), .Z(n349) );
  GTECH_NAND3 U389 ( .A(n350), .B(n351), .C(n352), .Z(n348) );
  GTECH_NOT U390 ( .A(n224), .Z(n352) );
  GTECH_OAI22 U391 ( .A(n224), .B(n353), .C(n354), .D(n355), .Z(N116) );
  GTECH_MUX2 U392 ( .A(n350), .B(n356), .S(n224), .Z(n355) );
  GTECH_OR_NOT U393 ( .A(n226), .B(n350), .Z(n356) );
  GTECH_MUX2 U394 ( .A(N112), .B(n357), .S(n225), .Z(N114) );
  GTECH_AND2 U395 ( .A(n325), .B(n351), .Z(n357) );
  GTECH_NOT U396 ( .A(n353), .Z(N112) );
  GTECH_OR_NOT U397 ( .A(n351), .B(n325), .Z(n353) );
  GTECH_NOT U398 ( .A(n354), .Z(n325) );
  GTECH_OR_NOT U399 ( .A(reset), .B(n278), .Z(n354) );
  GTECH_NOT U400 ( .A(n358), .Z(n278) );
  GTECH_AOI222 U401 ( .A(n359), .B(n360), .C(update_period[11]), .D(n216), .E(
        n361), .F(n362), .Z(n358) );
  GTECH_AO22 U402 ( .A(n227), .B(update_period[10]), .C(n363), .D(n364), .Z(
        n361) );
  GTECH_AO22 U403 ( .A(n217), .B(update_period[9]), .C(n365), .D(n218), .Z(
        n364) );
  GTECH_AND2 U404 ( .A(n366), .B(update_period[8]), .Z(n365) );
  GTECH_AND3 U405 ( .A(n362), .B(n366), .C(n363), .Z(n360) );
  GTECH_OR_NOT U406 ( .A(n227), .B(n367), .Z(n363) );
  GTECH_NOT U407 ( .A(update_period[10]), .Z(n367) );
  GTECH_OR_NOT U408 ( .A(n217), .B(n368), .Z(n366) );
  GTECH_NOT U409 ( .A(update_period[9]), .Z(n368) );
  GTECH_OR_NOT U410 ( .A(n216), .B(n369), .Z(n362) );
  GTECH_NOT U411 ( .A(update_period[11]), .Z(n369) );
  GTECH_OA22 U412 ( .A(n218), .B(update_period[8]), .C(n370), .D(n371), .Z(
        n359) );
  GTECH_AO22 U413 ( .A(n372), .B(n220), .C(n219), .D(update_period[7]), .Z(
        n371) );
  GTECH_AND2 U414 ( .A(n373), .B(update_period[6]), .Z(n372) );
  GTECH_OAI2N2 U415 ( .A(n374), .B(n375), .C(n376), .D(n377), .Z(n370) );
  GTECH_ADD_ABC U416 ( .A(n378), .B(n221), .C(update_period[5]), .COUT(n377)
         );
  GTECH_AND2 U417 ( .A(update_period[4]), .B(n222), .Z(n378) );
  GTECH_OAI21 U418 ( .A(update_period[4]), .B(n222), .C(n376), .Z(n375) );
  GTECH_NOT U419 ( .A(n379), .Z(n376) );
  GTECH_OAI21 U420 ( .A(update_period[6]), .B(n220), .C(n373), .Z(n379) );
  GTECH_OR_NOT U421 ( .A(n219), .B(n380), .Z(n373) );
  GTECH_NOT U422 ( .A(update_period[7]), .Z(n380) );
  GTECH_OAI22 U423 ( .A(update_period[5]), .B(n221), .C(n381), .D(n382), .Z(
        n374) );
  GTECH_AO22 U424 ( .A(n383), .B(n224), .C(n223), .D(update_period[3]), .Z(
        n382) );
  GTECH_AND2 U425 ( .A(n384), .B(update_period[2]), .Z(n383) );
  GTECH_AND3 U426 ( .A(n385), .B(n386), .C(n384), .Z(n381) );
  GTECH_OR_NOT U427 ( .A(n223), .B(n387), .Z(n384) );
  GTECH_NOT U428 ( .A(update_period[3]), .Z(n387) );
  GTECH_OAI21 U429 ( .A(n388), .B(n350), .C(n231), .Z(n386) );
  GTECH_NOT U430 ( .A(n225), .Z(n350) );
  GTECH_OA21 U431 ( .A(n224), .B(update_period[2]), .C(n389), .Z(n385) );
  GTECH_OR_NOT U432 ( .A(n225), .B(n388), .Z(n389) );
  GTECH_OR_NOT U433 ( .A(n351), .B(update_period[0]), .Z(n388) );
  GTECH_NOT U434 ( .A(n226), .Z(n351) );
  GTECH_AO21 U435 ( .A(period[2]), .B(n264), .C(reset), .Z(N11) );
  GTECH_AO21 U436 ( .A(period[1]), .B(n264), .C(reset), .Z(N10) );
  GTECH_NOT U437 ( .A(n390), .Z(n264) );
  GTECH_OR_NOT U438 ( .A(reset), .B(period_load), .Z(n390) );
endmodule

