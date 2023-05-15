
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
         n28, n32, n83, n161, n164, sub_85_carry_2_, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n181, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
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
         n356, n357, n358, n359, n360;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n83), .K(n83), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n83), .K(n83), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n83), .K(n83), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n83), .K(n83), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n83), .K(n83), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n83), .K(n83), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n83), .K(n83), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n83), .K(n83), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n83), .K(n83), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n83), .K(n83), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n83), .K(n83), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n181) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n83), .K(n83), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n83), .K(n83), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n179) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n83), .K(n83), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n178) );
  GTECH_FJK1S state_reg_0_ ( .J(n83), .K(n83), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n83), .K(n83), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n164) );
  GTECH_FJK1S update_digits_reg ( .J(n83), .K(n83), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n83), .K(n83), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n177) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n83), .K(n83), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n176) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n83), .K(n83), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n83), .K(n83), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n83), .K(n83), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n83), .K(n83), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n83), .K(n83), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n83), .K(n83), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n83), .K(n83), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n83), .K(n83), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n83), .K(n83), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n83), .K(n83), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n166) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n83), .K(n83), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n165) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n83), .K(n83), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n83), .K(n83), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n83), .K(n83), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n83), .K(n83), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n83), .K(n83), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n83), .K(n83), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n83), .K(n83), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n83), .K(n83), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n83), .K(n83), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n83), .K(n83), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n83), .K(n83), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n83), .K(n83), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n28) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n32) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n161) );
  GTECH_ZERO U173 ( .Z(n83) );
  GTECH_NAND2 U174 ( .A(n15), .B(n192), .Z(seven_segment0_N9) );
  GTECH_AND2 U175 ( .A(ten_count[0]), .B(n192), .Z(seven_segment0_N8) );
  GTECH_AND2 U176 ( .A(n161), .B(n192), .Z(seven_segment0_N6) );
  GTECH_AND2 U177 ( .A(unit_count[3]), .B(n192), .Z(seven_segment0_N22) );
  GTECH_AND2 U178 ( .A(unit_count[2]), .B(n192), .Z(seven_segment0_N20) );
  GTECH_AND2 U179 ( .A(unit_count[1]), .B(n192), .Z(seven_segment0_N18) );
  GTECH_AND2 U180 ( .A(unit_count[0]), .B(n192), .Z(seven_segment0_N16) );
  GTECH_AND2 U181 ( .A(ten_count[3]), .B(n192), .Z(seven_segment0_N14) );
  GTECH_AND2 U182 ( .A(ten_count[2]), .B(n192), .Z(seven_segment0_N12) );
  GTECH_AND2 U183 ( .A(ten_count[1]), .B(n192), .Z(seven_segment0_N10) );
  GTECH_NAND2 U184 ( .A(n193), .B(n194), .Z(segments[6]) );
  GTECH_NOT U185 ( .A(n195), .Z(segments[4]) );
  GTECH_NAND3 U186 ( .A(n194), .B(n195), .C(n196), .Z(segments[3]) );
  GTECH_OAI21 U187 ( .A(n197), .B(n198), .C(n199), .Z(n195) );
  GTECH_NOT U188 ( .A(n200), .Z(n198) );
  GTECH_NAND2 U189 ( .A(n201), .B(n202), .Z(segments[2]) );
  GTECH_NOT U190 ( .A(segments[5]), .Z(n202) );
  GTECH_OAI21 U191 ( .A(n203), .B(n200), .C(n193), .Z(segments[5]) );
  GTECH_AND2 U192 ( .A(n204), .B(n196), .Z(n193) );
  GTECH_MUX2 U193 ( .A(n200), .B(n205), .S(n206), .Z(n204) );
  GTECH_NAND2 U194 ( .A(n199), .B(n207), .Z(n205) );
  GTECH_NAND3 U195 ( .A(n208), .B(n194), .C(n201), .Z(segments[1]) );
  GTECH_NOT U196 ( .A(n209), .Z(n201) );
  GTECH_OAI21 U197 ( .A(n210), .B(n199), .C(n200), .Z(n209) );
  GTECH_NAND3 U198 ( .A(n211), .B(n206), .C(n199), .Z(n208) );
  GTECH_NAND3 U199 ( .A(n196), .B(n194), .C(n212), .Z(segments[0]) );
  GTECH_OA22 U200 ( .A(n213), .B(n200), .C(n210), .D(n199), .Z(n212) );
  GTECH_NOT U201 ( .A(n203), .Z(n199) );
  GTECH_NAND2 U202 ( .A(n214), .B(n211), .Z(n200) );
  GTECH_NAND2 U203 ( .A(n197), .B(n214), .Z(n194) );
  GTECH_NOT U204 ( .A(n210), .Z(n197) );
  GTECH_NAND2 U205 ( .A(n215), .B(n206), .Z(n210) );
  GTECH_NAND3 U206 ( .A(n207), .B(n211), .C(n213), .Z(n196) );
  GTECH_NOT U207 ( .A(n216), .Z(n213) );
  GTECH_NAND2 U208 ( .A(n203), .B(n206), .Z(n216) );
  GTECH_NOT U209 ( .A(n217), .Z(n206) );
  GTECH_MUX2 U210 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n161), .Z(n217) );
  GTECH_MUX2 U211 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n161), .Z(n203) );
  GTECH_NOT U212 ( .A(n215), .Z(n211) );
  GTECH_MUX2 U213 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n161), .Z(n215) );
  GTECH_NOT U214 ( .A(n214), .Z(n207) );
  GTECH_MUX2 U215 ( .A(n32), .B(n28), .S(n161), .Z(n214) );
  GTECH_NOT U216 ( .A(n218), .Z(N9) );
  GTECH_AOI21 U217 ( .A(period[0]), .B(n219), .C(reset), .Z(n218) );
  GTECH_AND2 U218 ( .A(period[11]), .B(n219), .Z(N21) );
  GTECH_NAND2 U219 ( .A(n192), .B(n220), .Z(N20) );
  GTECH_NOT U220 ( .A(n221), .Z(N19) );
  GTECH_AOI21 U221 ( .A(period[10]), .B(n219), .C(reset), .Z(n221) );
  GTECH_AND2 U222 ( .A(period[9]), .B(n219), .Z(N18) );
  GTECH_AND2 U223 ( .A(period[8]), .B(n219), .Z(N17) );
  GTECH_AND2 U224 ( .A(N170), .B(n222), .Z(N168) );
  GTECH_NAND2 U225 ( .A(n223), .B(n224), .Z(N167) );
  GTECH_AND2 U226 ( .A(N170), .B(n225), .Z(N166) );
  GTECH_AND2 U227 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U228 ( .A(N170), .B(n226), .Z(N162) );
  GTECH_NOT U229 ( .A(n227), .Z(N170) );
  GTECH_NAND2 U230 ( .A(n228), .B(n192), .Z(n227) );
  GTECH_NOT U231 ( .A(n224), .Z(n228) );
  GTECH_OAI22 U232 ( .A(n229), .B(n230), .C(n231), .D(n232), .Z(N160) );
  GTECH_MUX2 U233 ( .A(n229), .B(n233), .S(ten_count[2]), .Z(n232) );
  GTECH_NAND2 U234 ( .A(n234), .B(n229), .Z(n233) );
  GTECH_NOT U235 ( .A(ten_count[3]), .Z(n229) );
  GTECH_NOT U236 ( .A(n235), .Z(N16) );
  GTECH_AOI21 U237 ( .A(period[7]), .B(n219), .C(reset), .Z(n235) );
  GTECH_OAI21 U238 ( .A(n236), .B(n237), .C(n238), .Z(N159) );
  GTECH_MUX2 U239 ( .A(n239), .B(n240), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U240 ( .A(n230), .Z(n240) );
  GTECH_NAND2 U241 ( .A(N152), .B(n241), .Z(n230) );
  GTECH_AND2 U242 ( .A(N152), .B(n234), .Z(n239) );
  GTECH_NOT U243 ( .A(n241), .Z(n234) );
  GTECH_NAND2 U244 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n241) );
  GTECH_MUX2 U245 ( .A(n242), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U246 ( .A(N152), .B(ten_count[0]), .Z(n242) );
  GTECH_NOT U247 ( .A(n243), .Z(N154) );
  GTECH_NAND2 U248 ( .A(N152), .B(n244), .Z(n243) );
  GTECH_NOT U249 ( .A(ten_count[0]), .Z(n244) );
  GTECH_NAND2 U250 ( .A(n245), .B(n164), .Z(N151) );
  GTECH_OA21 U251 ( .A(n14), .B(n246), .C(n223), .Z(n245) );
  GTECH_NOT U252 ( .A(n247), .Z(n223) );
  GTECH_OAI21 U253 ( .A(n248), .B(n236), .C(n192), .Z(n247) );
  GTECH_AND2 U254 ( .A(period[6]), .B(n219), .Z(N15) );
  GTECH_OAI21 U255 ( .A(n231), .B(n246), .C(n249), .Z(N148) );
  GTECH_NOT U256 ( .A(n250), .Z(n249) );
  GTECH_MUX2 U257 ( .A(n251), .B(n252), .S(n178), .Z(n250) );
  GTECH_NOR3 U258 ( .A(n253), .B(n179), .C(n254), .Z(n252) );
  GTECH_OR_NOT U259 ( .A(n255), .B(n256), .Z(n251) );
  GTECH_MUX2 U260 ( .A(n231), .B(n254), .S(n179), .Z(n256) );
  GTECH_NAND3 U261 ( .A(n257), .B(n224), .C(n238), .Z(N147) );
  GTECH_AND2 U262 ( .A(n192), .B(n258), .Z(n238) );
  GTECH_NAND3 U263 ( .A(n248), .B(n164), .C(n246), .Z(n258) );
  GTECH_NAND4 U264 ( .A(n179), .B(n178), .C(n165), .D(n259), .Z(n246) );
  GTECH_NAND2 U265 ( .A(n14), .B(n260), .Z(n224) );
  GTECH_NOT U266 ( .A(n164), .Z(n260) );
  GTECH_NAND3 U267 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n257) );
  GTECH_MUX2 U268 ( .A(n255), .B(n261), .S(n179), .Z(N146) );
  GTECH_OAI21 U269 ( .A(n253), .B(n254), .C(n262), .Z(n261) );
  GTECH_OAI22 U270 ( .A(n263), .B(n231), .C(n264), .D(n254), .Z(n255) );
  GTECH_NOT U271 ( .A(n253), .Z(n264) );
  GTECH_NAND3 U272 ( .A(n265), .B(n222), .C(n266), .Z(n253) );
  GTECH_NOT U273 ( .A(n165), .Z(n265) );
  GTECH_AND2 U274 ( .A(n259), .B(n165), .Z(n263) );
  GTECH_NAND2 U275 ( .A(n267), .B(n262), .Z(N144) );
  GTECH_NAND3 U276 ( .A(N152), .B(n259), .C(n165), .Z(n262) );
  GTECH_MUX2 U277 ( .A(n268), .B(n269), .S(n165), .Z(n267) );
  GTECH_NAND3 U278 ( .A(n266), .B(n222), .C(N150), .Z(n269) );
  GTECH_OA21 U279 ( .A(n231), .B(n259), .C(n270), .Z(n268) );
  GTECH_OAI21 U280 ( .A(n22), .B(n271), .C(N150), .Z(n270) );
  GTECH_NAND2 U281 ( .A(n272), .B(n222), .Z(n259) );
  GTECH_NOT U282 ( .A(n22), .Z(n222) );
  GTECH_OAI21 U283 ( .A(n254), .B(n273), .C(n274), .Z(N142) );
  GTECH_MUX2 U284 ( .A(n275), .B(n276), .S(n22), .Z(n274) );
  GTECH_NAND2 U285 ( .A(N152), .B(n272), .Z(n276) );
  GTECH_XOR2 U286 ( .A(n22), .B(n266), .Z(n273) );
  GTECH_NOT U287 ( .A(n271), .Z(n266) );
  GTECH_NAND3 U288 ( .A(n226), .B(n225), .C(sub_85_carry_2_), .Z(n271) );
  GTECH_NOT U289 ( .A(n20), .Z(n225) );
  GTECH_NAND2 U290 ( .A(n277), .B(n275), .Z(N140) );
  GTECH_NAND2 U291 ( .A(n278), .B(N152), .Z(n275) );
  GTECH_NOT U292 ( .A(n231), .Z(N152) );
  GTECH_NOT U293 ( .A(n272), .Z(n278) );
  GTECH_NAND2 U294 ( .A(n20), .B(n279), .Z(n272) );
  GTECH_NOT U295 ( .A(sub_85_carry_2_), .Z(n279) );
  GTECH_MUX2 U296 ( .A(n280), .B(n281), .S(n20), .Z(n277) );
  GTECH_NAND3 U297 ( .A(sub_85_carry_2_), .B(n226), .C(N150), .Z(n281) );
  GTECH_NOT U298 ( .A(n16), .Z(n226) );
  GTECH_AND2 U299 ( .A(n282), .B(n283), .Z(n280) );
  GTECH_MUX2 U300 ( .A(n254), .B(n231), .S(sub_85_carry_2_), .Z(n282) );
  GTECH_NOT U301 ( .A(n284), .Z(N14) );
  GTECH_AOI21 U302 ( .A(period[5]), .B(n219), .C(reset), .Z(n284) );
  GTECH_MUX2 U303 ( .A(n285), .B(n286), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U304 ( .A(n283), .Z(n286) );
  GTECH_OAI21 U305 ( .A(n16), .B(n254), .C(n231), .Z(n285) );
  GTECH_OAI21 U306 ( .A(n16), .B(n231), .C(n283), .Z(N136) );
  GTECH_NAND2 U307 ( .A(n16), .B(N150), .Z(n283) );
  GTECH_NOT U308 ( .A(n254), .Z(N150) );
  GTECH_NAND2 U309 ( .A(n287), .B(n192), .Z(n254) );
  GTECH_NOT U310 ( .A(n237), .Z(n287) );
  GTECH_NAND2 U311 ( .A(n164), .B(n288), .Z(n231) );
  GTECH_NOT U312 ( .A(N169), .Z(n288) );
  GTECH_NAND2 U313 ( .A(n192), .B(n248), .Z(N169) );
  GTECH_NOT U314 ( .A(n14), .Z(n248) );
  GTECH_AND2 U315 ( .A(n289), .B(n290), .Z(N134) );
  GTECH_OAI21 U316 ( .A(n177), .B(n291), .C(n166), .Z(n290) );
  GTECH_NAND2 U317 ( .A(n192), .B(n237), .Z(N133) );
  GTECH_NAND2 U318 ( .A(n164), .B(n14), .Z(n237) );
  GTECH_AND2 U319 ( .A(n292), .B(n289), .Z(N132) );
  GTECH_XOR2 U320 ( .A(n291), .B(n177), .Z(n292) );
  GTECH_NAND2 U321 ( .A(n293), .B(n294), .Z(n291) );
  GTECH_NOT U322 ( .A(n295), .Z(n293) );
  GTECH_AND2 U323 ( .A(n296), .B(n289), .Z(N130) );
  GTECH_XOR2 U324 ( .A(n295), .B(n167), .Z(n296) );
  GTECH_NAND2 U325 ( .A(n297), .B(n298), .Z(n295) );
  GTECH_NOT U326 ( .A(n168), .Z(n298) );
  GTECH_NOT U327 ( .A(n299), .Z(n297) );
  GTECH_AND2 U328 ( .A(period[4]), .B(n219), .Z(N13) );
  GTECH_AND2 U329 ( .A(n300), .B(n289), .Z(N128) );
  GTECH_XOR2 U330 ( .A(n299), .B(n168), .Z(n300) );
  GTECH_NAND2 U331 ( .A(n301), .B(n302), .Z(n299) );
  GTECH_NOT U332 ( .A(n169), .Z(n302) );
  GTECH_NOT U333 ( .A(n303), .Z(n301) );
  GTECH_AND2 U334 ( .A(n304), .B(n289), .Z(N126) );
  GTECH_XOR2 U335 ( .A(n303), .B(n169), .Z(n304) );
  GTECH_NAND2 U336 ( .A(n305), .B(n306), .Z(n303) );
  GTECH_NOT U337 ( .A(n170), .Z(n306) );
  GTECH_NOT U338 ( .A(n307), .Z(n305) );
  GTECH_AND2 U339 ( .A(n308), .B(n289), .Z(N124) );
  GTECH_XOR2 U340 ( .A(n307), .B(n170), .Z(n308) );
  GTECH_NAND2 U341 ( .A(n309), .B(n310), .Z(n307) );
  GTECH_NOT U342 ( .A(n311), .Z(n309) );
  GTECH_AND2 U343 ( .A(n312), .B(n289), .Z(N122) );
  GTECH_XOR2 U344 ( .A(n311), .B(n171), .Z(n312) );
  GTECH_NAND2 U345 ( .A(n313), .B(n314), .Z(n311) );
  GTECH_NOT U346 ( .A(n315), .Z(n313) );
  GTECH_AND2 U347 ( .A(n316), .B(n289), .Z(N120) );
  GTECH_XOR2 U348 ( .A(n315), .B(n172), .Z(n316) );
  GTECH_NAND2 U349 ( .A(n317), .B(n318), .Z(n315) );
  GTECH_NOT U350 ( .A(n319), .Z(n317) );
  GTECH_NOT U351 ( .A(n320), .Z(N12) );
  GTECH_AOI21 U352 ( .A(period[3]), .B(n219), .C(reset), .Z(n320) );
  GTECH_AND2 U353 ( .A(n321), .B(n289), .Z(N118) );
  GTECH_XOR2 U354 ( .A(n319), .B(n173), .Z(n321) );
  GTECH_NAND3 U355 ( .A(n322), .B(n323), .C(n324), .Z(n319) );
  GTECH_NOT U356 ( .A(n174), .Z(n324) );
  GTECH_OAI22 U357 ( .A(n174), .B(n325), .C(n326), .D(n327), .Z(N116) );
  GTECH_MUX2 U358 ( .A(n322), .B(n328), .S(n174), .Z(n327) );
  GTECH_NAND2 U359 ( .A(n322), .B(n323), .Z(n328) );
  GTECH_MUX2 U360 ( .A(N112), .B(n329), .S(n175), .Z(N114) );
  GTECH_AND2 U361 ( .A(n289), .B(n323), .Z(n329) );
  GTECH_NOT U362 ( .A(n176), .Z(n323) );
  GTECH_NOT U363 ( .A(n325), .Z(N112) );
  GTECH_NAND2 U364 ( .A(n289), .B(n176), .Z(n325) );
  GTECH_NOT U365 ( .A(n326), .Z(n289) );
  GTECH_NAND2 U366 ( .A(n236), .B(n192), .Z(n326) );
  GTECH_NOT U367 ( .A(n330), .Z(n236) );
  GTECH_AOI21 U368 ( .A(n331), .B(n332), .C(n333), .Z(n330) );
  GTECH_OAI2N2 U369 ( .A(n334), .B(n335), .C(n166), .D(update_period[11]), .Z(
        n333) );
  GTECH_AOI222 U370 ( .A(update_period[10]), .B(n177), .C(update_period[9]), 
        .D(n167), .E(n336), .F(update_period[8]), .Z(n335) );
  GTECH_AND2 U371 ( .A(n168), .B(n337), .Z(n336) );
  GTECH_OA21 U372 ( .A(update_period[8]), .B(n168), .C(n337), .Z(n332) );
  GTECH_NAND2 U373 ( .A(n338), .B(n294), .Z(n337) );
  GTECH_NOT U374 ( .A(n167), .Z(n294) );
  GTECH_NOT U375 ( .A(update_period[9]), .Z(n338) );
  GTECH_AOI21 U376 ( .A(n339), .B(n340), .C(n334), .Z(n331) );
  GTECH_OAI22 U377 ( .A(update_period[10]), .B(n177), .C(update_period[11]), 
        .D(n166), .Z(n334) );
  GTECH_AOI22 U378 ( .A(update_period[6]), .B(n341), .C(update_period[7]), .D(
        n169), .Z(n340) );
  GTECH_OA21 U379 ( .A(update_period[7]), .B(n169), .C(n170), .Z(n341) );
  GTECH_OA21 U380 ( .A(n342), .B(n343), .C(n344), .Z(n339) );
  GTECH_OR4 U381 ( .A(n345), .B(n343), .C(n346), .D(n347), .Z(n344) );
  GTECH_NOT U382 ( .A(n348), .Z(n347) );
  GTECH_AOI222 U383 ( .A(n349), .B(n350), .C(update_period[3]), .D(n173), .E(
        n351), .F(update_period[2]), .Z(n346) );
  GTECH_AND2 U384 ( .A(n174), .B(n352), .Z(n351) );
  GTECH_AND2 U385 ( .A(n352), .B(n353), .Z(n350) );
  GTECH_OAI21 U386 ( .A(n354), .B(n322), .C(n181), .Z(n353) );
  GTECH_NOT U387 ( .A(n175), .Z(n322) );
  GTECH_NAND2 U388 ( .A(n355), .B(n318), .Z(n352) );
  GTECH_NOT U389 ( .A(n173), .Z(n318) );
  GTECH_NOT U390 ( .A(update_period[3]), .Z(n355) );
  GTECH_OA21 U391 ( .A(n174), .B(update_period[2]), .C(n356), .Z(n349) );
  GTECH_OR_NOT U392 ( .A(n175), .B(n354), .Z(n356) );
  GTECH_NAND2 U393 ( .A(update_period[0]), .B(n176), .Z(n354) );
  GTECH_AND_NOT U394 ( .A(n314), .B(update_period[4]), .Z(n345) );
  GTECH_NOT U395 ( .A(n172), .Z(n314) );
  GTECH_OAI22 U396 ( .A(update_period[6]), .B(n170), .C(update_period[7]), .D(
        n169), .Z(n343) );
  GTECH_OA21 U397 ( .A(n357), .B(n310), .C(n358), .Z(n342) );
  GTECH_NAND3 U398 ( .A(n348), .B(update_period[4]), .C(n172), .Z(n358) );
  GTECH_NAND2 U399 ( .A(n357), .B(n310), .Z(n348) );
  GTECH_NOT U400 ( .A(n171), .Z(n310) );
  GTECH_NOT U401 ( .A(update_period[5]), .Z(n357) );
  GTECH_NOT U402 ( .A(n359), .Z(N11) );
  GTECH_AOI21 U403 ( .A(period[2]), .B(n219), .C(reset), .Z(n359) );
  GTECH_NOT U404 ( .A(n360), .Z(N10) );
  GTECH_AOI21 U405 ( .A(period[1]), .B(n219), .C(reset), .Z(n360) );
  GTECH_NOT U406 ( .A(n220), .Z(n219) );
  GTECH_NAND2 U407 ( .A(period_load), .B(n192), .Z(n220) );
  GTECH_NOT U408 ( .A(reset), .Z(n192) );
endmodule

