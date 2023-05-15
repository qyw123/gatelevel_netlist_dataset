
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
         n25, n26, n27, n28, n29, n30, n31, n32, n82, n83, n210, n214,
         sub_85_carry_2_, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n231, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK2S update_period_reg_11_ ( .J(n83), .K(n83), .TI(N21), .TE(N20), 
        .CP(clk), .CD(n82), .Q(update_period[11]) );
  GTECH_FJK2S update_period_reg_10_ ( .J(n83), .K(n83), .TI(N19), .TE(N20), 
        .CP(clk), .CD(n82), .Q(update_period[10]) );
  GTECH_FJK2S update_period_reg_9_ ( .J(n83), .K(n83), .TI(N18), .TE(N20), 
        .CP(clk), .CD(n82), .Q(update_period[9]) );
  GTECH_FJK2S update_period_reg_8_ ( .J(n83), .K(n83), .TI(N17), .TE(N20), 
        .CP(clk), .CD(n82), .Q(update_period[8]) );
  GTECH_FJK2S update_period_reg_7_ ( .J(n83), .K(n83), .TI(N16), .TE(N20), 
        .CP(clk), .CD(n82), .Q(update_period[7]) );
  GTECH_FJK2S update_period_reg_6_ ( .J(n83), .K(n83), .TI(N15), .TE(N20), 
        .CP(clk), .CD(n82), .Q(update_period[6]) );
  GTECH_FJK2S update_period_reg_5_ ( .J(n83), .K(n83), .TI(N14), .TE(N20), 
        .CP(clk), .CD(n82), .Q(update_period[5]) );
  GTECH_FJK2S update_period_reg_4_ ( .J(n83), .K(n83), .TI(N13), .TE(N20), 
        .CP(clk), .CD(n82), .Q(update_period[4]) );
  GTECH_FJK2S update_period_reg_3_ ( .J(n83), .K(n83), .TI(N12), .TE(N20), 
        .CP(clk), .CD(n82), .Q(update_period[3]) );
  GTECH_FJK2S update_period_reg_2_ ( .J(n83), .K(n83), .TI(N11), .TE(N20), 
        .CP(clk), .CD(n82), .Q(update_period[2]) );
  GTECH_FJK2S update_period_reg_1_ ( .J(n83), .K(n83), .TI(N10), .TE(N20), 
        .CP(clk), .CD(n82), .Q(update_period[1]), .QN(n231) );
  GTECH_FJK2S update_period_reg_0_ ( .J(n83), .K(n83), .TI(N9), .TE(N20), .CP(
        clk), .CD(n82), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK2S edge_counter_reg_5_ ( .J(n83), .K(n83), .TI(N146), .TE(N147), 
        .CP(clk), .CD(n82), .Q(dbg_edge_count[1]), .QN(n229) );
  GTECH_FJK2S edge_counter_reg_6_ ( .J(n83), .K(n83), .TI(N148), .TE(N147), 
        .CP(clk), .CD(n82), .Q(dbg_edge_count[2]), .QN(n228) );
  GTECH_FJK2S state_reg_0_ ( .J(n83), .K(n83), .TI(N150), .TE(N151), .CP(clk), 
        .CD(n82), .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK2S state_reg_1_ ( .J(n83), .K(n83), .TI(N152), .TE(N151), .CP(clk), 
        .CD(n82), .Q(dbg_state[1]), .QN(n214) );
  GTECH_FJK2S update_digits_reg ( .J(n83), .K(n83), .TI(N170), .TE(N169), .CP(
        clk), .CD(n82), .Q(update_digits), .QN(n15) );
  GTECH_FJK2S clk_counter_reg_10_ ( .J(n83), .K(n83), .TI(N132), .TE(N133), 
        .CP(clk), .CD(n82), .Q(dbg_clk_count[1]), .QN(n227) );
  GTECH_FJK2S clk_counter_reg_0_ ( .J(n83), .K(n83), .TI(N112), .TE(N133), 
        .CP(clk), .CD(n82), .Q(clk_counter[0]), .QN(n226) );
  GTECH_FJK2S clk_counter_reg_1_ ( .J(n83), .K(n83), .TI(N114), .TE(N133), 
        .CP(clk), .CD(n82), .Q(clk_counter[1]), .QN(n225) );
  GTECH_FJK2S clk_counter_reg_2_ ( .J(n83), .K(n83), .TI(N116), .TE(N133), 
        .CP(clk), .CD(n82), .Q(clk_counter[2]), .QN(n224) );
  GTECH_FJK2S clk_counter_reg_3_ ( .J(n83), .K(n83), .TI(N118), .TE(N133), 
        .CP(clk), .CD(n82), .Q(clk_counter[3]), .QN(n223) );
  GTECH_FJK2S clk_counter_reg_4_ ( .J(n83), .K(n83), .TI(N120), .TE(N133), 
        .CP(clk), .CD(n82), .Q(clk_counter[4]), .QN(n222) );
  GTECH_FJK2S clk_counter_reg_5_ ( .J(n83), .K(n83), .TI(N122), .TE(N133), 
        .CP(clk), .CD(n82), .Q(clk_counter[5]), .QN(n221) );
  GTECH_FJK2S clk_counter_reg_6_ ( .J(n83), .K(n83), .TI(N124), .TE(N133), 
        .CP(clk), .CD(n82), .Q(clk_counter[6]), .QN(n220) );
  GTECH_FJK2S clk_counter_reg_7_ ( .J(n83), .K(n83), .TI(N126), .TE(N133), 
        .CP(clk), .CD(n82), .Q(clk_counter[7]), .QN(n219) );
  GTECH_FJK2S clk_counter_reg_8_ ( .J(n83), .K(n83), .TI(N128), .TE(N133), 
        .CP(clk), .CD(n82), .Q(clk_counter[8]), .QN(n218) );
  GTECH_FJK2S clk_counter_reg_9_ ( .J(n83), .K(n83), .TI(N130), .TE(N133), 
        .CP(clk), .CD(n82), .Q(dbg_clk_count[0]), .QN(n217) );
  GTECH_FJK2S clk_counter_reg_11_ ( .J(n83), .K(n83), .TI(N134), .TE(N133), 
        .CP(clk), .CD(n82), .Q(dbg_clk_count[2]), .QN(n216) );
  GTECH_FJK2S edge_counter_reg_4_ ( .J(n83), .K(n83), .TI(N144), .TE(N147), 
        .CP(clk), .CD(n82), .Q(dbg_edge_count[0]), .QN(n215) );
  GTECH_FJK2S edge_counter_reg_0_ ( .J(n83), .K(n83), .TI(N136), .TE(N147), 
        .CP(clk), .CD(n82), .Q(N62), .QN(n16) );
  GTECH_FJK2S unit_count_reg_0_ ( .J(n83), .K(n83), .TI(N162), .TE(N167), .CP(
        clk), .CD(n82), .Q(unit_count[0]) );
  GTECH_FJK2S edge_counter_reg_1_ ( .J(n83), .K(n83), .TI(N138), .TE(N147), 
        .CP(clk), .CD(n82), .Q(sub_85_carry_2_) );
  GTECH_FJK2S unit_count_reg_1_ ( .J(n83), .K(n83), .TI(N164), .TE(N167), .CP(
        clk), .CD(n82), .Q(unit_count[1]) );
  GTECH_FJK2S edge_counter_reg_2_ ( .J(n83), .K(n83), .TI(N140), .TE(N147), 
        .CP(clk), .CD(n82), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK2S unit_count_reg_2_ ( .J(n83), .K(n83), .TI(N166), .TE(N167), .CP(
        clk), .CD(n82), .Q(unit_count[2]) );
  GTECH_FJK2S edge_counter_reg_3_ ( .J(n83), .K(n83), .TI(N142), .TE(N147), 
        .CP(clk), .CD(n82), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK2S unit_count_reg_3_ ( .J(n83), .K(n83), .TI(N168), .TE(N167), .CP(
        clk), .CD(n82), .Q(unit_count[3]) );
  GTECH_FJK2S ten_count_reg_0_ ( .J(n83), .K(n83), .TI(N154), .TE(N159), .CP(
        clk), .CD(n82), .Q(ten_count[0]) );
  GTECH_FJK2S ten_count_reg_1_ ( .J(n83), .K(n83), .TI(N156), .TE(N159), .CP(
        clk), .CD(n82), .Q(ten_count[1]) );
  GTECH_FJK2S ten_count_reg_2_ ( .J(n83), .K(n83), .TI(N158), .TE(N159), .CP(
        clk), .CD(n82), .Q(ten_count[2]) );
  GTECH_FJK2S ten_count_reg_3_ ( .J(n83), .K(n83), .TI(N160), .TE(N159), .CP(
        clk), .CD(n82), .Q(ten_count[3]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_0_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .CD(n82), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n25) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_1_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .CD(n82), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n26) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_2_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .CD(n82), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n27) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_3_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .CD(n82), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_0_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .CD(n82), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n29) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_1_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .CD(n82), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n30) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_2_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .CD(n82), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n31) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_3_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .CD(n82), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n210) );
  GTECH_ZERO U223 ( .Z(n83) );
  GTECH_ONE U224 ( .Z(n82) );
  GTECH_NAND2 U225 ( .A(n15), .B(n242), .Z(seven_segment0_N9) );
  GTECH_AND_NOT U226 ( .A(ten_count[0]), .B(reset), .Z(seven_segment0_N8) );
  GTECH_AND_NOT U227 ( .A(n210), .B(reset), .Z(seven_segment0_N6) );
  GTECH_AND_NOT U228 ( .A(unit_count[3]), .B(reset), .Z(seven_segment0_N22) );
  GTECH_AND_NOT U229 ( .A(unit_count[2]), .B(reset), .Z(seven_segment0_N20) );
  GTECH_AND_NOT U230 ( .A(unit_count[1]), .B(reset), .Z(seven_segment0_N18) );
  GTECH_AND_NOT U231 ( .A(unit_count[0]), .B(reset), .Z(seven_segment0_N16) );
  GTECH_AND_NOT U232 ( .A(ten_count[3]), .B(reset), .Z(seven_segment0_N14) );
  GTECH_AND_NOT U233 ( .A(ten_count[2]), .B(reset), .Z(seven_segment0_N12) );
  GTECH_AND_NOT U234 ( .A(ten_count[1]), .B(reset), .Z(seven_segment0_N10) );
  GTECH_NAND2 U235 ( .A(n243), .B(n244), .Z(segments[6]) );
  GTECH_OA21 U236 ( .A(n245), .B(n246), .C(n247), .Z(n244) );
  GTECH_OA21 U237 ( .A(n248), .B(n249), .C(n250), .Z(n243) );
  GTECH_NAND2 U238 ( .A(n250), .B(n251), .Z(segments[5]) );
  GTECH_OAI21 U239 ( .A(n248), .B(n249), .C(n252), .Z(segments[3]) );
  GTECH_AND_NOT U240 ( .A(n253), .B(segments[4]), .Z(n252) );
  GTECH_OAI21 U241 ( .A(n254), .B(n246), .C(n255), .Z(segments[4]) );
  GTECH_OA21 U242 ( .A(n256), .B(n257), .C(n247), .Z(n255) );
  GTECH_NAND3 U243 ( .A(n246), .B(n249), .C(n250), .Z(segments[2]) );
  GTECH_NOT U244 ( .A(n258), .Z(n250) );
  GTECH_NAND2 U245 ( .A(n253), .B(n257), .Z(n258) );
  GTECH_NAND3 U246 ( .A(n246), .B(n249), .C(n259), .Z(segments[1]) );
  GTECH_OA21 U247 ( .A(n260), .B(n257), .C(n247), .Z(n259) );
  GTECH_NAND3 U248 ( .A(n261), .B(n248), .C(n245), .Z(n257) );
  GTECH_NAND4 U249 ( .A(n247), .B(n251), .C(n253), .D(n249), .Z(segments[0])
         );
  GTECH_NAND3 U250 ( .A(n254), .B(n260), .C(n245), .Z(n249) );
  GTECH_NAND4 U251 ( .A(n245), .B(n256), .C(n254), .D(n248), .Z(n253) );
  GTECH_NOT U252 ( .A(n262), .Z(n248) );
  GTECH_NOT U253 ( .A(n261), .Z(n254) );
  GTECH_OAI21 U254 ( .A(n261), .B(n263), .C(n264), .Z(n251) );
  GTECH_NOT U255 ( .A(n246), .Z(n264) );
  GTECH_NAND2 U256 ( .A(n256), .B(n262), .Z(n246) );
  GTECH_NOT U257 ( .A(n245), .Z(n263) );
  GTECH_NAND4 U258 ( .A(n262), .B(n245), .C(n261), .D(n260), .Z(n247) );
  GTECH_NOT U259 ( .A(n256), .Z(n260) );
  GTECH_MUX2 U260 ( .A(n30), .B(n26), .S(n210), .Z(n256) );
  GTECH_MUX2 U261 ( .A(n29), .B(n25), .S(n210), .Z(n261) );
  GTECH_MUX2 U262 ( .A(n32), .B(n28), .S(n210), .Z(n245) );
  GTECH_MUX2 U263 ( .A(n31), .B(n27), .S(n210), .Z(n262) );
  GTECH_AO21 U264 ( .A(period[0]), .B(n265), .C(reset), .Z(N9) );
  GTECH_AND_NOT U265 ( .A(period[11]), .B(n266), .Z(N21) );
  GTECH_NAND2 U266 ( .A(n242), .B(n266), .Z(N20) );
  GTECH_AO21 U267 ( .A(period[10]), .B(n265), .C(reset), .Z(N19) );
  GTECH_AND_NOT U268 ( .A(period[9]), .B(n266), .Z(N18) );
  GTECH_AND_NOT U269 ( .A(period[8]), .B(n266), .Z(N17) );
  GTECH_AND_NOT U270 ( .A(N170), .B(n22), .Z(N168) );
  GTECH_NAND2 U271 ( .A(n267), .B(n268), .Z(N167) );
  GTECH_AND_NOT U272 ( .A(N170), .B(n20), .Z(N166) );
  GTECH_AND_NOT U273 ( .A(sub_85_carry_2_), .B(n269), .Z(N164) );
  GTECH_AND_NOT U274 ( .A(N170), .B(n16), .Z(N162) );
  GTECH_NOT U275 ( .A(n269), .Z(N170) );
  GTECH_NAND2 U276 ( .A(n270), .B(n242), .Z(n269) );
  GTECH_NOT U277 ( .A(n268), .Z(n270) );
  GTECH_AND_NOT U278 ( .A(N152), .B(n271), .Z(N160) );
  GTECH_XOR2 U279 ( .A(n272), .B(ten_count[3]), .Z(n271) );
  GTECH_OR_NOT U280 ( .A(n273), .B(ten_count[2]), .Z(n272) );
  GTECH_AO21 U281 ( .A(period[7]), .B(n265), .C(reset), .Z(N16) );
  GTECH_OAI21 U282 ( .A(n274), .B(n275), .C(n276), .Z(N159) );
  GTECH_AND_NOT U283 ( .A(N152), .B(n277), .Z(N158) );
  GTECH_XOR2 U284 ( .A(n273), .B(ten_count[2]), .Z(n277) );
  GTECH_AND_NOT U285 ( .A(n278), .B(n279), .Z(N156) );
  GTECH_OA21 U286 ( .A(ten_count[0]), .B(ten_count[1]), .C(n273), .Z(n278) );
  GTECH_NAND2 U287 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n273) );
  GTECH_AND_NOT U288 ( .A(N152), .B(ten_count[0]), .Z(N154) );
  GTECH_NAND2 U289 ( .A(n280), .B(n214), .Z(N151) );
  GTECH_OA21 U290 ( .A(n14), .B(n281), .C(n267), .Z(n280) );
  GTECH_NOT U291 ( .A(n282), .Z(n267) );
  GTECH_OAI21 U292 ( .A(n283), .B(n274), .C(n242), .Z(n282) );
  GTECH_AND_NOT U293 ( .A(period[6]), .B(n266), .Z(N15) );
  GTECH_OAI21 U294 ( .A(n279), .B(n281), .C(n284), .Z(N148) );
  GTECH_MUX2 U295 ( .A(n285), .B(n286), .S(n228), .Z(n284) );
  GTECH_OR3 U296 ( .A(n229), .B(n287), .C(n288), .Z(n286) );
  GTECH_AND_NOT U297 ( .A(n289), .B(n290), .Z(n285) );
  GTECH_MUX2 U298 ( .A(n279), .B(n287), .S(n229), .Z(n289) );
  GTECH_NAND3 U299 ( .A(n291), .B(n268), .C(n276), .Z(N147) );
  GTECH_AND_NOT U300 ( .A(n242), .B(n292), .Z(n276) );
  GTECH_AND3 U301 ( .A(n283), .B(n214), .C(n281), .Z(n292) );
  GTECH_NAND4 U302 ( .A(n229), .B(n228), .C(n215), .D(n293), .Z(n281) );
  GTECH_NAND2 U303 ( .A(n14), .B(n294), .Z(n268) );
  GTECH_NOT U304 ( .A(n214), .Z(n294) );
  GTECH_NAND3 U305 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n291) );
  GTECH_MUX2 U306 ( .A(n290), .B(n295), .S(n229), .Z(N146) );
  GTECH_OAI21 U307 ( .A(n288), .B(n287), .C(n296), .Z(n295) );
  GTECH_OAI21 U308 ( .A(n297), .B(n287), .C(n298), .Z(n290) );
  GTECH_AO21 U309 ( .A(n293), .B(n215), .C(n279), .Z(n298) );
  GTECH_NOT U310 ( .A(n288), .Z(n297) );
  GTECH_NAND3 U311 ( .A(n299), .B(n300), .C(n301), .Z(n288) );
  GTECH_NOT U312 ( .A(n215), .Z(n299) );
  GTECH_NAND2 U313 ( .A(n302), .B(n296), .Z(N144) );
  GTECH_NAND3 U314 ( .A(N152), .B(n293), .C(n215), .Z(n296) );
  GTECH_MUX2 U315 ( .A(n303), .B(n304), .S(n215), .Z(n302) );
  GTECH_NAND3 U316 ( .A(n301), .B(n300), .C(N150), .Z(n304) );
  GTECH_OA21 U317 ( .A(n279), .B(n293), .C(n305), .Z(n303) );
  GTECH_OAI21 U318 ( .A(n22), .B(n306), .C(N150), .Z(n305) );
  GTECH_NAND2 U319 ( .A(n307), .B(n300), .Z(n293) );
  GTECH_NOT U320 ( .A(n22), .Z(n300) );
  GTECH_OAI21 U321 ( .A(n287), .B(n308), .C(n309), .Z(N142) );
  GTECH_MUX2 U322 ( .A(n310), .B(n311), .S(n22), .Z(n309) );
  GTECH_NAND2 U323 ( .A(N152), .B(n307), .Z(n311) );
  GTECH_XOR2 U324 ( .A(n22), .B(n301), .Z(n308) );
  GTECH_NOT U325 ( .A(n306), .Z(n301) );
  GTECH_NAND3 U326 ( .A(n312), .B(n313), .C(sub_85_carry_2_), .Z(n306) );
  GTECH_NOT U327 ( .A(n20), .Z(n313) );
  GTECH_NAND2 U328 ( .A(n314), .B(n310), .Z(N140) );
  GTECH_NAND2 U329 ( .A(n315), .B(N152), .Z(n310) );
  GTECH_NOT U330 ( .A(n279), .Z(N152) );
  GTECH_NOT U331 ( .A(n307), .Z(n315) );
  GTECH_NAND2 U332 ( .A(n20), .B(n316), .Z(n307) );
  GTECH_NOT U333 ( .A(sub_85_carry_2_), .Z(n316) );
  GTECH_MUX2 U334 ( .A(n317), .B(n318), .S(n20), .Z(n314) );
  GTECH_NAND3 U335 ( .A(sub_85_carry_2_), .B(n312), .C(N150), .Z(n318) );
  GTECH_NOT U336 ( .A(n16), .Z(n312) );
  GTECH_AND_NOT U337 ( .A(n319), .B(n320), .Z(n317) );
  GTECH_MUX2 U338 ( .A(n287), .B(n279), .S(sub_85_carry_2_), .Z(n319) );
  GTECH_AO21 U339 ( .A(period[5]), .B(n265), .C(reset), .Z(N14) );
  GTECH_MUX2 U340 ( .A(n321), .B(n320), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U341 ( .A(n322), .Z(n320) );
  GTECH_OAI21 U342 ( .A(n16), .B(n287), .C(n279), .Z(n321) );
  GTECH_OAI21 U343 ( .A(n16), .B(n279), .C(n322), .Z(N136) );
  GTECH_NAND2 U344 ( .A(n16), .B(N150), .Z(n322) );
  GTECH_NOT U345 ( .A(n287), .Z(N150) );
  GTECH_NAND2 U346 ( .A(n323), .B(n242), .Z(n287) );
  GTECH_NOT U347 ( .A(n275), .Z(n323) );
  GTECH_NAND2 U348 ( .A(n214), .B(n324), .Z(n279) );
  GTECH_NOT U349 ( .A(N169), .Z(n324) );
  GTECH_NAND2 U350 ( .A(n242), .B(n283), .Z(N169) );
  GTECH_NOT U351 ( .A(n14), .Z(n283) );
  GTECH_OA21 U352 ( .A(n325), .B(n326), .C(n327), .Z(N134) );
  GTECH_NOR2 U353 ( .A(n328), .B(n227), .Z(n326) );
  GTECH_NAND2 U354 ( .A(n242), .B(n275), .Z(N133) );
  GTECH_NAND2 U355 ( .A(n214), .B(n14), .Z(n275) );
  GTECH_AND_NOT U356 ( .A(n329), .B(n330), .Z(N132) );
  GTECH_XOR2 U357 ( .A(n328), .B(n227), .Z(n329) );
  GTECH_NAND2 U358 ( .A(n331), .B(n332), .Z(n328) );
  GTECH_NOT U359 ( .A(n333), .Z(n331) );
  GTECH_AND_NOT U360 ( .A(n334), .B(n330), .Z(N130) );
  GTECH_XOR2 U361 ( .A(n333), .B(n217), .Z(n334) );
  GTECH_NAND2 U362 ( .A(n335), .B(n336), .Z(n333) );
  GTECH_NOT U363 ( .A(n218), .Z(n336) );
  GTECH_NOT U364 ( .A(n337), .Z(n335) );
  GTECH_AND_NOT U365 ( .A(period[4]), .B(n266), .Z(N13) );
  GTECH_AND_NOT U366 ( .A(n338), .B(n330), .Z(N128) );
  GTECH_XOR2 U367 ( .A(n337), .B(n218), .Z(n338) );
  GTECH_NAND2 U368 ( .A(n339), .B(n340), .Z(n337) );
  GTECH_NOT U369 ( .A(n341), .Z(n339) );
  GTECH_AND_NOT U370 ( .A(n342), .B(n330), .Z(N126) );
  GTECH_XOR2 U371 ( .A(n341), .B(n219), .Z(n342) );
  GTECH_NAND2 U372 ( .A(n343), .B(n344), .Z(n341) );
  GTECH_NOT U373 ( .A(n220), .Z(n344) );
  GTECH_NOT U374 ( .A(n345), .Z(n343) );
  GTECH_AND_NOT U375 ( .A(n346), .B(n330), .Z(N124) );
  GTECH_XOR2 U376 ( .A(n345), .B(n220), .Z(n346) );
  GTECH_NAND2 U377 ( .A(n347), .B(n348), .Z(n345) );
  GTECH_NOT U378 ( .A(n221), .Z(n348) );
  GTECH_NOT U379 ( .A(n349), .Z(n347) );
  GTECH_AND_NOT U380 ( .A(n350), .B(n330), .Z(N122) );
  GTECH_XOR2 U381 ( .A(n349), .B(n221), .Z(n350) );
  GTECH_NAND2 U382 ( .A(n351), .B(n352), .Z(n349) );
  GTECH_NOT U383 ( .A(n353), .Z(n351) );
  GTECH_AND_NOT U384 ( .A(n354), .B(n330), .Z(N120) );
  GTECH_XOR2 U385 ( .A(n353), .B(n222), .Z(n354) );
  GTECH_NAND2 U386 ( .A(n355), .B(n356), .Z(n353) );
  GTECH_NOT U387 ( .A(n357), .Z(n355) );
  GTECH_AO21 U388 ( .A(period[3]), .B(n265), .C(reset), .Z(N12) );
  GTECH_AND_NOT U389 ( .A(n358), .B(n330), .Z(N118) );
  GTECH_XOR2 U390 ( .A(n357), .B(n223), .Z(n358) );
  GTECH_NAND3 U391 ( .A(n359), .B(n360), .C(n361), .Z(n357) );
  GTECH_NOT U392 ( .A(n224), .Z(n361) );
  GTECH_OAI22 U393 ( .A(n224), .B(n362), .C(n330), .D(n363), .Z(N116) );
  GTECH_MUX2 U394 ( .A(n359), .B(n364), .S(n224), .Z(n363) );
  GTECH_NAND2 U395 ( .A(n359), .B(n360), .Z(n364) );
  GTECH_NOT U396 ( .A(n226), .Z(n360) );
  GTECH_MUX2 U397 ( .A(N112), .B(n365), .S(n225), .Z(N114) );
  GTECH_AND_NOT U398 ( .A(n327), .B(n226), .Z(n365) );
  GTECH_NOT U399 ( .A(n362), .Z(N112) );
  GTECH_NAND2 U400 ( .A(n327), .B(n226), .Z(n362) );
  GTECH_NOT U401 ( .A(n330), .Z(n327) );
  GTECH_NAND2 U402 ( .A(n274), .B(n242), .Z(n330) );
  GTECH_NOT U403 ( .A(n366), .Z(n274) );
  GTECH_AOI222 U404 ( .A(n367), .B(n368), .C(update_period[11]), .D(n216), .E(
        n369), .F(n370), .Z(n366) );
  GTECH_OAI2N2 U405 ( .A(n371), .B(n372), .C(n373), .D(n374), .Z(n369) );
  GTECH_OAI21 U406 ( .A(n375), .B(n332), .C(n376), .Z(n374) );
  GTECH_NAND3 U407 ( .A(n377), .B(update_period[8]), .C(n218), .Z(n376) );
  GTECH_AND3 U408 ( .A(n377), .B(n373), .C(n370), .Z(n368) );
  GTECH_NAND2 U409 ( .A(n378), .B(n325), .Z(n370) );
  GTECH_NOT U410 ( .A(n216), .Z(n325) );
  GTECH_NOT U411 ( .A(update_period[11]), .Z(n378) );
  GTECH_NAND2 U412 ( .A(n372), .B(n371), .Z(n373) );
  GTECH_NOT U413 ( .A(n227), .Z(n371) );
  GTECH_NOT U414 ( .A(update_period[10]), .Z(n372) );
  GTECH_NAND2 U415 ( .A(n332), .B(n375), .Z(n377) );
  GTECH_NOT U416 ( .A(update_period[9]), .Z(n375) );
  GTECH_NOT U417 ( .A(n217), .Z(n332) );
  GTECH_OA22 U418 ( .A(n218), .B(update_period[8]), .C(n379), .D(n380), .Z(
        n367) );
  GTECH_OAI21 U419 ( .A(n340), .B(n381), .C(n382), .Z(n380) );
  GTECH_NAND3 U420 ( .A(n383), .B(update_period[6]), .C(n220), .Z(n382) );
  GTECH_OAI2N2 U421 ( .A(n384), .B(n385), .C(n386), .D(n387), .Z(n379) );
  GTECH_ADD_ABC U422 ( .A(n388), .B(n221), .C(update_period[5]), .COUT(n387)
         );
  GTECH_AND_NOT U423 ( .A(update_period[4]), .B(n352), .Z(n388) );
  GTECH_NOT U424 ( .A(n222), .Z(n352) );
  GTECH_OAI21 U425 ( .A(update_period[4]), .B(n222), .C(n386), .Z(n385) );
  GTECH_NOT U426 ( .A(n389), .Z(n386) );
  GTECH_OAI21 U427 ( .A(update_period[6]), .B(n220), .C(n383), .Z(n389) );
  GTECH_NAND2 U428 ( .A(n381), .B(n340), .Z(n383) );
  GTECH_NOT U429 ( .A(n219), .Z(n340) );
  GTECH_NOT U430 ( .A(update_period[7]), .Z(n381) );
  GTECH_OAI22 U431 ( .A(update_period[5]), .B(n221), .C(n390), .D(n391), .Z(
        n384) );
  GTECH_OAI21 U432 ( .A(n356), .B(n392), .C(n393), .Z(n391) );
  GTECH_NAND3 U433 ( .A(n394), .B(update_period[2]), .C(n224), .Z(n393) );
  GTECH_AND3 U434 ( .A(n395), .B(n396), .C(n394), .Z(n390) );
  GTECH_NAND2 U435 ( .A(n392), .B(n356), .Z(n394) );
  GTECH_NOT U436 ( .A(n223), .Z(n356) );
  GTECH_NOT U437 ( .A(update_period[3]), .Z(n392) );
  GTECH_OAI21 U438 ( .A(n397), .B(n359), .C(n231), .Z(n396) );
  GTECH_NOT U439 ( .A(n225), .Z(n359) );
  GTECH_OA21 U440 ( .A(n224), .B(update_period[2]), .C(n398), .Z(n395) );
  GTECH_OR_NOT U441 ( .A(n225), .B(n397), .Z(n398) );
  GTECH_NAND2 U442 ( .A(update_period[0]), .B(n226), .Z(n397) );
  GTECH_AO21 U443 ( .A(period[2]), .B(n265), .C(reset), .Z(N11) );
  GTECH_AO21 U444 ( .A(period[1]), .B(n265), .C(reset), .Z(N10) );
  GTECH_NOT U445 ( .A(n266), .Z(n265) );
  GTECH_NAND2 U446 ( .A(period_load), .B(n242), .Z(n266) );
  GTECH_NOT U447 ( .A(reset), .Z(n242) );
endmodule

