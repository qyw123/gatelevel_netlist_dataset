
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
         n26, n28, n30, n32, n77, n78, n205, n209, sub_85_carry_2_, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n237, n238, n239, n240, n241, n242, n243, n244, n245,
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
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK2S update_period_reg_11_ ( .J(n78), .K(n78), .TI(N21), .TE(N20), 
        .CP(clk), .CD(n77), .Q(update_period[11]) );
  GTECH_FJK2S update_period_reg_10_ ( .J(n78), .K(n78), .TI(N19), .TE(N20), 
        .CP(clk), .CD(n77), .Q(update_period[10]) );
  GTECH_FJK2S update_period_reg_9_ ( .J(n78), .K(n78), .TI(N18), .TE(N20), 
        .CP(clk), .CD(n77), .Q(update_period[9]) );
  GTECH_FJK2S update_period_reg_8_ ( .J(n78), .K(n78), .TI(N17), .TE(N20), 
        .CP(clk), .CD(n77), .Q(update_period[8]) );
  GTECH_FJK2S update_period_reg_7_ ( .J(n78), .K(n78), .TI(N16), .TE(N20), 
        .CP(clk), .CD(n77), .Q(update_period[7]) );
  GTECH_FJK2S update_period_reg_6_ ( .J(n78), .K(n78), .TI(N15), .TE(N20), 
        .CP(clk), .CD(n77), .Q(update_period[6]) );
  GTECH_FJK2S update_period_reg_5_ ( .J(n78), .K(n78), .TI(N14), .TE(N20), 
        .CP(clk), .CD(n77), .Q(update_period[5]) );
  GTECH_FJK2S update_period_reg_4_ ( .J(n78), .K(n78), .TI(N13), .TE(N20), 
        .CP(clk), .CD(n77), .Q(update_period[4]) );
  GTECH_FJK2S update_period_reg_3_ ( .J(n78), .K(n78), .TI(N12), .TE(N20), 
        .CP(clk), .CD(n77), .Q(update_period[3]) );
  GTECH_FJK2S update_period_reg_2_ ( .J(n78), .K(n78), .TI(N11), .TE(N20), 
        .CP(clk), .CD(n77), .Q(update_period[2]) );
  GTECH_FJK2S update_period_reg_1_ ( .J(n78), .K(n78), .TI(N10), .TE(N20), 
        .CP(clk), .CD(n77), .Q(update_period[1]) );
  GTECH_FJK2S update_period_reg_0_ ( .J(n78), .K(n78), .TI(N9), .TE(N20), .CP(
        clk), .CD(n77), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK2S edge_counter_reg_5_ ( .J(n78), .K(n78), .TI(N146), .TE(N147), 
        .CP(clk), .CD(n77), .Q(dbg_edge_count[1]), .QN(n224) );
  GTECH_FJK2S edge_counter_reg_6_ ( .J(n78), .K(n78), .TI(N148), .TE(N147), 
        .CP(clk), .CD(n77), .Q(dbg_edge_count[2]), .QN(n223) );
  GTECH_FJK2S state_reg_0_ ( .J(n78), .K(n78), .TI(N150), .TE(N151), .CP(clk), 
        .CD(n77), .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK2S state_reg_1_ ( .J(n78), .K(n78), .TI(N152), .TE(N151), .CP(clk), 
        .CD(n77), .Q(dbg_state[1]), .QN(n209) );
  GTECH_FJK2S update_digits_reg ( .J(n78), .K(n78), .TI(N170), .TE(N169), .CP(
        clk), .CD(n77), .Q(update_digits), .QN(n15) );
  GTECH_FJK2S clk_counter_reg_10_ ( .J(n78), .K(n78), .TI(N132), .TE(N133), 
        .CP(clk), .CD(n77), .Q(dbg_clk_count[1]), .QN(n222) );
  GTECH_FJK2S clk_counter_reg_0_ ( .J(n78), .K(n78), .TI(N112), .TE(N133), 
        .CP(clk), .CD(n77), .Q(clk_counter[0]), .QN(n221) );
  GTECH_FJK2S clk_counter_reg_1_ ( .J(n78), .K(n78), .TI(N114), .TE(N133), 
        .CP(clk), .CD(n77), .Q(clk_counter[1]), .QN(n220) );
  GTECH_FJK2S clk_counter_reg_2_ ( .J(n78), .K(n78), .TI(N116), .TE(N133), 
        .CP(clk), .CD(n77), .Q(clk_counter[2]), .QN(n219) );
  GTECH_FJK2S clk_counter_reg_3_ ( .J(n78), .K(n78), .TI(N118), .TE(N133), 
        .CP(clk), .CD(n77), .Q(clk_counter[3]), .QN(n218) );
  GTECH_FJK2S clk_counter_reg_4_ ( .J(n78), .K(n78), .TI(N120), .TE(N133), 
        .CP(clk), .CD(n77), .Q(clk_counter[4]), .QN(n217) );
  GTECH_FJK2S clk_counter_reg_5_ ( .J(n78), .K(n78), .TI(N122), .TE(N133), 
        .CP(clk), .CD(n77), .Q(clk_counter[5]), .QN(n216) );
  GTECH_FJK2S clk_counter_reg_6_ ( .J(n78), .K(n78), .TI(N124), .TE(N133), 
        .CP(clk), .CD(n77), .Q(clk_counter[6]), .QN(n215) );
  GTECH_FJK2S clk_counter_reg_7_ ( .J(n78), .K(n78), .TI(N126), .TE(N133), 
        .CP(clk), .CD(n77), .Q(clk_counter[7]), .QN(n214) );
  GTECH_FJK2S clk_counter_reg_8_ ( .J(n78), .K(n78), .TI(N128), .TE(N133), 
        .CP(clk), .CD(n77), .Q(clk_counter[8]), .QN(n213) );
  GTECH_FJK2S clk_counter_reg_9_ ( .J(n78), .K(n78), .TI(N130), .TE(N133), 
        .CP(clk), .CD(n77), .Q(dbg_clk_count[0]), .QN(n212) );
  GTECH_FJK2S clk_counter_reg_11_ ( .J(n78), .K(n78), .TI(N134), .TE(N133), 
        .CP(clk), .CD(n77), .Q(dbg_clk_count[2]), .QN(n211) );
  GTECH_FJK2S edge_counter_reg_4_ ( .J(n78), .K(n78), .TI(N144), .TE(N147), 
        .CP(clk), .CD(n77), .Q(dbg_edge_count[0]), .QN(n210) );
  GTECH_FJK2S edge_counter_reg_0_ ( .J(n78), .K(n78), .TI(N136), .TE(N147), 
        .CP(clk), .CD(n77), .Q(N62), .QN(n16) );
  GTECH_FJK2S unit_count_reg_0_ ( .J(n78), .K(n78), .TI(N162), .TE(N167), .CP(
        clk), .CD(n77), .Q(unit_count[0]) );
  GTECH_FJK2S edge_counter_reg_1_ ( .J(n78), .K(n78), .TI(N138), .TE(N147), 
        .CP(clk), .CD(n77), .Q(sub_85_carry_2_) );
  GTECH_FJK2S unit_count_reg_1_ ( .J(n78), .K(n78), .TI(N164), .TE(N167), .CP(
        clk), .CD(n77), .Q(unit_count[1]) );
  GTECH_FJK2S edge_counter_reg_2_ ( .J(n78), .K(n78), .TI(N140), .TE(N147), 
        .CP(clk), .CD(n77), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK2S unit_count_reg_2_ ( .J(n78), .K(n78), .TI(N166), .TE(N167), .CP(
        clk), .CD(n77), .Q(unit_count[2]) );
  GTECH_FJK2S edge_counter_reg_3_ ( .J(n78), .K(n78), .TI(N142), .TE(N147), 
        .CP(clk), .CD(n77), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK2S unit_count_reg_3_ ( .J(n78), .K(n78), .TI(N168), .TE(N167), .CP(
        clk), .CD(n77), .Q(unit_count[3]) );
  GTECH_FJK2S ten_count_reg_0_ ( .J(n78), .K(n78), .TI(N154), .TE(N159), .CP(
        clk), .CD(n77), .Q(ten_count[0]) );
  GTECH_FJK2S ten_count_reg_1_ ( .J(n78), .K(n78), .TI(N156), .TE(N159), .CP(
        clk), .CD(n77), .Q(ten_count[1]) );
  GTECH_FJK2S ten_count_reg_2_ ( .J(n78), .K(n78), .TI(N158), .TE(N159), .CP(
        clk), .CD(n77), .Q(ten_count[2]) );
  GTECH_FJK2S ten_count_reg_3_ ( .J(n78), .K(n78), .TI(N160), .TE(N159), .CP(
        clk), .CD(n77), .Q(ten_count[3]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_0_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .CD(n77), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_1_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .CD(n77), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n26) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_2_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .CD(n77), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_3_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .CD(n77), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_0_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .CD(n77), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_1_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .CD(n77), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n30) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_2_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .CD(n77), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_3_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .CD(n77), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n205) );
  GTECH_ZERO U218 ( .Z(n78) );
  GTECH_ONE U219 ( .Z(n77) );
  GTECH_NAND2 U220 ( .A(n15), .B(n237), .Z(seven_segment0_N9) );
  GTECH_AND2 U221 ( .A(ten_count[0]), .B(n237), .Z(seven_segment0_N8) );
  GTECH_AND2 U222 ( .A(n205), .B(n237), .Z(seven_segment0_N6) );
  GTECH_AND2 U223 ( .A(unit_count[3]), .B(n237), .Z(seven_segment0_N22) );
  GTECH_AND2 U224 ( .A(unit_count[2]), .B(n237), .Z(seven_segment0_N20) );
  GTECH_AND2 U225 ( .A(unit_count[1]), .B(n237), .Z(seven_segment0_N18) );
  GTECH_AND2 U226 ( .A(unit_count[0]), .B(n237), .Z(seven_segment0_N16) );
  GTECH_AND2 U227 ( .A(ten_count[3]), .B(n237), .Z(seven_segment0_N14) );
  GTECH_AND2 U228 ( .A(ten_count[2]), .B(n237), .Z(seven_segment0_N12) );
  GTECH_AND2 U229 ( .A(ten_count[1]), .B(n237), .Z(seven_segment0_N10) );
  GTECH_NAND2 U230 ( .A(n238), .B(n239), .Z(segments[6]) );
  GTECH_NOT U231 ( .A(n240), .Z(n238) );
  GTECH_NOT U232 ( .A(n241), .Z(segments[4]) );
  GTECH_NAND3 U233 ( .A(n239), .B(n241), .C(n242), .Z(segments[3]) );
  GTECH_AO21 U234 ( .A(n243), .B(n244), .C(n245), .Z(n241) );
  GTECH_NAND2 U235 ( .A(n246), .B(n247), .Z(segments[2]) );
  GTECH_NOT U236 ( .A(segments[5]), .Z(n247) );
  GTECH_AO21 U237 ( .A(n248), .B(n249), .C(n240), .Z(segments[5]) );
  GTECH_NAND2 U238 ( .A(n250), .B(n242), .Z(n240) );
  GTECH_MUX2 U239 ( .A(n243), .B(n251), .S(n252), .Z(n250) );
  GTECH_NAND2 U240 ( .A(n249), .B(n253), .Z(n251) );
  GTECH_NAND3 U241 ( .A(n254), .B(n239), .C(n246), .Z(segments[1]) );
  GTECH_NOT U242 ( .A(n255), .Z(n246) );
  GTECH_AO21 U243 ( .A(n245), .B(n256), .C(n248), .Z(n255) );
  GTECH_NOT U244 ( .A(n243), .Z(n248) );
  GTECH_NAND3 U245 ( .A(n252), .B(n249), .C(n257), .Z(n254) );
  GTECH_NAND3 U246 ( .A(n242), .B(n239), .C(n258), .Z(segments[0]) );
  GTECH_OA22 U247 ( .A(n259), .B(n243), .C(n244), .D(n249), .Z(n258) );
  GTECH_NOT U248 ( .A(n245), .Z(n249) );
  GTECH_NAND2 U249 ( .A(n257), .B(n260), .Z(n243) );
  GTECH_NAND2 U250 ( .A(n256), .B(n260), .Z(n239) );
  GTECH_NOT U251 ( .A(n253), .Z(n260) );
  GTECH_NOT U252 ( .A(n244), .Z(n256) );
  GTECH_NAND2 U253 ( .A(n252), .B(n261), .Z(n244) );
  GTECH_NOT U254 ( .A(n257), .Z(n261) );
  GTECH_NAND3 U255 ( .A(n257), .B(n253), .C(n259), .Z(n242) );
  GTECH_NOT U256 ( .A(n262), .Z(n259) );
  GTECH_NAND2 U257 ( .A(n245), .B(n252), .Z(n262) );
  GTECH_MUX2 U258 ( .A(n32), .B(n28), .S(n205), .Z(n252) );
  GTECH_MUX2 U259 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n205), .Z(n245) );
  GTECH_MUX2 U260 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n205), .Z(n253) );
  GTECH_MUX2 U261 ( .A(n30), .B(n26), .S(n205), .Z(n257) );
  GTECH_AO21 U262 ( .A(period[0]), .B(n263), .C(reset), .Z(N9) );
  GTECH_AND2 U263 ( .A(period[11]), .B(n263), .Z(N21) );
  GTECH_NAND2 U264 ( .A(n237), .B(n264), .Z(N20) );
  GTECH_AO21 U265 ( .A(period[10]), .B(n263), .C(reset), .Z(N19) );
  GTECH_AND2 U266 ( .A(period[9]), .B(n263), .Z(N18) );
  GTECH_AND2 U267 ( .A(period[8]), .B(n263), .Z(N17) );
  GTECH_AND2 U268 ( .A(N170), .B(n265), .Z(N168) );
  GTECH_NAND2 U269 ( .A(n266), .B(n267), .Z(N167) );
  GTECH_AND2 U270 ( .A(N170), .B(n268), .Z(N166) );
  GTECH_AND2 U271 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U272 ( .A(N170), .B(n269), .Z(N162) );
  GTECH_NOT U273 ( .A(n270), .Z(N170) );
  GTECH_NAND2 U274 ( .A(n271), .B(n237), .Z(n270) );
  GTECH_NOT U275 ( .A(n267), .Z(n271) );
  GTECH_MUX2 U276 ( .A(n272), .B(n273), .S(ten_count[3]), .Z(N160) );
  GTECH_AO21 U277 ( .A(N152), .B(n274), .C(n275), .Z(n273) );
  GTECH_NOT U278 ( .A(ten_count[2]), .Z(n274) );
  GTECH_AND2 U279 ( .A(n276), .B(ten_count[2]), .Z(n272) );
  GTECH_AO21 U280 ( .A(period[7]), .B(n263), .C(reset), .Z(N16) );
  GTECH_AO21 U281 ( .A(n277), .B(n278), .C(n279), .Z(N159) );
  GTECH_MUX2 U282 ( .A(n276), .B(n275), .S(ten_count[2]), .Z(N158) );
  GTECH_AO21 U283 ( .A(N152), .B(n280), .C(N154), .Z(n275) );
  GTECH_NOT U284 ( .A(ten_count[1]), .Z(n280) );
  GTECH_NOT U285 ( .A(n281), .Z(n276) );
  GTECH_NAND3 U286 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n281) );
  GTECH_MUX2 U287 ( .A(n282), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U288 ( .A(N152), .B(ten_count[0]), .Z(n282) );
  GTECH_NOT U289 ( .A(n283), .Z(N154) );
  GTECH_NAND2 U290 ( .A(N152), .B(n284), .Z(n283) );
  GTECH_NOT U291 ( .A(ten_count[0]), .Z(n284) );
  GTECH_NAND2 U292 ( .A(n285), .B(n209), .Z(N151) );
  GTECH_OA21 U293 ( .A(n14), .B(n286), .C(n266), .Z(n285) );
  GTECH_NOT U294 ( .A(n287), .Z(n266) );
  GTECH_AO21 U295 ( .A(n278), .B(n14), .C(reset), .Z(n287) );
  GTECH_NOT U296 ( .A(n288), .Z(n278) );
  GTECH_AND2 U297 ( .A(period[6]), .B(n263), .Z(N15) );
  GTECH_NOT U298 ( .A(n289), .Z(N148) );
  GTECH_OA21 U299 ( .A(n286), .B(n290), .C(n291), .Z(n289) );
  GTECH_MUX2 U300 ( .A(n292), .B(n293), .S(n223), .Z(n291) );
  GTECH_OR3 U301 ( .A(n224), .B(n294), .C(n295), .Z(n293) );
  GTECH_AND_NOT U302 ( .A(n296), .B(n297), .Z(n292) );
  GTECH_MUX2 U303 ( .A(n290), .B(n294), .S(n224), .Z(n296) );
  GTECH_NAND3 U304 ( .A(n298), .B(n267), .C(n299), .Z(N147) );
  GTECH_NOT U305 ( .A(n279), .Z(n299) );
  GTECH_NAND2 U306 ( .A(n237), .B(n300), .Z(n279) );
  GTECH_NAND3 U307 ( .A(n286), .B(n301), .C(n209), .Z(n300) );
  GTECH_NAND4 U308 ( .A(n224), .B(n223), .C(n210), .D(n302), .Z(n286) );
  GTECH_NAND2 U309 ( .A(n14), .B(n303), .Z(n267) );
  GTECH_NOT U310 ( .A(n209), .Z(n303) );
  GTECH_NAND3 U311 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n298) );
  GTECH_MUX2 U312 ( .A(n297), .B(n304), .S(n224), .Z(N146) );
  GTECH_AO21 U313 ( .A(N150), .B(n305), .C(n306), .Z(n304) );
  GTECH_NOT U314 ( .A(n307), .Z(n306) );
  GTECH_OAI22 U315 ( .A(n305), .B(n294), .C(n308), .D(n290), .Z(n297) );
  GTECH_AND2 U316 ( .A(n210), .B(n302), .Z(n308) );
  GTECH_NOT U317 ( .A(n295), .Z(n305) );
  GTECH_NAND3 U318 ( .A(n309), .B(n265), .C(n310), .Z(n295) );
  GTECH_NOT U319 ( .A(n210), .Z(n309) );
  GTECH_NAND2 U320 ( .A(n311), .B(n307), .Z(N144) );
  GTECH_NAND3 U321 ( .A(N152), .B(n302), .C(n210), .Z(n307) );
  GTECH_MUX2 U322 ( .A(n312), .B(n313), .S(n210), .Z(n311) );
  GTECH_NAND3 U323 ( .A(n310), .B(n265), .C(N150), .Z(n313) );
  GTECH_OA21 U324 ( .A(n290), .B(n302), .C(n314), .Z(n312) );
  GTECH_AO21 U325 ( .A(n310), .B(n265), .C(n294), .Z(n314) );
  GTECH_NOT U326 ( .A(n315), .Z(n310) );
  GTECH_NAND2 U327 ( .A(n316), .B(n265), .Z(n302) );
  GTECH_NOT U328 ( .A(n22), .Z(n265) );
  GTECH_AO21 U329 ( .A(n317), .B(N150), .C(n318), .Z(N142) );
  GTECH_MUX2 U330 ( .A(n319), .B(n320), .S(n22), .Z(n318) );
  GTECH_AND2 U331 ( .A(N152), .B(n316), .Z(n320) );
  GTECH_NOT U332 ( .A(n321), .Z(n319) );
  GTECH_XOR2 U333 ( .A(n315), .B(n22), .Z(n317) );
  GTECH_NAND3 U334 ( .A(n269), .B(n268), .C(sub_85_carry_2_), .Z(n315) );
  GTECH_NOT U335 ( .A(n20), .Z(n268) );
  GTECH_NAND2 U336 ( .A(n322), .B(n321), .Z(N140) );
  GTECH_NAND2 U337 ( .A(n323), .B(N152), .Z(n321) );
  GTECH_NOT U338 ( .A(n316), .Z(n323) );
  GTECH_NAND2 U339 ( .A(n20), .B(n324), .Z(n316) );
  GTECH_NOT U340 ( .A(sub_85_carry_2_), .Z(n324) );
  GTECH_MUX2 U341 ( .A(n325), .B(n326), .S(n20), .Z(n322) );
  GTECH_NAND3 U342 ( .A(sub_85_carry_2_), .B(n269), .C(N150), .Z(n326) );
  GTECH_AND2 U343 ( .A(n327), .B(n328), .Z(n325) );
  GTECH_MUX2 U344 ( .A(n294), .B(n290), .S(sub_85_carry_2_), .Z(n327) );
  GTECH_AO21 U345 ( .A(period[5]), .B(n263), .C(reset), .Z(N14) );
  GTECH_MUX2 U346 ( .A(n329), .B(n330), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_AO21 U347 ( .A(N150), .B(n269), .C(N152), .Z(n329) );
  GTECH_AO21 U348 ( .A(N152), .B(n269), .C(n330), .Z(N136) );
  GTECH_NOT U349 ( .A(n328), .Z(n330) );
  GTECH_NAND2 U350 ( .A(n16), .B(N150), .Z(n328) );
  GTECH_NOT U351 ( .A(n294), .Z(N150) );
  GTECH_NAND2 U352 ( .A(n277), .B(n237), .Z(n294) );
  GTECH_NOT U353 ( .A(n331), .Z(n277) );
  GTECH_NOT U354 ( .A(n16), .Z(n269) );
  GTECH_NOT U355 ( .A(n290), .Z(N152) );
  GTECH_NAND2 U356 ( .A(n209), .B(n332), .Z(n290) );
  GTECH_NOT U357 ( .A(N169), .Z(n332) );
  GTECH_NAND2 U358 ( .A(n237), .B(n301), .Z(N169) );
  GTECH_NOT U359 ( .A(n14), .Z(n301) );
  GTECH_AND_NOT U360 ( .A(n333), .B(n334), .Z(N134) );
  GTECH_OA21 U361 ( .A(n335), .B(n222), .C(n211), .Z(n334) );
  GTECH_NAND2 U362 ( .A(n237), .B(n331), .Z(N133) );
  GTECH_NAND2 U363 ( .A(n209), .B(n14), .Z(n331) );
  GTECH_AND2 U364 ( .A(n336), .B(n333), .Z(N132) );
  GTECH_XOR2 U365 ( .A(n335), .B(n222), .Z(n336) );
  GTECH_NAND2 U366 ( .A(n337), .B(n338), .Z(n335) );
  GTECH_NOT U367 ( .A(n339), .Z(n337) );
  GTECH_AND2 U368 ( .A(n340), .B(n333), .Z(N130) );
  GTECH_XOR2 U369 ( .A(n339), .B(n212), .Z(n340) );
  GTECH_NAND2 U370 ( .A(n341), .B(n342), .Z(n339) );
  GTECH_NOT U371 ( .A(n213), .Z(n342) );
  GTECH_NOT U372 ( .A(n343), .Z(n341) );
  GTECH_AND2 U373 ( .A(period[4]), .B(n263), .Z(N13) );
  GTECH_AND2 U374 ( .A(n344), .B(n333), .Z(N128) );
  GTECH_XOR2 U375 ( .A(n343), .B(n213), .Z(n344) );
  GTECH_NAND2 U376 ( .A(n345), .B(n346), .Z(n343) );
  GTECH_NOT U377 ( .A(n347), .Z(n345) );
  GTECH_AND2 U378 ( .A(n348), .B(n333), .Z(N126) );
  GTECH_XOR2 U379 ( .A(n347), .B(n214), .Z(n348) );
  GTECH_NAND2 U380 ( .A(n349), .B(n350), .Z(n347) );
  GTECH_NOT U381 ( .A(n215), .Z(n350) );
  GTECH_NOT U382 ( .A(n351), .Z(n349) );
  GTECH_AND2 U383 ( .A(n352), .B(n333), .Z(N124) );
  GTECH_XOR2 U384 ( .A(n351), .B(n215), .Z(n352) );
  GTECH_NAND2 U385 ( .A(n353), .B(n354), .Z(n351) );
  GTECH_NOT U386 ( .A(n355), .Z(n353) );
  GTECH_AND2 U387 ( .A(n356), .B(n333), .Z(N122) );
  GTECH_XOR2 U388 ( .A(n355), .B(n216), .Z(n356) );
  GTECH_NAND2 U389 ( .A(n357), .B(n358), .Z(n355) );
  GTECH_NOT U390 ( .A(n217), .Z(n358) );
  GTECH_NOT U391 ( .A(n359), .Z(n357) );
  GTECH_AND2 U392 ( .A(n360), .B(n333), .Z(N120) );
  GTECH_XOR2 U393 ( .A(n359), .B(n217), .Z(n360) );
  GTECH_NAND2 U394 ( .A(n361), .B(n362), .Z(n359) );
  GTECH_NOT U395 ( .A(n363), .Z(n361) );
  GTECH_AO21 U396 ( .A(period[3]), .B(n263), .C(reset), .Z(N12) );
  GTECH_AND2 U397 ( .A(n364), .B(n333), .Z(N118) );
  GTECH_XOR2 U398 ( .A(n363), .B(n218), .Z(n364) );
  GTECH_NAND3 U399 ( .A(n365), .B(n366), .C(n367), .Z(n363) );
  GTECH_NOT U400 ( .A(n219), .Z(n367) );
  GTECH_OAI22 U401 ( .A(n219), .B(n368), .C(n369), .D(n370), .Z(N116) );
  GTECH_MUX2 U402 ( .A(n365), .B(n371), .S(n219), .Z(n370) );
  GTECH_NAND2 U403 ( .A(n365), .B(n366), .Z(n371) );
  GTECH_NOT U404 ( .A(n220), .Z(n365) );
  GTECH_MUX2 U405 ( .A(N112), .B(n372), .S(n220), .Z(N114) );
  GTECH_AND2 U406 ( .A(n333), .B(n366), .Z(n372) );
  GTECH_NOT U407 ( .A(n221), .Z(n366) );
  GTECH_NOT U408 ( .A(n368), .Z(N112) );
  GTECH_NAND2 U409 ( .A(n333), .B(n221), .Z(n368) );
  GTECH_NOT U410 ( .A(n369), .Z(n333) );
  GTECH_NAND2 U411 ( .A(n288), .B(n237), .Z(n369) );
  GTECH_NAND2 U412 ( .A(n373), .B(n374), .Z(n288) );
  GTECH_OR4 U413 ( .A(n375), .B(n376), .C(n377), .D(n378), .Z(n374) );
  GTECH_AOI222 U414 ( .A(update_period[7]), .B(n214), .C(n379), .D(
        update_period[6]), .E(n380), .F(n381), .Z(n378) );
  GTECH_NOT U415 ( .A(n382), .Z(n381) );
  GTECH_AOI222 U416 ( .A(update_period[5]), .B(n216), .C(n383), .D(
        update_period[4]), .E(n384), .F(n385), .Z(n382) );
  GTECH_OA21 U417 ( .A(n217), .B(update_period[4]), .C(n386), .Z(n385) );
  GTECH_OA21 U418 ( .A(n387), .B(n388), .C(n389), .Z(n384) );
  GTECH_AO21 U419 ( .A(update_period[1]), .B(n220), .C(n390), .Z(n389) );
  GTECH_AO21 U420 ( .A(n391), .B(update_period[0]), .C(n387), .Z(n390) );
  GTECH_OA21 U421 ( .A(update_period[1]), .B(n220), .C(n221), .Z(n391) );
  GTECH_OA22 U422 ( .A(n219), .B(update_period[2]), .C(n218), .D(
        update_period[3]), .Z(n388) );
  GTECH_OA21 U423 ( .A(update_period[3]), .B(n218), .C(n392), .Z(n387) );
  GTECH_OAI2N2 U424 ( .A(n393), .B(n362), .C(n219), .D(update_period[2]), .Z(
        n392) );
  GTECH_NOT U425 ( .A(n218), .Z(n362) );
  GTECH_NOT U426 ( .A(update_period[3]), .Z(n393) );
  GTECH_AND2 U427 ( .A(n217), .B(n386), .Z(n383) );
  GTECH_NAND2 U428 ( .A(n394), .B(n354), .Z(n386) );
  GTECH_NOT U429 ( .A(n216), .Z(n354) );
  GTECH_NOT U430 ( .A(update_period[5]), .Z(n394) );
  GTECH_OA21 U431 ( .A(update_period[6]), .B(n215), .C(n395), .Z(n380) );
  GTECH_AND2 U432 ( .A(n215), .B(n395), .Z(n379) );
  GTECH_NAND2 U433 ( .A(n396), .B(n346), .Z(n395) );
  GTECH_NOT U434 ( .A(n214), .Z(n346) );
  GTECH_NOT U435 ( .A(update_period[7]), .Z(n396) );
  GTECH_NOT U436 ( .A(n397), .Z(n377) );
  GTECH_NOR2 U437 ( .A(n213), .B(update_period[8]), .Z(n376) );
  GTECH_AOI2N2 U438 ( .A(n211), .B(update_period[11]), .C(n375), .D(n398), .Z(
        n373) );
  GTECH_AOI222 U439 ( .A(update_period[10]), .B(n222), .C(update_period[9]), 
        .D(n212), .E(n399), .F(update_period[8]), .Z(n398) );
  GTECH_AND2 U440 ( .A(n213), .B(n397), .Z(n399) );
  GTECH_NAND2 U441 ( .A(n400), .B(n338), .Z(n397) );
  GTECH_NOT U442 ( .A(n212), .Z(n338) );
  GTECH_NOT U443 ( .A(update_period[9]), .Z(n400) );
  GTECH_OAI22 U444 ( .A(update_period[10]), .B(n222), .C(update_period[11]), 
        .D(n211), .Z(n375) );
  GTECH_AO21 U445 ( .A(period[2]), .B(n263), .C(reset), .Z(N11) );
  GTECH_AO21 U446 ( .A(period[1]), .B(n263), .C(reset), .Z(N10) );
  GTECH_NOT U447 ( .A(n264), .Z(n263) );
  GTECH_NAND2 U448 ( .A(period_load), .B(n237), .Z(n264) );
  GTECH_NOT U449 ( .A(reset), .Z(n237) );
endmodule

