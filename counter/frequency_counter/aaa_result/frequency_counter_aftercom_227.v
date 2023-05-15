
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
         n26, n28, n30, n32, n79, n80, n163, n165, sub_85_carry_2_, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n182, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n80), .K(n80), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n80), .K(n80), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n80), .K(n80), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n80), .K(n80), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n80), .K(n80), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n80), .K(n80), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n80), .K(n80), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n80), .K(n80), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n80), .K(n80), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n80), .K(n80), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n80), .K(n80), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n182) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n80), .K(n80), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD2 edge_detect0_q0_reg ( .D(signal), .CP(clk), .CD(n79), .Q(
        edge_detect0_q0) );
  GTECH_FD2 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .CD(n79), .Q(
        edge_detect0_q1) );
  GTECH_FD2 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .CD(n79), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n80), .K(n80), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n180) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n80), .K(n80), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n179) );
  GTECH_FJK1S state_reg_0_ ( .J(n80), .K(n80), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n80), .K(n80), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n80), .K(n80), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n178) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n80), .K(n80), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n177) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n80), .K(n80), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n176) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n80), .K(n80), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n80), .K(n80), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n80), .K(n80), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n80), .K(n80), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n80), .K(n80), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n80), .K(n80), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n80), .K(n80), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n80), .K(n80), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n80), .K(n80), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n167) );
  GTECH_FJK1S update_digits_reg ( .J(n80), .K(n80), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n80), .K(n80), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n166) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n80), .K(n80), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n80), .K(n80), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n80), .K(n80), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n80), .K(n80), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n80), .K(n80), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n80), .K(n80), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n80), .K(n80), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n80), .K(n80), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n80), .K(n80), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n80), .K(n80), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n80), .K(n80), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n80), .K(n80), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
  GTECH_FD2 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .CD(
        n79), .Q(digit), .QN(n163) );
  GTECH_ZERO U174 ( .Z(n80) );
  GTECH_ONE U175 ( .Z(n79) );
  GTECH_NAND2 U176 ( .A(n15), .B(n193), .Z(seven_segment0_N9) );
  GTECH_AND2 U177 ( .A(ten_count[0]), .B(n193), .Z(seven_segment0_N8) );
  GTECH_AND2 U178 ( .A(n163), .B(n193), .Z(seven_segment0_N6) );
  GTECH_AND2 U179 ( .A(unit_count[3]), .B(n193), .Z(seven_segment0_N22) );
  GTECH_AND2 U180 ( .A(unit_count[2]), .B(n193), .Z(seven_segment0_N20) );
  GTECH_AND2 U181 ( .A(unit_count[1]), .B(n193), .Z(seven_segment0_N18) );
  GTECH_AND2 U182 ( .A(unit_count[0]), .B(n193), .Z(seven_segment0_N16) );
  GTECH_AND2 U183 ( .A(ten_count[3]), .B(n193), .Z(seven_segment0_N14) );
  GTECH_AND2 U184 ( .A(ten_count[2]), .B(n193), .Z(seven_segment0_N12) );
  GTECH_AND2 U185 ( .A(ten_count[1]), .B(n193), .Z(seven_segment0_N10) );
  GTECH_NAND2 U186 ( .A(n194), .B(n195), .Z(segments[6]) );
  GTECH_NAND2 U187 ( .A(n196), .B(n194), .Z(segments[5]) );
  GTECH_OA21 U188 ( .A(n197), .B(n198), .C(n199), .Z(n196) );
  GTECH_NAND3 U189 ( .A(n200), .B(n201), .C(n202), .Z(segments[3]) );
  GTECH_NOT U190 ( .A(segments[4]), .Z(n201) );
  GTECH_OAI21 U191 ( .A(n203), .B(n204), .C(n199), .Z(segments[4]) );
  GTECH_NAND3 U192 ( .A(n194), .B(n198), .C(n205), .Z(segments[2]) );
  GTECH_AND3 U193 ( .A(n206), .B(n207), .C(n202), .Z(n194) );
  GTECH_NAND3 U194 ( .A(n208), .B(n209), .C(n210), .Z(n207) );
  GTECH_NAND3 U195 ( .A(n206), .B(n198), .C(n211), .Z(segments[1]) );
  GTECH_OA21 U196 ( .A(n208), .B(n204), .C(n200), .Z(n211) );
  GTECH_OR4 U197 ( .A(n212), .B(n213), .C(n203), .D(n214), .Z(n206) );
  GTECH_NAND3 U198 ( .A(n195), .B(n202), .C(n205), .Z(segments[0]) );
  GTECH_NOT U199 ( .A(n215), .Z(n205) );
  GTECH_OAI21 U200 ( .A(n208), .B(n204), .C(n199), .Z(n215) );
  GTECH_NAND2 U201 ( .A(n216), .B(n208), .Z(n199) );
  GTECH_NOT U202 ( .A(n198), .Z(n216) );
  GTECH_OR4 U203 ( .A(n212), .B(n208), .C(n213), .D(n214), .Z(n202) );
  GTECH_NOT U204 ( .A(n203), .Z(n208) );
  GTECH_MUX2 U205 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n163), .Z(n203) );
  GTECH_NOT U206 ( .A(n197), .Z(n212) );
  GTECH_NOT U207 ( .A(n217), .Z(n195) );
  GTECH_OAI21 U208 ( .A(n197), .B(n198), .C(n200), .Z(n217) );
  GTECH_NAND2 U209 ( .A(n209), .B(n213), .Z(n200) );
  GTECH_NOT U210 ( .A(n204), .Z(n209) );
  GTECH_NAND2 U211 ( .A(n197), .B(n214), .Z(n204) );
  GTECH_NOT U212 ( .A(n218), .Z(n214) );
  GTECH_NAND2 U213 ( .A(n218), .B(n213), .Z(n198) );
  GTECH_NOT U214 ( .A(n210), .Z(n213) );
  GTECH_MUX2 U215 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n163), .Z(n210) );
  GTECH_MUX2 U216 ( .A(n30), .B(n26), .S(n163), .Z(n218) );
  GTECH_MUX2 U217 ( .A(n32), .B(n28), .S(n163), .Z(n197) );
  GTECH_AO21 U218 ( .A(period[0]), .B(n219), .C(reset), .Z(N9) );
  GTECH_AND2 U219 ( .A(period[11]), .B(n219), .Z(N21) );
  GTECH_NAND2 U220 ( .A(n193), .B(n220), .Z(N20) );
  GTECH_AO21 U221 ( .A(period[10]), .B(n219), .C(reset), .Z(N19) );
  GTECH_AND2 U222 ( .A(period[9]), .B(n219), .Z(N18) );
  GTECH_AND2 U223 ( .A(period[8]), .B(n219), .Z(N17) );
  GTECH_AND2 U224 ( .A(N170), .B(n221), .Z(N168) );
  GTECH_NAND2 U225 ( .A(n222), .B(n223), .Z(N167) );
  GTECH_AND2 U226 ( .A(N170), .B(n224), .Z(N166) );
  GTECH_AND2 U227 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U228 ( .A(N170), .B(n225), .Z(N162) );
  GTECH_NOT U229 ( .A(n226), .Z(N170) );
  GTECH_NAND2 U230 ( .A(n227), .B(n193), .Z(n226) );
  GTECH_NOT U231 ( .A(n223), .Z(n227) );
  GTECH_MUX2 U232 ( .A(n228), .B(n229), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U233 ( .A(ten_count[2]), .B(n230), .C(n231), .Z(n229) );
  GTECH_NOT U234 ( .A(n232), .Z(n231) );
  GTECH_AND2 U235 ( .A(n233), .B(ten_count[2]), .Z(n228) );
  GTECH_AO21 U236 ( .A(period[7]), .B(n219), .C(reset), .Z(N16) );
  GTECH_OAI21 U237 ( .A(n234), .B(n235), .C(n236), .Z(N159) );
  GTECH_MUX2 U238 ( .A(n233), .B(n232), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U239 ( .A(ten_count[1]), .B(n230), .C(n237), .Z(n232) );
  GTECH_NOT U240 ( .A(n238), .Z(n233) );
  GTECH_NAND3 U241 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n238) );
  GTECH_MUX2 U242 ( .A(n239), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U243 ( .A(N152), .B(ten_count[0]), .Z(n239) );
  GTECH_NOT U244 ( .A(n237), .Z(N154) );
  GTECH_NAND2 U245 ( .A(N152), .B(n240), .Z(n237) );
  GTECH_NOT U246 ( .A(ten_count[0]), .Z(n240) );
  GTECH_NAND2 U247 ( .A(n241), .B(n165), .Z(N151) );
  GTECH_OA21 U248 ( .A(n14), .B(n242), .C(n222), .Z(n241) );
  GTECH_NOT U249 ( .A(n243), .Z(n222) );
  GTECH_OAI21 U250 ( .A(n244), .B(n234), .C(n193), .Z(n243) );
  GTECH_AND2 U251 ( .A(period[6]), .B(n219), .Z(N15) );
  GTECH_OAI21 U252 ( .A(n230), .B(n242), .C(n245), .Z(N148) );
  GTECH_MUX2 U253 ( .A(n246), .B(n247), .S(n179), .Z(n245) );
  GTECH_NAND3 U254 ( .A(n248), .B(N150), .C(n249), .Z(n247) );
  GTECH_AND_NOT U255 ( .A(n250), .B(n251), .Z(n246) );
  GTECH_MUX2 U256 ( .A(n230), .B(n252), .S(n180), .Z(n250) );
  GTECH_NAND3 U257 ( .A(n253), .B(n223), .C(n236), .Z(N147) );
  GTECH_AND2 U258 ( .A(n193), .B(n254), .Z(n236) );
  GTECH_NAND3 U259 ( .A(n244), .B(n165), .C(n242), .Z(n254) );
  GTECH_OR4 U260 ( .A(n255), .B(n248), .C(n256), .D(n257), .Z(n242) );
  GTECH_NOT U261 ( .A(n180), .Z(n248) );
  GTECH_NOT U262 ( .A(n179), .Z(n255) );
  GTECH_NAND2 U263 ( .A(n14), .B(n258), .Z(n223) );
  GTECH_NOT U264 ( .A(n165), .Z(n258) );
  GTECH_NAND3 U265 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n253) );
  GTECH_MUX2 U266 ( .A(n251), .B(n259), .S(n180), .Z(N146) );
  GTECH_OAI21 U267 ( .A(n260), .B(n252), .C(n261), .Z(n259) );
  GTECH_OAI21 U268 ( .A(n249), .B(n252), .C(n262), .Z(n251) );
  GTECH_OAI21 U269 ( .A(n256), .B(n257), .C(N152), .Z(n262) );
  GTECH_NOT U270 ( .A(n263), .Z(n256) );
  GTECH_NOT U271 ( .A(n260), .Z(n249) );
  GTECH_NAND3 U272 ( .A(n257), .B(n221), .C(n264), .Z(n260) );
  GTECH_NOT U273 ( .A(n166), .Z(n257) );
  GTECH_NAND2 U274 ( .A(n265), .B(n261), .Z(N144) );
  GTECH_NAND3 U275 ( .A(N152), .B(n263), .C(n166), .Z(n261) );
  GTECH_MUX2 U276 ( .A(n266), .B(n267), .S(n166), .Z(n265) );
  GTECH_NAND3 U277 ( .A(n264), .B(n221), .C(N150), .Z(n267) );
  GTECH_OA21 U278 ( .A(n230), .B(n263), .C(n268), .Z(n266) );
  GTECH_OAI21 U279 ( .A(n22), .B(n269), .C(N150), .Z(n268) );
  GTECH_NAND2 U280 ( .A(n270), .B(n221), .Z(n263) );
  GTECH_NOT U281 ( .A(n22), .Z(n221) );
  GTECH_OAI21 U282 ( .A(n252), .B(n271), .C(n272), .Z(N142) );
  GTECH_MUX2 U283 ( .A(n273), .B(n274), .S(n22), .Z(n272) );
  GTECH_NAND2 U284 ( .A(N152), .B(n270), .Z(n274) );
  GTECH_XOR2 U285 ( .A(n22), .B(n264), .Z(n271) );
  GTECH_NOT U286 ( .A(n269), .Z(n264) );
  GTECH_NAND3 U287 ( .A(n225), .B(n224), .C(sub_85_carry_2_), .Z(n269) );
  GTECH_NOT U288 ( .A(n20), .Z(n224) );
  GTECH_NAND2 U289 ( .A(n275), .B(n273), .Z(N140) );
  GTECH_NAND2 U290 ( .A(n276), .B(N152), .Z(n273) );
  GTECH_NOT U291 ( .A(n230), .Z(N152) );
  GTECH_NOT U292 ( .A(n270), .Z(n276) );
  GTECH_NAND2 U293 ( .A(n20), .B(n277), .Z(n270) );
  GTECH_NOT U294 ( .A(sub_85_carry_2_), .Z(n277) );
  GTECH_MUX2 U295 ( .A(n278), .B(n279), .S(n20), .Z(n275) );
  GTECH_NAND3 U296 ( .A(sub_85_carry_2_), .B(n225), .C(N150), .Z(n279) );
  GTECH_NOT U297 ( .A(n16), .Z(n225) );
  GTECH_AND2 U298 ( .A(n280), .B(n281), .Z(n278) );
  GTECH_MUX2 U299 ( .A(n252), .B(n230), .S(sub_85_carry_2_), .Z(n280) );
  GTECH_AO21 U300 ( .A(period[5]), .B(n219), .C(reset), .Z(N14) );
  GTECH_MUX2 U301 ( .A(n282), .B(n283), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U302 ( .A(n281), .Z(n283) );
  GTECH_OAI21 U303 ( .A(n16), .B(n252), .C(n230), .Z(n282) );
  GTECH_OAI21 U304 ( .A(n16), .B(n230), .C(n281), .Z(N136) );
  GTECH_NAND2 U305 ( .A(n16), .B(N150), .Z(n281) );
  GTECH_NOT U306 ( .A(n252), .Z(N150) );
  GTECH_NAND2 U307 ( .A(n284), .B(n193), .Z(n252) );
  GTECH_NOT U308 ( .A(n235), .Z(n284) );
  GTECH_NAND2 U309 ( .A(n165), .B(n285), .Z(n230) );
  GTECH_NOT U310 ( .A(N169), .Z(n285) );
  GTECH_NAND2 U311 ( .A(n193), .B(n244), .Z(N169) );
  GTECH_NOT U312 ( .A(n14), .Z(n244) );
  GTECH_AND2 U313 ( .A(n286), .B(n287), .Z(N134) );
  GTECH_OAI21 U314 ( .A(n178), .B(n288), .C(n167), .Z(n287) );
  GTECH_NAND2 U315 ( .A(n193), .B(n235), .Z(N133) );
  GTECH_NAND2 U316 ( .A(n165), .B(n14), .Z(n235) );
  GTECH_AND2 U317 ( .A(n289), .B(n286), .Z(N132) );
  GTECH_XOR2 U318 ( .A(n288), .B(n178), .Z(n289) );
  GTECH_NAND2 U319 ( .A(n290), .B(n291), .Z(n288) );
  GTECH_NOT U320 ( .A(n292), .Z(n290) );
  GTECH_AND2 U321 ( .A(n293), .B(n286), .Z(N130) );
  GTECH_XOR2 U322 ( .A(n292), .B(n168), .Z(n293) );
  GTECH_NAND2 U323 ( .A(n294), .B(n295), .Z(n292) );
  GTECH_NOT U324 ( .A(n169), .Z(n295) );
  GTECH_NOT U325 ( .A(n296), .Z(n294) );
  GTECH_AND2 U326 ( .A(period[4]), .B(n219), .Z(N13) );
  GTECH_AND2 U327 ( .A(n297), .B(n286), .Z(N128) );
  GTECH_XOR2 U328 ( .A(n296), .B(n169), .Z(n297) );
  GTECH_NAND2 U329 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_NOT U330 ( .A(n300), .Z(n298) );
  GTECH_AND2 U331 ( .A(n301), .B(n286), .Z(N126) );
  GTECH_XOR2 U332 ( .A(n300), .B(n170), .Z(n301) );
  GTECH_NAND2 U333 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_NOT U334 ( .A(n171), .Z(n303) );
  GTECH_NOT U335 ( .A(n304), .Z(n302) );
  GTECH_AND2 U336 ( .A(n305), .B(n286), .Z(N124) );
  GTECH_XOR2 U337 ( .A(n304), .B(n171), .Z(n305) );
  GTECH_NAND2 U338 ( .A(n306), .B(n307), .Z(n304) );
  GTECH_NOT U339 ( .A(n172), .Z(n307) );
  GTECH_NOT U340 ( .A(n308), .Z(n306) );
  GTECH_AND2 U341 ( .A(n309), .B(n286), .Z(N122) );
  GTECH_XOR2 U342 ( .A(n308), .B(n172), .Z(n309) );
  GTECH_NAND2 U343 ( .A(n310), .B(n311), .Z(n308) );
  GTECH_NOT U344 ( .A(n173), .Z(n311) );
  GTECH_NOT U345 ( .A(n312), .Z(n310) );
  GTECH_AND2 U346 ( .A(n313), .B(n286), .Z(N120) );
  GTECH_XOR2 U347 ( .A(n312), .B(n173), .Z(n313) );
  GTECH_NAND2 U348 ( .A(n314), .B(n315), .Z(n312) );
  GTECH_NOT U349 ( .A(n316), .Z(n314) );
  GTECH_AO21 U350 ( .A(period[3]), .B(n219), .C(reset), .Z(N12) );
  GTECH_AND2 U351 ( .A(n317), .B(n286), .Z(N118) );
  GTECH_XOR2 U352 ( .A(n316), .B(n174), .Z(n317) );
  GTECH_NAND3 U353 ( .A(n318), .B(n319), .C(n320), .Z(n316) );
  GTECH_NOT U354 ( .A(n175), .Z(n320) );
  GTECH_OAI22 U355 ( .A(n175), .B(n321), .C(n322), .D(n323), .Z(N116) );
  GTECH_MUX2 U356 ( .A(n318), .B(n324), .S(n175), .Z(n323) );
  GTECH_NAND2 U357 ( .A(n318), .B(n319), .Z(n324) );
  GTECH_MUX2 U358 ( .A(N112), .B(n325), .S(n176), .Z(N114) );
  GTECH_AND2 U359 ( .A(n286), .B(n319), .Z(n325) );
  GTECH_NOT U360 ( .A(n177), .Z(n319) );
  GTECH_NOT U361 ( .A(n321), .Z(N112) );
  GTECH_NAND2 U362 ( .A(n286), .B(n177), .Z(n321) );
  GTECH_NOT U363 ( .A(n322), .Z(n286) );
  GTECH_NAND2 U364 ( .A(n234), .B(n193), .Z(n322) );
  GTECH_NOT U365 ( .A(n326), .Z(n234) );
  GTECH_AOI222 U366 ( .A(n327), .B(n328), .C(update_period[11]), .D(n167), .E(
        n329), .F(n330), .Z(n326) );
  GTECH_OAI2N2 U367 ( .A(n331), .B(n332), .C(n333), .D(n334), .Z(n329) );
  GTECH_OAI21 U368 ( .A(n335), .B(n291), .C(n336), .Z(n334) );
  GTECH_NAND3 U369 ( .A(n337), .B(update_period[8]), .C(n169), .Z(n336) );
  GTECH_AND3 U370 ( .A(n337), .B(n333), .C(n330), .Z(n328) );
  GTECH_NAND2 U371 ( .A(n338), .B(n339), .Z(n330) );
  GTECH_NOT U372 ( .A(n167), .Z(n339) );
  GTECH_NOT U373 ( .A(update_period[11]), .Z(n338) );
  GTECH_NAND2 U374 ( .A(n332), .B(n331), .Z(n333) );
  GTECH_NOT U375 ( .A(n178), .Z(n331) );
  GTECH_NOT U376 ( .A(update_period[10]), .Z(n332) );
  GTECH_NAND2 U377 ( .A(n291), .B(n335), .Z(n337) );
  GTECH_NOT U378 ( .A(update_period[9]), .Z(n335) );
  GTECH_NOT U379 ( .A(n168), .Z(n291) );
  GTECH_OA22 U380 ( .A(n169), .B(update_period[8]), .C(n340), .D(n341), .Z(
        n327) );
  GTECH_OAI21 U381 ( .A(n299), .B(n342), .C(n343), .Z(n341) );
  GTECH_NAND3 U382 ( .A(n344), .B(update_period[6]), .C(n171), .Z(n343) );
  GTECH_OAI2N2 U383 ( .A(n345), .B(n346), .C(n347), .D(n348), .Z(n340) );
  GTECH_ADD_ABC U384 ( .A(n349), .B(n172), .C(update_period[5]), .COUT(n348)
         );
  GTECH_AND2 U385 ( .A(update_period[4]), .B(n173), .Z(n349) );
  GTECH_OAI21 U386 ( .A(update_period[4]), .B(n173), .C(n347), .Z(n346) );
  GTECH_NOT U387 ( .A(n350), .Z(n347) );
  GTECH_OAI21 U388 ( .A(update_period[6]), .B(n171), .C(n344), .Z(n350) );
  GTECH_NAND2 U389 ( .A(n342), .B(n299), .Z(n344) );
  GTECH_NOT U390 ( .A(n170), .Z(n299) );
  GTECH_NOT U391 ( .A(update_period[7]), .Z(n342) );
  GTECH_OAI22 U392 ( .A(update_period[5]), .B(n172), .C(n351), .D(n352), .Z(
        n345) );
  GTECH_OAI21 U393 ( .A(n315), .B(n353), .C(n354), .Z(n352) );
  GTECH_NAND3 U394 ( .A(n355), .B(update_period[2]), .C(n175), .Z(n354) );
  GTECH_AND3 U395 ( .A(n356), .B(n357), .C(n355), .Z(n351) );
  GTECH_NAND2 U396 ( .A(n353), .B(n315), .Z(n355) );
  GTECH_NOT U397 ( .A(n174), .Z(n315) );
  GTECH_NOT U398 ( .A(update_period[3]), .Z(n353) );
  GTECH_OAI21 U399 ( .A(n358), .B(n318), .C(n182), .Z(n357) );
  GTECH_NOT U400 ( .A(n176), .Z(n318) );
  GTECH_OA21 U401 ( .A(n175), .B(update_period[2]), .C(n359), .Z(n356) );
  GTECH_OR_NOT U402 ( .A(n176), .B(n358), .Z(n359) );
  GTECH_NAND2 U403 ( .A(update_period[0]), .B(n177), .Z(n358) );
  GTECH_AO21 U404 ( .A(period[2]), .B(n219), .C(reset), .Z(N11) );
  GTECH_AO21 U405 ( .A(period[1]), .B(n219), .C(reset), .Z(N10) );
  GTECH_NOT U406 ( .A(n220), .Z(n219) );
  GTECH_NAND2 U407 ( .A(period_load), .B(n193), .Z(n220) );
  GTECH_NOT U408 ( .A(reset), .Z(n193) );
endmodule

