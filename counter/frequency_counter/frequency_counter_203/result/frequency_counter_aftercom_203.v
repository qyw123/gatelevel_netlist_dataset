
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
         n26, n28, n30, n32, n78, n156, n160, sub_85_carry_2_, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
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
         n351, n352, n353, n354, n355, n356, n357, n358, n359;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n78), .K(n78), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n78), .K(n78), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n78), .K(n78), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n78), .K(n78), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n78), .K(n78), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n78), .K(n78), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n78), .K(n78), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n78), .K(n78), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n78), .K(n78), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n78), .K(n78), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n78), .K(n78), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n78), .K(n78), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n78), .K(n78), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n174) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n78), .K(n78), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n173) );
  GTECH_FJK1S state_reg_0_ ( .J(n78), .K(n78), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n78), .K(n78), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n160) );
  GTECH_FJK1S update_digits_reg ( .J(n78), .K(n78), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n78), .K(n78), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n78), .K(n78), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n78), .K(n78), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n78), .K(n78), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n78), .K(n78), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n78), .K(n78), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n78), .K(n78), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n78), .K(n78), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n78), .K(n78), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n78), .K(n78), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n78), .K(n78), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n78), .K(n78), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n161) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n78), .K(n78), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n187) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n78), .K(n78), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n78), .K(n78), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n78), .K(n78), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n78), .K(n78), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n78), .K(n78), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n78), .K(n78), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n78), .K(n78), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n78), .K(n78), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n78), .K(n78), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n78), .K(n78), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n78), .K(n78), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n78), .K(n78), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n156) );
  GTECH_ZERO U169 ( .Z(n78) );
  GTECH_NAND2 U170 ( .A(n15), .B(n188), .Z(seven_segment0_N9) );
  GTECH_AND2 U171 ( .A(ten_count[0]), .B(n188), .Z(seven_segment0_N8) );
  GTECH_AND2 U172 ( .A(n156), .B(n188), .Z(seven_segment0_N6) );
  GTECH_AND2 U173 ( .A(unit_count[3]), .B(n188), .Z(seven_segment0_N22) );
  GTECH_AND2 U174 ( .A(unit_count[2]), .B(n188), .Z(seven_segment0_N20) );
  GTECH_AND2 U175 ( .A(unit_count[1]), .B(n188), .Z(seven_segment0_N18) );
  GTECH_AND2 U176 ( .A(unit_count[0]), .B(n188), .Z(seven_segment0_N16) );
  GTECH_AND2 U177 ( .A(ten_count[3]), .B(n188), .Z(seven_segment0_N14) );
  GTECH_AND2 U178 ( .A(ten_count[2]), .B(n188), .Z(seven_segment0_N12) );
  GTECH_AND2 U179 ( .A(ten_count[1]), .B(n188), .Z(seven_segment0_N10) );
  GTECH_NAND2 U180 ( .A(n189), .B(n190), .Z(segments[6]) );
  GTECH_NOT U181 ( .A(n191), .Z(n189) );
  GTECH_OR3 U182 ( .A(segments[4]), .B(n192), .C(n193), .Z(segments[3]) );
  GTECH_NOT U183 ( .A(n194), .Z(segments[4]) );
  GTECH_AO21 U184 ( .A(n195), .B(n196), .C(n197), .Z(n194) );
  GTECH_NAND2 U185 ( .A(n198), .B(n199), .Z(segments[2]) );
  GTECH_NOT U186 ( .A(segments[5]), .Z(n199) );
  GTECH_AO21 U187 ( .A(n200), .B(n201), .C(n191), .Z(segments[5]) );
  GTECH_NAND2 U188 ( .A(n202), .B(n203), .Z(n191) );
  GTECH_MUX2 U189 ( .A(n196), .B(n204), .S(n205), .Z(n202) );
  GTECH_NAND2 U190 ( .A(n201), .B(n206), .Z(n204) );
  GTECH_NOT U191 ( .A(n207), .Z(n198) );
  GTECH_OR3 U192 ( .A(n192), .B(n208), .C(n207), .Z(segments[1]) );
  GTECH_AO21 U193 ( .A(n197), .B(n209), .C(n200), .Z(n207) );
  GTECH_NOT U194 ( .A(n196), .Z(n200) );
  GTECH_AND3 U195 ( .A(n205), .B(n201), .C(n210), .Z(n208) );
  GTECH_OR3 U196 ( .A(n192), .B(n193), .C(n211), .Z(segments[0]) );
  GTECH_OAI22 U197 ( .A(n195), .B(n201), .C(n212), .D(n196), .Z(n211) );
  GTECH_NAND2 U198 ( .A(n210), .B(n213), .Z(n196) );
  GTECH_NOT U199 ( .A(n214), .Z(n212) );
  GTECH_NOT U200 ( .A(n197), .Z(n201) );
  GTECH_NOT U201 ( .A(n203), .Z(n193) );
  GTECH_OR3 U202 ( .A(n213), .B(n215), .C(n214), .Z(n203) );
  GTECH_NAND2 U203 ( .A(n197), .B(n205), .Z(n214) );
  GTECH_MUX2 U204 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n156), .Z(n197) );
  GTECH_NOT U205 ( .A(n190), .Z(n192) );
  GTECH_NAND2 U206 ( .A(n209), .B(n213), .Z(n190) );
  GTECH_NOT U207 ( .A(n206), .Z(n213) );
  GTECH_MUX2 U208 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n156), .Z(n206) );
  GTECH_NOT U209 ( .A(n195), .Z(n209) );
  GTECH_NAND2 U210 ( .A(n205), .B(n215), .Z(n195) );
  GTECH_NOT U211 ( .A(n210), .Z(n215) );
  GTECH_MUX2 U212 ( .A(n30), .B(n26), .S(n156), .Z(n210) );
  GTECH_MUX2 U213 ( .A(n32), .B(n28), .S(n156), .Z(n205) );
  GTECH_AO21 U214 ( .A(period[0]), .B(n216), .C(reset), .Z(N9) );
  GTECH_AND2 U215 ( .A(period[11]), .B(n216), .Z(N21) );
  GTECH_NAND2 U216 ( .A(n188), .B(n217), .Z(N20) );
  GTECH_AO21 U217 ( .A(period[10]), .B(n216), .C(reset), .Z(N19) );
  GTECH_AND2 U218 ( .A(period[9]), .B(n216), .Z(N18) );
  GTECH_AND2 U219 ( .A(period[8]), .B(n216), .Z(N17) );
  GTECH_AND2 U220 ( .A(N170), .B(n218), .Z(N168) );
  GTECH_NAND2 U221 ( .A(n219), .B(n220), .Z(N167) );
  GTECH_AND2 U222 ( .A(N170), .B(n221), .Z(N166) );
  GTECH_NOT U223 ( .A(n20), .Z(n221) );
  GTECH_AND2 U224 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U225 ( .A(N170), .B(n222), .Z(N162) );
  GTECH_NOT U226 ( .A(n223), .Z(N170) );
  GTECH_NAND2 U227 ( .A(n224), .B(n188), .Z(n223) );
  GTECH_MUX2 U228 ( .A(n225), .B(n226), .S(ten_count[3]), .Z(N160) );
  GTECH_AO21 U229 ( .A(N152), .B(n227), .C(n228), .Z(n226) );
  GTECH_NOT U230 ( .A(ten_count[2]), .Z(n227) );
  GTECH_AND2 U231 ( .A(n229), .B(ten_count[2]), .Z(n225) );
  GTECH_AO21 U232 ( .A(period[7]), .B(n216), .C(reset), .Z(N16) );
  GTECH_AO21 U233 ( .A(n230), .B(n231), .C(n232), .Z(N159) );
  GTECH_MUX2 U234 ( .A(n229), .B(n228), .S(ten_count[2]), .Z(N158) );
  GTECH_AO21 U235 ( .A(N152), .B(n233), .C(N154), .Z(n228) );
  GTECH_NOT U236 ( .A(n234), .Z(n229) );
  GTECH_OR3 U237 ( .A(n235), .B(n233), .C(n236), .Z(n234) );
  GTECH_NOT U238 ( .A(ten_count[1]), .Z(n233) );
  GTECH_MUX2 U239 ( .A(n237), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U240 ( .A(N152), .B(ten_count[0]), .Z(n237) );
  GTECH_NOT U241 ( .A(n238), .Z(N154) );
  GTECH_NAND2 U242 ( .A(N152), .B(n235), .Z(n238) );
  GTECH_NOT U243 ( .A(ten_count[0]), .Z(n235) );
  GTECH_NAND2 U244 ( .A(n239), .B(n160), .Z(N151) );
  GTECH_OA21 U245 ( .A(n14), .B(n240), .C(n219), .Z(n239) );
  GTECH_NOT U246 ( .A(n241), .Z(n219) );
  GTECH_AO21 U247 ( .A(n231), .B(n14), .C(reset), .Z(n241) );
  GTECH_NOT U248 ( .A(n242), .Z(n231) );
  GTECH_AND2 U249 ( .A(period[6]), .B(n216), .Z(N15) );
  GTECH_AO21 U250 ( .A(n243), .B(N152), .C(n244), .Z(N148) );
  GTECH_MUX2 U251 ( .A(n245), .B(n246), .S(n173), .Z(n244) );
  GTECH_NOR3 U252 ( .A(n247), .B(n174), .C(n248), .Z(n246) );
  GTECH_OR_NOT U253 ( .A(n249), .B(n250), .Z(n245) );
  GTECH_MUX2 U254 ( .A(n236), .B(n248), .S(n174), .Z(n250) );
  GTECH_OR3 U255 ( .A(n224), .B(n251), .C(n232), .Z(N147) );
  GTECH_NAND2 U256 ( .A(n188), .B(n252), .Z(n232) );
  GTECH_OR3 U257 ( .A(n14), .B(n243), .C(n253), .Z(n252) );
  GTECH_NOT U258 ( .A(n240), .Z(n243) );
  GTECH_NAND4 U259 ( .A(n187), .B(n174), .C(n173), .D(n254), .Z(n240) );
  GTECH_AND3 U260 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n251) );
  GTECH_NOT U261 ( .A(n220), .Z(n224) );
  GTECH_NAND2 U262 ( .A(n14), .B(n253), .Z(n220) );
  GTECH_NOT U263 ( .A(n160), .Z(n253) );
  GTECH_MUX2 U264 ( .A(n249), .B(n255), .S(n174), .Z(N146) );
  GTECH_AO21 U265 ( .A(N150), .B(n256), .C(n257), .Z(n255) );
  GTECH_NOT U266 ( .A(n258), .Z(n257) );
  GTECH_OAI22 U267 ( .A(n256), .B(n248), .C(n259), .D(n236), .Z(n249) );
  GTECH_AND2 U268 ( .A(n187), .B(n254), .Z(n259) );
  GTECH_NOT U269 ( .A(n247), .Z(n256) );
  GTECH_OR3 U270 ( .A(n187), .B(n22), .C(n260), .Z(n247) );
  GTECH_NAND2 U271 ( .A(n261), .B(n258), .Z(N144) );
  GTECH_OR3 U272 ( .A(n262), .B(n236), .C(n263), .Z(n258) );
  GTECH_NOT U273 ( .A(n187), .Z(n263) );
  GTECH_NOT U274 ( .A(n254), .Z(n262) );
  GTECH_MUX2 U275 ( .A(n264), .B(n265), .S(n187), .Z(n261) );
  GTECH_OR3 U276 ( .A(n260), .B(n248), .C(n22), .Z(n265) );
  GTECH_OA22 U277 ( .A(n266), .B(n248), .C(n254), .D(n236), .Z(n264) );
  GTECH_NAND2 U278 ( .A(n267), .B(n218), .Z(n254) );
  GTECH_AND_NOT U279 ( .A(n218), .B(n260), .Z(n266) );
  GTECH_NOT U280 ( .A(n22), .Z(n218) );
  GTECH_AO21 U281 ( .A(n268), .B(N150), .C(n269), .Z(N142) );
  GTECH_MUX2 U282 ( .A(n270), .B(n271), .S(n22), .Z(n269) );
  GTECH_AND2 U283 ( .A(N152), .B(n267), .Z(n271) );
  GTECH_NOT U284 ( .A(n272), .Z(n270) );
  GTECH_XOR2 U285 ( .A(n260), .B(n22), .Z(n268) );
  GTECH_OR3 U286 ( .A(n20), .B(n16), .C(n273), .Z(n260) );
  GTECH_NAND2 U287 ( .A(n274), .B(n272), .Z(N140) );
  GTECH_NAND2 U288 ( .A(n275), .B(N152), .Z(n272) );
  GTECH_NOT U289 ( .A(n267), .Z(n275) );
  GTECH_NAND2 U290 ( .A(n20), .B(n273), .Z(n267) );
  GTECH_MUX2 U291 ( .A(n276), .B(n277), .S(n20), .Z(n274) );
  GTECH_OR3 U292 ( .A(n16), .B(n273), .C(n248), .Z(n277) );
  GTECH_NOT U293 ( .A(sub_85_carry_2_), .Z(n273) );
  GTECH_AND2 U294 ( .A(n278), .B(n279), .Z(n276) );
  GTECH_MUX2 U295 ( .A(n248), .B(n236), .S(sub_85_carry_2_), .Z(n278) );
  GTECH_AO21 U296 ( .A(period[5]), .B(n216), .C(reset), .Z(N14) );
  GTECH_MUX2 U297 ( .A(n280), .B(n281), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_AO21 U298 ( .A(N150), .B(n222), .C(N152), .Z(n280) );
  GTECH_AO21 U299 ( .A(N152), .B(n222), .C(n281), .Z(N136) );
  GTECH_NOT U300 ( .A(n279), .Z(n281) );
  GTECH_NAND2 U301 ( .A(n16), .B(N150), .Z(n279) );
  GTECH_NOT U302 ( .A(n248), .Z(N150) );
  GTECH_NAND2 U303 ( .A(n230), .B(n188), .Z(n248) );
  GTECH_NOT U304 ( .A(n282), .Z(n230) );
  GTECH_NOT U305 ( .A(n16), .Z(n222) );
  GTECH_NOT U306 ( .A(n236), .Z(N152) );
  GTECH_NAND2 U307 ( .A(n160), .B(n283), .Z(n236) );
  GTECH_NOT U308 ( .A(N169), .Z(n283) );
  GTECH_NAND2 U309 ( .A(n188), .B(n284), .Z(N169) );
  GTECH_NOT U310 ( .A(n14), .Z(n284) );
  GTECH_OA21 U311 ( .A(n285), .B(n286), .C(n287), .Z(N134) );
  GTECH_NOR2 U312 ( .A(n288), .B(n172), .Z(n285) );
  GTECH_NAND2 U313 ( .A(n188), .B(n282), .Z(N133) );
  GTECH_NAND2 U314 ( .A(n160), .B(n14), .Z(n282) );
  GTECH_AND2 U315 ( .A(n289), .B(n287), .Z(N132) );
  GTECH_XOR2 U316 ( .A(n288), .B(n172), .Z(n289) );
  GTECH_NAND2 U317 ( .A(n290), .B(n291), .Z(n288) );
  GTECH_NOT U318 ( .A(n292), .Z(n290) );
  GTECH_AND2 U319 ( .A(n293), .B(n287), .Z(N130) );
  GTECH_XOR2 U320 ( .A(n292), .B(n162), .Z(n293) );
  GTECH_NAND2 U321 ( .A(n294), .B(n295), .Z(n292) );
  GTECH_NOT U322 ( .A(n296), .Z(n294) );
  GTECH_AND2 U323 ( .A(period[4]), .B(n216), .Z(N13) );
  GTECH_AND2 U324 ( .A(n297), .B(n287), .Z(N128) );
  GTECH_XOR2 U325 ( .A(n296), .B(n163), .Z(n297) );
  GTECH_NAND2 U326 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_NOT U327 ( .A(n300), .Z(n298) );
  GTECH_AND2 U328 ( .A(n301), .B(n287), .Z(N126) );
  GTECH_XOR2 U329 ( .A(n300), .B(n164), .Z(n301) );
  GTECH_NAND2 U330 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_NOT U331 ( .A(n304), .Z(n302) );
  GTECH_AND2 U332 ( .A(n305), .B(n287), .Z(N124) );
  GTECH_XOR2 U333 ( .A(n304), .B(n165), .Z(n305) );
  GTECH_NAND2 U334 ( .A(n306), .B(n307), .Z(n304) );
  GTECH_NOT U335 ( .A(n308), .Z(n306) );
  GTECH_AND2 U336 ( .A(n309), .B(n287), .Z(N122) );
  GTECH_XOR2 U337 ( .A(n308), .B(n166), .Z(n309) );
  GTECH_NAND2 U338 ( .A(n310), .B(n311), .Z(n308) );
  GTECH_NOT U339 ( .A(n312), .Z(n310) );
  GTECH_AND2 U340 ( .A(n313), .B(n287), .Z(N120) );
  GTECH_XOR2 U341 ( .A(n312), .B(n167), .Z(n313) );
  GTECH_NAND2 U342 ( .A(n314), .B(n315), .Z(n312) );
  GTECH_NOT U343 ( .A(n316), .Z(n314) );
  GTECH_AO21 U344 ( .A(period[3]), .B(n216), .C(reset), .Z(N12) );
  GTECH_AND2 U345 ( .A(n317), .B(n287), .Z(N118) );
  GTECH_XOR2 U346 ( .A(n316), .B(n168), .Z(n317) );
  GTECH_OR3 U347 ( .A(n171), .B(n170), .C(n169), .Z(n316) );
  GTECH_OAI22 U348 ( .A(n169), .B(n318), .C(n319), .D(n320), .Z(N116) );
  GTECH_MUX2 U349 ( .A(n321), .B(n322), .S(n169), .Z(n320) );
  GTECH_NAND2 U350 ( .A(n321), .B(n323), .Z(n322) );
  GTECH_NOT U351 ( .A(n170), .Z(n321) );
  GTECH_MUX2 U352 ( .A(N112), .B(n324), .S(n170), .Z(N114) );
  GTECH_AND2 U353 ( .A(n287), .B(n323), .Z(n324) );
  GTECH_NOT U354 ( .A(n171), .Z(n323) );
  GTECH_NOT U355 ( .A(n318), .Z(N112) );
  GTECH_NAND2 U356 ( .A(n287), .B(n171), .Z(n318) );
  GTECH_NOT U357 ( .A(n319), .Z(n287) );
  GTECH_NAND2 U358 ( .A(n242), .B(n188), .Z(n319) );
  GTECH_AO21 U359 ( .A(n325), .B(n326), .C(n327), .Z(n242) );
  GTECH_ADD_ABC U360 ( .A(update_period[11]), .B(n161), .C(n328), .COUT(n327)
         );
  GTECH_ADD_ABC U361 ( .A(update_period[10]), .B(n172), .C(n329), .COUT(n328)
         );
  GTECH_OAI22 U362 ( .A(n330), .B(n331), .C(n291), .D(n332), .Z(n329) );
  GTECH_AO21 U363 ( .A(n291), .B(n332), .C(n295), .Z(n331) );
  GTECH_NOT U364 ( .A(n163), .Z(n295) );
  GTECH_NOT U365 ( .A(update_period[8]), .Z(n330) );
  GTECH_AOI222 U366 ( .A(n291), .B(n332), .C(n333), .D(n334), .E(n286), .F(
        n335), .Z(n326) );
  GTECH_NOT U367 ( .A(update_period[11]), .Z(n335) );
  GTECH_NOT U368 ( .A(n161), .Z(n286) );
  GTECH_OA21 U369 ( .A(n336), .B(n337), .C(n338), .Z(n334) );
  GTECH_OR3 U370 ( .A(n339), .B(n303), .C(n340), .Z(n338) );
  GTECH_OA21 U371 ( .A(n307), .B(n341), .C(n342), .Z(n336) );
  GTECH_OR3 U372 ( .A(n343), .B(n311), .C(n344), .Z(n342) );
  GTECH_NOT U373 ( .A(update_period[4]), .Z(n344) );
  GTECH_NOT U374 ( .A(n167), .Z(n311) );
  GTECH_NOT U375 ( .A(n345), .Z(n343) );
  GTECH_OA21 U376 ( .A(n299), .B(n346), .C(n347), .Z(n333) );
  GTECH_NAND4 U377 ( .A(n348), .B(n345), .C(n349), .D(n350), .Z(n347) );
  GTECH_OA21 U378 ( .A(update_period[4]), .B(n167), .C(n351), .Z(n350) );
  GTECH_NOT U379 ( .A(n337), .Z(n351) );
  GTECH_AO21 U380 ( .A(n303), .B(n340), .C(n339), .Z(n337) );
  GTECH_NOT U381 ( .A(n352), .Z(n339) );
  GTECH_NAND2 U382 ( .A(n346), .B(n299), .Z(n352) );
  GTECH_NOT U383 ( .A(update_period[6]), .Z(n340) );
  GTECH_NOT U384 ( .A(n165), .Z(n303) );
  GTECH_NAND2 U385 ( .A(n353), .B(n354), .Z(n349) );
  GTECH_OAI22 U386 ( .A(update_period[2]), .B(n169), .C(update_period[3]), .D(
        n168), .Z(n353) );
  GTECH_NAND2 U387 ( .A(n341), .B(n307), .Z(n345) );
  GTECH_NOT U388 ( .A(n166), .Z(n307) );
  GTECH_NOT U389 ( .A(update_period[5]), .Z(n341) );
  GTECH_AO21 U390 ( .A(update_period[1]), .B(n170), .C(n355), .Z(n348) );
  GTECH_AO21 U391 ( .A(n356), .B(update_period[0]), .C(n357), .Z(n355) );
  GTECH_NOT U392 ( .A(n354), .Z(n357) );
  GTECH_AO21 U393 ( .A(n315), .B(n358), .C(n359), .Z(n354) );
  GTECH_AOI2N2 U394 ( .A(n169), .B(update_period[2]), .C(n358), .D(n315), .Z(
        n359) );
  GTECH_NOT U395 ( .A(update_period[3]), .Z(n358) );
  GTECH_NOT U396 ( .A(n168), .Z(n315) );
  GTECH_OA21 U397 ( .A(n170), .B(update_period[1]), .C(n171), .Z(n356) );
  GTECH_NOT U398 ( .A(update_period[7]), .Z(n346) );
  GTECH_NOT U399 ( .A(n164), .Z(n299) );
  GTECH_NOT U400 ( .A(update_period[9]), .Z(n332) );
  GTECH_NOT U401 ( .A(n162), .Z(n291) );
  GTECH_OA22 U402 ( .A(update_period[8]), .B(n163), .C(update_period[10]), .D(
        n172), .Z(n325) );
  GTECH_AO21 U403 ( .A(period[2]), .B(n216), .C(reset), .Z(N11) );
  GTECH_AO21 U404 ( .A(period[1]), .B(n216), .C(reset), .Z(N10) );
  GTECH_NOT U405 ( .A(n217), .Z(n216) );
  GTECH_NAND2 U406 ( .A(period_load), .B(n188), .Z(n217) );
  GTECH_NOT U407 ( .A(reset), .Z(n188) );
endmodule

