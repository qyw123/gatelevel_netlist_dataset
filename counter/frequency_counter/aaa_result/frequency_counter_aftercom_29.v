
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
         n26, n27, n30, n31, n76, n77, n204, n208, sub_85_carry_2_, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n225, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK2S update_period_reg_11_ ( .J(n77), .K(n77), .TI(N21), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[11]) );
  GTECH_FJK2S update_period_reg_10_ ( .J(n77), .K(n77), .TI(N19), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[10]) );
  GTECH_FJK2S update_period_reg_9_ ( .J(n77), .K(n77), .TI(N18), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[9]) );
  GTECH_FJK2S update_period_reg_8_ ( .J(n77), .K(n77), .TI(N17), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[8]) );
  GTECH_FJK2S update_period_reg_7_ ( .J(n77), .K(n77), .TI(N16), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[7]) );
  GTECH_FJK2S update_period_reg_6_ ( .J(n77), .K(n77), .TI(N15), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[6]) );
  GTECH_FJK2S update_period_reg_5_ ( .J(n77), .K(n77), .TI(N14), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[5]) );
  GTECH_FJK2S update_period_reg_4_ ( .J(n77), .K(n77), .TI(N13), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[4]) );
  GTECH_FJK2S update_period_reg_3_ ( .J(n77), .K(n77), .TI(N12), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[3]) );
  GTECH_FJK2S update_period_reg_2_ ( .J(n77), .K(n77), .TI(N11), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[2]) );
  GTECH_FJK2S update_period_reg_1_ ( .J(n77), .K(n77), .TI(N10), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[1]), .QN(n225) );
  GTECH_FJK2S update_period_reg_0_ ( .J(n77), .K(n77), .TI(N9), .TE(N20), .CP(
        clk), .CD(n76), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK2S edge_counter_reg_5_ ( .J(n77), .K(n77), .TI(N146), .TE(N147), 
        .CP(clk), .CD(n76), .Q(dbg_edge_count[1]), .QN(n223) );
  GTECH_FJK2S edge_counter_reg_6_ ( .J(n77), .K(n77), .TI(N148), .TE(N147), 
        .CP(clk), .CD(n76), .Q(dbg_edge_count[2]), .QN(n222) );
  GTECH_FJK2S state_reg_0_ ( .J(n77), .K(n77), .TI(N150), .TE(N151), .CP(clk), 
        .CD(n76), .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK2S state_reg_1_ ( .J(n77), .K(n77), .TI(N152), .TE(N151), .CP(clk), 
        .CD(n76), .Q(dbg_state[1]), .QN(n208) );
  GTECH_FJK2S update_digits_reg ( .J(n77), .K(n77), .TI(N170), .TE(N169), .CP(
        clk), .CD(n76), .Q(update_digits), .QN(n15) );
  GTECH_FJK2S clk_counter_reg_10_ ( .J(n77), .K(n77), .TI(N132), .TE(N133), 
        .CP(clk), .CD(n76), .Q(dbg_clk_count[1]), .QN(n221) );
  GTECH_FJK2S clk_counter_reg_0_ ( .J(n77), .K(n77), .TI(N112), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[0]), .QN(n220) );
  GTECH_FJK2S clk_counter_reg_1_ ( .J(n77), .K(n77), .TI(N114), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[1]), .QN(n219) );
  GTECH_FJK2S clk_counter_reg_2_ ( .J(n77), .K(n77), .TI(N116), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[2]), .QN(n218) );
  GTECH_FJK2S clk_counter_reg_3_ ( .J(n77), .K(n77), .TI(N118), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[3]), .QN(n217) );
  GTECH_FJK2S clk_counter_reg_4_ ( .J(n77), .K(n77), .TI(N120), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[4]), .QN(n216) );
  GTECH_FJK2S clk_counter_reg_5_ ( .J(n77), .K(n77), .TI(N122), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[5]), .QN(n215) );
  GTECH_FJK2S clk_counter_reg_6_ ( .J(n77), .K(n77), .TI(N124), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[6]), .QN(n214) );
  GTECH_FJK2S clk_counter_reg_7_ ( .J(n77), .K(n77), .TI(N126), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[7]), .QN(n213) );
  GTECH_FJK2S clk_counter_reg_8_ ( .J(n77), .K(n77), .TI(N128), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[8]), .QN(n212) );
  GTECH_FJK2S clk_counter_reg_9_ ( .J(n77), .K(n77), .TI(N130), .TE(N133), 
        .CP(clk), .CD(n76), .Q(dbg_clk_count[0]), .QN(n211) );
  GTECH_FJK2S clk_counter_reg_11_ ( .J(n77), .K(n77), .TI(N134), .TE(N133), 
        .CP(clk), .CD(n76), .Q(dbg_clk_count[2]), .QN(n210) );
  GTECH_FJK2S edge_counter_reg_4_ ( .J(n77), .K(n77), .TI(N144), .TE(N147), 
        .CP(clk), .CD(n76), .Q(dbg_edge_count[0]), .QN(n209) );
  GTECH_FJK2S edge_counter_reg_0_ ( .J(n77), .K(n77), .TI(N136), .TE(N147), 
        .CP(clk), .CD(n76), .Q(N62), .QN(n16) );
  GTECH_FJK2S unit_count_reg_0_ ( .J(n77), .K(n77), .TI(N162), .TE(N167), .CP(
        clk), .CD(n76), .Q(unit_count[0]) );
  GTECH_FJK2S edge_counter_reg_1_ ( .J(n77), .K(n77), .TI(N138), .TE(N147), 
        .CP(clk), .CD(n76), .Q(sub_85_carry_2_) );
  GTECH_FJK2S unit_count_reg_1_ ( .J(n77), .K(n77), .TI(N164), .TE(N167), .CP(
        clk), .CD(n76), .Q(unit_count[1]) );
  GTECH_FJK2S edge_counter_reg_2_ ( .J(n77), .K(n77), .TI(N140), .TE(N147), 
        .CP(clk), .CD(n76), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK2S unit_count_reg_2_ ( .J(n77), .K(n77), .TI(N166), .TE(N167), .CP(
        clk), .CD(n76), .Q(unit_count[2]) );
  GTECH_FJK2S edge_counter_reg_3_ ( .J(n77), .K(n77), .TI(N142), .TE(N147), 
        .CP(clk), .CD(n76), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK2S unit_count_reg_3_ ( .J(n77), .K(n77), .TI(N168), .TE(N167), .CP(
        clk), .CD(n76), .Q(unit_count[3]) );
  GTECH_FJK2S ten_count_reg_0_ ( .J(n77), .K(n77), .TI(N154), .TE(N159), .CP(
        clk), .CD(n76), .Q(ten_count[0]) );
  GTECH_FJK2S ten_count_reg_1_ ( .J(n77), .K(n77), .TI(N156), .TE(N159), .CP(
        clk), .CD(n76), .Q(ten_count[1]) );
  GTECH_FJK2S ten_count_reg_2_ ( .J(n77), .K(n77), .TI(N158), .TE(N159), .CP(
        clk), .CD(n76), .Q(ten_count[2]) );
  GTECH_FJK2S ten_count_reg_3_ ( .J(n77), .K(n77), .TI(N160), .TE(N159), .CP(
        clk), .CD(n76), .Q(ten_count[3]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_0_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_1_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n26) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_2_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n27) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_3_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_0_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_1_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n30) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_2_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n31) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_3_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n204) );
  GTECH_ZERO U217 ( .Z(n77) );
  GTECH_ONE U218 ( .Z(n76) );
  GTECH_NAND2 U219 ( .A(n15), .B(n236), .Z(seven_segment0_N9) );
  GTECH_AND2 U220 ( .A(ten_count[0]), .B(n236), .Z(seven_segment0_N8) );
  GTECH_AND2 U221 ( .A(n204), .B(n236), .Z(seven_segment0_N6) );
  GTECH_AND2 U222 ( .A(unit_count[3]), .B(n236), .Z(seven_segment0_N22) );
  GTECH_AND2 U223 ( .A(unit_count[2]), .B(n236), .Z(seven_segment0_N20) );
  GTECH_AND2 U224 ( .A(unit_count[1]), .B(n236), .Z(seven_segment0_N18) );
  GTECH_AND2 U225 ( .A(unit_count[0]), .B(n236), .Z(seven_segment0_N16) );
  GTECH_AND2 U226 ( .A(ten_count[3]), .B(n236), .Z(seven_segment0_N14) );
  GTECH_AND2 U227 ( .A(ten_count[2]), .B(n236), .Z(seven_segment0_N12) );
  GTECH_AND2 U228 ( .A(ten_count[1]), .B(n236), .Z(seven_segment0_N10) );
  GTECH_NAND2 U229 ( .A(n237), .B(n238), .Z(segments[6]) );
  GTECH_NOT U230 ( .A(n239), .Z(segments[4]) );
  GTECH_NAND3 U231 ( .A(n238), .B(n239), .C(n240), .Z(segments[3]) );
  GTECH_OAI21 U232 ( .A(n241), .B(n242), .C(n243), .Z(n239) );
  GTECH_NOT U233 ( .A(n244), .Z(n242) );
  GTECH_NAND2 U234 ( .A(n245), .B(n246), .Z(segments[2]) );
  GTECH_NOT U235 ( .A(segments[5]), .Z(n246) );
  GTECH_OAI21 U236 ( .A(n247), .B(n244), .C(n237), .Z(segments[5]) );
  GTECH_AND2 U237 ( .A(n248), .B(n240), .Z(n237) );
  GTECH_MUX2 U238 ( .A(n244), .B(n249), .S(n250), .Z(n248) );
  GTECH_NAND2 U239 ( .A(n243), .B(n251), .Z(n249) );
  GTECH_NAND3 U240 ( .A(n252), .B(n238), .C(n245), .Z(segments[1]) );
  GTECH_NOT U241 ( .A(n253), .Z(n245) );
  GTECH_OAI21 U242 ( .A(n254), .B(n243), .C(n244), .Z(n253) );
  GTECH_NAND3 U243 ( .A(n243), .B(n250), .C(n255), .Z(n252) );
  GTECH_NOT U244 ( .A(n247), .Z(n243) );
  GTECH_NAND3 U245 ( .A(n240), .B(n238), .C(n256), .Z(segments[0]) );
  GTECH_AOI2N2 U246 ( .A(n247), .B(n241), .C(n257), .D(n244), .Z(n256) );
  GTECH_NAND2 U247 ( .A(n255), .B(n258), .Z(n244) );
  GTECH_NAND2 U248 ( .A(n241), .B(n258), .Z(n238) );
  GTECH_NOT U249 ( .A(n254), .Z(n241) );
  GTECH_NAND2 U250 ( .A(n259), .B(n250), .Z(n254) );
  GTECH_NOT U251 ( .A(n255), .Z(n259) );
  GTECH_NAND3 U252 ( .A(n255), .B(n251), .C(n257), .Z(n240) );
  GTECH_NOT U253 ( .A(n260), .Z(n257) );
  GTECH_NAND2 U254 ( .A(n247), .B(n250), .Z(n260) );
  GTECH_NOT U255 ( .A(n261), .Z(n250) );
  GTECH_MUX2 U256 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n204), .Z(n261) );
  GTECH_MUX2 U257 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n204), .Z(n247) );
  GTECH_NOT U258 ( .A(n258), .Z(n251) );
  GTECH_MUX2 U259 ( .A(n31), .B(n27), .S(n204), .Z(n258) );
  GTECH_MUX2 U260 ( .A(n30), .B(n26), .S(n204), .Z(n255) );
  GTECH_AO21 U261 ( .A(period[0]), .B(n262), .C(reset), .Z(N9) );
  GTECH_AND2 U262 ( .A(period[11]), .B(n262), .Z(N21) );
  GTECH_NAND2 U263 ( .A(n236), .B(n263), .Z(N20) );
  GTECH_AO21 U264 ( .A(period[10]), .B(n262), .C(reset), .Z(N19) );
  GTECH_AND2 U265 ( .A(period[9]), .B(n262), .Z(N18) );
  GTECH_AND2 U266 ( .A(period[8]), .B(n262), .Z(N17) );
  GTECH_AND2 U267 ( .A(N170), .B(n264), .Z(N168) );
  GTECH_NAND2 U268 ( .A(n265), .B(n266), .Z(N167) );
  GTECH_AND2 U269 ( .A(N170), .B(n267), .Z(N166) );
  GTECH_AND2 U270 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U271 ( .A(N170), .B(n268), .Z(N162) );
  GTECH_NOT U272 ( .A(n269), .Z(N170) );
  GTECH_NAND2 U273 ( .A(n270), .B(n236), .Z(n269) );
  GTECH_NOT U274 ( .A(n266), .Z(n270) );
  GTECH_MUX2 U275 ( .A(n271), .B(n272), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U276 ( .A(ten_count[2]), .B(n273), .C(n274), .Z(n272) );
  GTECH_NOT U277 ( .A(n275), .Z(n274) );
  GTECH_AND2 U278 ( .A(n276), .B(ten_count[2]), .Z(n271) );
  GTECH_AO21 U279 ( .A(period[7]), .B(n262), .C(reset), .Z(N16) );
  GTECH_OAI21 U280 ( .A(n277), .B(n278), .C(n279), .Z(N159) );
  GTECH_MUX2 U281 ( .A(n276), .B(n275), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U282 ( .A(ten_count[1]), .B(n273), .C(n280), .Z(n275) );
  GTECH_NOT U283 ( .A(n281), .Z(n276) );
  GTECH_NAND3 U284 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n281) );
  GTECH_MUX2 U285 ( .A(n282), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U286 ( .A(N152), .B(ten_count[0]), .Z(n282) );
  GTECH_NOT U287 ( .A(n280), .Z(N154) );
  GTECH_NAND2 U288 ( .A(N152), .B(n283), .Z(n280) );
  GTECH_NOT U289 ( .A(ten_count[0]), .Z(n283) );
  GTECH_NAND2 U290 ( .A(n284), .B(n208), .Z(N151) );
  GTECH_OA21 U291 ( .A(n14), .B(n285), .C(n265), .Z(n284) );
  GTECH_NOT U292 ( .A(n286), .Z(n265) );
  GTECH_OAI21 U293 ( .A(n287), .B(n277), .C(n236), .Z(n286) );
  GTECH_AND2 U294 ( .A(period[6]), .B(n262), .Z(N15) );
  GTECH_OAI21 U295 ( .A(n273), .B(n285), .C(n288), .Z(N148) );
  GTECH_MUX2 U296 ( .A(n289), .B(n290), .S(n222), .Z(n288) );
  GTECH_OR3 U297 ( .A(n223), .B(n291), .C(n292), .Z(n290) );
  GTECH_AND_NOT U298 ( .A(n293), .B(n294), .Z(n289) );
  GTECH_MUX2 U299 ( .A(n273), .B(n291), .S(n223), .Z(n293) );
  GTECH_NAND3 U300 ( .A(n295), .B(n266), .C(n279), .Z(N147) );
  GTECH_AND2 U301 ( .A(n236), .B(n296), .Z(n279) );
  GTECH_NAND3 U302 ( .A(n287), .B(n208), .C(n285), .Z(n296) );
  GTECH_NAND4 U303 ( .A(n223), .B(n222), .C(n209), .D(n297), .Z(n285) );
  GTECH_NAND2 U304 ( .A(n14), .B(n298), .Z(n266) );
  GTECH_NOT U305 ( .A(n208), .Z(n298) );
  GTECH_NAND3 U306 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n295) );
  GTECH_MUX2 U307 ( .A(n294), .B(n299), .S(n223), .Z(N146) );
  GTECH_OAI21 U308 ( .A(n292), .B(n291), .C(n300), .Z(n299) );
  GTECH_OAI21 U309 ( .A(n301), .B(n291), .C(n302), .Z(n294) );
  GTECH_AO21 U310 ( .A(n297), .B(n209), .C(n273), .Z(n302) );
  GTECH_NOT U311 ( .A(n292), .Z(n301) );
  GTECH_NAND3 U312 ( .A(n303), .B(n264), .C(n304), .Z(n292) );
  GTECH_NOT U313 ( .A(n209), .Z(n303) );
  GTECH_NAND2 U314 ( .A(n305), .B(n300), .Z(N144) );
  GTECH_NAND3 U315 ( .A(N152), .B(n297), .C(n209), .Z(n300) );
  GTECH_MUX2 U316 ( .A(n306), .B(n307), .S(n209), .Z(n305) );
  GTECH_NAND3 U317 ( .A(n304), .B(n264), .C(N150), .Z(n307) );
  GTECH_OA21 U318 ( .A(n273), .B(n297), .C(n308), .Z(n306) );
  GTECH_OAI21 U319 ( .A(n22), .B(n309), .C(N150), .Z(n308) );
  GTECH_NAND2 U320 ( .A(n310), .B(n264), .Z(n297) );
  GTECH_NOT U321 ( .A(n22), .Z(n264) );
  GTECH_OAI21 U322 ( .A(n291), .B(n311), .C(n312), .Z(N142) );
  GTECH_MUX2 U323 ( .A(n313), .B(n314), .S(n22), .Z(n312) );
  GTECH_NAND2 U324 ( .A(N152), .B(n310), .Z(n314) );
  GTECH_XOR2 U325 ( .A(n22), .B(n304), .Z(n311) );
  GTECH_NOT U326 ( .A(n309), .Z(n304) );
  GTECH_NAND3 U327 ( .A(n268), .B(n267), .C(sub_85_carry_2_), .Z(n309) );
  GTECH_NOT U328 ( .A(n20), .Z(n267) );
  GTECH_NAND2 U329 ( .A(n315), .B(n313), .Z(N140) );
  GTECH_NAND2 U330 ( .A(n316), .B(N152), .Z(n313) );
  GTECH_NOT U331 ( .A(n273), .Z(N152) );
  GTECH_NOT U332 ( .A(n310), .Z(n316) );
  GTECH_NAND2 U333 ( .A(n20), .B(n317), .Z(n310) );
  GTECH_NOT U334 ( .A(sub_85_carry_2_), .Z(n317) );
  GTECH_MUX2 U335 ( .A(n318), .B(n319), .S(n20), .Z(n315) );
  GTECH_NAND3 U336 ( .A(sub_85_carry_2_), .B(n268), .C(N150), .Z(n319) );
  GTECH_NOT U337 ( .A(n16), .Z(n268) );
  GTECH_AND2 U338 ( .A(n320), .B(n321), .Z(n318) );
  GTECH_MUX2 U339 ( .A(n291), .B(n273), .S(sub_85_carry_2_), .Z(n320) );
  GTECH_AO21 U340 ( .A(period[5]), .B(n262), .C(reset), .Z(N14) );
  GTECH_MUX2 U341 ( .A(n322), .B(n323), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U342 ( .A(n321), .Z(n323) );
  GTECH_OAI21 U343 ( .A(n16), .B(n291), .C(n273), .Z(n322) );
  GTECH_OAI21 U344 ( .A(n16), .B(n273), .C(n321), .Z(N136) );
  GTECH_NAND2 U345 ( .A(n16), .B(N150), .Z(n321) );
  GTECH_NOT U346 ( .A(n291), .Z(N150) );
  GTECH_NAND2 U347 ( .A(n324), .B(n236), .Z(n291) );
  GTECH_NOT U348 ( .A(n278), .Z(n324) );
  GTECH_NAND2 U349 ( .A(n208), .B(n325), .Z(n273) );
  GTECH_NOT U350 ( .A(N169), .Z(n325) );
  GTECH_NAND2 U351 ( .A(n236), .B(n287), .Z(N169) );
  GTECH_NOT U352 ( .A(n14), .Z(n287) );
  GTECH_AND2 U353 ( .A(n326), .B(n327), .Z(N134) );
  GTECH_OAI21 U354 ( .A(n221), .B(n328), .C(n210), .Z(n327) );
  GTECH_NAND2 U355 ( .A(n236), .B(n278), .Z(N133) );
  GTECH_NAND2 U356 ( .A(n208), .B(n14), .Z(n278) );
  GTECH_AND2 U357 ( .A(n329), .B(n326), .Z(N132) );
  GTECH_XOR2 U358 ( .A(n328), .B(n221), .Z(n329) );
  GTECH_NAND2 U359 ( .A(n330), .B(n331), .Z(n328) );
  GTECH_NOT U360 ( .A(n332), .Z(n330) );
  GTECH_AND2 U361 ( .A(n333), .B(n326), .Z(N130) );
  GTECH_XOR2 U362 ( .A(n332), .B(n211), .Z(n333) );
  GTECH_NAND2 U363 ( .A(n334), .B(n335), .Z(n332) );
  GTECH_NOT U364 ( .A(n212), .Z(n335) );
  GTECH_NOT U365 ( .A(n336), .Z(n334) );
  GTECH_AND2 U366 ( .A(period[4]), .B(n262), .Z(N13) );
  GTECH_AND2 U367 ( .A(n337), .B(n326), .Z(N128) );
  GTECH_XOR2 U368 ( .A(n336), .B(n212), .Z(n337) );
  GTECH_NAND2 U369 ( .A(n338), .B(n339), .Z(n336) );
  GTECH_NOT U370 ( .A(n340), .Z(n338) );
  GTECH_AND2 U371 ( .A(n341), .B(n326), .Z(N126) );
  GTECH_XOR2 U372 ( .A(n340), .B(n213), .Z(n341) );
  GTECH_NAND2 U373 ( .A(n342), .B(n343), .Z(n340) );
  GTECH_NOT U374 ( .A(n214), .Z(n343) );
  GTECH_NOT U375 ( .A(n344), .Z(n342) );
  GTECH_AND2 U376 ( .A(n345), .B(n326), .Z(N124) );
  GTECH_XOR2 U377 ( .A(n344), .B(n214), .Z(n345) );
  GTECH_NAND2 U378 ( .A(n346), .B(n347), .Z(n344) );
  GTECH_NOT U379 ( .A(n215), .Z(n347) );
  GTECH_NOT U380 ( .A(n348), .Z(n346) );
  GTECH_AND2 U381 ( .A(n349), .B(n326), .Z(N122) );
  GTECH_XOR2 U382 ( .A(n348), .B(n215), .Z(n349) );
  GTECH_NAND2 U383 ( .A(n350), .B(n351), .Z(n348) );
  GTECH_NOT U384 ( .A(n216), .Z(n351) );
  GTECH_NOT U385 ( .A(n352), .Z(n350) );
  GTECH_AND2 U386 ( .A(n353), .B(n326), .Z(N120) );
  GTECH_XOR2 U387 ( .A(n352), .B(n216), .Z(n353) );
  GTECH_NAND2 U388 ( .A(n354), .B(n355), .Z(n352) );
  GTECH_NOT U389 ( .A(n356), .Z(n354) );
  GTECH_AO21 U390 ( .A(period[3]), .B(n262), .C(reset), .Z(N12) );
  GTECH_AND2 U391 ( .A(n357), .B(n326), .Z(N118) );
  GTECH_XOR2 U392 ( .A(n356), .B(n217), .Z(n357) );
  GTECH_NAND3 U393 ( .A(n358), .B(n359), .C(n360), .Z(n356) );
  GTECH_NOT U394 ( .A(n218), .Z(n360) );
  GTECH_OAI22 U395 ( .A(n218), .B(n361), .C(n362), .D(n363), .Z(N116) );
  GTECH_MUX2 U396 ( .A(n358), .B(n364), .S(n218), .Z(n363) );
  GTECH_NAND2 U397 ( .A(n358), .B(n359), .Z(n364) );
  GTECH_MUX2 U398 ( .A(N112), .B(n365), .S(n219), .Z(N114) );
  GTECH_AND2 U399 ( .A(n326), .B(n359), .Z(n365) );
  GTECH_NOT U400 ( .A(n220), .Z(n359) );
  GTECH_NOT U401 ( .A(n361), .Z(N112) );
  GTECH_NAND2 U402 ( .A(n326), .B(n220), .Z(n361) );
  GTECH_NOT U403 ( .A(n362), .Z(n326) );
  GTECH_NAND2 U404 ( .A(n277), .B(n236), .Z(n362) );
  GTECH_NOT U405 ( .A(n366), .Z(n277) );
  GTECH_AOI222 U406 ( .A(n367), .B(n368), .C(update_period[11]), .D(n210), .E(
        n369), .F(n370), .Z(n366) );
  GTECH_AND_NOT U407 ( .A(n371), .B(n372), .Z(n369) );
  GTECH_AOI222 U408 ( .A(update_period[10]), .B(n221), .C(update_period[9]), 
        .D(n211), .E(n373), .F(update_period[8]), .Z(n372) );
  GTECH_AND2 U409 ( .A(n212), .B(n374), .Z(n373) );
  GTECH_AND3 U410 ( .A(n374), .B(n370), .C(n371), .Z(n368) );
  GTECH_NAND2 U411 ( .A(n375), .B(n376), .Z(n371) );
  GTECH_NOT U412 ( .A(n221), .Z(n376) );
  GTECH_NOT U413 ( .A(update_period[10]), .Z(n375) );
  GTECH_NAND2 U414 ( .A(n377), .B(n378), .Z(n370) );
  GTECH_NOT U415 ( .A(n210), .Z(n378) );
  GTECH_NOT U416 ( .A(update_period[11]), .Z(n377) );
  GTECH_NAND2 U417 ( .A(n331), .B(n379), .Z(n374) );
  GTECH_NOT U418 ( .A(update_period[9]), .Z(n379) );
  GTECH_NOT U419 ( .A(n211), .Z(n331) );
  GTECH_AOI2N2 U420 ( .A(n380), .B(n381), .C(update_period[8]), .D(n212), .Z(
        n367) );
  GTECH_AOI2N2 U421 ( .A(n382), .B(n383), .C(n384), .D(n385), .Z(n381) );
  GTECH_OAI21 U422 ( .A(update_period[4]), .B(n216), .C(n382), .Z(n385) );
  GTECH_OAI22 U423 ( .A(update_period[5]), .B(n215), .C(n386), .D(n387), .Z(
        n384) );
  GTECH_OAI21 U424 ( .A(n355), .B(n388), .C(n389), .Z(n387) );
  GTECH_NAND3 U425 ( .A(n390), .B(update_period[2]), .C(n218), .Z(n389) );
  GTECH_AND3 U426 ( .A(n391), .B(n392), .C(n390), .Z(n386) );
  GTECH_NAND2 U427 ( .A(n388), .B(n355), .Z(n390) );
  GTECH_NOT U428 ( .A(n217), .Z(n355) );
  GTECH_NOT U429 ( .A(update_period[3]), .Z(n388) );
  GTECH_OAI21 U430 ( .A(n393), .B(n358), .C(n225), .Z(n392) );
  GTECH_NOT U431 ( .A(n219), .Z(n358) );
  GTECH_OA21 U432 ( .A(update_period[2]), .B(n218), .C(n394), .Z(n391) );
  GTECH_OR_NOT U433 ( .A(n219), .B(n393), .Z(n394) );
  GTECH_NAND2 U434 ( .A(update_period[0]), .B(n220), .Z(n393) );
  GTECH_ADD_ABC U435 ( .A(n395), .B(n215), .C(update_period[5]), .COUT(n383)
         );
  GTECH_AND2 U436 ( .A(update_period[4]), .B(n216), .Z(n395) );
  GTECH_NOT U437 ( .A(n396), .Z(n382) );
  GTECH_OAI21 U438 ( .A(update_period[6]), .B(n214), .C(n397), .Z(n396) );
  GTECH_OA21 U439 ( .A(n339), .B(n398), .C(n399), .Z(n380) );
  GTECH_NAND3 U440 ( .A(n397), .B(update_period[6]), .C(n214), .Z(n399) );
  GTECH_NAND2 U441 ( .A(n398), .B(n339), .Z(n397) );
  GTECH_NOT U442 ( .A(update_period[7]), .Z(n398) );
  GTECH_NOT U443 ( .A(n213), .Z(n339) );
  GTECH_AO21 U444 ( .A(period[2]), .B(n262), .C(reset), .Z(N11) );
  GTECH_AO21 U445 ( .A(period[1]), .B(n262), .C(reset), .Z(N10) );
  GTECH_NOT U446 ( .A(n263), .Z(n262) );
  GTECH_NAND2 U447 ( .A(period_load), .B(n236), .Z(n263) );
  GTECH_NOT U448 ( .A(reset), .Z(n236) );
endmodule

