
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
         n27, n28, n31, n32, n76, n204, n208, sub_85_carry_2_, n209, n210,
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
         n398;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK2S update_period_reg_11_ ( .J(1'b0), .K(1'b0), .TI(N21), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[11]) );
  GTECH_FJK2S update_period_reg_10_ ( .J(1'b0), .K(1'b0), .TI(N19), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[10]) );
  GTECH_FJK2S update_period_reg_9_ ( .J(1'b0), .K(1'b0), .TI(N18), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[9]) );
  GTECH_FJK2S update_period_reg_8_ ( .J(1'b0), .K(1'b0), .TI(N17), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[8]) );
  GTECH_FJK2S update_period_reg_7_ ( .J(1'b0), .K(1'b0), .TI(N16), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[7]) );
  GTECH_FJK2S update_period_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N15), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[6]) );
  GTECH_FJK2S update_period_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N14), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[5]) );
  GTECH_FJK2S update_period_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N13), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[4]) );
  GTECH_FJK2S update_period_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N12), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[3]) );
  GTECH_FJK2S update_period_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N11), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[2]) );
  GTECH_FJK2S update_period_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N10), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[1]), .QN(n225) );
  GTECH_FJK2S update_period_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N9), .TE(N20), 
        .CP(clk), .CD(n76), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK2S edge_counter_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N146), .TE(N147), 
        .CP(clk), .CD(n76), .Q(dbg_edge_count[1]), .QN(n223) );
  GTECH_FJK2S edge_counter_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N148), .TE(N147), 
        .CP(clk), .CD(n76), .Q(dbg_edge_count[2]), .QN(n222) );
  GTECH_FJK2S state_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N150), .TE(N151), .CP(clk), .CD(n76), .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK2S state_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N152), .TE(N151), .CP(clk), .CD(n76), .Q(dbg_state[1]), .QN(n208) );
  GTECH_FJK2S update_digits_reg ( .J(1'b0), .K(1'b0), .TI(N170), .TE(N169), 
        .CP(clk), .CD(n76), .Q(update_digits), .QN(n15) );
  GTECH_FJK2S clk_counter_reg_10_ ( .J(1'b0), .K(1'b0), .TI(N132), .TE(N133), 
        .CP(clk), .CD(n76), .Q(dbg_clk_count[1]), .QN(n221) );
  GTECH_FJK2S clk_counter_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N112), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[0]), .QN(n220) );
  GTECH_FJK2S clk_counter_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N114), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[1]), .QN(n219) );
  GTECH_FJK2S clk_counter_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N116), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[2]), .QN(n218) );
  GTECH_FJK2S clk_counter_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N118), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[3]), .QN(n217) );
  GTECH_FJK2S clk_counter_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N120), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[4]), .QN(n216) );
  GTECH_FJK2S clk_counter_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N122), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[5]), .QN(n215) );
  GTECH_FJK2S clk_counter_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N124), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[6]), .QN(n214) );
  GTECH_FJK2S clk_counter_reg_7_ ( .J(1'b0), .K(1'b0), .TI(N126), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[7]), .QN(n213) );
  GTECH_FJK2S clk_counter_reg_8_ ( .J(1'b0), .K(1'b0), .TI(N128), .TE(N133), 
        .CP(clk), .CD(n76), .Q(clk_counter[8]), .QN(n212) );
  GTECH_FJK2S clk_counter_reg_9_ ( .J(1'b0), .K(1'b0), .TI(N130), .TE(N133), 
        .CP(clk), .CD(n76), .Q(dbg_clk_count[0]), .QN(n211) );
  GTECH_FJK2S clk_counter_reg_11_ ( .J(1'b0), .K(1'b0), .TI(N134), .TE(N133), 
        .CP(clk), .CD(n76), .Q(dbg_clk_count[2]), .QN(n210) );
  GTECH_FJK2S edge_counter_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N144), .TE(N147), 
        .CP(clk), .CD(n76), .Q(dbg_edge_count[0]), .QN(n209) );
  GTECH_FJK2S edge_counter_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N136), .TE(N147), 
        .CP(clk), .CD(n76), .Q(N62), .QN(n16) );
  GTECH_FJK2S unit_count_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N162), .TE(N167), 
        .CP(clk), .CD(n76), .Q(unit_count[0]) );
  GTECH_FJK2S edge_counter_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N138), .TE(N147), 
        .CP(clk), .CD(n76), .Q(sub_85_carry_2_) );
  GTECH_FJK2S unit_count_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N164), .TE(N167), 
        .CP(clk), .CD(n76), .Q(unit_count[1]) );
  GTECH_FJK2S edge_counter_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N140), .TE(N147), 
        .CP(clk), .CD(n76), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK2S unit_count_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N166), .TE(N167), 
        .CP(clk), .CD(n76), .Q(unit_count[2]) );
  GTECH_FJK2S edge_counter_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N142), .TE(N147), 
        .CP(clk), .CD(n76), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK2S unit_count_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N168), .TE(N167), 
        .CP(clk), .CD(n76), .Q(unit_count[3]) );
  GTECH_FJK2S ten_count_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N154), .TE(N159), 
        .CP(clk), .CD(n76), .Q(ten_count[0]) );
  GTECH_FJK2S ten_count_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N156), .TE(N159), 
        .CP(clk), .CD(n76), .Q(ten_count[1]) );
  GTECH_FJK2S ten_count_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N158), .TE(N159), 
        .CP(clk), .CD(n76), .Q(ten_count[2]) );
  GTECH_FJK2S ten_count_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N160), .TE(N159), 
        .CP(clk), .CD(n76), .Q(ten_count[3]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_0_ ( .J(1'b0), .K(1'b0), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_1_ ( .J(1'b0), .K(1'b0), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_2_ ( .J(1'b0), .K(1'b0), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n27) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_3_ ( .J(1'b0), .K(1'b0), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_0_ ( .J(1'b0), .K(1'b0), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_1_ ( .J(1'b0), .K(1'b0), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_2_ ( .J(1'b0), .K(1'b0), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n31) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_3_ ( .J(1'b0), .K(1'b0), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .CD(n76), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n204) );
  GTECH_ONE U217 ( .Z(n76) );
  GTECH_NAND2 U218 ( .A(n15), .B(n236), .Z(seven_segment0_N9) );
  GTECH_AND2 U219 ( .A(ten_count[0]), .B(n236), .Z(seven_segment0_N8) );
  GTECH_AND2 U220 ( .A(n204), .B(n236), .Z(seven_segment0_N6) );
  GTECH_AND2 U221 ( .A(unit_count[3]), .B(n236), .Z(seven_segment0_N22) );
  GTECH_AND2 U222 ( .A(unit_count[2]), .B(n236), .Z(seven_segment0_N20) );
  GTECH_AND2 U223 ( .A(unit_count[1]), .B(n236), .Z(seven_segment0_N18) );
  GTECH_AND2 U224 ( .A(unit_count[0]), .B(n236), .Z(seven_segment0_N16) );
  GTECH_AND2 U225 ( .A(ten_count[3]), .B(n236), .Z(seven_segment0_N14) );
  GTECH_AND2 U226 ( .A(ten_count[2]), .B(n236), .Z(seven_segment0_N12) );
  GTECH_AND2 U227 ( .A(ten_count[1]), .B(n236), .Z(seven_segment0_N10) );
  GTECH_NAND2 U228 ( .A(n237), .B(n238), .Z(segments[6]) );
  GTECH_NOT U229 ( .A(n239), .Z(segments[4]) );
  GTECH_NAND3 U230 ( .A(n238), .B(n239), .C(n240), .Z(segments[3]) );
  GTECH_OAI21 U231 ( .A(n241), .B(n242), .C(n243), .Z(n239) );
  GTECH_NOT U232 ( .A(n244), .Z(n242) );
  GTECH_NAND2 U233 ( .A(n245), .B(n246), .Z(segments[2]) );
  GTECH_NOT U234 ( .A(segments[5]), .Z(n246) );
  GTECH_OAI21 U235 ( .A(n247), .B(n244), .C(n237), .Z(segments[5]) );
  GTECH_AND2 U236 ( .A(n248), .B(n240), .Z(n237) );
  GTECH_MUX2 U237 ( .A(n244), .B(n249), .S(n250), .Z(n248) );
  GTECH_NAND2 U238 ( .A(n243), .B(n251), .Z(n249) );
  GTECH_NAND3 U239 ( .A(n252), .B(n238), .C(n245), .Z(segments[1]) );
  GTECH_NOT U240 ( .A(n253), .Z(n245) );
  GTECH_OAI21 U241 ( .A(n254), .B(n243), .C(n244), .Z(n253) );
  GTECH_NAND3 U242 ( .A(n243), .B(n255), .C(n250), .Z(n252) );
  GTECH_NAND3 U243 ( .A(n240), .B(n238), .C(n256), .Z(segments[0]) );
  GTECH_OA22 U244 ( .A(n257), .B(n244), .C(n254), .D(n243), .Z(n256) );
  GTECH_NOT U245 ( .A(n247), .Z(n243) );
  GTECH_NAND2 U246 ( .A(n258), .B(n255), .Z(n244) );
  GTECH_NAND2 U247 ( .A(n241), .B(n258), .Z(n238) );
  GTECH_NOT U248 ( .A(n254), .Z(n241) );
  GTECH_NAND2 U249 ( .A(n259), .B(n250), .Z(n254) );
  GTECH_NAND3 U250 ( .A(n251), .B(n255), .C(n257), .Z(n240) );
  GTECH_NOT U251 ( .A(n260), .Z(n257) );
  GTECH_NAND2 U252 ( .A(n247), .B(n250), .Z(n260) );
  GTECH_MUX2 U253 ( .A(n32), .B(n28), .S(n204), .Z(n250) );
  GTECH_MUX2 U254 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n204), .Z(n247) );
  GTECH_NOT U255 ( .A(n259), .Z(n255) );
  GTECH_MUX2 U256 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n204), .Z(n259) );
  GTECH_NOT U257 ( .A(n258), .Z(n251) );
  GTECH_MUX2 U258 ( .A(n31), .B(n27), .S(n204), .Z(n258) );
  GTECH_AO21 U259 ( .A(period[0]), .B(n261), .C(reset), .Z(N9) );
  GTECH_AND2 U260 ( .A(period[11]), .B(n261), .Z(N21) );
  GTECH_NAND2 U261 ( .A(n236), .B(n262), .Z(N20) );
  GTECH_AO21 U262 ( .A(period[10]), .B(n261), .C(reset), .Z(N19) );
  GTECH_AND2 U263 ( .A(period[9]), .B(n261), .Z(N18) );
  GTECH_AND2 U264 ( .A(period[8]), .B(n261), .Z(N17) );
  GTECH_AND2 U265 ( .A(N170), .B(n263), .Z(N168) );
  GTECH_NAND2 U266 ( .A(n264), .B(n265), .Z(N167) );
  GTECH_AND2 U267 ( .A(N170), .B(n266), .Z(N166) );
  GTECH_AND2 U268 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U269 ( .A(N170), .B(n267), .Z(N162) );
  GTECH_NOT U270 ( .A(n268), .Z(N170) );
  GTECH_NAND2 U271 ( .A(n269), .B(n236), .Z(n268) );
  GTECH_NOT U272 ( .A(n265), .Z(n269) );
  GTECH_MUX2 U273 ( .A(n270), .B(n271), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U274 ( .A(ten_count[2]), .B(n272), .C(n273), .Z(n271) );
  GTECH_NOT U275 ( .A(n274), .Z(n273) );
  GTECH_AND2 U276 ( .A(n275), .B(ten_count[2]), .Z(n270) );
  GTECH_AO21 U277 ( .A(period[7]), .B(n261), .C(reset), .Z(N16) );
  GTECH_OAI21 U278 ( .A(n276), .B(n277), .C(n278), .Z(N159) );
  GTECH_MUX2 U279 ( .A(n275), .B(n274), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U280 ( .A(ten_count[1]), .B(n272), .C(n279), .Z(n274) );
  GTECH_NOT U281 ( .A(n280), .Z(n275) );
  GTECH_NAND3 U282 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n280) );
  GTECH_MUX2 U283 ( .A(n281), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U284 ( .A(N152), .B(ten_count[0]), .Z(n281) );
  GTECH_NOT U285 ( .A(n279), .Z(N154) );
  GTECH_NAND2 U286 ( .A(N152), .B(n282), .Z(n279) );
  GTECH_NOT U287 ( .A(ten_count[0]), .Z(n282) );
  GTECH_NAND2 U288 ( .A(n283), .B(n208), .Z(N151) );
  GTECH_OA21 U289 ( .A(n14), .B(n284), .C(n264), .Z(n283) );
  GTECH_NOT U290 ( .A(n285), .Z(n264) );
  GTECH_OAI21 U291 ( .A(n286), .B(n276), .C(n236), .Z(n285) );
  GTECH_AND2 U292 ( .A(period[6]), .B(n261), .Z(N15) );
  GTECH_OAI21 U293 ( .A(n272), .B(n284), .C(n287), .Z(N148) );
  GTECH_MUX2 U294 ( .A(n288), .B(n289), .S(n222), .Z(n287) );
  GTECH_OR3 U295 ( .A(n223), .B(n290), .C(n291), .Z(n289) );
  GTECH_AND_NOT U296 ( .A(n292), .B(n293), .Z(n288) );
  GTECH_MUX2 U297 ( .A(n272), .B(n290), .S(n223), .Z(n292) );
  GTECH_NAND3 U298 ( .A(n294), .B(n265), .C(n278), .Z(N147) );
  GTECH_AND2 U299 ( .A(n236), .B(n295), .Z(n278) );
  GTECH_NAND3 U300 ( .A(n286), .B(n208), .C(n284), .Z(n295) );
  GTECH_NAND4 U301 ( .A(n223), .B(n222), .C(n209), .D(n296), .Z(n284) );
  GTECH_NAND2 U302 ( .A(n14), .B(n297), .Z(n265) );
  GTECH_NOT U303 ( .A(n208), .Z(n297) );
  GTECH_NAND3 U304 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n294) );
  GTECH_MUX2 U305 ( .A(n293), .B(n298), .S(n223), .Z(N146) );
  GTECH_OAI21 U306 ( .A(n291), .B(n290), .C(n299), .Z(n298) );
  GTECH_OAI21 U307 ( .A(n300), .B(n290), .C(n301), .Z(n293) );
  GTECH_AO21 U308 ( .A(n296), .B(n209), .C(n272), .Z(n301) );
  GTECH_NOT U309 ( .A(n291), .Z(n300) );
  GTECH_NAND3 U310 ( .A(n302), .B(n263), .C(n303), .Z(n291) );
  GTECH_NOT U311 ( .A(n209), .Z(n302) );
  GTECH_NAND2 U312 ( .A(n304), .B(n299), .Z(N144) );
  GTECH_NAND3 U313 ( .A(N152), .B(n296), .C(n209), .Z(n299) );
  GTECH_MUX2 U314 ( .A(n305), .B(n306), .S(n209), .Z(n304) );
  GTECH_NAND3 U315 ( .A(n303), .B(n263), .C(N150), .Z(n306) );
  GTECH_OA21 U316 ( .A(n272), .B(n296), .C(n307), .Z(n305) );
  GTECH_OAI21 U317 ( .A(n22), .B(n308), .C(N150), .Z(n307) );
  GTECH_NAND2 U318 ( .A(n309), .B(n263), .Z(n296) );
  GTECH_NOT U319 ( .A(n22), .Z(n263) );
  GTECH_OAI21 U320 ( .A(n290), .B(n310), .C(n311), .Z(N142) );
  GTECH_MUX2 U321 ( .A(n312), .B(n313), .S(n22), .Z(n311) );
  GTECH_NAND2 U322 ( .A(N152), .B(n309), .Z(n313) );
  GTECH_XOR2 U323 ( .A(n22), .B(n303), .Z(n310) );
  GTECH_NOT U324 ( .A(n308), .Z(n303) );
  GTECH_NAND3 U325 ( .A(n267), .B(n266), .C(sub_85_carry_2_), .Z(n308) );
  GTECH_NOT U326 ( .A(n20), .Z(n266) );
  GTECH_NAND2 U327 ( .A(n314), .B(n312), .Z(N140) );
  GTECH_NAND2 U328 ( .A(n315), .B(N152), .Z(n312) );
  GTECH_NOT U329 ( .A(n272), .Z(N152) );
  GTECH_NOT U330 ( .A(n309), .Z(n315) );
  GTECH_NAND2 U331 ( .A(n20), .B(n316), .Z(n309) );
  GTECH_NOT U332 ( .A(sub_85_carry_2_), .Z(n316) );
  GTECH_MUX2 U333 ( .A(n317), .B(n318), .S(n20), .Z(n314) );
  GTECH_NAND3 U334 ( .A(sub_85_carry_2_), .B(n267), .C(N150), .Z(n318) );
  GTECH_NOT U335 ( .A(n16), .Z(n267) );
  GTECH_AND2 U336 ( .A(n319), .B(n320), .Z(n317) );
  GTECH_MUX2 U337 ( .A(n290), .B(n272), .S(sub_85_carry_2_), .Z(n319) );
  GTECH_AO21 U338 ( .A(period[5]), .B(n261), .C(reset), .Z(N14) );
  GTECH_MUX2 U339 ( .A(n321), .B(n322), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U340 ( .A(n320), .Z(n322) );
  GTECH_OAI21 U341 ( .A(n16), .B(n290), .C(n272), .Z(n321) );
  GTECH_OAI21 U342 ( .A(n16), .B(n272), .C(n320), .Z(N136) );
  GTECH_NAND2 U343 ( .A(n16), .B(N150), .Z(n320) );
  GTECH_NOT U344 ( .A(n290), .Z(N150) );
  GTECH_NAND2 U345 ( .A(n323), .B(n236), .Z(n290) );
  GTECH_NOT U346 ( .A(n277), .Z(n323) );
  GTECH_NAND2 U347 ( .A(n208), .B(n324), .Z(n272) );
  GTECH_NOT U348 ( .A(N169), .Z(n324) );
  GTECH_NAND2 U349 ( .A(n236), .B(n286), .Z(N169) );
  GTECH_NOT U350 ( .A(n14), .Z(n286) );
  GTECH_AND2 U351 ( .A(n325), .B(n326), .Z(N134) );
  GTECH_OAI21 U352 ( .A(n221), .B(n327), .C(n210), .Z(n326) );
  GTECH_NAND2 U353 ( .A(n236), .B(n277), .Z(N133) );
  GTECH_NAND2 U354 ( .A(n208), .B(n14), .Z(n277) );
  GTECH_AND2 U355 ( .A(n328), .B(n325), .Z(N132) );
  GTECH_XOR2 U356 ( .A(n327), .B(n221), .Z(n328) );
  GTECH_NAND2 U357 ( .A(n329), .B(n330), .Z(n327) );
  GTECH_NOT U358 ( .A(n331), .Z(n329) );
  GTECH_AND2 U359 ( .A(n332), .B(n325), .Z(N130) );
  GTECH_XOR2 U360 ( .A(n331), .B(n211), .Z(n332) );
  GTECH_NAND2 U361 ( .A(n333), .B(n334), .Z(n331) );
  GTECH_NOT U362 ( .A(n212), .Z(n334) );
  GTECH_NOT U363 ( .A(n335), .Z(n333) );
  GTECH_AND2 U364 ( .A(period[4]), .B(n261), .Z(N13) );
  GTECH_AND2 U365 ( .A(n336), .B(n325), .Z(N128) );
  GTECH_XOR2 U366 ( .A(n335), .B(n212), .Z(n336) );
  GTECH_NAND2 U367 ( .A(n337), .B(n338), .Z(n335) );
  GTECH_NOT U368 ( .A(n339), .Z(n337) );
  GTECH_AND2 U369 ( .A(n340), .B(n325), .Z(N126) );
  GTECH_XOR2 U370 ( .A(n339), .B(n213), .Z(n340) );
  GTECH_NAND2 U371 ( .A(n341), .B(n342), .Z(n339) );
  GTECH_NOT U372 ( .A(n214), .Z(n342) );
  GTECH_NOT U373 ( .A(n343), .Z(n341) );
  GTECH_AND2 U374 ( .A(n344), .B(n325), .Z(N124) );
  GTECH_XOR2 U375 ( .A(n343), .B(n214), .Z(n344) );
  GTECH_NAND2 U376 ( .A(n345), .B(n346), .Z(n343) );
  GTECH_NOT U377 ( .A(n215), .Z(n346) );
  GTECH_NOT U378 ( .A(n347), .Z(n345) );
  GTECH_AND2 U379 ( .A(n348), .B(n325), .Z(N122) );
  GTECH_XOR2 U380 ( .A(n347), .B(n215), .Z(n348) );
  GTECH_NAND2 U381 ( .A(n349), .B(n350), .Z(n347) );
  GTECH_NOT U382 ( .A(n216), .Z(n350) );
  GTECH_NOT U383 ( .A(n351), .Z(n349) );
  GTECH_AND2 U384 ( .A(n352), .B(n325), .Z(N120) );
  GTECH_XOR2 U385 ( .A(n351), .B(n216), .Z(n352) );
  GTECH_NAND2 U386 ( .A(n353), .B(n354), .Z(n351) );
  GTECH_NOT U387 ( .A(n355), .Z(n353) );
  GTECH_AO21 U388 ( .A(period[3]), .B(n261), .C(reset), .Z(N12) );
  GTECH_AND2 U389 ( .A(n356), .B(n325), .Z(N118) );
  GTECH_XOR2 U390 ( .A(n355), .B(n217), .Z(n356) );
  GTECH_NAND3 U391 ( .A(n357), .B(n358), .C(n359), .Z(n355) );
  GTECH_NOT U392 ( .A(n218), .Z(n359) );
  GTECH_OAI22 U393 ( .A(n218), .B(n360), .C(n361), .D(n362), .Z(N116) );
  GTECH_MUX2 U394 ( .A(n357), .B(n363), .S(n218), .Z(n362) );
  GTECH_NAND2 U395 ( .A(n357), .B(n358), .Z(n363) );
  GTECH_MUX2 U396 ( .A(N112), .B(n364), .S(n219), .Z(N114) );
  GTECH_AND2 U397 ( .A(n325), .B(n358), .Z(n364) );
  GTECH_NOT U398 ( .A(n220), .Z(n358) );
  GTECH_NOT U399 ( .A(n360), .Z(N112) );
  GTECH_NAND2 U400 ( .A(n325), .B(n220), .Z(n360) );
  GTECH_NOT U401 ( .A(n361), .Z(n325) );
  GTECH_NAND2 U402 ( .A(n276), .B(n236), .Z(n361) );
  GTECH_NOT U403 ( .A(n365), .Z(n276) );
  GTECH_AOI222 U404 ( .A(n366), .B(n367), .C(update_period[11]), .D(n210), .E(
        n368), .F(n369), .Z(n365) );
  GTECH_OAI2N2 U405 ( .A(n370), .B(n371), .C(n372), .D(n373), .Z(n368) );
  GTECH_OAI21 U406 ( .A(n374), .B(n330), .C(n375), .Z(n373) );
  GTECH_NAND3 U407 ( .A(n376), .B(update_period[8]), .C(n212), .Z(n375) );
  GTECH_AND3 U408 ( .A(n376), .B(n372), .C(n369), .Z(n367) );
  GTECH_NAND2 U409 ( .A(n377), .B(n378), .Z(n369) );
  GTECH_NOT U410 ( .A(n210), .Z(n378) );
  GTECH_NOT U411 ( .A(update_period[11]), .Z(n377) );
  GTECH_NAND2 U412 ( .A(n371), .B(n370), .Z(n372) );
  GTECH_NOT U413 ( .A(n221), .Z(n370) );
  GTECH_NOT U414 ( .A(update_period[10]), .Z(n371) );
  GTECH_NAND2 U415 ( .A(n330), .B(n374), .Z(n376) );
  GTECH_NOT U416 ( .A(update_period[9]), .Z(n374) );
  GTECH_NOT U417 ( .A(n211), .Z(n330) );
  GTECH_OA22 U418 ( .A(n212), .B(update_period[8]), .C(n379), .D(n380), .Z(
        n366) );
  GTECH_OAI21 U419 ( .A(n338), .B(n381), .C(n382), .Z(n380) );
  GTECH_NAND3 U420 ( .A(n383), .B(update_period[6]), .C(n214), .Z(n382) );
  GTECH_OAI2N2 U421 ( .A(n384), .B(n385), .C(n386), .D(n387), .Z(n379) );
  GTECH_ADD_ABC U422 ( .A(n388), .B(n215), .C(update_period[5]), .COUT(n387)
         );
  GTECH_AND2 U423 ( .A(update_period[4]), .B(n216), .Z(n388) );
  GTECH_OAI21 U424 ( .A(update_period[4]), .B(n216), .C(n386), .Z(n385) );
  GTECH_NOT U425 ( .A(n389), .Z(n386) );
  GTECH_OAI21 U426 ( .A(update_period[6]), .B(n214), .C(n383), .Z(n389) );
  GTECH_NAND2 U427 ( .A(n381), .B(n338), .Z(n383) );
  GTECH_NOT U428 ( .A(n213), .Z(n338) );
  GTECH_NOT U429 ( .A(update_period[7]), .Z(n381) );
  GTECH_OAI22 U430 ( .A(update_period[5]), .B(n215), .C(n390), .D(n391), .Z(
        n384) );
  GTECH_OAI21 U431 ( .A(n354), .B(n392), .C(n393), .Z(n391) );
  GTECH_NAND3 U432 ( .A(n394), .B(update_period[2]), .C(n218), .Z(n393) );
  GTECH_AND3 U433 ( .A(n395), .B(n396), .C(n394), .Z(n390) );
  GTECH_NAND2 U434 ( .A(n392), .B(n354), .Z(n394) );
  GTECH_NOT U435 ( .A(n217), .Z(n354) );
  GTECH_NOT U436 ( .A(update_period[3]), .Z(n392) );
  GTECH_OAI21 U437 ( .A(n397), .B(n357), .C(n225), .Z(n396) );
  GTECH_NOT U438 ( .A(n219), .Z(n357) );
  GTECH_OA21 U439 ( .A(n218), .B(update_period[2]), .C(n398), .Z(n395) );
  GTECH_OR_NOT U440 ( .A(n219), .B(n397), .Z(n398) );
  GTECH_NAND2 U441 ( .A(update_period[0]), .B(n220), .Z(n397) );
  GTECH_AO21 U442 ( .A(period[2]), .B(n261), .C(reset), .Z(N11) );
  GTECH_AO21 U443 ( .A(period[1]), .B(n261), .C(reset), .Z(N10) );
  GTECH_NOT U444 ( .A(n262), .Z(n261) );
  GTECH_NAND2 U445 ( .A(period_load), .B(n236), .Z(n262) );
  GTECH_NOT U446 ( .A(reset), .Z(n236) );
endmodule

