
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
         n27, n28, n29, n31, n32, n33, n86, n87, n168, n171, sub_85_carry_2_,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n188, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
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
         n370;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n87), .K(n87), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n87), .K(n87), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n87), .K(n87), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n87), .K(n87), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n87), .K(n87), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n87), .K(n87), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n87), .K(n87), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n87), .K(n87), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n87), .K(n87), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n87), .K(n87), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n87), .K(n87), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n188) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n87), .K(n87), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD2 edge_detect0_q0_reg ( .D(signal), .CP(clk), .CD(n86), .Q(
        edge_detect0_q0) );
  GTECH_FD2 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .CD(n86), .Q(
        edge_detect0_q1) );
  GTECH_FD2 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .CD(n86), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n87), .K(n87), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n186) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n87), .K(n87), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n185) );
  GTECH_FJK1S state_reg_0_ ( .J(n87), .K(n87), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n87), .K(n87), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n171) );
  GTECH_FJK1S update_digits_reg ( .J(n87), .K(n87), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n87), .K(n87), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n184) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n87), .K(n87), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n183) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n87), .K(n87), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n182) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n87), .K(n87), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n181) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n87), .K(n87), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n180) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n87), .K(n87), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n179) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n87), .K(n87), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n178) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n87), .K(n87), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n177) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n87), .K(n87), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n176) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n87), .K(n87), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n87), .K(n87), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n87), .K(n87), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n173) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n87), .K(n87), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n172) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n87), .K(n87), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n87), .K(n87), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n87), .K(n87), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n87), .K(n87), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n87), .K(n87), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n87), .K(n87), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n87), .K(n87), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n87), .K(n87), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n87), .K(n87), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n87), .K(n87), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n87), .K(n87), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n87), .K(n87), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n87), .K(n87), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n87), .K(n87), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n87), .K(n87), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n28) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n87), .K(n87), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n29) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n87), .K(n87), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n87), .K(n87), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n87), .K(n87), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n32) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n87), .K(n87), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n33) );
  GTECH_FD2 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .CD(
        n86), .Q(digit), .QN(n168) );
  GTECH_ZERO U180 ( .Z(n87) );
  GTECH_ONE U181 ( .Z(n86) );
  GTECH_NAND2 U182 ( .A(n15), .B(n199), .Z(seven_segment0_N9) );
  GTECH_AND2 U183 ( .A(ten_count[0]), .B(n199), .Z(seven_segment0_N8) );
  GTECH_AND2 U184 ( .A(n168), .B(n199), .Z(seven_segment0_N6) );
  GTECH_AND2 U185 ( .A(unit_count[3]), .B(n199), .Z(seven_segment0_N22) );
  GTECH_AND2 U186 ( .A(unit_count[2]), .B(n199), .Z(seven_segment0_N20) );
  GTECH_AND2 U187 ( .A(unit_count[1]), .B(n199), .Z(seven_segment0_N18) );
  GTECH_AND2 U188 ( .A(unit_count[0]), .B(n199), .Z(seven_segment0_N16) );
  GTECH_AND2 U189 ( .A(ten_count[3]), .B(n199), .Z(seven_segment0_N14) );
  GTECH_AND2 U190 ( .A(ten_count[2]), .B(n199), .Z(seven_segment0_N12) );
  GTECH_AND2 U191 ( .A(ten_count[1]), .B(n199), .Z(seven_segment0_N10) );
  GTECH_NAND2 U192 ( .A(n200), .B(n201), .Z(segments[6]) );
  GTECH_NOT U193 ( .A(n202), .Z(segments[4]) );
  GTECH_NAND3 U194 ( .A(n201), .B(n202), .C(n203), .Z(segments[3]) );
  GTECH_OAI21 U195 ( .A(n204), .B(n205), .C(n206), .Z(n202) );
  GTECH_NOT U196 ( .A(n207), .Z(n205) );
  GTECH_NAND2 U197 ( .A(n208), .B(n209), .Z(segments[2]) );
  GTECH_NOT U198 ( .A(segments[5]), .Z(n209) );
  GTECH_OAI21 U199 ( .A(n210), .B(n207), .C(n200), .Z(segments[5]) );
  GTECH_AND2 U200 ( .A(n211), .B(n203), .Z(n200) );
  GTECH_MUX2 U201 ( .A(n207), .B(n212), .S(n213), .Z(n211) );
  GTECH_NAND2 U202 ( .A(n206), .B(n214), .Z(n212) );
  GTECH_NAND3 U203 ( .A(n215), .B(n201), .C(n208), .Z(segments[1]) );
  GTECH_NOT U204 ( .A(n216), .Z(n208) );
  GTECH_OAI21 U205 ( .A(n217), .B(n206), .C(n207), .Z(n216) );
  GTECH_NAND3 U206 ( .A(n213), .B(n206), .C(n218), .Z(n215) );
  GTECH_NAND3 U207 ( .A(n203), .B(n201), .C(n219), .Z(segments[0]) );
  GTECH_OA22 U208 ( .A(n220), .B(n207), .C(n217), .D(n206), .Z(n219) );
  GTECH_NOT U209 ( .A(n210), .Z(n206) );
  GTECH_NAND2 U210 ( .A(n218), .B(n221), .Z(n207) );
  GTECH_NAND2 U211 ( .A(n204), .B(n221), .Z(n201) );
  GTECH_NOT U212 ( .A(n217), .Z(n204) );
  GTECH_NAND2 U213 ( .A(n213), .B(n222), .Z(n217) );
  GTECH_NOT U214 ( .A(n218), .Z(n222) );
  GTECH_NAND3 U215 ( .A(n218), .B(n214), .C(n220), .Z(n203) );
  GTECH_NOT U216 ( .A(n223), .Z(n220) );
  GTECH_NAND2 U217 ( .A(n210), .B(n213), .Z(n223) );
  GTECH_MUX2 U218 ( .A(n33), .B(n29), .S(n168), .Z(n213) );
  GTECH_MUX2 U219 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n168), .Z(n210) );
  GTECH_NOT U220 ( .A(n221), .Z(n214) );
  GTECH_MUX2 U221 ( .A(n32), .B(n28), .S(n168), .Z(n221) );
  GTECH_MUX2 U222 ( .A(n31), .B(n27), .S(n168), .Z(n218) );
  GTECH_NOT U223 ( .A(n224), .Z(N9) );
  GTECH_AOI21 U224 ( .A(period[0]), .B(n225), .C(reset), .Z(n224) );
  GTECH_AND2 U225 ( .A(period[11]), .B(n225), .Z(N21) );
  GTECH_NAND2 U226 ( .A(n199), .B(n226), .Z(N20) );
  GTECH_NOT U227 ( .A(n227), .Z(N19) );
  GTECH_AOI21 U228 ( .A(period[10]), .B(n225), .C(reset), .Z(n227) );
  GTECH_AND2 U229 ( .A(period[9]), .B(n225), .Z(N18) );
  GTECH_AND2 U230 ( .A(period[8]), .B(n225), .Z(N17) );
  GTECH_AND2 U231 ( .A(N170), .B(n228), .Z(N168) );
  GTECH_NAND2 U232 ( .A(n229), .B(n230), .Z(N167) );
  GTECH_AND2 U233 ( .A(N170), .B(n231), .Z(N166) );
  GTECH_AND2 U234 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U235 ( .A(N170), .B(n232), .Z(N162) );
  GTECH_NOT U236 ( .A(n233), .Z(N170) );
  GTECH_NAND2 U237 ( .A(n234), .B(n199), .Z(n233) );
  GTECH_NOT U238 ( .A(n230), .Z(n234) );
  GTECH_OAI22 U239 ( .A(n235), .B(n236), .C(n237), .D(n238), .Z(N160) );
  GTECH_MUX2 U240 ( .A(n235), .B(n239), .S(ten_count[2]), .Z(n238) );
  GTECH_NAND2 U241 ( .A(n240), .B(n235), .Z(n239) );
  GTECH_NOT U242 ( .A(ten_count[3]), .Z(n235) );
  GTECH_NOT U243 ( .A(n241), .Z(N16) );
  GTECH_AOI21 U244 ( .A(period[7]), .B(n225), .C(reset), .Z(n241) );
  GTECH_OAI21 U245 ( .A(n242), .B(n243), .C(n244), .Z(N159) );
  GTECH_MUX2 U246 ( .A(n245), .B(n246), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U247 ( .A(n236), .Z(n246) );
  GTECH_NAND2 U248 ( .A(N152), .B(n247), .Z(n236) );
  GTECH_AND2 U249 ( .A(N152), .B(n240), .Z(n245) );
  GTECH_NOT U250 ( .A(n247), .Z(n240) );
  GTECH_NAND2 U251 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n247) );
  GTECH_MUX2 U252 ( .A(n248), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U253 ( .A(N152), .B(ten_count[0]), .Z(n248) );
  GTECH_NOT U254 ( .A(n249), .Z(N154) );
  GTECH_NAND2 U255 ( .A(N152), .B(n250), .Z(n249) );
  GTECH_NOT U256 ( .A(ten_count[0]), .Z(n250) );
  GTECH_NAND2 U257 ( .A(n251), .B(n171), .Z(N151) );
  GTECH_OA21 U258 ( .A(n14), .B(n252), .C(n229), .Z(n251) );
  GTECH_NOT U259 ( .A(n253), .Z(n229) );
  GTECH_OAI21 U260 ( .A(n254), .B(n242), .C(n199), .Z(n253) );
  GTECH_AND2 U261 ( .A(period[6]), .B(n225), .Z(N15) );
  GTECH_OAI21 U262 ( .A(n237), .B(n252), .C(n255), .Z(N148) );
  GTECH_MUX2 U263 ( .A(n256), .B(n257), .S(n185), .Z(n255) );
  GTECH_OR3 U264 ( .A(n186), .B(n258), .C(n259), .Z(n257) );
  GTECH_AND_NOT U265 ( .A(n260), .B(n261), .Z(n256) );
  GTECH_MUX2 U266 ( .A(n237), .B(n258), .S(n186), .Z(n260) );
  GTECH_NAND3 U267 ( .A(n262), .B(n230), .C(n244), .Z(N147) );
  GTECH_AND2 U268 ( .A(n199), .B(n263), .Z(n244) );
  GTECH_NAND3 U269 ( .A(n254), .B(n171), .C(n252), .Z(n263) );
  GTECH_NAND4 U270 ( .A(n186), .B(n185), .C(n172), .D(n264), .Z(n252) );
  GTECH_NAND2 U271 ( .A(n14), .B(n265), .Z(n230) );
  GTECH_NOT U272 ( .A(n171), .Z(n265) );
  GTECH_NAND3 U273 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n262) );
  GTECH_MUX2 U274 ( .A(n261), .B(n266), .S(n186), .Z(N146) );
  GTECH_OAI21 U275 ( .A(n259), .B(n258), .C(n267), .Z(n266) );
  GTECH_OAI22 U276 ( .A(n268), .B(n237), .C(n269), .D(n258), .Z(n261) );
  GTECH_NOT U277 ( .A(n259), .Z(n269) );
  GTECH_NAND3 U278 ( .A(n270), .B(n228), .C(n271), .Z(n259) );
  GTECH_NOT U279 ( .A(n172), .Z(n270) );
  GTECH_AND2 U280 ( .A(n264), .B(n172), .Z(n268) );
  GTECH_NAND2 U281 ( .A(n272), .B(n267), .Z(N144) );
  GTECH_NAND3 U282 ( .A(N152), .B(n264), .C(n172), .Z(n267) );
  GTECH_MUX2 U283 ( .A(n273), .B(n274), .S(n172), .Z(n272) );
  GTECH_NAND3 U284 ( .A(n271), .B(n228), .C(N150), .Z(n274) );
  GTECH_OA21 U285 ( .A(n237), .B(n264), .C(n275), .Z(n273) );
  GTECH_OAI21 U286 ( .A(n22), .B(n276), .C(N150), .Z(n275) );
  GTECH_NAND2 U287 ( .A(n277), .B(n228), .Z(n264) );
  GTECH_NOT U288 ( .A(n22), .Z(n228) );
  GTECH_OAI21 U289 ( .A(n258), .B(n278), .C(n279), .Z(N142) );
  GTECH_MUX2 U290 ( .A(n280), .B(n281), .S(n22), .Z(n279) );
  GTECH_NAND2 U291 ( .A(N152), .B(n277), .Z(n281) );
  GTECH_XOR2 U292 ( .A(n22), .B(n271), .Z(n278) );
  GTECH_NOT U293 ( .A(n276), .Z(n271) );
  GTECH_NAND3 U294 ( .A(n232), .B(n231), .C(sub_85_carry_2_), .Z(n276) );
  GTECH_NOT U295 ( .A(n20), .Z(n231) );
  GTECH_NAND2 U296 ( .A(n282), .B(n280), .Z(N140) );
  GTECH_NAND2 U297 ( .A(n283), .B(N152), .Z(n280) );
  GTECH_NOT U298 ( .A(n237), .Z(N152) );
  GTECH_NOT U299 ( .A(n277), .Z(n283) );
  GTECH_NAND2 U300 ( .A(n20), .B(n284), .Z(n277) );
  GTECH_NOT U301 ( .A(sub_85_carry_2_), .Z(n284) );
  GTECH_MUX2 U302 ( .A(n285), .B(n286), .S(n20), .Z(n282) );
  GTECH_NAND3 U303 ( .A(sub_85_carry_2_), .B(n232), .C(N150), .Z(n286) );
  GTECH_NOT U304 ( .A(n16), .Z(n232) );
  GTECH_AND2 U305 ( .A(n287), .B(n288), .Z(n285) );
  GTECH_MUX2 U306 ( .A(n258), .B(n237), .S(sub_85_carry_2_), .Z(n287) );
  GTECH_NOT U307 ( .A(n289), .Z(N14) );
  GTECH_AOI21 U308 ( .A(period[5]), .B(n225), .C(reset), .Z(n289) );
  GTECH_MUX2 U309 ( .A(n290), .B(n291), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U310 ( .A(n288), .Z(n291) );
  GTECH_OAI21 U311 ( .A(n16), .B(n258), .C(n237), .Z(n290) );
  GTECH_OAI21 U312 ( .A(n16), .B(n237), .C(n288), .Z(N136) );
  GTECH_NAND2 U313 ( .A(n16), .B(N150), .Z(n288) );
  GTECH_NOT U314 ( .A(n258), .Z(N150) );
  GTECH_NAND2 U315 ( .A(n292), .B(n199), .Z(n258) );
  GTECH_NOT U316 ( .A(n243), .Z(n292) );
  GTECH_NAND2 U317 ( .A(n171), .B(n293), .Z(n237) );
  GTECH_NOT U318 ( .A(N169), .Z(n293) );
  GTECH_NAND2 U319 ( .A(n199), .B(n254), .Z(N169) );
  GTECH_NOT U320 ( .A(n14), .Z(n254) );
  GTECH_AND2 U321 ( .A(n294), .B(n295), .Z(N134) );
  GTECH_OAI21 U322 ( .A(n184), .B(n296), .C(n173), .Z(n295) );
  GTECH_NAND2 U323 ( .A(n199), .B(n243), .Z(N133) );
  GTECH_NAND2 U324 ( .A(n171), .B(n14), .Z(n243) );
  GTECH_AND2 U325 ( .A(n297), .B(n294), .Z(N132) );
  GTECH_XOR2 U326 ( .A(n296), .B(n184), .Z(n297) );
  GTECH_NAND2 U327 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_NOT U328 ( .A(n300), .Z(n298) );
  GTECH_AND2 U329 ( .A(n301), .B(n294), .Z(N130) );
  GTECH_XOR2 U330 ( .A(n300), .B(n174), .Z(n301) );
  GTECH_NAND2 U331 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_NOT U332 ( .A(n175), .Z(n303) );
  GTECH_NOT U333 ( .A(n304), .Z(n302) );
  GTECH_AND2 U334 ( .A(period[4]), .B(n225), .Z(N13) );
  GTECH_AND2 U335 ( .A(n305), .B(n294), .Z(N128) );
  GTECH_XOR2 U336 ( .A(n304), .B(n175), .Z(n305) );
  GTECH_NAND2 U337 ( .A(n306), .B(n307), .Z(n304) );
  GTECH_NOT U338 ( .A(n308), .Z(n306) );
  GTECH_AND2 U339 ( .A(n309), .B(n294), .Z(N126) );
  GTECH_XOR2 U340 ( .A(n308), .B(n176), .Z(n309) );
  GTECH_NAND2 U341 ( .A(n310), .B(n311), .Z(n308) );
  GTECH_NOT U342 ( .A(n177), .Z(n311) );
  GTECH_NOT U343 ( .A(n312), .Z(n310) );
  GTECH_AND2 U344 ( .A(n313), .B(n294), .Z(N124) );
  GTECH_XOR2 U345 ( .A(n312), .B(n177), .Z(n313) );
  GTECH_NAND2 U346 ( .A(n314), .B(n315), .Z(n312) );
  GTECH_NOT U347 ( .A(n178), .Z(n315) );
  GTECH_NOT U348 ( .A(n316), .Z(n314) );
  GTECH_AND2 U349 ( .A(n317), .B(n294), .Z(N122) );
  GTECH_XOR2 U350 ( .A(n316), .B(n178), .Z(n317) );
  GTECH_NAND2 U351 ( .A(n318), .B(n319), .Z(n316) );
  GTECH_NOT U352 ( .A(n179), .Z(n319) );
  GTECH_NOT U353 ( .A(n320), .Z(n318) );
  GTECH_AND2 U354 ( .A(n321), .B(n294), .Z(N120) );
  GTECH_XOR2 U355 ( .A(n320), .B(n179), .Z(n321) );
  GTECH_NAND2 U356 ( .A(n322), .B(n323), .Z(n320) );
  GTECH_NOT U357 ( .A(n324), .Z(n322) );
  GTECH_NOT U358 ( .A(n325), .Z(N12) );
  GTECH_AOI21 U359 ( .A(period[3]), .B(n225), .C(reset), .Z(n325) );
  GTECH_AND2 U360 ( .A(n326), .B(n294), .Z(N118) );
  GTECH_XOR2 U361 ( .A(n324), .B(n180), .Z(n326) );
  GTECH_NAND3 U362 ( .A(n327), .B(n328), .C(n329), .Z(n324) );
  GTECH_NOT U363 ( .A(n181), .Z(n329) );
  GTECH_OAI22 U364 ( .A(n181), .B(n330), .C(n331), .D(n332), .Z(N116) );
  GTECH_MUX2 U365 ( .A(n327), .B(n333), .S(n181), .Z(n332) );
  GTECH_NAND2 U366 ( .A(n327), .B(n328), .Z(n333) );
  GTECH_MUX2 U367 ( .A(N112), .B(n334), .S(n182), .Z(N114) );
  GTECH_AND2 U368 ( .A(n294), .B(n328), .Z(n334) );
  GTECH_NOT U369 ( .A(n183), .Z(n328) );
  GTECH_NOT U370 ( .A(n330), .Z(N112) );
  GTECH_NAND2 U371 ( .A(n294), .B(n183), .Z(n330) );
  GTECH_NOT U372 ( .A(n331), .Z(n294) );
  GTECH_NAND2 U373 ( .A(n242), .B(n199), .Z(n331) );
  GTECH_NOT U374 ( .A(n335), .Z(n242) );
  GTECH_AOI222 U375 ( .A(n336), .B(n337), .C(update_period[11]), .D(n173), .E(
        n338), .F(n339), .Z(n335) );
  GTECH_OAI2N2 U376 ( .A(n340), .B(n341), .C(n342), .D(n343), .Z(n338) );
  GTECH_OAI21 U377 ( .A(n344), .B(n299), .C(n345), .Z(n343) );
  GTECH_NAND3 U378 ( .A(n346), .B(update_period[8]), .C(n175), .Z(n345) );
  GTECH_AND3 U379 ( .A(n339), .B(n346), .C(n342), .Z(n337) );
  GTECH_NAND2 U380 ( .A(n341), .B(n340), .Z(n342) );
  GTECH_NOT U381 ( .A(n184), .Z(n340) );
  GTECH_NOT U382 ( .A(update_period[10]), .Z(n341) );
  GTECH_NAND2 U383 ( .A(n344), .B(n299), .Z(n346) );
  GTECH_NOT U384 ( .A(n174), .Z(n299) );
  GTECH_NOT U385 ( .A(update_period[9]), .Z(n344) );
  GTECH_NAND2 U386 ( .A(n347), .B(n348), .Z(n339) );
  GTECH_NOT U387 ( .A(n173), .Z(n348) );
  GTECH_NOT U388 ( .A(update_period[11]), .Z(n347) );
  GTECH_OA22 U389 ( .A(n175), .B(update_period[8]), .C(n349), .D(n350), .Z(
        n336) );
  GTECH_OAI21 U390 ( .A(n307), .B(n351), .C(n352), .Z(n350) );
  GTECH_NAND3 U391 ( .A(n353), .B(update_period[6]), .C(n177), .Z(n352) );
  GTECH_OAI2N2 U392 ( .A(n354), .B(n355), .C(n356), .D(n357), .Z(n349) );
  GTECH_ADD_ABC U393 ( .A(n358), .B(n178), .C(update_period[5]), .COUT(n357)
         );
  GTECH_AND2 U394 ( .A(update_period[4]), .B(n179), .Z(n358) );
  GTECH_OAI21 U395 ( .A(update_period[4]), .B(n179), .C(n356), .Z(n355) );
  GTECH_NOT U396 ( .A(n359), .Z(n356) );
  GTECH_OAI21 U397 ( .A(update_period[6]), .B(n177), .C(n353), .Z(n359) );
  GTECH_NAND2 U398 ( .A(n351), .B(n307), .Z(n353) );
  GTECH_NOT U399 ( .A(n176), .Z(n307) );
  GTECH_NOT U400 ( .A(update_period[7]), .Z(n351) );
  GTECH_OAI22 U401 ( .A(update_period[5]), .B(n178), .C(n360), .D(n361), .Z(
        n354) );
  GTECH_OAI21 U402 ( .A(n323), .B(n362), .C(n363), .Z(n361) );
  GTECH_NAND3 U403 ( .A(n364), .B(update_period[2]), .C(n181), .Z(n363) );
  GTECH_AND3 U404 ( .A(n365), .B(n366), .C(n364), .Z(n360) );
  GTECH_NAND2 U405 ( .A(n362), .B(n323), .Z(n364) );
  GTECH_NOT U406 ( .A(n180), .Z(n323) );
  GTECH_NOT U407 ( .A(update_period[3]), .Z(n362) );
  GTECH_OAI21 U408 ( .A(n367), .B(n327), .C(n188), .Z(n366) );
  GTECH_NOT U409 ( .A(n182), .Z(n327) );
  GTECH_OA21 U410 ( .A(n181), .B(update_period[2]), .C(n368), .Z(n365) );
  GTECH_OR_NOT U411 ( .A(n182), .B(n367), .Z(n368) );
  GTECH_NAND2 U412 ( .A(update_period[0]), .B(n183), .Z(n367) );
  GTECH_NOT U413 ( .A(n369), .Z(N11) );
  GTECH_AOI21 U414 ( .A(period[2]), .B(n225), .C(reset), .Z(n369) );
  GTECH_NOT U415 ( .A(n370), .Z(N10) );
  GTECH_AOI21 U416 ( .A(period[1]), .B(n225), .C(reset), .Z(n370) );
  GTECH_NOT U417 ( .A(n226), .Z(n225) );
  GTECH_NAND2 U418 ( .A(period_load), .B(n199), .Z(n226) );
  GTECH_NOT U419 ( .A(reset), .Z(n199) );
endmodule

