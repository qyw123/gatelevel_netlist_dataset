
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
         n27, n28, n31, n32, n76, n77, n204, n208, sub_85_carry_2_, n209, n210,
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
         n398, n399, n400, n401;
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
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_2_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n27) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_3_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_0_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_1_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_2_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n31) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_3_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
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
  GTECH_OA21 U238 ( .A(n249), .B(n244), .C(n250), .Z(n248) );
  GTECH_NAND3 U239 ( .A(n251), .B(n249), .C(n243), .Z(n250) );
  GTECH_NAND3 U240 ( .A(n252), .B(n238), .C(n245), .Z(segments[1]) );
  GTECH_NOT U241 ( .A(n253), .Z(n245) );
  GTECH_OAI21 U242 ( .A(n254), .B(n243), .C(n244), .Z(n253) );
  GTECH_NAND3 U243 ( .A(n243), .B(n255), .C(n249), .Z(n252) );
  GTECH_NAND3 U244 ( .A(n240), .B(n238), .C(n256), .Z(segments[0]) );
  GTECH_OA22 U245 ( .A(n257), .B(n244), .C(n254), .D(n243), .Z(n256) );
  GTECH_NAND2 U246 ( .A(n258), .B(n255), .Z(n244) );
  GTECH_NAND2 U247 ( .A(n241), .B(n258), .Z(n238) );
  GTECH_NOT U248 ( .A(n251), .Z(n258) );
  GTECH_NOT U249 ( .A(n254), .Z(n241) );
  GTECH_NAND2 U250 ( .A(n259), .B(n249), .Z(n254) );
  GTECH_NOT U251 ( .A(n255), .Z(n259) );
  GTECH_NAND3 U252 ( .A(n251), .B(n255), .C(n257), .Z(n240) );
  GTECH_NOT U253 ( .A(n260), .Z(n257) );
  GTECH_NAND2 U254 ( .A(n247), .B(n249), .Z(n260) );
  GTECH_NOT U255 ( .A(n261), .Z(n249) );
  GTECH_OAI22 U256 ( .A(n262), .B(n28), .C(n204), .D(n32), .Z(n261) );
  GTECH_NOT U257 ( .A(n243), .Z(n247) );
  GTECH_OAI22 U258 ( .A(seven_segment0_ten_count_reg[0]), .B(n204), .C(
        seven_segment0_unit_count_reg[0]), .D(n262), .Z(n243) );
  GTECH_OAI22 U259 ( .A(seven_segment0_ten_count_reg[1]), .B(n204), .C(
        seven_segment0_unit_count_reg[1]), .D(n262), .Z(n255) );
  GTECH_OAI22 U260 ( .A(n262), .B(n27), .C(n204), .D(n31), .Z(n251) );
  GTECH_NOT U261 ( .A(n204), .Z(n262) );
  GTECH_AO21 U262 ( .A(period[0]), .B(n263), .C(reset), .Z(N9) );
  GTECH_AND2 U263 ( .A(period[11]), .B(n263), .Z(N21) );
  GTECH_NAND2 U264 ( .A(n236), .B(n264), .Z(N20) );
  GTECH_AO21 U265 ( .A(period[10]), .B(n263), .C(reset), .Z(N19) );
  GTECH_AND2 U266 ( .A(period[9]), .B(n263), .Z(N18) );
  GTECH_AND2 U267 ( .A(period[8]), .B(n263), .Z(N17) );
  GTECH_AND2 U268 ( .A(N170), .B(n265), .Z(N168) );
  GTECH_NAND2 U269 ( .A(n266), .B(n267), .Z(N167) );
  GTECH_AND2 U270 ( .A(N170), .B(n268), .Z(N166) );
  GTECH_AND2 U271 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U272 ( .A(N170), .B(n269), .Z(N162) );
  GTECH_NOT U273 ( .A(n270), .Z(N170) );
  GTECH_NAND2 U274 ( .A(n271), .B(n236), .Z(n270) );
  GTECH_NOT U275 ( .A(n267), .Z(n271) );
  GTECH_OAI22 U276 ( .A(n272), .B(n273), .C(n274), .D(n275), .Z(N160) );
  GTECH_OA21 U277 ( .A(n276), .B(ten_count[2]), .C(n277), .Z(n274) );
  GTECH_NAND2 U278 ( .A(ten_count[2]), .B(n275), .Z(n273) );
  GTECH_NOT U279 ( .A(ten_count[3]), .Z(n275) );
  GTECH_AO21 U280 ( .A(period[7]), .B(n263), .C(reset), .Z(N16) );
  GTECH_OAI21 U281 ( .A(n278), .B(n279), .C(n280), .Z(N159) );
  GTECH_OAI22 U282 ( .A(n277), .B(n281), .C(ten_count[2]), .D(n272), .Z(N158)
         );
  GTECH_NAND3 U283 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n272) );
  GTECH_NOT U284 ( .A(ten_count[2]), .Z(n281) );
  GTECH_NOT U285 ( .A(n282), .Z(n277) );
  GTECH_OAI21 U286 ( .A(ten_count[1]), .B(n276), .C(n283), .Z(n282) );
  GTECH_OAI21 U287 ( .A(n284), .B(n283), .C(n285), .Z(N156) );
  GTECH_NAND3 U288 ( .A(N152), .B(ten_count[0]), .C(n284), .Z(n285) );
  GTECH_NOT U289 ( .A(ten_count[1]), .Z(n284) );
  GTECH_NOT U290 ( .A(n283), .Z(N154) );
  GTECH_NAND2 U291 ( .A(N152), .B(n286), .Z(n283) );
  GTECH_NOT U292 ( .A(ten_count[0]), .Z(n286) );
  GTECH_NAND2 U293 ( .A(n287), .B(n208), .Z(N151) );
  GTECH_OA21 U294 ( .A(n14), .B(n288), .C(n266), .Z(n287) );
  GTECH_NOT U295 ( .A(n289), .Z(n266) );
  GTECH_OAI21 U296 ( .A(n290), .B(n278), .C(n236), .Z(n289) );
  GTECH_AND2 U297 ( .A(period[6]), .B(n263), .Z(N15) );
  GTECH_OAI21 U298 ( .A(n276), .B(n288), .C(n291), .Z(N148) );
  GTECH_AND2 U299 ( .A(n292), .B(n293), .Z(n291) );
  GTECH_NAND4 U300 ( .A(n294), .B(N150), .C(n295), .D(n222), .Z(n293) );
  GTECH_AO21 U301 ( .A(n296), .B(n297), .C(n222), .Z(n292) );
  GTECH_OA22 U302 ( .A(n298), .B(n294), .C(n276), .D(n223), .Z(n296) );
  GTECH_NAND3 U303 ( .A(n299), .B(n267), .C(n280), .Z(N147) );
  GTECH_AND2 U304 ( .A(n236), .B(n300), .Z(n280) );
  GTECH_NAND3 U305 ( .A(n290), .B(n208), .C(n288), .Z(n300) );
  GTECH_NAND4 U306 ( .A(n223), .B(n222), .C(n209), .D(n301), .Z(n288) );
  GTECH_NAND2 U307 ( .A(n14), .B(n302), .Z(n267) );
  GTECH_NOT U308 ( .A(n208), .Z(n302) );
  GTECH_NAND3 U309 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n299) );
  GTECH_OAI22 U310 ( .A(n303), .B(n294), .C(n223), .D(n297), .Z(N146) );
  GTECH_OA21 U311 ( .A(n295), .B(n298), .C(n304), .Z(n297) );
  GTECH_AO21 U312 ( .A(n301), .B(n209), .C(n276), .Z(n304) );
  GTECH_NOT U313 ( .A(n305), .Z(n295) );
  GTECH_NOT U314 ( .A(n223), .Z(n294) );
  GTECH_OA21 U315 ( .A(n305), .B(n298), .C(n306), .Z(n303) );
  GTECH_NAND3 U316 ( .A(n307), .B(n265), .C(n308), .Z(n305) );
  GTECH_NOT U317 ( .A(n209), .Z(n307) );
  GTECH_NAND2 U318 ( .A(n309), .B(n306), .Z(N144) );
  GTECH_NAND3 U319 ( .A(N152), .B(n301), .C(n209), .Z(n306) );
  GTECH_OA21 U320 ( .A(n209), .B(n310), .C(n311), .Z(n309) );
  GTECH_NAND4 U321 ( .A(n308), .B(n265), .C(N150), .D(n209), .Z(n311) );
  GTECH_NOT U322 ( .A(n312), .Z(n308) );
  GTECH_OA21 U323 ( .A(n276), .B(n301), .C(n313), .Z(n310) );
  GTECH_OAI21 U324 ( .A(n22), .B(n312), .C(N150), .Z(n313) );
  GTECH_NAND2 U325 ( .A(n314), .B(n265), .Z(n301) );
  GTECH_NOT U326 ( .A(n22), .Z(n265) );
  GTECH_OAI21 U327 ( .A(n298), .B(n315), .C(n316), .Z(N142) );
  GTECH_OA21 U328 ( .A(n22), .B(n317), .C(n318), .Z(n316) );
  GTECH_NAND3 U329 ( .A(N152), .B(n314), .C(n22), .Z(n318) );
  GTECH_XNOR2 U330 ( .A(n312), .B(n22), .Z(n315) );
  GTECH_NAND3 U331 ( .A(n269), .B(n268), .C(sub_85_carry_2_), .Z(n312) );
  GTECH_NOT U332 ( .A(n20), .Z(n268) );
  GTECH_NAND3 U333 ( .A(n317), .B(n319), .C(n320), .Z(N140) );
  GTECH_NAND4 U334 ( .A(sub_85_carry_2_), .B(n269), .C(N150), .D(n20), .Z(n320) );
  GTECH_NOT U335 ( .A(n16), .Z(n269) );
  GTECH_AO21 U336 ( .A(n321), .B(n322), .C(n20), .Z(n319) );
  GTECH_OA22 U337 ( .A(sub_85_carry_2_), .B(n298), .C(n323), .D(n276), .Z(n322) );
  GTECH_NAND2 U338 ( .A(n324), .B(N152), .Z(n317) );
  GTECH_NOT U339 ( .A(n276), .Z(N152) );
  GTECH_NOT U340 ( .A(n314), .Z(n324) );
  GTECH_NAND2 U341 ( .A(n20), .B(n323), .Z(n314) );
  GTECH_AO21 U342 ( .A(period[5]), .B(n263), .C(reset), .Z(N14) );
  GTECH_OAI22 U343 ( .A(sub_85_carry_2_), .B(n325), .C(n323), .D(n321), .Z(
        N138) );
  GTECH_NOT U344 ( .A(sub_85_carry_2_), .Z(n323) );
  GTECH_OA21 U345 ( .A(n16), .B(n298), .C(n276), .Z(n325) );
  GTECH_OAI21 U346 ( .A(n16), .B(n276), .C(n321), .Z(N136) );
  GTECH_NAND2 U347 ( .A(n16), .B(N150), .Z(n321) );
  GTECH_NOT U348 ( .A(n298), .Z(N150) );
  GTECH_NAND2 U349 ( .A(n326), .B(n236), .Z(n298) );
  GTECH_NOT U350 ( .A(n279), .Z(n326) );
  GTECH_NAND2 U351 ( .A(n208), .B(n327), .Z(n276) );
  GTECH_NOT U352 ( .A(N169), .Z(n327) );
  GTECH_NAND2 U353 ( .A(n236), .B(n290), .Z(N169) );
  GTECH_NOT U354 ( .A(n14), .Z(n290) );
  GTECH_AND2 U355 ( .A(n328), .B(n329), .Z(N134) );
  GTECH_OAI21 U356 ( .A(n221), .B(n330), .C(n210), .Z(n329) );
  GTECH_NAND2 U357 ( .A(n236), .B(n279), .Z(N133) );
  GTECH_NAND2 U358 ( .A(n208), .B(n14), .Z(n279) );
  GTECH_AND2 U359 ( .A(n331), .B(n328), .Z(N132) );
  GTECH_XOR2 U360 ( .A(n330), .B(n221), .Z(n331) );
  GTECH_NAND2 U361 ( .A(n332), .B(n333), .Z(n330) );
  GTECH_NOT U362 ( .A(n334), .Z(n332) );
  GTECH_AND2 U363 ( .A(n335), .B(n328), .Z(N130) );
  GTECH_XOR2 U364 ( .A(n334), .B(n211), .Z(n335) );
  GTECH_NAND2 U365 ( .A(n336), .B(n337), .Z(n334) );
  GTECH_NOT U366 ( .A(n212), .Z(n337) );
  GTECH_NOT U367 ( .A(n338), .Z(n336) );
  GTECH_AND2 U368 ( .A(period[4]), .B(n263), .Z(N13) );
  GTECH_AND2 U369 ( .A(n339), .B(n328), .Z(N128) );
  GTECH_XOR2 U370 ( .A(n338), .B(n212), .Z(n339) );
  GTECH_NAND2 U371 ( .A(n340), .B(n341), .Z(n338) );
  GTECH_NOT U372 ( .A(n342), .Z(n340) );
  GTECH_AND2 U373 ( .A(n343), .B(n328), .Z(N126) );
  GTECH_XOR2 U374 ( .A(n342), .B(n213), .Z(n343) );
  GTECH_NAND2 U375 ( .A(n344), .B(n345), .Z(n342) );
  GTECH_NOT U376 ( .A(n214), .Z(n345) );
  GTECH_NOT U377 ( .A(n346), .Z(n344) );
  GTECH_AND2 U378 ( .A(n347), .B(n328), .Z(N124) );
  GTECH_XOR2 U379 ( .A(n346), .B(n214), .Z(n347) );
  GTECH_NAND2 U380 ( .A(n348), .B(n349), .Z(n346) );
  GTECH_NOT U381 ( .A(n215), .Z(n349) );
  GTECH_NOT U382 ( .A(n350), .Z(n348) );
  GTECH_AND2 U383 ( .A(n351), .B(n328), .Z(N122) );
  GTECH_XOR2 U384 ( .A(n350), .B(n215), .Z(n351) );
  GTECH_NAND2 U385 ( .A(n352), .B(n353), .Z(n350) );
  GTECH_NOT U386 ( .A(n216), .Z(n353) );
  GTECH_NOT U387 ( .A(n354), .Z(n352) );
  GTECH_AND2 U388 ( .A(n355), .B(n328), .Z(N120) );
  GTECH_XOR2 U389 ( .A(n354), .B(n216), .Z(n355) );
  GTECH_NAND2 U390 ( .A(n356), .B(n357), .Z(n354) );
  GTECH_NOT U391 ( .A(n358), .Z(n356) );
  GTECH_AO21 U392 ( .A(period[3]), .B(n263), .C(reset), .Z(N12) );
  GTECH_AND2 U393 ( .A(n359), .B(n328), .Z(N118) );
  GTECH_XOR2 U394 ( .A(n358), .B(n217), .Z(n359) );
  GTECH_NAND3 U395 ( .A(n360), .B(n361), .C(n362), .Z(n358) );
  GTECH_NOT U396 ( .A(n218), .Z(n362) );
  GTECH_OAI22 U397 ( .A(n218), .B(n363), .C(n364), .D(n365), .Z(N116) );
  GTECH_OAI21 U398 ( .A(n219), .B(n218), .C(n366), .Z(n365) );
  GTECH_OAI21 U399 ( .A(n220), .B(n219), .C(n218), .Z(n366) );
  GTECH_OAI21 U400 ( .A(n219), .B(n363), .C(n367), .Z(N114) );
  GTECH_NAND3 U401 ( .A(n328), .B(n361), .C(n219), .Z(n367) );
  GTECH_NOT U402 ( .A(n220), .Z(n361) );
  GTECH_NOT U403 ( .A(n363), .Z(N112) );
  GTECH_NAND2 U404 ( .A(n328), .B(n220), .Z(n363) );
  GTECH_NOT U405 ( .A(n364), .Z(n328) );
  GTECH_NAND2 U406 ( .A(n278), .B(n236), .Z(n364) );
  GTECH_NOT U407 ( .A(n368), .Z(n278) );
  GTECH_AOI222 U408 ( .A(n369), .B(n370), .C(update_period[11]), .D(n210), .E(
        n371), .F(n372), .Z(n368) );
  GTECH_OAI2N2 U409 ( .A(n373), .B(n374), .C(n375), .D(n376), .Z(n371) );
  GTECH_OAI21 U410 ( .A(n377), .B(n333), .C(n378), .Z(n376) );
  GTECH_NAND3 U411 ( .A(n379), .B(update_period[8]), .C(n212), .Z(n378) );
  GTECH_AND3 U412 ( .A(n379), .B(n375), .C(n372), .Z(n370) );
  GTECH_NAND2 U413 ( .A(n380), .B(n381), .Z(n372) );
  GTECH_NOT U414 ( .A(n210), .Z(n381) );
  GTECH_NOT U415 ( .A(update_period[11]), .Z(n380) );
  GTECH_NAND2 U416 ( .A(n374), .B(n373), .Z(n375) );
  GTECH_NOT U417 ( .A(n221), .Z(n373) );
  GTECH_NOT U418 ( .A(update_period[10]), .Z(n374) );
  GTECH_NAND2 U419 ( .A(n333), .B(n377), .Z(n379) );
  GTECH_NOT U420 ( .A(update_period[9]), .Z(n377) );
  GTECH_NOT U421 ( .A(n211), .Z(n333) );
  GTECH_OA22 U422 ( .A(n212), .B(update_period[8]), .C(n382), .D(n383), .Z(
        n369) );
  GTECH_OAI21 U423 ( .A(n341), .B(n384), .C(n385), .Z(n383) );
  GTECH_NAND3 U424 ( .A(n386), .B(update_period[6]), .C(n214), .Z(n385) );
  GTECH_OAI2N2 U425 ( .A(n387), .B(n388), .C(n389), .D(n390), .Z(n382) );
  GTECH_ADD_ABC U426 ( .A(n391), .B(n215), .C(update_period[5]), .COUT(n390)
         );
  GTECH_AND2 U427 ( .A(update_period[4]), .B(n216), .Z(n391) );
  GTECH_OAI21 U428 ( .A(update_period[4]), .B(n216), .C(n389), .Z(n388) );
  GTECH_NOT U429 ( .A(n392), .Z(n389) );
  GTECH_OAI21 U430 ( .A(update_period[6]), .B(n214), .C(n386), .Z(n392) );
  GTECH_NAND2 U431 ( .A(n384), .B(n341), .Z(n386) );
  GTECH_NOT U432 ( .A(n213), .Z(n341) );
  GTECH_NOT U433 ( .A(update_period[7]), .Z(n384) );
  GTECH_OAI22 U434 ( .A(update_period[5]), .B(n215), .C(n393), .D(n394), .Z(
        n387) );
  GTECH_OAI21 U435 ( .A(n357), .B(n395), .C(n396), .Z(n394) );
  GTECH_NAND3 U436 ( .A(n397), .B(update_period[2]), .C(n218), .Z(n396) );
  GTECH_AND3 U437 ( .A(n398), .B(n399), .C(n397), .Z(n393) );
  GTECH_NAND2 U438 ( .A(n395), .B(n357), .Z(n397) );
  GTECH_NOT U439 ( .A(n217), .Z(n357) );
  GTECH_NOT U440 ( .A(update_period[3]), .Z(n395) );
  GTECH_OAI21 U441 ( .A(n400), .B(n360), .C(n225), .Z(n399) );
  GTECH_NOT U442 ( .A(n219), .Z(n360) );
  GTECH_OA21 U443 ( .A(n218), .B(update_period[2]), .C(n401), .Z(n398) );
  GTECH_OR_NOT U444 ( .A(n219), .B(n400), .Z(n401) );
  GTECH_NAND2 U445 ( .A(update_period[0]), .B(n220), .Z(n400) );
  GTECH_AO21 U446 ( .A(period[2]), .B(n263), .C(reset), .Z(N11) );
  GTECH_AO21 U447 ( .A(period[1]), .B(n263), .C(reset), .Z(N10) );
  GTECH_NOT U448 ( .A(n264), .Z(n263) );
  GTECH_NAND2 U449 ( .A(period_load), .B(n236), .Z(n264) );
  GTECH_NOT U450 ( .A(reset), .Z(n236) );
endmodule

