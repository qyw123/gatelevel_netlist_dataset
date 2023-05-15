
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
         n27, n28, n29, n31, n32, n33, n78, n79, n206, n209, sub_85_carry_2_,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n226, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK2S update_period_reg_11_ ( .J(n79), .K(n79), .TI(N21), .TE(N20), 
        .CP(clk), .CD(n78), .Q(update_period[11]) );
  GTECH_FJK2S update_period_reg_10_ ( .J(n79), .K(n79), .TI(N19), .TE(N20), 
        .CP(clk), .CD(n78), .Q(update_period[10]) );
  GTECH_FJK2S update_period_reg_9_ ( .J(n79), .K(n79), .TI(N18), .TE(N20), 
        .CP(clk), .CD(n78), .Q(update_period[9]) );
  GTECH_FJK2S update_period_reg_8_ ( .J(n79), .K(n79), .TI(N17), .TE(N20), 
        .CP(clk), .CD(n78), .Q(update_period[8]) );
  GTECH_FJK2S update_period_reg_7_ ( .J(n79), .K(n79), .TI(N16), .TE(N20), 
        .CP(clk), .CD(n78), .Q(update_period[7]) );
  GTECH_FJK2S update_period_reg_6_ ( .J(n79), .K(n79), .TI(N15), .TE(N20), 
        .CP(clk), .CD(n78), .Q(update_period[6]) );
  GTECH_FJK2S update_period_reg_5_ ( .J(n79), .K(n79), .TI(N14), .TE(N20), 
        .CP(clk), .CD(n78), .Q(update_period[5]) );
  GTECH_FJK2S update_period_reg_4_ ( .J(n79), .K(n79), .TI(N13), .TE(N20), 
        .CP(clk), .CD(n78), .Q(update_period[4]) );
  GTECH_FJK2S update_period_reg_3_ ( .J(n79), .K(n79), .TI(N12), .TE(N20), 
        .CP(clk), .CD(n78), .Q(update_period[3]) );
  GTECH_FJK2S update_period_reg_2_ ( .J(n79), .K(n79), .TI(N11), .TE(N20), 
        .CP(clk), .CD(n78), .Q(update_period[2]) );
  GTECH_FJK2S update_period_reg_1_ ( .J(n79), .K(n79), .TI(N10), .TE(N20), 
        .CP(clk), .CD(n78), .Q(update_period[1]), .QN(n226) );
  GTECH_FJK2S update_period_reg_0_ ( .J(n79), .K(n79), .TI(N9), .TE(N20), .CP(
        clk), .CD(n78), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK2S edge_counter_reg_5_ ( .J(n79), .K(n79), .TI(N146), .TE(N147), 
        .CP(clk), .CD(n78), .Q(dbg_edge_count[1]), .QN(n224) );
  GTECH_FJK2S edge_counter_reg_6_ ( .J(n79), .K(n79), .TI(N148), .TE(N147), 
        .CP(clk), .CD(n78), .Q(dbg_edge_count[2]), .QN(n223) );
  GTECH_FJK2S state_reg_0_ ( .J(n79), .K(n79), .TI(N150), .TE(N151), .CP(clk), 
        .CD(n78), .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK2S state_reg_1_ ( .J(n79), .K(n79), .TI(N152), .TE(N151), .CP(clk), 
        .CD(n78), .Q(dbg_state[1]), .QN(n209) );
  GTECH_FJK2S update_digits_reg ( .J(n79), .K(n79), .TI(N170), .TE(N169), .CP(
        clk), .CD(n78), .Q(update_digits), .QN(n15) );
  GTECH_FJK2S clk_counter_reg_10_ ( .J(n79), .K(n79), .TI(N132), .TE(N133), 
        .CP(clk), .CD(n78), .Q(dbg_clk_count[1]), .QN(n222) );
  GTECH_FJK2S clk_counter_reg_0_ ( .J(n79), .K(n79), .TI(N112), .TE(N133), 
        .CP(clk), .CD(n78), .Q(clk_counter[0]), .QN(n221) );
  GTECH_FJK2S clk_counter_reg_1_ ( .J(n79), .K(n79), .TI(N114), .TE(N133), 
        .CP(clk), .CD(n78), .Q(clk_counter[1]), .QN(n220) );
  GTECH_FJK2S clk_counter_reg_2_ ( .J(n79), .K(n79), .TI(N116), .TE(N133), 
        .CP(clk), .CD(n78), .Q(clk_counter[2]), .QN(n219) );
  GTECH_FJK2S clk_counter_reg_3_ ( .J(n79), .K(n79), .TI(N118), .TE(N133), 
        .CP(clk), .CD(n78), .Q(clk_counter[3]), .QN(n218) );
  GTECH_FJK2S clk_counter_reg_4_ ( .J(n79), .K(n79), .TI(N120), .TE(N133), 
        .CP(clk), .CD(n78), .Q(clk_counter[4]), .QN(n217) );
  GTECH_FJK2S clk_counter_reg_5_ ( .J(n79), .K(n79), .TI(N122), .TE(N133), 
        .CP(clk), .CD(n78), .Q(clk_counter[5]), .QN(n216) );
  GTECH_FJK2S clk_counter_reg_6_ ( .J(n79), .K(n79), .TI(N124), .TE(N133), 
        .CP(clk), .CD(n78), .Q(clk_counter[6]), .QN(n215) );
  GTECH_FJK2S clk_counter_reg_7_ ( .J(n79), .K(n79), .TI(N126), .TE(N133), 
        .CP(clk), .CD(n78), .Q(clk_counter[7]), .QN(n214) );
  GTECH_FJK2S clk_counter_reg_8_ ( .J(n79), .K(n79), .TI(N128), .TE(N133), 
        .CP(clk), .CD(n78), .Q(clk_counter[8]), .QN(n213) );
  GTECH_FJK2S clk_counter_reg_9_ ( .J(n79), .K(n79), .TI(N130), .TE(N133), 
        .CP(clk), .CD(n78), .Q(dbg_clk_count[0]), .QN(n212) );
  GTECH_FJK2S clk_counter_reg_11_ ( .J(n79), .K(n79), .TI(N134), .TE(N133), 
        .CP(clk), .CD(n78), .Q(dbg_clk_count[2]), .QN(n211) );
  GTECH_FJK2S edge_counter_reg_4_ ( .J(n79), .K(n79), .TI(N144), .TE(N147), 
        .CP(clk), .CD(n78), .Q(dbg_edge_count[0]), .QN(n210) );
  GTECH_FJK2S edge_counter_reg_0_ ( .J(n79), .K(n79), .TI(N136), .TE(N147), 
        .CP(clk), .CD(n78), .Q(N62), .QN(n16) );
  GTECH_FJK2S unit_count_reg_0_ ( .J(n79), .K(n79), .TI(N162), .TE(N167), .CP(
        clk), .CD(n78), .Q(unit_count[0]) );
  GTECH_FJK2S edge_counter_reg_1_ ( .J(n79), .K(n79), .TI(N138), .TE(N147), 
        .CP(clk), .CD(n78), .Q(sub_85_carry_2_) );
  GTECH_FJK2S unit_count_reg_1_ ( .J(n79), .K(n79), .TI(N164), .TE(N167), .CP(
        clk), .CD(n78), .Q(unit_count[1]) );
  GTECH_FJK2S edge_counter_reg_2_ ( .J(n79), .K(n79), .TI(N140), .TE(N147), 
        .CP(clk), .CD(n78), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK2S unit_count_reg_2_ ( .J(n79), .K(n79), .TI(N166), .TE(N167), .CP(
        clk), .CD(n78), .Q(unit_count[2]) );
  GTECH_FJK2S edge_counter_reg_3_ ( .J(n79), .K(n79), .TI(N142), .TE(N147), 
        .CP(clk), .CD(n78), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK2S unit_count_reg_3_ ( .J(n79), .K(n79), .TI(N168), .TE(N167), .CP(
        clk), .CD(n78), .Q(unit_count[3]) );
  GTECH_FJK2S ten_count_reg_0_ ( .J(n79), .K(n79), .TI(N154), .TE(N159), .CP(
        clk), .CD(n78), .Q(ten_count[0]) );
  GTECH_FJK2S ten_count_reg_1_ ( .J(n79), .K(n79), .TI(N156), .TE(N159), .CP(
        clk), .CD(n78), .Q(ten_count[1]) );
  GTECH_FJK2S ten_count_reg_2_ ( .J(n79), .K(n79), .TI(N158), .TE(N159), .CP(
        clk), .CD(n78), .Q(ten_count[2]) );
  GTECH_FJK2S ten_count_reg_3_ ( .J(n79), .K(n79), .TI(N160), .TE(N159), .CP(
        clk), .CD(n78), .Q(ten_count[3]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_0_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .CD(n78), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_1_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .CD(n78), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n27) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_2_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .CD(n78), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n28) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_3_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .CD(n78), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n29) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_0_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .CD(n78), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_1_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .CD(n78), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n31) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_2_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .CD(n78), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n32) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_3_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .CD(n78), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n33) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n206) );
  GTECH_ZERO U218 ( .Z(n79) );
  GTECH_ONE U219 ( .Z(n78) );
  GTECH_NAND2 U220 ( .A(n15), .B(n237), .Z(seven_segment0_N9) );
  GTECH_AND2 U221 ( .A(ten_count[0]), .B(n237), .Z(seven_segment0_N8) );
  GTECH_AND2 U222 ( .A(n206), .B(n237), .Z(seven_segment0_N6) );
  GTECH_AND2 U223 ( .A(unit_count[3]), .B(n237), .Z(seven_segment0_N22) );
  GTECH_AND2 U224 ( .A(unit_count[2]), .B(n237), .Z(seven_segment0_N20) );
  GTECH_AND2 U225 ( .A(unit_count[1]), .B(n237), .Z(seven_segment0_N18) );
  GTECH_AND2 U226 ( .A(unit_count[0]), .B(n237), .Z(seven_segment0_N16) );
  GTECH_AND2 U227 ( .A(ten_count[3]), .B(n237), .Z(seven_segment0_N14) );
  GTECH_AND2 U228 ( .A(ten_count[2]), .B(n237), .Z(seven_segment0_N12) );
  GTECH_AND2 U229 ( .A(ten_count[1]), .B(n237), .Z(seven_segment0_N10) );
  GTECH_NAND2 U230 ( .A(n238), .B(n239), .Z(segments[6]) );
  GTECH_OAI21 U231 ( .A(n240), .B(n241), .C(n242), .Z(segments[3]) );
  GTECH_AND_NOT U232 ( .A(n243), .B(segments[4]), .Z(n242) );
  GTECH_OAI21 U233 ( .A(n244), .B(n241), .C(n245), .Z(segments[4]) );
  GTECH_NAND2 U234 ( .A(n246), .B(n247), .Z(segments[2]) );
  GTECH_NOT U235 ( .A(segments[5]), .Z(n247) );
  GTECH_NAND2 U236 ( .A(n248), .B(n239), .Z(segments[5]) );
  GTECH_OA21 U237 ( .A(n249), .B(n250), .C(n243), .Z(n239) );
  GTECH_OR_NOT U238 ( .A(n244), .B(n251), .Z(n250) );
  GTECH_OA21 U239 ( .A(n251), .B(n252), .C(n245), .Z(n248) );
  GTECH_NOT U240 ( .A(n253), .Z(n246) );
  GTECH_OR3 U241 ( .A(n254), .B(n255), .C(n253), .Z(segments[1]) );
  GTECH_NAND2 U242 ( .A(n256), .B(n252), .Z(n253) );
  GTECH_AND3 U243 ( .A(n251), .B(n257), .C(n258), .Z(n254) );
  GTECH_NAND4 U244 ( .A(n238), .B(n256), .C(n245), .D(n243), .Z(segments[0])
         );
  GTECH_NAND4 U245 ( .A(n258), .B(n244), .C(n251), .D(n240), .Z(n243) );
  GTECH_NAND2 U246 ( .A(n259), .B(n257), .Z(n245) );
  GTECH_NOT U247 ( .A(n244), .Z(n257) );
  GTECH_NOT U248 ( .A(n252), .Z(n259) );
  GTECH_NAND2 U249 ( .A(n244), .B(n260), .Z(n256) );
  GTECH_NOT U250 ( .A(n241), .Z(n260) );
  GTECH_MUX2 U251 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n206), .Z(n244) );
  GTECH_NOT U252 ( .A(n255), .Z(n238) );
  GTECH_OAI22 U253 ( .A(n251), .B(n252), .C(n240), .D(n241), .Z(n255) );
  GTECH_NAND2 U254 ( .A(n251), .B(n261), .Z(n241) );
  GTECH_NOT U255 ( .A(n258), .Z(n261) );
  GTECH_NOT U256 ( .A(n249), .Z(n240) );
  GTECH_NAND2 U257 ( .A(n258), .B(n249), .Z(n252) );
  GTECH_MUX2 U258 ( .A(n32), .B(n28), .S(n206), .Z(n249) );
  GTECH_MUX2 U259 ( .A(n31), .B(n27), .S(n206), .Z(n258) );
  GTECH_MUX2 U260 ( .A(n33), .B(n29), .S(n206), .Z(n251) );
  GTECH_AO21 U261 ( .A(period[0]), .B(n262), .C(reset), .Z(N9) );
  GTECH_AND2 U262 ( .A(period[11]), .B(n262), .Z(N21) );
  GTECH_NAND2 U263 ( .A(n237), .B(n263), .Z(N20) );
  GTECH_AO21 U264 ( .A(period[10]), .B(n262), .C(reset), .Z(N19) );
  GTECH_AND2 U265 ( .A(period[9]), .B(n262), .Z(N18) );
  GTECH_AND2 U266 ( .A(period[8]), .B(n262), .Z(N17) );
  GTECH_AND2 U267 ( .A(N170), .B(n264), .Z(N168) );
  GTECH_NAND2 U268 ( .A(n265), .B(n266), .Z(N167) );
  GTECH_AND2 U269 ( .A(N170), .B(n267), .Z(N166) );
  GTECH_NOT U270 ( .A(n20), .Z(n267) );
  GTECH_AND2 U271 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U272 ( .A(N170), .B(n268), .Z(N162) );
  GTECH_NOT U273 ( .A(n16), .Z(n268) );
  GTECH_NOT U274 ( .A(n269), .Z(N170) );
  GTECH_NAND2 U275 ( .A(n270), .B(n237), .Z(n269) );
  GTECH_OAI22 U276 ( .A(n271), .B(n272), .C(n273), .D(n274), .Z(N160) );
  GTECH_MUX2 U277 ( .A(n271), .B(n275), .S(ten_count[2]), .Z(n274) );
  GTECH_NAND2 U278 ( .A(n276), .B(n271), .Z(n275) );
  GTECH_NOT U279 ( .A(ten_count[3]), .Z(n271) );
  GTECH_AO21 U280 ( .A(period[7]), .B(n262), .C(reset), .Z(N16) );
  GTECH_OAI21 U281 ( .A(n277), .B(n278), .C(n279), .Z(N159) );
  GTECH_NOT U282 ( .A(n280), .Z(n279) );
  GTECH_MUX2 U283 ( .A(n281), .B(n282), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U284 ( .A(n272), .Z(n282) );
  GTECH_NAND2 U285 ( .A(N152), .B(n283), .Z(n272) );
  GTECH_AND2 U286 ( .A(N152), .B(n276), .Z(n281) );
  GTECH_NOT U287 ( .A(n283), .Z(n276) );
  GTECH_NAND2 U288 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n283) );
  GTECH_MUX2 U289 ( .A(n284), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U290 ( .A(N152), .B(ten_count[0]), .Z(n284) );
  GTECH_NOT U291 ( .A(n285), .Z(N154) );
  GTECH_NAND2 U292 ( .A(N152), .B(n286), .Z(n285) );
  GTECH_NOT U293 ( .A(ten_count[0]), .Z(n286) );
  GTECH_NAND2 U294 ( .A(n287), .B(n209), .Z(N151) );
  GTECH_OA21 U295 ( .A(n14), .B(n288), .C(n265), .Z(n287) );
  GTECH_NOT U296 ( .A(n289), .Z(n265) );
  GTECH_OAI21 U297 ( .A(n290), .B(n277), .C(n237), .Z(n289) );
  GTECH_AND2 U298 ( .A(period[6]), .B(n262), .Z(N15) );
  GTECH_OAI21 U299 ( .A(n273), .B(n288), .C(n291), .Z(N148) );
  GTECH_MUX2 U300 ( .A(n292), .B(n293), .S(n223), .Z(n291) );
  GTECH_OR3 U301 ( .A(n294), .B(n295), .C(n224), .Z(n293) );
  GTECH_AND_NOT U302 ( .A(n296), .B(n297), .Z(n292) );
  GTECH_MUX2 U303 ( .A(n273), .B(n295), .S(n224), .Z(n296) );
  GTECH_OR3 U304 ( .A(n270), .B(n298), .C(n280), .Z(N147) );
  GTECH_OAI21 U305 ( .A(n14), .B(n299), .C(n237), .Z(n280) );
  GTECH_NAND2 U306 ( .A(n288), .B(n209), .Z(n299) );
  GTECH_NAND4 U307 ( .A(n224), .B(n223), .C(n210), .D(n300), .Z(n288) );
  GTECH_AND3 U308 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n298) );
  GTECH_NOT U309 ( .A(n266), .Z(n270) );
  GTECH_NAND2 U310 ( .A(n14), .B(n301), .Z(n266) );
  GTECH_NOT U311 ( .A(n209), .Z(n301) );
  GTECH_MUX2 U312 ( .A(n297), .B(n302), .S(n224), .Z(N146) );
  GTECH_OAI21 U313 ( .A(n294), .B(n295), .C(n303), .Z(n302) );
  GTECH_OAI21 U314 ( .A(n304), .B(n295), .C(n305), .Z(n297) );
  GTECH_OAI21 U315 ( .A(n306), .B(n307), .C(N152), .Z(n305) );
  GTECH_NOT U316 ( .A(n294), .Z(n304) );
  GTECH_OR3 U317 ( .A(n22), .B(n210), .C(n308), .Z(n294) );
  GTECH_NAND2 U318 ( .A(n309), .B(n303), .Z(N144) );
  GTECH_OR3 U319 ( .A(n306), .B(n273), .C(n307), .Z(n303) );
  GTECH_NOT U320 ( .A(n210), .Z(n307) );
  GTECH_NOT U321 ( .A(n300), .Z(n306) );
  GTECH_MUX2 U322 ( .A(n310), .B(n311), .S(n210), .Z(n309) );
  GTECH_OR3 U323 ( .A(n22), .B(n308), .C(n295), .Z(n311) );
  GTECH_OA21 U324 ( .A(n273), .B(n300), .C(n312), .Z(n310) );
  GTECH_OAI21 U325 ( .A(n22), .B(n308), .C(N150), .Z(n312) );
  GTECH_NAND2 U326 ( .A(n313), .B(n264), .Z(n300) );
  GTECH_NOT U327 ( .A(n22), .Z(n264) );
  GTECH_OAI21 U328 ( .A(n295), .B(n314), .C(n315), .Z(N142) );
  GTECH_MUX2 U329 ( .A(n316), .B(n317), .S(n22), .Z(n315) );
  GTECH_NAND2 U330 ( .A(N152), .B(n313), .Z(n317) );
  GTECH_XNOR2 U331 ( .A(n22), .B(n308), .Z(n314) );
  GTECH_OR3 U332 ( .A(n20), .B(n16), .C(n318), .Z(n308) );
  GTECH_NAND2 U333 ( .A(n319), .B(n316), .Z(N140) );
  GTECH_NAND2 U334 ( .A(n320), .B(N152), .Z(n316) );
  GTECH_NOT U335 ( .A(n273), .Z(N152) );
  GTECH_NOT U336 ( .A(n313), .Z(n320) );
  GTECH_NAND2 U337 ( .A(n20), .B(n318), .Z(n313) );
  GTECH_MUX2 U338 ( .A(n321), .B(n322), .S(n20), .Z(n319) );
  GTECH_OR3 U339 ( .A(n16), .B(n318), .C(n295), .Z(n322) );
  GTECH_NOT U340 ( .A(sub_85_carry_2_), .Z(n318) );
  GTECH_AND2 U341 ( .A(n323), .B(n324), .Z(n321) );
  GTECH_MUX2 U342 ( .A(n295), .B(n273), .S(sub_85_carry_2_), .Z(n323) );
  GTECH_AO21 U343 ( .A(period[5]), .B(n262), .C(reset), .Z(N14) );
  GTECH_MUX2 U344 ( .A(n325), .B(n326), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U345 ( .A(n324), .Z(n326) );
  GTECH_OAI21 U346 ( .A(n16), .B(n295), .C(n273), .Z(n325) );
  GTECH_OAI21 U347 ( .A(n16), .B(n273), .C(n324), .Z(N136) );
  GTECH_NAND2 U348 ( .A(n16), .B(N150), .Z(n324) );
  GTECH_NOT U349 ( .A(n295), .Z(N150) );
  GTECH_NAND2 U350 ( .A(n327), .B(n237), .Z(n295) );
  GTECH_NOT U351 ( .A(n278), .Z(n327) );
  GTECH_NAND2 U352 ( .A(n209), .B(n328), .Z(n273) );
  GTECH_NOT U353 ( .A(N169), .Z(n328) );
  GTECH_NAND2 U354 ( .A(n237), .B(n290), .Z(N169) );
  GTECH_NOT U355 ( .A(n14), .Z(n290) );
  GTECH_AND2 U356 ( .A(n329), .B(n330), .Z(N134) );
  GTECH_OAI21 U357 ( .A(n222), .B(n331), .C(n211), .Z(n330) );
  GTECH_NAND2 U358 ( .A(n237), .B(n278), .Z(N133) );
  GTECH_NAND2 U359 ( .A(n209), .B(n14), .Z(n278) );
  GTECH_AND2 U360 ( .A(n332), .B(n329), .Z(N132) );
  GTECH_XOR2 U361 ( .A(n331), .B(n222), .Z(n332) );
  GTECH_NAND2 U362 ( .A(n333), .B(n334), .Z(n331) );
  GTECH_NOT U363 ( .A(n212), .Z(n334) );
  GTECH_NOT U364 ( .A(n335), .Z(n333) );
  GTECH_AND2 U365 ( .A(n336), .B(n329), .Z(N130) );
  GTECH_XOR2 U366 ( .A(n335), .B(n212), .Z(n336) );
  GTECH_NAND2 U367 ( .A(n337), .B(n338), .Z(n335) );
  GTECH_NOT U368 ( .A(n213), .Z(n338) );
  GTECH_NOT U369 ( .A(n339), .Z(n337) );
  GTECH_AND2 U370 ( .A(period[4]), .B(n262), .Z(N13) );
  GTECH_AND2 U371 ( .A(n340), .B(n329), .Z(N128) );
  GTECH_XOR2 U372 ( .A(n339), .B(n213), .Z(n340) );
  GTECH_NAND2 U373 ( .A(n341), .B(n342), .Z(n339) );
  GTECH_NOT U374 ( .A(n343), .Z(n341) );
  GTECH_AND2 U375 ( .A(n344), .B(n329), .Z(N126) );
  GTECH_XOR2 U376 ( .A(n343), .B(n214), .Z(n344) );
  GTECH_NAND2 U377 ( .A(n345), .B(n346), .Z(n343) );
  GTECH_NOT U378 ( .A(n215), .Z(n346) );
  GTECH_NOT U379 ( .A(n347), .Z(n345) );
  GTECH_AND2 U380 ( .A(n348), .B(n329), .Z(N124) );
  GTECH_XOR2 U381 ( .A(n347), .B(n215), .Z(n348) );
  GTECH_NAND2 U382 ( .A(n349), .B(n350), .Z(n347) );
  GTECH_NOT U383 ( .A(n216), .Z(n350) );
  GTECH_NOT U384 ( .A(n351), .Z(n349) );
  GTECH_AND2 U385 ( .A(n352), .B(n329), .Z(N122) );
  GTECH_XOR2 U386 ( .A(n351), .B(n216), .Z(n352) );
  GTECH_NAND2 U387 ( .A(n353), .B(n354), .Z(n351) );
  GTECH_NOT U388 ( .A(n217), .Z(n354) );
  GTECH_NOT U389 ( .A(n355), .Z(n353) );
  GTECH_AND2 U390 ( .A(n356), .B(n329), .Z(N120) );
  GTECH_XOR2 U391 ( .A(n355), .B(n217), .Z(n356) );
  GTECH_NAND2 U392 ( .A(n357), .B(n358), .Z(n355) );
  GTECH_NOT U393 ( .A(n359), .Z(n357) );
  GTECH_AO21 U394 ( .A(period[3]), .B(n262), .C(reset), .Z(N12) );
  GTECH_AND2 U395 ( .A(n360), .B(n329), .Z(N118) );
  GTECH_XOR2 U396 ( .A(n359), .B(n218), .Z(n360) );
  GTECH_OR3 U397 ( .A(n221), .B(n220), .C(n219), .Z(n359) );
  GTECH_OAI22 U398 ( .A(n219), .B(n361), .C(n362), .D(n363), .Z(N116) );
  GTECH_MUX2 U399 ( .A(n364), .B(n365), .S(n219), .Z(n363) );
  GTECH_NAND2 U400 ( .A(n364), .B(n366), .Z(n365) );
  GTECH_MUX2 U401 ( .A(N112), .B(n367), .S(n220), .Z(N114) );
  GTECH_AND2 U402 ( .A(n329), .B(n366), .Z(n367) );
  GTECH_NOT U403 ( .A(n221), .Z(n366) );
  GTECH_NOT U404 ( .A(n361), .Z(N112) );
  GTECH_NAND2 U405 ( .A(n329), .B(n221), .Z(n361) );
  GTECH_NOT U406 ( .A(n362), .Z(n329) );
  GTECH_NAND2 U407 ( .A(n277), .B(n237), .Z(n362) );
  GTECH_NOT U408 ( .A(n368), .Z(n277) );
  GTECH_AOI222 U409 ( .A(n369), .B(n370), .C(update_period[11]), .D(n211), .E(
        n371), .F(n372), .Z(n368) );
  GTECH_OAI2N2 U410 ( .A(n373), .B(n374), .C(n375), .D(n376), .Z(n371) );
  GTECH_AO22 U411 ( .A(update_period[8]), .B(n377), .C(n212), .D(
        update_period[9]), .Z(n376) );
  GTECH_OA21 U412 ( .A(n212), .B(update_period[9]), .C(n213), .Z(n377) );
  GTECH_OA21 U413 ( .A(n378), .B(n379), .C(n380), .Z(n370) );
  GTECH_AND2 U414 ( .A(n375), .B(n372), .Z(n380) );
  GTECH_NAND2 U415 ( .A(n381), .B(n382), .Z(n372) );
  GTECH_NOT U416 ( .A(update_period[11]), .Z(n382) );
  GTECH_NOT U417 ( .A(n211), .Z(n381) );
  GTECH_NAND2 U418 ( .A(n374), .B(n373), .Z(n375) );
  GTECH_NOT U419 ( .A(n222), .Z(n373) );
  GTECH_NOT U420 ( .A(update_period[10]), .Z(n374) );
  GTECH_OAI2N2 U421 ( .A(n342), .B(n383), .C(n384), .D(n385), .Z(n379) );
  GTECH_AND2 U422 ( .A(update_period[6]), .B(n215), .Z(n384) );
  GTECH_OAI2N2 U423 ( .A(n386), .B(n387), .C(n388), .D(n389), .Z(n378) );
  GTECH_ADD_ABC U424 ( .A(n390), .B(n216), .C(update_period[5]), .COUT(n389)
         );
  GTECH_AND2 U425 ( .A(update_period[4]), .B(n217), .Z(n390) );
  GTECH_OAI21 U426 ( .A(update_period[4]), .B(n217), .C(n388), .Z(n387) );
  GTECH_NOT U427 ( .A(n391), .Z(n388) );
  GTECH_OAI21 U428 ( .A(update_period[6]), .B(n215), .C(n385), .Z(n391) );
  GTECH_NAND2 U429 ( .A(n383), .B(n342), .Z(n385) );
  GTECH_NOT U430 ( .A(n214), .Z(n342) );
  GTECH_NOT U431 ( .A(update_period[7]), .Z(n383) );
  GTECH_OAI22 U432 ( .A(update_period[5]), .B(n216), .C(n392), .D(n393), .Z(
        n386) );
  GTECH_OAI2N2 U433 ( .A(n358), .B(n394), .C(n395), .D(n396), .Z(n393) );
  GTECH_AND2 U434 ( .A(n219), .B(update_period[2]), .Z(n395) );
  GTECH_AND3 U435 ( .A(n397), .B(n398), .C(n396), .Z(n392) );
  GTECH_NAND2 U436 ( .A(n394), .B(n358), .Z(n396) );
  GTECH_NOT U437 ( .A(n218), .Z(n358) );
  GTECH_NOT U438 ( .A(update_period[3]), .Z(n394) );
  GTECH_OAI21 U439 ( .A(n399), .B(n364), .C(n226), .Z(n398) );
  GTECH_NOT U440 ( .A(n220), .Z(n364) );
  GTECH_OA21 U441 ( .A(n219), .B(update_period[2]), .C(n400), .Z(n397) );
  GTECH_OR_NOT U442 ( .A(n220), .B(n399), .Z(n400) );
  GTECH_NAND2 U443 ( .A(update_period[0]), .B(n221), .Z(n399) );
  GTECH_OA22 U444 ( .A(n213), .B(update_period[8]), .C(n212), .D(
        update_period[9]), .Z(n369) );
  GTECH_AO21 U445 ( .A(period[2]), .B(n262), .C(reset), .Z(N11) );
  GTECH_AO21 U446 ( .A(period[1]), .B(n262), .C(reset), .Z(N10) );
  GTECH_NOT U447 ( .A(n263), .Z(n262) );
  GTECH_NAND2 U448 ( .A(period_load), .B(n237), .Z(n263) );
  GTECH_NOT U449 ( .A(reset), .Z(n237) );
endmodule

