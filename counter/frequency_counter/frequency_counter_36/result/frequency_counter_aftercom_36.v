
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
         n25, n27, n29, n31, n74, n75, n202, n206, sub_85_carry_2_, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK2S update_period_reg_11_ ( .J(n75), .K(n75), .TI(N21), .TE(N20), 
        .CP(clk), .CD(n74), .Q(update_period[11]) );
  GTECH_FJK2S update_period_reg_10_ ( .J(n75), .K(n75), .TI(N19), .TE(N20), 
        .CP(clk), .CD(n74), .Q(update_period[10]) );
  GTECH_FJK2S update_period_reg_9_ ( .J(n75), .K(n75), .TI(N18), .TE(N20), 
        .CP(clk), .CD(n74), .Q(update_period[9]) );
  GTECH_FJK2S update_period_reg_8_ ( .J(n75), .K(n75), .TI(N17), .TE(N20), 
        .CP(clk), .CD(n74), .Q(update_period[8]) );
  GTECH_FJK2S update_period_reg_7_ ( .J(n75), .K(n75), .TI(N16), .TE(N20), 
        .CP(clk), .CD(n74), .Q(update_period[7]) );
  GTECH_FJK2S update_period_reg_6_ ( .J(n75), .K(n75), .TI(N15), .TE(N20), 
        .CP(clk), .CD(n74), .Q(update_period[6]) );
  GTECH_FJK2S update_period_reg_5_ ( .J(n75), .K(n75), .TI(N14), .TE(N20), 
        .CP(clk), .CD(n74), .Q(update_period[5]) );
  GTECH_FJK2S update_period_reg_4_ ( .J(n75), .K(n75), .TI(N13), .TE(N20), 
        .CP(clk), .CD(n74), .Q(update_period[4]) );
  GTECH_FJK2S update_period_reg_3_ ( .J(n75), .K(n75), .TI(N12), .TE(N20), 
        .CP(clk), .CD(n74), .Q(update_period[3]) );
  GTECH_FJK2S update_period_reg_2_ ( .J(n75), .K(n75), .TI(N11), .TE(N20), 
        .CP(clk), .CD(n74), .Q(update_period[2]) );
  GTECH_FJK2S update_period_reg_1_ ( .J(n75), .K(n75), .TI(N10), .TE(N20), 
        .CP(clk), .CD(n74), .Q(update_period[1]) );
  GTECH_FJK2S update_period_reg_0_ ( .J(n75), .K(n75), .TI(N9), .TE(N20), .CP(
        clk), .CD(n74), .Q(update_period[0]), .QN(n222) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK2S edge_counter_reg_5_ ( .J(n75), .K(n75), .TI(N146), .TE(N147), 
        .CP(clk), .CD(n74), .Q(dbg_edge_count[1]), .QN(n221) );
  GTECH_FJK2S edge_counter_reg_6_ ( .J(n75), .K(n75), .TI(N148), .TE(N147), 
        .CP(clk), .CD(n74), .Q(dbg_edge_count[2]), .QN(n220) );
  GTECH_FJK2S state_reg_0_ ( .J(n75), .K(n75), .TI(N150), .TE(N151), .CP(clk), 
        .CD(n74), .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK2S state_reg_1_ ( .J(n75), .K(n75), .TI(N152), .TE(N151), .CP(clk), 
        .CD(n74), .Q(dbg_state[1]), .QN(n206) );
  GTECH_FJK2S update_digits_reg ( .J(n75), .K(n75), .TI(N170), .TE(N169), .CP(
        clk), .CD(n74), .Q(update_digits), .QN(n15) );
  GTECH_FJK2S clk_counter_reg_10_ ( .J(n75), .K(n75), .TI(N132), .TE(N133), 
        .CP(clk), .CD(n74), .Q(dbg_clk_count[1]), .QN(n219) );
  GTECH_FJK2S clk_counter_reg_0_ ( .J(n75), .K(n75), .TI(N112), .TE(N133), 
        .CP(clk), .CD(n74), .Q(clk_counter[0]), .QN(n218) );
  GTECH_FJK2S clk_counter_reg_1_ ( .J(n75), .K(n75), .TI(N114), .TE(N133), 
        .CP(clk), .CD(n74), .Q(clk_counter[1]), .QN(n217) );
  GTECH_FJK2S clk_counter_reg_2_ ( .J(n75), .K(n75), .TI(N116), .TE(N133), 
        .CP(clk), .CD(n74), .Q(clk_counter[2]), .QN(n216) );
  GTECH_FJK2S clk_counter_reg_3_ ( .J(n75), .K(n75), .TI(N118), .TE(N133), 
        .CP(clk), .CD(n74), .Q(clk_counter[3]), .QN(n215) );
  GTECH_FJK2S clk_counter_reg_4_ ( .J(n75), .K(n75), .TI(N120), .TE(N133), 
        .CP(clk), .CD(n74), .Q(clk_counter[4]), .QN(n214) );
  GTECH_FJK2S clk_counter_reg_5_ ( .J(n75), .K(n75), .TI(N122), .TE(N133), 
        .CP(clk), .CD(n74), .Q(clk_counter[5]), .QN(n213) );
  GTECH_FJK2S clk_counter_reg_6_ ( .J(n75), .K(n75), .TI(N124), .TE(N133), 
        .CP(clk), .CD(n74), .Q(clk_counter[6]), .QN(n212) );
  GTECH_FJK2S clk_counter_reg_7_ ( .J(n75), .K(n75), .TI(N126), .TE(N133), 
        .CP(clk), .CD(n74), .Q(clk_counter[7]), .QN(n211) );
  GTECH_FJK2S clk_counter_reg_8_ ( .J(n75), .K(n75), .TI(N128), .TE(N133), 
        .CP(clk), .CD(n74), .Q(clk_counter[8]), .QN(n210) );
  GTECH_FJK2S clk_counter_reg_9_ ( .J(n75), .K(n75), .TI(N130), .TE(N133), 
        .CP(clk), .CD(n74), .Q(dbg_clk_count[0]), .QN(n209) );
  GTECH_FJK2S clk_counter_reg_11_ ( .J(n75), .K(n75), .TI(N134), .TE(N133), 
        .CP(clk), .CD(n74), .Q(dbg_clk_count[2]), .QN(n208) );
  GTECH_FJK2S edge_counter_reg_4_ ( .J(n75), .K(n75), .TI(N144), .TE(N147), 
        .CP(clk), .CD(n74), .Q(dbg_edge_count[0]), .QN(n207) );
  GTECH_FJK2S edge_counter_reg_0_ ( .J(n75), .K(n75), .TI(N136), .TE(N147), 
        .CP(clk), .CD(n74), .Q(N62), .QN(n16) );
  GTECH_FJK2S unit_count_reg_0_ ( .J(n75), .K(n75), .TI(N162), .TE(N167), .CP(
        clk), .CD(n74), .Q(unit_count[0]) );
  GTECH_FJK2S edge_counter_reg_1_ ( .J(n75), .K(n75), .TI(N138), .TE(N147), 
        .CP(clk), .CD(n74), .Q(sub_85_carry_2_) );
  GTECH_FJK2S unit_count_reg_1_ ( .J(n75), .K(n75), .TI(N164), .TE(N167), .CP(
        clk), .CD(n74), .Q(unit_count[1]) );
  GTECH_FJK2S edge_counter_reg_2_ ( .J(n75), .K(n75), .TI(N140), .TE(N147), 
        .CP(clk), .CD(n74), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK2S unit_count_reg_2_ ( .J(n75), .K(n75), .TI(N166), .TE(N167), .CP(
        clk), .CD(n74), .Q(unit_count[2]) );
  GTECH_FJK2S edge_counter_reg_3_ ( .J(n75), .K(n75), .TI(N142), .TE(N147), 
        .CP(clk), .CD(n74), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK2S unit_count_reg_3_ ( .J(n75), .K(n75), .TI(N168), .TE(N167), .CP(
        clk), .CD(n74), .Q(unit_count[3]) );
  GTECH_FJK2S ten_count_reg_0_ ( .J(n75), .K(n75), .TI(N154), .TE(N159), .CP(
        clk), .CD(n74), .Q(ten_count[0]) );
  GTECH_FJK2S ten_count_reg_1_ ( .J(n75), .K(n75), .TI(N156), .TE(N159), .CP(
        clk), .CD(n74), .Q(ten_count[1]) );
  GTECH_FJK2S ten_count_reg_2_ ( .J(n75), .K(n75), .TI(N158), .TE(N159), .CP(
        clk), .CD(n74), .Q(ten_count[2]) );
  GTECH_FJK2S ten_count_reg_3_ ( .J(n75), .K(n75), .TI(N160), .TE(N159), .CP(
        clk), .CD(n74), .Q(ten_count[3]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_0_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .CD(n74), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n25) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_1_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .CD(n74), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_2_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .CD(n74), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n27) );
  GTECH_FJK2S seven_segment0_unit_count_reg_reg_3_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .CD(n74), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_0_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .CD(n74), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n29) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_1_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .CD(n74), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_2_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .CD(n74), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n31) );
  GTECH_FJK2S seven_segment0_ten_count_reg_reg_3_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .CD(n74), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n202) );
  GTECH_ZERO U215 ( .Z(n75) );
  GTECH_ONE U216 ( .Z(n74) );
  GTECH_NAND2 U217 ( .A(n15), .B(n234), .Z(seven_segment0_N9) );
  GTECH_AND2 U218 ( .A(ten_count[0]), .B(n234), .Z(seven_segment0_N8) );
  GTECH_AND2 U219 ( .A(n202), .B(n234), .Z(seven_segment0_N6) );
  GTECH_AND2 U220 ( .A(unit_count[3]), .B(n234), .Z(seven_segment0_N22) );
  GTECH_AND2 U221 ( .A(unit_count[2]), .B(n234), .Z(seven_segment0_N20) );
  GTECH_AND2 U222 ( .A(unit_count[1]), .B(n234), .Z(seven_segment0_N18) );
  GTECH_AND2 U223 ( .A(unit_count[0]), .B(n234), .Z(seven_segment0_N16) );
  GTECH_AND2 U224 ( .A(ten_count[3]), .B(n234), .Z(seven_segment0_N14) );
  GTECH_AND2 U225 ( .A(ten_count[2]), .B(n234), .Z(seven_segment0_N12) );
  GTECH_AND2 U226 ( .A(ten_count[1]), .B(n234), .Z(seven_segment0_N10) );
  GTECH_NAND2 U227 ( .A(n235), .B(n236), .Z(segments[6]) );
  GTECH_NOT U228 ( .A(n237), .Z(segments[4]) );
  GTECH_NAND3 U229 ( .A(n236), .B(n237), .C(n238), .Z(segments[3]) );
  GTECH_OAI21 U230 ( .A(n239), .B(n240), .C(n241), .Z(n237) );
  GTECH_NOT U231 ( .A(n242), .Z(n240) );
  GTECH_NAND2 U232 ( .A(n243), .B(n244), .Z(segments[2]) );
  GTECH_NOT U233 ( .A(segments[5]), .Z(n244) );
  GTECH_OAI21 U234 ( .A(n245), .B(n242), .C(n235), .Z(segments[5]) );
  GTECH_AND2 U235 ( .A(n246), .B(n238), .Z(n235) );
  GTECH_MUX2 U236 ( .A(n242), .B(n247), .S(n248), .Z(n246) );
  GTECH_NAND2 U237 ( .A(n249), .B(n241), .Z(n247) );
  GTECH_NAND3 U238 ( .A(n250), .B(n236), .C(n243), .Z(segments[1]) );
  GTECH_NOT U239 ( .A(n251), .Z(n243) );
  GTECH_OAI21 U240 ( .A(n241), .B(n252), .C(n242), .Z(n251) );
  GTECH_NAND3 U241 ( .A(n248), .B(n253), .C(n241), .Z(n250) );
  GTECH_NAND3 U242 ( .A(n238), .B(n236), .C(n254), .Z(segments[0]) );
  GTECH_OA22 U243 ( .A(n255), .B(n242), .C(n241), .D(n252), .Z(n254) );
  GTECH_NAND2 U244 ( .A(n256), .B(n253), .Z(n242) );
  GTECH_NAND2 U245 ( .A(n239), .B(n256), .Z(n236) );
  GTECH_NOT U246 ( .A(n252), .Z(n239) );
  GTECH_NAND2 U247 ( .A(n257), .B(n248), .Z(n252) );
  GTECH_NAND3 U248 ( .A(n249), .B(n253), .C(n255), .Z(n238) );
  GTECH_NOT U249 ( .A(n258), .Z(n255) );
  GTECH_NAND2 U250 ( .A(n245), .B(n248), .Z(n258) );
  GTECH_NOT U251 ( .A(n259), .Z(n248) );
  GTECH_MUX2 U252 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n202), .Z(n259) );
  GTECH_NOT U253 ( .A(n241), .Z(n245) );
  GTECH_MUX2 U254 ( .A(n29), .B(n25), .S(n202), .Z(n241) );
  GTECH_NOT U255 ( .A(n257), .Z(n253) );
  GTECH_MUX2 U256 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n202), .Z(n257) );
  GTECH_NOT U257 ( .A(n256), .Z(n249) );
  GTECH_MUX2 U258 ( .A(n31), .B(n27), .S(n202), .Z(n256) );
  GTECH_AO21 U259 ( .A(period[0]), .B(n260), .C(reset), .Z(N9) );
  GTECH_AND2 U260 ( .A(period[11]), .B(n260), .Z(N21) );
  GTECH_NAND2 U261 ( .A(n234), .B(n261), .Z(N20) );
  GTECH_AO21 U262 ( .A(period[10]), .B(n260), .C(reset), .Z(N19) );
  GTECH_AND2 U263 ( .A(period[9]), .B(n260), .Z(N18) );
  GTECH_AND2 U264 ( .A(period[8]), .B(n260), .Z(N17) );
  GTECH_AND2 U265 ( .A(N170), .B(n262), .Z(N168) );
  GTECH_NAND2 U266 ( .A(n263), .B(n264), .Z(N167) );
  GTECH_AND2 U267 ( .A(N170), .B(n265), .Z(N166) );
  GTECH_AND2 U268 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U269 ( .A(N170), .B(n266), .Z(N162) );
  GTECH_NOT U270 ( .A(n267), .Z(N170) );
  GTECH_NAND2 U271 ( .A(n268), .B(n234), .Z(n267) );
  GTECH_NOT U272 ( .A(n264), .Z(n268) );
  GTECH_MUX2 U273 ( .A(n269), .B(n270), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U274 ( .A(ten_count[2]), .B(n271), .C(n272), .Z(n270) );
  GTECH_NOT U275 ( .A(n273), .Z(n272) );
  GTECH_AND2 U276 ( .A(n274), .B(ten_count[2]), .Z(n269) );
  GTECH_AO21 U277 ( .A(period[7]), .B(n260), .C(reset), .Z(N16) );
  GTECH_OAI21 U278 ( .A(n275), .B(n276), .C(n277), .Z(N159) );
  GTECH_MUX2 U279 ( .A(n274), .B(n273), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U280 ( .A(ten_count[1]), .B(n271), .C(n278), .Z(n273) );
  GTECH_NOT U281 ( .A(n279), .Z(n274) );
  GTECH_NAND3 U282 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n279) );
  GTECH_MUX2 U283 ( .A(n280), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U284 ( .A(N152), .B(ten_count[0]), .Z(n280) );
  GTECH_NOT U285 ( .A(n278), .Z(N154) );
  GTECH_NAND2 U286 ( .A(N152), .B(n281), .Z(n278) );
  GTECH_NOT U287 ( .A(ten_count[0]), .Z(n281) );
  GTECH_NAND2 U288 ( .A(n282), .B(n206), .Z(N151) );
  GTECH_OA21 U289 ( .A(n14), .B(n283), .C(n263), .Z(n282) );
  GTECH_NOT U290 ( .A(n284), .Z(n263) );
  GTECH_OAI21 U291 ( .A(n285), .B(n275), .C(n234), .Z(n284) );
  GTECH_AND2 U292 ( .A(period[6]), .B(n260), .Z(N15) );
  GTECH_OAI21 U293 ( .A(n271), .B(n283), .C(n286), .Z(N148) );
  GTECH_MUX2 U294 ( .A(n287), .B(n288), .S(n220), .Z(n286) );
  GTECH_OR3 U295 ( .A(n221), .B(n289), .C(n290), .Z(n288) );
  GTECH_AND_NOT U296 ( .A(n291), .B(n292), .Z(n287) );
  GTECH_MUX2 U297 ( .A(n271), .B(n289), .S(n221), .Z(n291) );
  GTECH_NAND3 U298 ( .A(n293), .B(n264), .C(n277), .Z(N147) );
  GTECH_AND2 U299 ( .A(n234), .B(n294), .Z(n277) );
  GTECH_NAND3 U300 ( .A(n285), .B(n206), .C(n283), .Z(n294) );
  GTECH_NAND4 U301 ( .A(n221), .B(n220), .C(n207), .D(n295), .Z(n283) );
  GTECH_NAND2 U302 ( .A(n14), .B(n296), .Z(n264) );
  GTECH_NOT U303 ( .A(n206), .Z(n296) );
  GTECH_NAND3 U304 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n293) );
  GTECH_MUX2 U305 ( .A(n292), .B(n297), .S(n221), .Z(N146) );
  GTECH_OAI21 U306 ( .A(n290), .B(n289), .C(n298), .Z(n297) );
  GTECH_OAI21 U307 ( .A(n299), .B(n289), .C(n300), .Z(n292) );
  GTECH_AO21 U308 ( .A(n295), .B(n207), .C(n271), .Z(n300) );
  GTECH_NOT U309 ( .A(n290), .Z(n299) );
  GTECH_NAND3 U310 ( .A(n301), .B(n262), .C(n302), .Z(n290) );
  GTECH_NOT U311 ( .A(n207), .Z(n301) );
  GTECH_NAND2 U312 ( .A(n303), .B(n298), .Z(N144) );
  GTECH_NAND3 U313 ( .A(N152), .B(n295), .C(n207), .Z(n298) );
  GTECH_MUX2 U314 ( .A(n304), .B(n305), .S(n207), .Z(n303) );
  GTECH_NAND3 U315 ( .A(n302), .B(n262), .C(N150), .Z(n305) );
  GTECH_OA21 U316 ( .A(n271), .B(n295), .C(n306), .Z(n304) );
  GTECH_OAI21 U317 ( .A(n22), .B(n307), .C(N150), .Z(n306) );
  GTECH_NAND2 U318 ( .A(n308), .B(n262), .Z(n295) );
  GTECH_NOT U319 ( .A(n22), .Z(n262) );
  GTECH_OAI21 U320 ( .A(n289), .B(n309), .C(n310), .Z(N142) );
  GTECH_MUX2 U321 ( .A(n311), .B(n312), .S(n22), .Z(n310) );
  GTECH_NAND2 U322 ( .A(N152), .B(n308), .Z(n312) );
  GTECH_XOR2 U323 ( .A(n22), .B(n302), .Z(n309) );
  GTECH_NOT U324 ( .A(n307), .Z(n302) );
  GTECH_NAND3 U325 ( .A(n266), .B(n265), .C(sub_85_carry_2_), .Z(n307) );
  GTECH_NOT U326 ( .A(n20), .Z(n265) );
  GTECH_NAND2 U327 ( .A(n313), .B(n311), .Z(N140) );
  GTECH_NAND2 U328 ( .A(n314), .B(N152), .Z(n311) );
  GTECH_NOT U329 ( .A(n271), .Z(N152) );
  GTECH_NOT U330 ( .A(n308), .Z(n314) );
  GTECH_NAND2 U331 ( .A(n20), .B(n315), .Z(n308) );
  GTECH_NOT U332 ( .A(sub_85_carry_2_), .Z(n315) );
  GTECH_MUX2 U333 ( .A(n316), .B(n317), .S(n20), .Z(n313) );
  GTECH_NAND3 U334 ( .A(sub_85_carry_2_), .B(n266), .C(N150), .Z(n317) );
  GTECH_NOT U335 ( .A(n16), .Z(n266) );
  GTECH_AND2 U336 ( .A(n318), .B(n319), .Z(n316) );
  GTECH_MUX2 U337 ( .A(n289), .B(n271), .S(sub_85_carry_2_), .Z(n318) );
  GTECH_AO21 U338 ( .A(period[5]), .B(n260), .C(reset), .Z(N14) );
  GTECH_MUX2 U339 ( .A(n320), .B(n321), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U340 ( .A(n319), .Z(n321) );
  GTECH_OAI21 U341 ( .A(n16), .B(n289), .C(n271), .Z(n320) );
  GTECH_OAI21 U342 ( .A(n16), .B(n271), .C(n319), .Z(N136) );
  GTECH_NAND2 U343 ( .A(n16), .B(N150), .Z(n319) );
  GTECH_NOT U344 ( .A(n289), .Z(N150) );
  GTECH_NAND2 U345 ( .A(n322), .B(n234), .Z(n289) );
  GTECH_NOT U346 ( .A(n276), .Z(n322) );
  GTECH_NAND2 U347 ( .A(n206), .B(n323), .Z(n271) );
  GTECH_NOT U348 ( .A(N169), .Z(n323) );
  GTECH_NAND2 U349 ( .A(n234), .B(n285), .Z(N169) );
  GTECH_NOT U350 ( .A(n14), .Z(n285) );
  GTECH_AND2 U351 ( .A(n324), .B(n325), .Z(N134) );
  GTECH_OAI21 U352 ( .A(n219), .B(n326), .C(n208), .Z(n325) );
  GTECH_NAND2 U353 ( .A(n234), .B(n276), .Z(N133) );
  GTECH_NAND2 U354 ( .A(n206), .B(n14), .Z(n276) );
  GTECH_AND2 U355 ( .A(n327), .B(n324), .Z(N132) );
  GTECH_XOR2 U356 ( .A(n326), .B(n219), .Z(n327) );
  GTECH_NAND2 U357 ( .A(n328), .B(n329), .Z(n326) );
  GTECH_NOT U358 ( .A(n209), .Z(n329) );
  GTECH_NOT U359 ( .A(n330), .Z(n328) );
  GTECH_AND2 U360 ( .A(n331), .B(n324), .Z(N130) );
  GTECH_XOR2 U361 ( .A(n330), .B(n209), .Z(n331) );
  GTECH_NAND2 U362 ( .A(n332), .B(n333), .Z(n330) );
  GTECH_NOT U363 ( .A(n210), .Z(n333) );
  GTECH_NOT U364 ( .A(n334), .Z(n332) );
  GTECH_AND2 U365 ( .A(period[4]), .B(n260), .Z(N13) );
  GTECH_AND2 U366 ( .A(n335), .B(n324), .Z(N128) );
  GTECH_XOR2 U367 ( .A(n334), .B(n210), .Z(n335) );
  GTECH_NAND2 U368 ( .A(n336), .B(n337), .Z(n334) );
  GTECH_NOT U369 ( .A(n211), .Z(n337) );
  GTECH_NOT U370 ( .A(n338), .Z(n336) );
  GTECH_AND2 U371 ( .A(n339), .B(n324), .Z(N126) );
  GTECH_XOR2 U372 ( .A(n338), .B(n211), .Z(n339) );
  GTECH_NAND2 U373 ( .A(n340), .B(n341), .Z(n338) );
  GTECH_NOT U374 ( .A(n342), .Z(n340) );
  GTECH_AND2 U375 ( .A(n343), .B(n324), .Z(N124) );
  GTECH_XOR2 U376 ( .A(n342), .B(n212), .Z(n343) );
  GTECH_NAND2 U377 ( .A(n344), .B(n345), .Z(n342) );
  GTECH_NOT U378 ( .A(n213), .Z(n345) );
  GTECH_NOT U379 ( .A(n346), .Z(n344) );
  GTECH_AND2 U380 ( .A(n347), .B(n324), .Z(N122) );
  GTECH_XOR2 U381 ( .A(n346), .B(n213), .Z(n347) );
  GTECH_NAND2 U382 ( .A(n348), .B(n349), .Z(n346) );
  GTECH_NOT U383 ( .A(n214), .Z(n349) );
  GTECH_NOT U384 ( .A(n350), .Z(n348) );
  GTECH_AND2 U385 ( .A(n351), .B(n324), .Z(N120) );
  GTECH_XOR2 U386 ( .A(n350), .B(n214), .Z(n351) );
  GTECH_NAND2 U387 ( .A(n352), .B(n353), .Z(n350) );
  GTECH_NOT U388 ( .A(n354), .Z(n352) );
  GTECH_AO21 U389 ( .A(period[3]), .B(n260), .C(reset), .Z(N12) );
  GTECH_AND2 U390 ( .A(n355), .B(n324), .Z(N118) );
  GTECH_XOR2 U391 ( .A(n354), .B(n215), .Z(n355) );
  GTECH_NAND3 U392 ( .A(n356), .B(n357), .C(n358), .Z(n354) );
  GTECH_OAI2N2 U393 ( .A(n359), .B(n360), .C(N112), .D(n358), .Z(N116) );
  GTECH_NOT U394 ( .A(n216), .Z(n358) );
  GTECH_MUX2 U395 ( .A(n356), .B(n361), .S(n216), .Z(n360) );
  GTECH_NAND2 U396 ( .A(n356), .B(n357), .Z(n361) );
  GTECH_NOT U397 ( .A(n217), .Z(n356) );
  GTECH_MUX2 U398 ( .A(N112), .B(n362), .S(n217), .Z(N114) );
  GTECH_AND2 U399 ( .A(n324), .B(n357), .Z(n362) );
  GTECH_NOT U400 ( .A(n363), .Z(N112) );
  GTECH_NAND2 U401 ( .A(n324), .B(n218), .Z(n363) );
  GTECH_NOT U402 ( .A(n359), .Z(n324) );
  GTECH_NAND2 U403 ( .A(n275), .B(n234), .Z(n359) );
  GTECH_NAND2 U404 ( .A(n364), .B(n365), .Z(n275) );
  GTECH_OR3 U405 ( .A(n366), .B(n367), .C(n368), .Z(n365) );
  GTECH_OAI2N2 U406 ( .A(update_period[9]), .B(n209), .C(n369), .D(n370), .Z(
        n368) );
  GTECH_AOI2N2 U407 ( .A(update_period[7]), .B(n211), .C(n371), .D(n372), .Z(
        n370) );
  GTECH_OAI21 U408 ( .A(update_period[7]), .B(n211), .C(n212), .Z(n372) );
  GTECH_OA21 U409 ( .A(n373), .B(n374), .C(n375), .Z(n369) );
  GTECH_OR3 U410 ( .A(n374), .B(n376), .C(n377), .Z(n375) );
  GTECH_OAI2N2 U411 ( .A(n213), .B(update_period[5]), .C(n378), .D(n379), .Z(
        n377) );
  GTECH_OA21 U412 ( .A(n353), .B(n380), .C(n381), .Z(n379) );
  GTECH_NAND3 U413 ( .A(n382), .B(update_period[2]), .C(n216), .Z(n381) );
  GTECH_NAND3 U414 ( .A(n383), .B(n384), .C(n382), .Z(n378) );
  GTECH_NAND2 U415 ( .A(n380), .B(n353), .Z(n382) );
  GTECH_NOT U416 ( .A(n215), .Z(n353) );
  GTECH_NOT U417 ( .A(update_period[3]), .Z(n380) );
  GTECH_OAI2N2 U418 ( .A(n357), .B(n222), .C(update_period[1]), .D(n217), .Z(
        n384) );
  GTECH_NOT U419 ( .A(n218), .Z(n357) );
  GTECH_OA22 U420 ( .A(n217), .B(update_period[1]), .C(n216), .D(
        update_period[2]), .Z(n383) );
  GTECH_NOR2 U421 ( .A(n214), .B(update_period[4]), .Z(n376) );
  GTECH_OAI2N2 U422 ( .A(update_period[7]), .B(n211), .C(n341), .D(n371), .Z(
        n374) );
  GTECH_NOT U423 ( .A(update_period[6]), .Z(n371) );
  GTECH_NOT U424 ( .A(n212), .Z(n341) );
  GTECH_AOI22 U425 ( .A(n213), .B(update_period[5]), .C(update_period[4]), .D(
        n385), .Z(n373) );
  GTECH_OA21 U426 ( .A(update_period[5]), .B(n213), .C(n214), .Z(n385) );
  GTECH_NOR2 U427 ( .A(update_period[8]), .B(n210), .Z(n366) );
  GTECH_AOI2N2 U428 ( .A(n208), .B(update_period[11]), .C(n367), .D(n386), .Z(
        n364) );
  GTECH_AOI222 U429 ( .A(update_period[9]), .B(n209), .C(n387), .D(
        update_period[8]), .E(update_period[10]), .F(n219), .Z(n386) );
  GTECH_OA21 U430 ( .A(n209), .B(update_period[9]), .C(n210), .Z(n387) );
  GTECH_OAI2N2 U431 ( .A(update_period[11]), .B(n208), .C(n388), .D(n389), .Z(
        n367) );
  GTECH_NOT U432 ( .A(update_period[10]), .Z(n389) );
  GTECH_NOT U433 ( .A(n219), .Z(n388) );
  GTECH_AO21 U434 ( .A(period[2]), .B(n260), .C(reset), .Z(N11) );
  GTECH_AO21 U435 ( .A(period[1]), .B(n260), .C(reset), .Z(N10) );
  GTECH_NOT U436 ( .A(n261), .Z(n260) );
  GTECH_NAND2 U437 ( .A(period_load), .B(n234), .Z(n261) );
  GTECH_NOT U438 ( .A(reset), .Z(n234) );
endmodule

