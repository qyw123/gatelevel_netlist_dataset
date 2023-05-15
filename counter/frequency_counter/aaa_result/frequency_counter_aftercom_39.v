
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
         n27, n28, n31, n32, n76, n78, n208, n212, sub_85_carry_2_, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n229, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK2S update_period_reg_11_ ( .J(n78), .K(n78), .TI(N21), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[11]) );
  GTECH_FJK2S update_period_reg_10_ ( .J(n78), .K(n78), .TI(N19), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[10]) );
  GTECH_FJK2S update_period_reg_9_ ( .J(n78), .K(n78), .TI(N18), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[9]) );
  GTECH_FJK2S update_period_reg_8_ ( .J(n78), .K(n78), .TI(N17), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[8]) );
  GTECH_FJK2S update_period_reg_7_ ( .J(n78), .K(n78), .TI(N16), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[7]) );
  GTECH_FJK2S update_period_reg_6_ ( .J(n78), .K(n78), .TI(N15), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[6]) );
  GTECH_FJK2S update_period_reg_5_ ( .J(n78), .K(n78), .TI(N14), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[5]) );
  GTECH_FJK2S update_period_reg_4_ ( .J(n78), .K(n78), .TI(N13), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[4]) );
  GTECH_FJK2S update_period_reg_3_ ( .J(n78), .K(n78), .TI(N12), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[3]) );
  GTECH_FJK2S update_period_reg_2_ ( .J(n78), .K(n78), .TI(N11), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[2]) );
  GTECH_FJK2S update_period_reg_1_ ( .J(n78), .K(n78), .TI(N10), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[1]), .QN(n229) );
  GTECH_FJK2S update_period_reg_0_ ( .J(n78), .K(n78), .TI(N9), .TE(N20), .CP(
        clk), .CD(n76), .Q(update_period[0]) );
  GTECH_FD2 edge_detect0_q0_reg ( .D(signal), .CP(clk), .CD(n76), .Q(
        edge_detect0_q0) );
  GTECH_FD2 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .CD(n76), .Q(
        edge_detect0_q1) );
  GTECH_FD2 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .CD(n76), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK2S edge_counter_reg_5_ ( .J(n78), .K(n78), .TI(N146), .TE(N147), 
        .CP(clk), .CD(n76), .Q(dbg_edge_count[1]), .QN(n227) );
  GTECH_FJK2S edge_counter_reg_6_ ( .J(n78), .K(n78), .TI(N148), .TE(N147), 
        .CP(clk), .CD(n76), .Q(dbg_edge_count[2]), .QN(n226) );
  GTECH_FJK2S state_reg_0_ ( .J(n78), .K(n78), .TI(N150), .TE(N151), .CP(clk), 
        .CD(n76), .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK2S state_reg_1_ ( .J(n78), .K(n78), .TI(N152), .TE(N151), .CP(clk), 
        .CD(n76), .Q(dbg_state[1]), .QN(n212) );
  GTECH_FJK2S update_digits_reg ( .J(n78), .K(n78), .TI(N170), .TE(N169), .CP(
        clk), .CD(n76), .Q(update_digits), .QN(n15) );
  GTECH_FJK2S clk_counter_reg_10_ ( .J(n78), .K(n78), .TI(N132), .TE(N133), 
        .CP(clk), .CD(n76), .Q(dbg_clk_count[1]), .QN(n225) );
  GTECH_FJK2S clk_counter_reg_0_ ( .J(n78), .K(n78), .TI(N112), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[0]), .QN(n224) );
  GTECH_FJK2S clk_counter_reg_1_ ( .J(n78), .K(n78), .TI(N114), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[1]), .QN(n223) );
  GTECH_FJK2S clk_counter_reg_2_ ( .J(n78), .K(n78), .TI(N116), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[2]), .QN(n222) );
  GTECH_FJK2S clk_counter_reg_3_ ( .J(n78), .K(n78), .TI(N118), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[3]), .QN(n221) );
  GTECH_FJK2S clk_counter_reg_4_ ( .J(n78), .K(n78), .TI(N120), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[4]), .QN(n220) );
  GTECH_FJK2S clk_counter_reg_5_ ( .J(n78), .K(n78), .TI(N122), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[5]), .QN(n219) );
  GTECH_FJK2S clk_counter_reg_6_ ( .J(n78), .K(n78), .TI(N124), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[6]), .QN(n218) );
  GTECH_FJK2S clk_counter_reg_7_ ( .J(n78), .K(n78), .TI(N126), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[7]), .QN(n217) );
  GTECH_FJK2S clk_counter_reg_8_ ( .J(n78), .K(n78), .TI(N128), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[8]), .QN(n216) );
  GTECH_FJK2S clk_counter_reg_9_ ( .J(n78), .K(n78), .TI(N130), .TE(N133), 
        .CP(clk), .CD(n76), .Q(dbg_clk_count[0]), .QN(n215) );
  GTECH_FJK2S clk_counter_reg_11_ ( .J(n78), .K(n78), .TI(N134), .TE(N133), 
        .CP(clk), .CD(n76), .Q(dbg_clk_count[2]), .QN(n214) );
  GTECH_FJK2S edge_counter_reg_4_ ( .J(n78), .K(n78), .TI(N144), .TE(N147), 
        .CP(clk), .CD(n76), .Q(dbg_edge_count[0]), .QN(n213) );
  GTECH_FJK2S edge_counter_reg_0_ ( .J(n78), .K(n78), .TI(N136), .TE(N147), 
        .CP(clk), .CD(n76), .Q(N62), .QN(n16) );
  GTECH_FJK2S unit_count_reg_0_ ( .J(n78), .K(n78), .TI(N162), .TE(N167), .CP(
        clk), .CD(n76), .Q(unit_count[0]) );
  GTECH_FJK2S edge_counter_reg_1_ ( .J(n78), .K(n78), .TI(N138), .TE(N147), 
        .CP(clk), .CD(n76), .Q(sub_85_carry_2_) );
  GTECH_FJK2S unit_count_reg_1_ ( .J(n78), .K(n78), .TI(N164), .TE(N167), .CP(
        clk), .CD(n76), .Q(unit_count[1]) );
  GTECH_FJK2S edge_counter_reg_2_ ( .J(n78), .K(n78), .TI(N140), .TE(N147), 
        .CP(clk), .CD(n76), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK2S unit_count_reg_2_ ( .J(n78), .K(n78), .TI(N166), .TE(N167), .CP(
        clk), .CD(n76), .Q(unit_count[2]) );
  GTECH_FJK2S edge_counter_reg_3_ ( .J(n78), .K(n78), .TI(N142), .TE(N147), 
        .CP(clk), .CD(n76), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK2S unit_count_reg_3_ ( .J(n78), .K(n78), .TI(N168), .TE(N167), .CP(
        clk), .CD(n76), .Q(unit_count[3]) );
  GTECH_FJK2S ten_count_reg_0_ ( .J(n78), .K(n78), .TI(N154), .TE(N159), .CP(
        clk), .CD(n76), .Q(ten_count[0]) );
  GTECH_FJK2S ten_count_reg_1_ ( .J(n78), .K(n78), .TI(N156), .TE(N159), .CP(
        clk), .CD(n76), .Q(ten_count[1]) );
  GTECH_FJK2S ten_count_reg_2_ ( .J(n78), .K(n78), .TI(N158), .TE(N159), .CP(
        clk), .CD(n76), .Q(ten_count[2]) );
  GTECH_FJK2S ten_count_reg_3_ ( .J(n78), .K(n78), .TI(N160), .TE(N159), .CP(
        clk), .CD(n76), .Q(ten_count[3]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_0_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_1_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_2_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n27) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_3_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_0_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_1_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_2_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n31) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_3_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
  GTECH_FD2 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .CD(
        n76), .Q(digit), .QN(n208) );
  GTECH_ZERO U221 ( .Z(n78) );
  GTECH_ONE U222 ( .Z(n76) );
  GTECH_NAND2 U223 ( .A(n15), .B(n240), .Z(seven_segment0_N9) );
  GTECH_AND2 U224 ( .A(ten_count[0]), .B(n240), .Z(seven_segment0_N8) );
  GTECH_AND2 U225 ( .A(n208), .B(n240), .Z(seven_segment0_N6) );
  GTECH_AND2 U226 ( .A(unit_count[3]), .B(n240), .Z(seven_segment0_N22) );
  GTECH_AND2 U227 ( .A(unit_count[2]), .B(n240), .Z(seven_segment0_N20) );
  GTECH_AND2 U228 ( .A(unit_count[1]), .B(n240), .Z(seven_segment0_N18) );
  GTECH_AND2 U229 ( .A(unit_count[0]), .B(n240), .Z(seven_segment0_N16) );
  GTECH_AND2 U230 ( .A(ten_count[3]), .B(n240), .Z(seven_segment0_N14) );
  GTECH_AND2 U231 ( .A(ten_count[2]), .B(n240), .Z(seven_segment0_N12) );
  GTECH_AND2 U232 ( .A(ten_count[1]), .B(n240), .Z(seven_segment0_N10) );
  GTECH_NAND2 U233 ( .A(n241), .B(n242), .Z(segments[6]) );
  GTECH_NOT U234 ( .A(n243), .Z(segments[4]) );
  GTECH_NAND3 U235 ( .A(n242), .B(n243), .C(n244), .Z(segments[3]) );
  GTECH_OAI21 U236 ( .A(n245), .B(n246), .C(n247), .Z(n243) );
  GTECH_NOT U237 ( .A(n248), .Z(n246) );
  GTECH_NAND2 U238 ( .A(n249), .B(n250), .Z(segments[2]) );
  GTECH_NOT U239 ( .A(segments[5]), .Z(n250) );
  GTECH_OAI21 U240 ( .A(n251), .B(n248), .C(n241), .Z(segments[5]) );
  GTECH_AND2 U241 ( .A(n252), .B(n244), .Z(n241) );
  GTECH_MUX2 U242 ( .A(n248), .B(n253), .S(n254), .Z(n252) );
  GTECH_NAND2 U243 ( .A(n247), .B(n255), .Z(n253) );
  GTECH_NAND3 U244 ( .A(n256), .B(n242), .C(n249), .Z(segments[1]) );
  GTECH_NOT U245 ( .A(n257), .Z(n249) );
  GTECH_OAI21 U246 ( .A(n258), .B(n247), .C(n248), .Z(n257) );
  GTECH_NAND3 U247 ( .A(n247), .B(n259), .C(n254), .Z(n256) );
  GTECH_NAND3 U248 ( .A(n244), .B(n242), .C(n260), .Z(segments[0]) );
  GTECH_OA22 U249 ( .A(n261), .B(n248), .C(n258), .D(n247), .Z(n260) );
  GTECH_NOT U250 ( .A(n251), .Z(n247) );
  GTECH_NAND2 U251 ( .A(n262), .B(n259), .Z(n248) );
  GTECH_NAND2 U252 ( .A(n245), .B(n262), .Z(n242) );
  GTECH_NOT U253 ( .A(n258), .Z(n245) );
  GTECH_NAND2 U254 ( .A(n263), .B(n254), .Z(n258) );
  GTECH_NAND3 U255 ( .A(n255), .B(n259), .C(n261), .Z(n244) );
  GTECH_NOT U256 ( .A(n264), .Z(n261) );
  GTECH_NAND2 U257 ( .A(n251), .B(n254), .Z(n264) );
  GTECH_MUX2 U258 ( .A(n32), .B(n28), .S(n208), .Z(n254) );
  GTECH_MUX2 U259 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n208), .Z(n251) );
  GTECH_NOT U260 ( .A(n263), .Z(n259) );
  GTECH_MUX2 U261 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n208), .Z(n263) );
  GTECH_NOT U262 ( .A(n262), .Z(n255) );
  GTECH_MUX2 U263 ( .A(n31), .B(n27), .S(n208), .Z(n262) );
  GTECH_AO21 U264 ( .A(period[0]), .B(n265), .C(reset), .Z(N9) );
  GTECH_AND2 U265 ( .A(period[11]), .B(n265), .Z(N21) );
  GTECH_NAND2 U266 ( .A(n240), .B(n266), .Z(N20) );
  GTECH_AO21 U267 ( .A(period[10]), .B(n265), .C(reset), .Z(N19) );
  GTECH_AND2 U268 ( .A(period[9]), .B(n265), .Z(N18) );
  GTECH_AND2 U269 ( .A(period[8]), .B(n265), .Z(N17) );
  GTECH_AND2 U270 ( .A(N170), .B(n267), .Z(N168) );
  GTECH_NAND2 U271 ( .A(n268), .B(n269), .Z(N167) );
  GTECH_AND2 U272 ( .A(N170), .B(n270), .Z(N166) );
  GTECH_AND2 U273 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U274 ( .A(N170), .B(n271), .Z(N162) );
  GTECH_NOT U275 ( .A(n272), .Z(N170) );
  GTECH_NAND2 U276 ( .A(n273), .B(n240), .Z(n272) );
  GTECH_NOT U277 ( .A(n269), .Z(n273) );
  GTECH_MUX2 U278 ( .A(n274), .B(n275), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U279 ( .A(ten_count[2]), .B(n276), .C(n277), .Z(n275) );
  GTECH_NOT U280 ( .A(n278), .Z(n277) );
  GTECH_AND2 U281 ( .A(n279), .B(ten_count[2]), .Z(n274) );
  GTECH_AO21 U282 ( .A(period[7]), .B(n265), .C(reset), .Z(N16) );
  GTECH_OAI21 U283 ( .A(n280), .B(n281), .C(n282), .Z(N159) );
  GTECH_MUX2 U284 ( .A(n279), .B(n278), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U285 ( .A(ten_count[1]), .B(n276), .C(n283), .Z(n278) );
  GTECH_NOT U286 ( .A(n284), .Z(n279) );
  GTECH_NAND3 U287 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n284) );
  GTECH_MUX2 U288 ( .A(n285), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U289 ( .A(N152), .B(ten_count[0]), .Z(n285) );
  GTECH_NOT U290 ( .A(n283), .Z(N154) );
  GTECH_NAND2 U291 ( .A(N152), .B(n286), .Z(n283) );
  GTECH_NOT U292 ( .A(ten_count[0]), .Z(n286) );
  GTECH_NAND2 U293 ( .A(n287), .B(n212), .Z(N151) );
  GTECH_OA21 U294 ( .A(n14), .B(n288), .C(n268), .Z(n287) );
  GTECH_NOT U295 ( .A(n289), .Z(n268) );
  GTECH_OAI21 U296 ( .A(n290), .B(n280), .C(n240), .Z(n289) );
  GTECH_AND2 U297 ( .A(period[6]), .B(n265), .Z(N15) );
  GTECH_OAI21 U298 ( .A(n276), .B(n288), .C(n291), .Z(N148) );
  GTECH_MUX2 U299 ( .A(n292), .B(n293), .S(n226), .Z(n291) );
  GTECH_OR3 U300 ( .A(n227), .B(n294), .C(n295), .Z(n293) );
  GTECH_AND_NOT U301 ( .A(n296), .B(n297), .Z(n292) );
  GTECH_MUX2 U302 ( .A(n276), .B(n294), .S(n227), .Z(n296) );
  GTECH_NAND3 U303 ( .A(n298), .B(n269), .C(n282), .Z(N147) );
  GTECH_AND2 U304 ( .A(n240), .B(n299), .Z(n282) );
  GTECH_NAND3 U305 ( .A(n290), .B(n212), .C(n288), .Z(n299) );
  GTECH_NAND4 U306 ( .A(n227), .B(n226), .C(n213), .D(n300), .Z(n288) );
  GTECH_NAND2 U307 ( .A(n14), .B(n301), .Z(n269) );
  GTECH_NOT U308 ( .A(n212), .Z(n301) );
  GTECH_NAND3 U309 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n298) );
  GTECH_MUX2 U310 ( .A(n297), .B(n302), .S(n227), .Z(N146) );
  GTECH_OAI21 U311 ( .A(n295), .B(n294), .C(n303), .Z(n302) );
  GTECH_OAI21 U312 ( .A(n304), .B(n294), .C(n305), .Z(n297) );
  GTECH_AO21 U313 ( .A(n300), .B(n213), .C(n276), .Z(n305) );
  GTECH_NOT U314 ( .A(n295), .Z(n304) );
  GTECH_NAND3 U315 ( .A(n306), .B(n267), .C(n307), .Z(n295) );
  GTECH_NOT U316 ( .A(n213), .Z(n306) );
  GTECH_NAND2 U317 ( .A(n308), .B(n303), .Z(N144) );
  GTECH_NAND3 U318 ( .A(N152), .B(n300), .C(n213), .Z(n303) );
  GTECH_MUX2 U319 ( .A(n309), .B(n310), .S(n213), .Z(n308) );
  GTECH_NAND3 U320 ( .A(n307), .B(n267), .C(N150), .Z(n310) );
  GTECH_OA21 U321 ( .A(n276), .B(n300), .C(n311), .Z(n309) );
  GTECH_OAI21 U322 ( .A(n22), .B(n312), .C(N150), .Z(n311) );
  GTECH_NAND2 U323 ( .A(n313), .B(n267), .Z(n300) );
  GTECH_NOT U324 ( .A(n22), .Z(n267) );
  GTECH_OAI21 U325 ( .A(n294), .B(n314), .C(n315), .Z(N142) );
  GTECH_MUX2 U326 ( .A(n316), .B(n317), .S(n22), .Z(n315) );
  GTECH_NAND2 U327 ( .A(N152), .B(n313), .Z(n317) );
  GTECH_XOR2 U328 ( .A(n22), .B(n307), .Z(n314) );
  GTECH_NOT U329 ( .A(n312), .Z(n307) );
  GTECH_NAND3 U330 ( .A(n271), .B(n270), .C(sub_85_carry_2_), .Z(n312) );
  GTECH_NOT U331 ( .A(n20), .Z(n270) );
  GTECH_NAND2 U332 ( .A(n318), .B(n316), .Z(N140) );
  GTECH_NAND2 U333 ( .A(n319), .B(N152), .Z(n316) );
  GTECH_NOT U334 ( .A(n276), .Z(N152) );
  GTECH_NOT U335 ( .A(n313), .Z(n319) );
  GTECH_NAND2 U336 ( .A(n20), .B(n320), .Z(n313) );
  GTECH_NOT U337 ( .A(sub_85_carry_2_), .Z(n320) );
  GTECH_MUX2 U338 ( .A(n321), .B(n322), .S(n20), .Z(n318) );
  GTECH_NAND3 U339 ( .A(sub_85_carry_2_), .B(n271), .C(N150), .Z(n322) );
  GTECH_NOT U340 ( .A(n16), .Z(n271) );
  GTECH_AND2 U341 ( .A(n323), .B(n324), .Z(n321) );
  GTECH_MUX2 U342 ( .A(n294), .B(n276), .S(sub_85_carry_2_), .Z(n323) );
  GTECH_AO21 U343 ( .A(period[5]), .B(n265), .C(reset), .Z(N14) );
  GTECH_MUX2 U344 ( .A(n325), .B(n326), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U345 ( .A(n324), .Z(n326) );
  GTECH_OAI21 U346 ( .A(n16), .B(n294), .C(n276), .Z(n325) );
  GTECH_OAI21 U347 ( .A(n16), .B(n276), .C(n324), .Z(N136) );
  GTECH_NAND2 U348 ( .A(n16), .B(N150), .Z(n324) );
  GTECH_NOT U349 ( .A(n294), .Z(N150) );
  GTECH_NAND2 U350 ( .A(n327), .B(n240), .Z(n294) );
  GTECH_NOT U351 ( .A(n281), .Z(n327) );
  GTECH_NAND2 U352 ( .A(n212), .B(n328), .Z(n276) );
  GTECH_NOT U353 ( .A(N169), .Z(n328) );
  GTECH_NAND2 U354 ( .A(n240), .B(n290), .Z(N169) );
  GTECH_NOT U355 ( .A(n14), .Z(n290) );
  GTECH_AND2 U356 ( .A(n329), .B(n330), .Z(N134) );
  GTECH_OAI21 U357 ( .A(n225), .B(n331), .C(n214), .Z(n330) );
  GTECH_NAND2 U358 ( .A(n240), .B(n281), .Z(N133) );
  GTECH_NAND2 U359 ( .A(n212), .B(n14), .Z(n281) );
  GTECH_AND2 U360 ( .A(n332), .B(n329), .Z(N132) );
  GTECH_XOR2 U361 ( .A(n331), .B(n225), .Z(n332) );
  GTECH_NAND2 U362 ( .A(n333), .B(n334), .Z(n331) );
  GTECH_NOT U363 ( .A(n335), .Z(n333) );
  GTECH_AND2 U364 ( .A(n336), .B(n329), .Z(N130) );
  GTECH_XOR2 U365 ( .A(n335), .B(n215), .Z(n336) );
  GTECH_NAND2 U366 ( .A(n337), .B(n338), .Z(n335) );
  GTECH_NOT U367 ( .A(n216), .Z(n338) );
  GTECH_NOT U368 ( .A(n339), .Z(n337) );
  GTECH_AND2 U369 ( .A(period[4]), .B(n265), .Z(N13) );
  GTECH_AND2 U370 ( .A(n340), .B(n329), .Z(N128) );
  GTECH_XOR2 U371 ( .A(n339), .B(n216), .Z(n340) );
  GTECH_NAND2 U372 ( .A(n341), .B(n342), .Z(n339) );
  GTECH_NOT U373 ( .A(n343), .Z(n341) );
  GTECH_AND2 U374 ( .A(n344), .B(n329), .Z(N126) );
  GTECH_XOR2 U375 ( .A(n343), .B(n217), .Z(n344) );
  GTECH_NAND2 U376 ( .A(n345), .B(n346), .Z(n343) );
  GTECH_NOT U377 ( .A(n218), .Z(n346) );
  GTECH_NOT U378 ( .A(n347), .Z(n345) );
  GTECH_AND2 U379 ( .A(n348), .B(n329), .Z(N124) );
  GTECH_XOR2 U380 ( .A(n347), .B(n218), .Z(n348) );
  GTECH_NAND2 U381 ( .A(n349), .B(n350), .Z(n347) );
  GTECH_NOT U382 ( .A(n219), .Z(n350) );
  GTECH_NOT U383 ( .A(n351), .Z(n349) );
  GTECH_AND2 U384 ( .A(n352), .B(n329), .Z(N122) );
  GTECH_XOR2 U385 ( .A(n351), .B(n219), .Z(n352) );
  GTECH_NAND2 U386 ( .A(n353), .B(n354), .Z(n351) );
  GTECH_NOT U387 ( .A(n220), .Z(n354) );
  GTECH_NOT U388 ( .A(n355), .Z(n353) );
  GTECH_AND2 U389 ( .A(n356), .B(n329), .Z(N120) );
  GTECH_XOR2 U390 ( .A(n355), .B(n220), .Z(n356) );
  GTECH_NAND2 U391 ( .A(n357), .B(n358), .Z(n355) );
  GTECH_NOT U392 ( .A(n359), .Z(n357) );
  GTECH_AO21 U393 ( .A(period[3]), .B(n265), .C(reset), .Z(N12) );
  GTECH_AND2 U394 ( .A(n360), .B(n329), .Z(N118) );
  GTECH_XOR2 U395 ( .A(n359), .B(n221), .Z(n360) );
  GTECH_NAND3 U396 ( .A(n361), .B(n362), .C(n363), .Z(n359) );
  GTECH_NOT U397 ( .A(n222), .Z(n363) );
  GTECH_OAI22 U398 ( .A(n222), .B(n364), .C(n365), .D(n366), .Z(N116) );
  GTECH_MUX2 U399 ( .A(n361), .B(n367), .S(n222), .Z(n366) );
  GTECH_NAND2 U400 ( .A(n361), .B(n362), .Z(n367) );
  GTECH_MUX2 U401 ( .A(N112), .B(n368), .S(n223), .Z(N114) );
  GTECH_AND2 U402 ( .A(n329), .B(n362), .Z(n368) );
  GTECH_NOT U403 ( .A(n224), .Z(n362) );
  GTECH_NOT U404 ( .A(n364), .Z(N112) );
  GTECH_NAND2 U405 ( .A(n329), .B(n224), .Z(n364) );
  GTECH_NOT U406 ( .A(n365), .Z(n329) );
  GTECH_NAND2 U407 ( .A(n280), .B(n240), .Z(n365) );
  GTECH_NOT U408 ( .A(n369), .Z(n280) );
  GTECH_AOI222 U409 ( .A(n370), .B(n371), .C(update_period[11]), .D(n214), .E(
        n372), .F(n373), .Z(n369) );
  GTECH_OAI2N2 U410 ( .A(n374), .B(n375), .C(n376), .D(n377), .Z(n372) );
  GTECH_OAI21 U411 ( .A(n378), .B(n334), .C(n379), .Z(n377) );
  GTECH_NAND3 U412 ( .A(n380), .B(update_period[8]), .C(n216), .Z(n379) );
  GTECH_AND3 U413 ( .A(n380), .B(n376), .C(n373), .Z(n371) );
  GTECH_NAND2 U414 ( .A(n381), .B(n382), .Z(n373) );
  GTECH_NOT U415 ( .A(n214), .Z(n382) );
  GTECH_NOT U416 ( .A(update_period[11]), .Z(n381) );
  GTECH_NAND2 U417 ( .A(n375), .B(n374), .Z(n376) );
  GTECH_NOT U418 ( .A(n225), .Z(n374) );
  GTECH_NOT U419 ( .A(update_period[10]), .Z(n375) );
  GTECH_NAND2 U420 ( .A(n334), .B(n378), .Z(n380) );
  GTECH_NOT U421 ( .A(update_period[9]), .Z(n378) );
  GTECH_NOT U422 ( .A(n215), .Z(n334) );
  GTECH_OA22 U423 ( .A(n216), .B(update_period[8]), .C(n383), .D(n384), .Z(
        n370) );
  GTECH_OAI21 U424 ( .A(n342), .B(n385), .C(n386), .Z(n384) );
  GTECH_NAND3 U425 ( .A(n387), .B(update_period[6]), .C(n218), .Z(n386) );
  GTECH_OAI2N2 U426 ( .A(n388), .B(n389), .C(n390), .D(n391), .Z(n383) );
  GTECH_ADD_ABC U427 ( .A(n392), .B(n219), .C(update_period[5]), .COUT(n391)
         );
  GTECH_AND2 U428 ( .A(update_period[4]), .B(n220), .Z(n392) );
  GTECH_OAI21 U429 ( .A(update_period[4]), .B(n220), .C(n390), .Z(n389) );
  GTECH_NOT U430 ( .A(n393), .Z(n390) );
  GTECH_OAI21 U431 ( .A(update_period[6]), .B(n218), .C(n387), .Z(n393) );
  GTECH_NAND2 U432 ( .A(n385), .B(n342), .Z(n387) );
  GTECH_NOT U433 ( .A(n217), .Z(n342) );
  GTECH_NOT U434 ( .A(update_period[7]), .Z(n385) );
  GTECH_OAI22 U435 ( .A(update_period[5]), .B(n219), .C(n394), .D(n395), .Z(
        n388) );
  GTECH_OAI21 U436 ( .A(n358), .B(n396), .C(n397), .Z(n395) );
  GTECH_NAND3 U437 ( .A(n398), .B(update_period[2]), .C(n222), .Z(n397) );
  GTECH_AND3 U438 ( .A(n399), .B(n400), .C(n398), .Z(n394) );
  GTECH_NAND2 U439 ( .A(n396), .B(n358), .Z(n398) );
  GTECH_NOT U440 ( .A(n221), .Z(n358) );
  GTECH_NOT U441 ( .A(update_period[3]), .Z(n396) );
  GTECH_OAI21 U442 ( .A(n401), .B(n361), .C(n229), .Z(n400) );
  GTECH_NOT U443 ( .A(n223), .Z(n361) );
  GTECH_OA21 U444 ( .A(n222), .B(update_period[2]), .C(n402), .Z(n399) );
  GTECH_OR_NOT U445 ( .A(n223), .B(n401), .Z(n402) );
  GTECH_NAND2 U446 ( .A(update_period[0]), .B(n224), .Z(n401) );
  GTECH_AO21 U447 ( .A(period[2]), .B(n265), .C(reset), .Z(N11) );
  GTECH_AO21 U448 ( .A(period[1]), .B(n265), .C(reset), .Z(N10) );
  GTECH_NOT U449 ( .A(n266), .Z(n265) );
  GTECH_NAND2 U450 ( .A(period_load), .B(n240), .Z(n266) );
  GTECH_NOT U451 ( .A(reset), .Z(n240) );
endmodule

