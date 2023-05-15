
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
         n81, n82, n209, n213, sub_85_carry_2_, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n230,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK2S update_period_reg_11_ ( .J(n82), .K(n82), .TI(N21), .TE(N20), 
        .CP(clk), .CD(n81), .Q(update_period[11]) );
  GTECH_FJK2S update_period_reg_10_ ( .J(n82), .K(n82), .TI(N19), .TE(N20), 
        .CP(clk), .CD(n81), .Q(update_period[10]) );
  GTECH_FJK2S update_period_reg_9_ ( .J(n82), .K(n82), .TI(N18), .TE(N20), 
        .CP(clk), .CD(n81), .Q(update_period[9]) );
  GTECH_FJK2S update_period_reg_8_ ( .J(n82), .K(n82), .TI(N17), .TE(N20), 
        .CP(clk), .CD(n81), .Q(update_period[8]) );
  GTECH_FJK2S update_period_reg_7_ ( .J(n82), .K(n82), .TI(N16), .TE(N20), 
        .CP(clk), .CD(n81), .Q(update_period[7]) );
  GTECH_FJK2S update_period_reg_6_ ( .J(n82), .K(n82), .TI(N15), .TE(N20), 
        .CP(clk), .CD(n81), .Q(update_period[6]) );
  GTECH_FJK2S update_period_reg_5_ ( .J(n82), .K(n82), .TI(N14), .TE(N20), 
        .CP(clk), .CD(n81), .Q(update_period[5]) );
  GTECH_FJK2S update_period_reg_4_ ( .J(n82), .K(n82), .TI(N13), .TE(N20), 
        .CP(clk), .CD(n81), .Q(update_period[4]) );
  GTECH_FJK2S update_period_reg_3_ ( .J(n82), .K(n82), .TI(N12), .TE(N20), 
        .CP(clk), .CD(n81), .Q(update_period[3]) );
  GTECH_FJK2S update_period_reg_2_ ( .J(n82), .K(n82), .TI(N11), .TE(N20), 
        .CP(clk), .CD(n81), .Q(update_period[2]) );
  GTECH_FJK2S update_period_reg_1_ ( .J(n82), .K(n82), .TI(N10), .TE(N20), 
        .CP(clk), .CD(n81), .Q(update_period[1]), .QN(n230) );
  GTECH_FJK2S update_period_reg_0_ ( .J(n82), .K(n82), .TI(N9), .TE(N20), .CP(
        clk), .CD(n81), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK2S edge_counter_reg_5_ ( .J(n82), .K(n82), .TI(N146), .TE(N147), 
        .CP(clk), .CD(n81), .Q(dbg_edge_count[1]), .QN(n228) );
  GTECH_FJK2S edge_counter_reg_6_ ( .J(n82), .K(n82), .TI(N148), .TE(N147), 
        .CP(clk), .CD(n81), .Q(dbg_edge_count[2]), .QN(n227) );
  GTECH_FJK2S state_reg_0_ ( .J(n82), .K(n82), .TI(N150), .TE(N151), .CP(clk), 
        .CD(n81), .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK2S state_reg_1_ ( .J(n82), .K(n82), .TI(N152), .TE(N151), .CP(clk), 
        .CD(n81), .Q(dbg_state[1]), .QN(n213) );
  GTECH_FJK2S clk_counter_reg_10_ ( .J(n82), .K(n82), .TI(N132), .TE(N133), 
        .CP(clk), .CD(n81), .Q(dbg_clk_count[1]), .QN(n226) );
  GTECH_FJK2S clk_counter_reg_0_ ( .J(n82), .K(n82), .TI(N112), .TE(N133), 
        .CP(clk), .CD(n81), .Q(clk_counter[0]), .QN(n225) );
  GTECH_FJK2S clk_counter_reg_1_ ( .J(n82), .K(n82), .TI(N114), .TE(N133), 
        .CP(clk), .CD(n81), .Q(clk_counter[1]), .QN(n224) );
  GTECH_FJK2S clk_counter_reg_2_ ( .J(n82), .K(n82), .TI(N116), .TE(N133), 
        .CP(clk), .CD(n81), .Q(clk_counter[2]), .QN(n223) );
  GTECH_FJK2S clk_counter_reg_3_ ( .J(n82), .K(n82), .TI(N118), .TE(N133), 
        .CP(clk), .CD(n81), .Q(clk_counter[3]), .QN(n222) );
  GTECH_FJK2S clk_counter_reg_4_ ( .J(n82), .K(n82), .TI(N120), .TE(N133), 
        .CP(clk), .CD(n81), .Q(clk_counter[4]), .QN(n221) );
  GTECH_FJK2S clk_counter_reg_5_ ( .J(n82), .K(n82), .TI(N122), .TE(N133), 
        .CP(clk), .CD(n81), .Q(clk_counter[5]), .QN(n220) );
  GTECH_FJK2S clk_counter_reg_6_ ( .J(n82), .K(n82), .TI(N124), .TE(N133), 
        .CP(clk), .CD(n81), .Q(clk_counter[6]), .QN(n219) );
  GTECH_FJK2S clk_counter_reg_7_ ( .J(n82), .K(n82), .TI(N126), .TE(N133), 
        .CP(clk), .CD(n81), .Q(clk_counter[7]), .QN(n218) );
  GTECH_FJK2S clk_counter_reg_8_ ( .J(n82), .K(n82), .TI(N128), .TE(N133), 
        .CP(clk), .CD(n81), .Q(clk_counter[8]), .QN(n217) );
  GTECH_FJK2S clk_counter_reg_9_ ( .J(n82), .K(n82), .TI(N130), .TE(N133), 
        .CP(clk), .CD(n81), .Q(dbg_clk_count[0]), .QN(n216) );
  GTECH_FJK2S clk_counter_reg_11_ ( .J(n82), .K(n82), .TI(N134), .TE(N133), 
        .CP(clk), .CD(n81), .Q(dbg_clk_count[2]), .QN(n215) );
  GTECH_FJK2S update_digits_reg ( .J(n82), .K(n82), .TI(N170), .TE(N169), .CP(
        clk), .CD(n81), .Q(update_digits), .QN(n15) );
  GTECH_FJK2S edge_counter_reg_4_ ( .J(n82), .K(n82), .TI(N144), .TE(N147), 
        .CP(clk), .CD(n81), .Q(dbg_edge_count[0]), .QN(n214) );
  GTECH_FJK2S edge_counter_reg_0_ ( .J(n82), .K(n82), .TI(N136), .TE(N147), 
        .CP(clk), .CD(n81), .Q(N62), .QN(n16) );
  GTECH_FJK2S unit_count_reg_0_ ( .J(n82), .K(n82), .TI(N162), .TE(N167), .CP(
        clk), .CD(n81), .Q(unit_count[0]) );
  GTECH_FJK2S edge_counter_reg_1_ ( .J(n82), .K(n82), .TI(N138), .TE(N147), 
        .CP(clk), .CD(n81), .Q(sub_85_carry_2_) );
  GTECH_FJK2S unit_count_reg_1_ ( .J(n82), .K(n82), .TI(N164), .TE(N167), .CP(
        clk), .CD(n81), .Q(unit_count[1]) );
  GTECH_FJK2S edge_counter_reg_2_ ( .J(n82), .K(n82), .TI(N140), .TE(N147), 
        .CP(clk), .CD(n81), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK2S unit_count_reg_2_ ( .J(n82), .K(n82), .TI(N166), .TE(N167), .CP(
        clk), .CD(n81), .Q(unit_count[2]) );
  GTECH_FJK2S edge_counter_reg_3_ ( .J(n82), .K(n82), .TI(N142), .TE(N147), 
        .CP(clk), .CD(n81), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK2S unit_count_reg_3_ ( .J(n82), .K(n82), .TI(N168), .TE(N167), .CP(
        clk), .CD(n81), .Q(unit_count[3]) );
  GTECH_FJK2S ten_count_reg_0_ ( .J(n82), .K(n82), .TI(N154), .TE(N159), .CP(
        clk), .CD(n81), .Q(ten_count[0]) );
  GTECH_FJK2S ten_count_reg_1_ ( .J(n82), .K(n82), .TI(N156), .TE(N159), .CP(
        clk), .CD(n81), .Q(ten_count[1]) );
  GTECH_FJK2S ten_count_reg_2_ ( .J(n82), .K(n82), .TI(N158), .TE(N159), .CP(
        clk), .CD(n81), .Q(ten_count[2]) );
  GTECH_FJK2S ten_count_reg_3_ ( .J(n82), .K(n82), .TI(N160), .TE(N159), .CP(
        clk), .CD(n81), .Q(ten_count[3]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_0_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .CD(n81), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_1_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .CD(n81), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_2_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .CD(n81), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_3_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .CD(n81), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_0_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .CD(n81), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_1_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .CD(n81), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_2_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .CD(n81), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_3_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .CD(n81), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n209) );
  GTECH_ZERO U222 ( .Z(n82) );
  GTECH_ONE U223 ( .Z(n81) );
  GTECH_NAND2 U224 ( .A(n15), .B(n241), .Z(seven_segment0_N9) );
  GTECH_AND2 U225 ( .A(ten_count[0]), .B(n241), .Z(seven_segment0_N8) );
  GTECH_AND2 U226 ( .A(n209), .B(n241), .Z(seven_segment0_N6) );
  GTECH_AND2 U227 ( .A(unit_count[3]), .B(n241), .Z(seven_segment0_N22) );
  GTECH_AND2 U228 ( .A(unit_count[2]), .B(n241), .Z(seven_segment0_N20) );
  GTECH_AND2 U229 ( .A(unit_count[1]), .B(n241), .Z(seven_segment0_N18) );
  GTECH_AND2 U230 ( .A(unit_count[0]), .B(n241), .Z(seven_segment0_N16) );
  GTECH_AND2 U231 ( .A(ten_count[3]), .B(n241), .Z(seven_segment0_N14) );
  GTECH_AND2 U232 ( .A(ten_count[2]), .B(n241), .Z(seven_segment0_N12) );
  GTECH_AND2 U233 ( .A(ten_count[1]), .B(n241), .Z(seven_segment0_N10) );
  GTECH_NAND2 U234 ( .A(n242), .B(n243), .Z(segments[6]) );
  GTECH_NAND3 U235 ( .A(n243), .B(n244), .C(n245), .Z(segments[3]) );
  GTECH_NOT U236 ( .A(segments[4]), .Z(n244) );
  GTECH_OAI21 U237 ( .A(n246), .B(n247), .C(n248), .Z(segments[4]) );
  GTECH_NAND2 U238 ( .A(n249), .B(n250), .Z(segments[2]) );
  GTECH_NOT U239 ( .A(segments[5]), .Z(n250) );
  GTECH_NAND2 U240 ( .A(n242), .B(n248), .Z(segments[5]) );
  GTECH_AND2 U241 ( .A(n251), .B(n252), .Z(n242) );
  GTECH_NAND3 U242 ( .A(n253), .B(n254), .C(n255), .Z(n252) );
  GTECH_NAND3 U243 ( .A(n256), .B(n243), .C(n249), .Z(segments[1]) );
  GTECH_NOT U244 ( .A(n257), .Z(n249) );
  GTECH_NAND2 U245 ( .A(n258), .B(n259), .Z(n257) );
  GTECH_NAND3 U246 ( .A(n260), .B(n253), .C(n255), .Z(n256) );
  GTECH_NAND4 U247 ( .A(n251), .B(n258), .C(n243), .D(n248), .Z(segments[0])
         );
  GTECH_NAND2 U248 ( .A(n261), .B(n255), .Z(n248) );
  GTECH_NOT U249 ( .A(n246), .Z(n255) );
  GTECH_NOT U250 ( .A(n259), .Z(n261) );
  GTECH_NAND2 U251 ( .A(n262), .B(n263), .Z(n243) );
  GTECH_NAND2 U252 ( .A(n246), .B(n262), .Z(n258) );
  GTECH_NOT U253 ( .A(n247), .Z(n262) );
  GTECH_NAND2 U254 ( .A(n264), .B(n253), .Z(n247) );
  GTECH_NOT U255 ( .A(n265), .Z(n251) );
  GTECH_OAI21 U256 ( .A(n253), .B(n259), .C(n245), .Z(n265) );
  GTECH_NAND4 U257 ( .A(n246), .B(n254), .C(n260), .D(n253), .Z(n245) );
  GTECH_MUX2 U258 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n209), .Z(n246) );
  GTECH_NAND2 U259 ( .A(n263), .B(n260), .Z(n259) );
  GTECH_NOT U260 ( .A(n264), .Z(n260) );
  GTECH_MUX2 U261 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n209), .Z(n264) );
  GTECH_NOT U262 ( .A(n254), .Z(n263) );
  GTECH_MUX2 U263 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n209), .Z(n254) );
  GTECH_NOT U264 ( .A(n266), .Z(n253) );
  GTECH_MUX2 U265 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n209), .Z(n266) );
  GTECH_AO21 U266 ( .A(period[0]), .B(n267), .C(reset), .Z(N9) );
  GTECH_AND2 U267 ( .A(period[11]), .B(n267), .Z(N21) );
  GTECH_NAND2 U268 ( .A(n241), .B(n268), .Z(N20) );
  GTECH_AO21 U269 ( .A(period[10]), .B(n267), .C(reset), .Z(N19) );
  GTECH_AND2 U270 ( .A(period[9]), .B(n267), .Z(N18) );
  GTECH_AND2 U271 ( .A(period[8]), .B(n267), .Z(N17) );
  GTECH_AND2 U272 ( .A(N170), .B(n269), .Z(N168) );
  GTECH_NAND2 U273 ( .A(n270), .B(n271), .Z(N167) );
  GTECH_AND2 U274 ( .A(N170), .B(n272), .Z(N166) );
  GTECH_AND2 U275 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U276 ( .A(N170), .B(n273), .Z(N162) );
  GTECH_NOT U277 ( .A(n274), .Z(N170) );
  GTECH_NAND2 U278 ( .A(n275), .B(n241), .Z(n274) );
  GTECH_NOT U279 ( .A(n271), .Z(n275) );
  GTECH_OAI22 U280 ( .A(n276), .B(n277), .C(n278), .D(n279), .Z(N160) );
  GTECH_MUX2 U281 ( .A(n276), .B(n280), .S(ten_count[2]), .Z(n279) );
  GTECH_NAND2 U282 ( .A(n281), .B(n276), .Z(n280) );
  GTECH_NOT U283 ( .A(ten_count[3]), .Z(n276) );
  GTECH_AO21 U284 ( .A(period[7]), .B(n267), .C(reset), .Z(N16) );
  GTECH_OAI21 U285 ( .A(n282), .B(n283), .C(n284), .Z(N159) );
  GTECH_MUX2 U286 ( .A(n285), .B(n286), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U287 ( .A(n277), .Z(n286) );
  GTECH_NAND2 U288 ( .A(N152), .B(n287), .Z(n277) );
  GTECH_AND2 U289 ( .A(N152), .B(n281), .Z(n285) );
  GTECH_NOT U290 ( .A(n287), .Z(n281) );
  GTECH_NAND2 U291 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n287) );
  GTECH_MUX2 U292 ( .A(n288), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U293 ( .A(N152), .B(ten_count[0]), .Z(n288) );
  GTECH_NOT U294 ( .A(n289), .Z(N154) );
  GTECH_NAND2 U295 ( .A(N152), .B(n290), .Z(n289) );
  GTECH_NOT U296 ( .A(ten_count[0]), .Z(n290) );
  GTECH_NAND2 U297 ( .A(n291), .B(n213), .Z(N151) );
  GTECH_OA21 U298 ( .A(n14), .B(n292), .C(n270), .Z(n291) );
  GTECH_NOT U299 ( .A(n293), .Z(n270) );
  GTECH_OAI21 U300 ( .A(n294), .B(n282), .C(n241), .Z(n293) );
  GTECH_AND2 U301 ( .A(period[6]), .B(n267), .Z(N15) );
  GTECH_OAI21 U302 ( .A(n278), .B(n292), .C(n295), .Z(N148) );
  GTECH_MUX2 U303 ( .A(n296), .B(n297), .S(n227), .Z(n295) );
  GTECH_OR3 U304 ( .A(n228), .B(n298), .C(n299), .Z(n297) );
  GTECH_AND_NOT U305 ( .A(n300), .B(n301), .Z(n296) );
  GTECH_MUX2 U306 ( .A(n278), .B(n298), .S(n228), .Z(n300) );
  GTECH_NAND3 U307 ( .A(n302), .B(n271), .C(n284), .Z(N147) );
  GTECH_AND2 U308 ( .A(n241), .B(n303), .Z(n284) );
  GTECH_NAND3 U309 ( .A(n294), .B(n213), .C(n292), .Z(n303) );
  GTECH_NAND4 U310 ( .A(n228), .B(n227), .C(n214), .D(n304), .Z(n292) );
  GTECH_NAND2 U311 ( .A(n14), .B(n305), .Z(n271) );
  GTECH_NOT U312 ( .A(n213), .Z(n305) );
  GTECH_NAND3 U313 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n302) );
  GTECH_MUX2 U314 ( .A(n301), .B(n306), .S(n228), .Z(N146) );
  GTECH_OAI21 U315 ( .A(n299), .B(n298), .C(n307), .Z(n306) );
  GTECH_OAI21 U316 ( .A(n308), .B(n298), .C(n309), .Z(n301) );
  GTECH_AO21 U317 ( .A(n304), .B(n214), .C(n278), .Z(n309) );
  GTECH_NOT U318 ( .A(n299), .Z(n308) );
  GTECH_NAND3 U319 ( .A(n310), .B(n269), .C(n311), .Z(n299) );
  GTECH_NOT U320 ( .A(n214), .Z(n310) );
  GTECH_NAND2 U321 ( .A(n312), .B(n307), .Z(N144) );
  GTECH_NAND3 U322 ( .A(N152), .B(n304), .C(n214), .Z(n307) );
  GTECH_MUX2 U323 ( .A(n313), .B(n314), .S(n214), .Z(n312) );
  GTECH_NAND3 U324 ( .A(n311), .B(n269), .C(N150), .Z(n314) );
  GTECH_OA21 U325 ( .A(n278), .B(n304), .C(n315), .Z(n313) );
  GTECH_OAI21 U326 ( .A(n22), .B(n316), .C(N150), .Z(n315) );
  GTECH_NAND2 U327 ( .A(n317), .B(n269), .Z(n304) );
  GTECH_NOT U328 ( .A(n22), .Z(n269) );
  GTECH_OAI21 U329 ( .A(n298), .B(n318), .C(n319), .Z(N142) );
  GTECH_MUX2 U330 ( .A(n320), .B(n321), .S(n22), .Z(n319) );
  GTECH_NAND2 U331 ( .A(N152), .B(n317), .Z(n321) );
  GTECH_XOR2 U332 ( .A(n22), .B(n311), .Z(n318) );
  GTECH_NOT U333 ( .A(n316), .Z(n311) );
  GTECH_NAND3 U334 ( .A(n273), .B(n272), .C(sub_85_carry_2_), .Z(n316) );
  GTECH_NOT U335 ( .A(n20), .Z(n272) );
  GTECH_NAND2 U336 ( .A(n322), .B(n320), .Z(N140) );
  GTECH_NAND2 U337 ( .A(n323), .B(N152), .Z(n320) );
  GTECH_NOT U338 ( .A(n278), .Z(N152) );
  GTECH_NOT U339 ( .A(n317), .Z(n323) );
  GTECH_NAND2 U340 ( .A(n20), .B(n324), .Z(n317) );
  GTECH_NOT U341 ( .A(sub_85_carry_2_), .Z(n324) );
  GTECH_MUX2 U342 ( .A(n325), .B(n326), .S(n20), .Z(n322) );
  GTECH_NAND3 U343 ( .A(sub_85_carry_2_), .B(n273), .C(N150), .Z(n326) );
  GTECH_NOT U344 ( .A(n16), .Z(n273) );
  GTECH_AND2 U345 ( .A(n327), .B(n328), .Z(n325) );
  GTECH_MUX2 U346 ( .A(n298), .B(n278), .S(sub_85_carry_2_), .Z(n327) );
  GTECH_AO21 U347 ( .A(period[5]), .B(n267), .C(reset), .Z(N14) );
  GTECH_MUX2 U348 ( .A(n329), .B(n330), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U349 ( .A(n328), .Z(n330) );
  GTECH_OAI21 U350 ( .A(n16), .B(n298), .C(n278), .Z(n329) );
  GTECH_OAI21 U351 ( .A(n16), .B(n278), .C(n328), .Z(N136) );
  GTECH_NAND2 U352 ( .A(n16), .B(N150), .Z(n328) );
  GTECH_NOT U353 ( .A(n298), .Z(N150) );
  GTECH_NAND2 U354 ( .A(n331), .B(n241), .Z(n298) );
  GTECH_NOT U355 ( .A(n283), .Z(n331) );
  GTECH_NAND2 U356 ( .A(n213), .B(n332), .Z(n278) );
  GTECH_NOT U357 ( .A(N169), .Z(n332) );
  GTECH_NAND2 U358 ( .A(n241), .B(n294), .Z(N169) );
  GTECH_NOT U359 ( .A(n14), .Z(n294) );
  GTECH_AND2 U360 ( .A(n333), .B(n334), .Z(N134) );
  GTECH_OAI21 U361 ( .A(n226), .B(n335), .C(n215), .Z(n334) );
  GTECH_NAND2 U362 ( .A(n241), .B(n283), .Z(N133) );
  GTECH_NAND2 U363 ( .A(n213), .B(n14), .Z(n283) );
  GTECH_AND2 U364 ( .A(n336), .B(n333), .Z(N132) );
  GTECH_XOR2 U365 ( .A(n335), .B(n226), .Z(n336) );
  GTECH_NAND2 U366 ( .A(n337), .B(n338), .Z(n335) );
  GTECH_NOT U367 ( .A(n339), .Z(n337) );
  GTECH_AND2 U368 ( .A(n340), .B(n333), .Z(N130) );
  GTECH_XOR2 U369 ( .A(n339), .B(n216), .Z(n340) );
  GTECH_NAND2 U370 ( .A(n341), .B(n342), .Z(n339) );
  GTECH_NOT U371 ( .A(n217), .Z(n342) );
  GTECH_NOT U372 ( .A(n343), .Z(n341) );
  GTECH_AND2 U373 ( .A(period[4]), .B(n267), .Z(N13) );
  GTECH_AND2 U374 ( .A(n344), .B(n333), .Z(N128) );
  GTECH_XOR2 U375 ( .A(n343), .B(n217), .Z(n344) );
  GTECH_NAND2 U376 ( .A(n345), .B(n346), .Z(n343) );
  GTECH_NOT U377 ( .A(n347), .Z(n345) );
  GTECH_AND2 U378 ( .A(n348), .B(n333), .Z(N126) );
  GTECH_XOR2 U379 ( .A(n347), .B(n218), .Z(n348) );
  GTECH_NAND2 U380 ( .A(n349), .B(n350), .Z(n347) );
  GTECH_NOT U381 ( .A(n219), .Z(n350) );
  GTECH_NOT U382 ( .A(n351), .Z(n349) );
  GTECH_AND2 U383 ( .A(n352), .B(n333), .Z(N124) );
  GTECH_XOR2 U384 ( .A(n351), .B(n219), .Z(n352) );
  GTECH_NAND2 U385 ( .A(n353), .B(n354), .Z(n351) );
  GTECH_NOT U386 ( .A(n220), .Z(n354) );
  GTECH_NOT U387 ( .A(n355), .Z(n353) );
  GTECH_AND2 U388 ( .A(n356), .B(n333), .Z(N122) );
  GTECH_XOR2 U389 ( .A(n355), .B(n220), .Z(n356) );
  GTECH_NAND2 U390 ( .A(n357), .B(n358), .Z(n355) );
  GTECH_NOT U391 ( .A(n221), .Z(n358) );
  GTECH_NOT U392 ( .A(n359), .Z(n357) );
  GTECH_AND2 U393 ( .A(n360), .B(n333), .Z(N120) );
  GTECH_XOR2 U394 ( .A(n359), .B(n221), .Z(n360) );
  GTECH_NAND2 U395 ( .A(n361), .B(n362), .Z(n359) );
  GTECH_NOT U396 ( .A(n363), .Z(n361) );
  GTECH_AO21 U397 ( .A(period[3]), .B(n267), .C(reset), .Z(N12) );
  GTECH_AND2 U398 ( .A(n364), .B(n333), .Z(N118) );
  GTECH_XOR2 U399 ( .A(n363), .B(n222), .Z(n364) );
  GTECH_NAND3 U400 ( .A(n365), .B(n366), .C(n367), .Z(n363) );
  GTECH_NOT U401 ( .A(n223), .Z(n367) );
  GTECH_OAI22 U402 ( .A(n223), .B(n368), .C(n369), .D(n370), .Z(N116) );
  GTECH_MUX2 U403 ( .A(n365), .B(n371), .S(n223), .Z(n370) );
  GTECH_NAND2 U404 ( .A(n365), .B(n366), .Z(n371) );
  GTECH_MUX2 U405 ( .A(N112), .B(n372), .S(n224), .Z(N114) );
  GTECH_AND2 U406 ( .A(n333), .B(n366), .Z(n372) );
  GTECH_NOT U407 ( .A(n225), .Z(n366) );
  GTECH_NOT U408 ( .A(n368), .Z(N112) );
  GTECH_NAND2 U409 ( .A(n333), .B(n225), .Z(n368) );
  GTECH_NOT U410 ( .A(n369), .Z(n333) );
  GTECH_NAND2 U411 ( .A(n241), .B(n282), .Z(n369) );
  GTECH_NOT U412 ( .A(n373), .Z(n282) );
  GTECH_AOI222 U413 ( .A(n374), .B(n375), .C(update_period[11]), .D(n215), .E(
        n376), .F(n377), .Z(n373) );
  GTECH_OAI2N2 U414 ( .A(n378), .B(n379), .C(n380), .D(n381), .Z(n376) );
  GTECH_OAI21 U415 ( .A(n382), .B(n338), .C(n383), .Z(n381) );
  GTECH_NAND3 U416 ( .A(n384), .B(update_period[8]), .C(n217), .Z(n383) );
  GTECH_AND3 U417 ( .A(n384), .B(n380), .C(n377), .Z(n375) );
  GTECH_NAND2 U418 ( .A(n385), .B(n386), .Z(n377) );
  GTECH_NOT U419 ( .A(n215), .Z(n386) );
  GTECH_NOT U420 ( .A(update_period[11]), .Z(n385) );
  GTECH_NAND2 U421 ( .A(n379), .B(n378), .Z(n380) );
  GTECH_NOT U422 ( .A(n226), .Z(n378) );
  GTECH_NOT U423 ( .A(update_period[10]), .Z(n379) );
  GTECH_NAND2 U424 ( .A(n338), .B(n382), .Z(n384) );
  GTECH_NOT U425 ( .A(update_period[9]), .Z(n382) );
  GTECH_NOT U426 ( .A(n216), .Z(n338) );
  GTECH_OA22 U427 ( .A(n217), .B(update_period[8]), .C(n387), .D(n388), .Z(
        n374) );
  GTECH_OAI21 U428 ( .A(n346), .B(n389), .C(n390), .Z(n388) );
  GTECH_NAND3 U429 ( .A(n391), .B(update_period[6]), .C(n219), .Z(n390) );
  GTECH_OAI2N2 U430 ( .A(n392), .B(n393), .C(n394), .D(n395), .Z(n387) );
  GTECH_ADD_ABC U431 ( .A(n396), .B(n220), .C(update_period[5]), .COUT(n395)
         );
  GTECH_AND2 U432 ( .A(update_period[4]), .B(n221), .Z(n396) );
  GTECH_OAI21 U433 ( .A(update_period[4]), .B(n221), .C(n394), .Z(n393) );
  GTECH_NOT U434 ( .A(n397), .Z(n394) );
  GTECH_OAI21 U435 ( .A(update_period[6]), .B(n219), .C(n391), .Z(n397) );
  GTECH_NAND2 U436 ( .A(n389), .B(n346), .Z(n391) );
  GTECH_NOT U437 ( .A(n218), .Z(n346) );
  GTECH_NOT U438 ( .A(update_period[7]), .Z(n389) );
  GTECH_OAI22 U439 ( .A(update_period[5]), .B(n220), .C(n398), .D(n399), .Z(
        n392) );
  GTECH_OAI21 U440 ( .A(n362), .B(n400), .C(n401), .Z(n399) );
  GTECH_NAND3 U441 ( .A(n402), .B(update_period[2]), .C(n223), .Z(n401) );
  GTECH_AND3 U442 ( .A(n403), .B(n404), .C(n402), .Z(n398) );
  GTECH_NAND2 U443 ( .A(n400), .B(n362), .Z(n402) );
  GTECH_NOT U444 ( .A(n222), .Z(n362) );
  GTECH_NOT U445 ( .A(update_period[3]), .Z(n400) );
  GTECH_OAI21 U446 ( .A(n405), .B(n365), .C(n230), .Z(n404) );
  GTECH_NOT U447 ( .A(n224), .Z(n365) );
  GTECH_OA22 U448 ( .A(n223), .B(update_period[2]), .C(n406), .D(n224), .Z(
        n403) );
  GTECH_NOT U449 ( .A(n405), .Z(n406) );
  GTECH_NAND2 U450 ( .A(update_period[0]), .B(n225), .Z(n405) );
  GTECH_AO21 U451 ( .A(period[2]), .B(n267), .C(reset), .Z(N11) );
  GTECH_AO21 U452 ( .A(period[1]), .B(n267), .C(reset), .Z(N10) );
  GTECH_NOT U453 ( .A(n268), .Z(n267) );
  GTECH_NAND2 U454 ( .A(period_load), .B(n241), .Z(n268) );
  GTECH_NOT U455 ( .A(reset), .Z(n241) );
endmodule

