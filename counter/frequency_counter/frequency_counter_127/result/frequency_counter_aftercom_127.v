
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
         n26, n28, n30, n32, n88, n166, n169, sub_85_carry_2_, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n186, n197, n198, n199, n200, n201, n202, n203, n204,
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
         n359, n360, n361, n362, n363, n364, n365;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n88), .K(n88), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n88), .K(n88), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n88), .K(n88), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n88), .K(n88), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n88), .K(n88), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n88), .K(n88), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n88), .K(n88), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n88), .K(n88), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n88), .K(n88), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n88), .K(n88), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n88), .K(n88), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n186) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n88), .K(n88), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n88), .K(n88), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n184) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n88), .K(n88), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n183) );
  GTECH_FJK1S state_reg_0_ ( .J(n88), .K(n88), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n88), .K(n88), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n169) );
  GTECH_FJK1S update_digits_reg ( .J(n88), .K(n88), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n88), .K(n88), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n182) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n88), .K(n88), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n181) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n88), .K(n88), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n180) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n88), .K(n88), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n179) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n88), .K(n88), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n178) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n88), .K(n88), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n177) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n88), .K(n88), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n176) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n88), .K(n88), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n88), .K(n88), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n88), .K(n88), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n88), .K(n88), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n88), .K(n88), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n171) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n88), .K(n88), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n170) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n88), .K(n88), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n88), .K(n88), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n88), .K(n88), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n88), .K(n88), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n88), .K(n88), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n88), .K(n88), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n88), .K(n88), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n88), .K(n88), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n88), .K(n88), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n88), .K(n88), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n88), .K(n88), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n88), .K(n88), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n28) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n32) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n166) );
  GTECH_ZERO U178 ( .Z(n88) );
  GTECH_NAND2 U179 ( .A(n15), .B(n197), .Z(seven_segment0_N9) );
  GTECH_AND_NOT U180 ( .A(ten_count[0]), .B(reset), .Z(seven_segment0_N8) );
  GTECH_AND_NOT U181 ( .A(n166), .B(reset), .Z(seven_segment0_N6) );
  GTECH_AND_NOT U182 ( .A(unit_count[3]), .B(reset), .Z(seven_segment0_N22) );
  GTECH_AND_NOT U183 ( .A(unit_count[2]), .B(reset), .Z(seven_segment0_N20) );
  GTECH_AND_NOT U184 ( .A(unit_count[1]), .B(reset), .Z(seven_segment0_N18) );
  GTECH_AND_NOT U185 ( .A(unit_count[0]), .B(reset), .Z(seven_segment0_N16) );
  GTECH_AND_NOT U186 ( .A(ten_count[3]), .B(reset), .Z(seven_segment0_N14) );
  GTECH_AND_NOT U187 ( .A(ten_count[2]), .B(reset), .Z(seven_segment0_N12) );
  GTECH_AND_NOT U188 ( .A(ten_count[1]), .B(reset), .Z(seven_segment0_N10) );
  GTECH_NAND2 U189 ( .A(n198), .B(n199), .Z(segments[6]) );
  GTECH_OA21 U190 ( .A(n200), .B(n201), .C(n202), .Z(n198) );
  GTECH_OAI21 U191 ( .A(n200), .B(n201), .C(n203), .Z(segments[3]) );
  GTECH_AND_NOT U192 ( .A(n204), .B(segments[4]), .Z(n203) );
  GTECH_NAND2 U193 ( .A(n205), .B(n206), .Z(segments[4]) );
  GTECH_NAND3 U194 ( .A(n207), .B(n208), .C(n201), .Z(segments[2]) );
  GTECH_NOT U195 ( .A(segments[5]), .Z(n208) );
  GTECH_OAI21 U196 ( .A(n209), .B(n207), .C(n199), .Z(segments[5]) );
  GTECH_NOT U197 ( .A(n210), .Z(n199) );
  GTECH_NAND3 U198 ( .A(n206), .B(n211), .C(n212), .Z(n210) );
  GTECH_NAND2 U199 ( .A(n213), .B(n200), .Z(n206) );
  GTECH_NAND4 U200 ( .A(n211), .B(n202), .C(n201), .D(n207), .Z(segments[1])
         );
  GTECH_NAND2 U201 ( .A(n214), .B(n215), .Z(n211) );
  GTECH_NAND3 U202 ( .A(n212), .B(n201), .C(n205), .Z(segments[0]) );
  GTECH_NOT U203 ( .A(n216), .Z(n205) );
  GTECH_OAI21 U204 ( .A(n209), .B(n207), .C(n202), .Z(n216) );
  GTECH_NAND2 U205 ( .A(n213), .B(n217), .Z(n202) );
  GTECH_NOT U206 ( .A(n218), .Z(n213) );
  GTECH_NAND3 U207 ( .A(n219), .B(n220), .C(n215), .Z(n218) );
  GTECH_NAND3 U208 ( .A(n220), .B(n209), .C(n219), .Z(n201) );
  GTECH_NOT U209 ( .A(n221), .Z(n212) );
  GTECH_OAI21 U210 ( .A(n220), .B(n207), .C(n204), .Z(n221) );
  GTECH_NAND2 U211 ( .A(n214), .B(n209), .Z(n204) );
  GTECH_NOT U212 ( .A(n215), .Z(n209) );
  GTECH_MUX2 U213 ( .A(n30), .B(n26), .S(n166), .Z(n215) );
  GTECH_NOT U214 ( .A(n222), .Z(n214) );
  GTECH_NAND3 U215 ( .A(n220), .B(n223), .C(n200), .Z(n222) );
  GTECH_NOT U216 ( .A(n217), .Z(n200) );
  GTECH_NAND2 U217 ( .A(n217), .B(n223), .Z(n207) );
  GTECH_NOT U218 ( .A(n219), .Z(n223) );
  GTECH_MUX2 U219 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n166), .Z(n219) );
  GTECH_MUX2 U220 ( .A(n32), .B(n28), .S(n166), .Z(n217) );
  GTECH_NOT U221 ( .A(n224), .Z(n220) );
  GTECH_MUX2 U222 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n166), .Z(n224) );
  GTECH_NOT U223 ( .A(n225), .Z(N9) );
  GTECH_AOI21 U224 ( .A(period[0]), .B(n226), .C(reset), .Z(n225) );
  GTECH_AND_NOT U225 ( .A(period[11]), .B(n227), .Z(N21) );
  GTECH_NAND2 U226 ( .A(n197), .B(n227), .Z(N20) );
  GTECH_NOT U227 ( .A(n228), .Z(N19) );
  GTECH_AOI21 U228 ( .A(period[10]), .B(n226), .C(reset), .Z(n228) );
  GTECH_AND_NOT U229 ( .A(period[9]), .B(n227), .Z(N18) );
  GTECH_AND_NOT U230 ( .A(period[8]), .B(n227), .Z(N17) );
  GTECH_AND_NOT U231 ( .A(N170), .B(n22), .Z(N168) );
  GTECH_NAND2 U232 ( .A(n229), .B(n230), .Z(N167) );
  GTECH_AND_NOT U233 ( .A(N170), .B(n20), .Z(N166) );
  GTECH_AND_NOT U234 ( .A(sub_85_carry_2_), .B(n231), .Z(N164) );
  GTECH_AND_NOT U235 ( .A(N170), .B(n16), .Z(N162) );
  GTECH_NOT U236 ( .A(n231), .Z(N170) );
  GTECH_NAND2 U237 ( .A(n232), .B(n197), .Z(n231) );
  GTECH_NOT U238 ( .A(n230), .Z(n232) );
  GTECH_AND_NOT U239 ( .A(N152), .B(n233), .Z(N160) );
  GTECH_XOR2 U240 ( .A(n234), .B(ten_count[3]), .Z(n233) );
  GTECH_OR_NOT U241 ( .A(n235), .B(ten_count[2]), .Z(n234) );
  GTECH_NOT U242 ( .A(n236), .Z(N16) );
  GTECH_AOI21 U243 ( .A(period[7]), .B(n226), .C(reset), .Z(n236) );
  GTECH_OAI21 U244 ( .A(n237), .B(n238), .C(n239), .Z(N159) );
  GTECH_AND_NOT U245 ( .A(N152), .B(n240), .Z(N158) );
  GTECH_XOR2 U246 ( .A(n235), .B(ten_count[2]), .Z(n240) );
  GTECH_AND_NOT U247 ( .A(n241), .B(n242), .Z(N156) );
  GTECH_OA21 U248 ( .A(ten_count[0]), .B(ten_count[1]), .C(n235), .Z(n241) );
  GTECH_NAND2 U249 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n235) );
  GTECH_AND_NOT U250 ( .A(N152), .B(ten_count[0]), .Z(N154) );
  GTECH_NAND2 U251 ( .A(n243), .B(n169), .Z(N151) );
  GTECH_OA21 U252 ( .A(n14), .B(n244), .C(n229), .Z(n243) );
  GTECH_NOT U253 ( .A(n245), .Z(n229) );
  GTECH_OAI21 U254 ( .A(n246), .B(n237), .C(n197), .Z(n245) );
  GTECH_AND_NOT U255 ( .A(period[6]), .B(n227), .Z(N15) );
  GTECH_OAI21 U256 ( .A(n242), .B(n244), .C(n247), .Z(N148) );
  GTECH_MUX2 U257 ( .A(n248), .B(n249), .S(n183), .Z(n247) );
  GTECH_OR3 U258 ( .A(n184), .B(n250), .C(n251), .Z(n249) );
  GTECH_AND_NOT U259 ( .A(n252), .B(n253), .Z(n248) );
  GTECH_MUX2 U260 ( .A(n242), .B(n250), .S(n184), .Z(n252) );
  GTECH_NAND3 U261 ( .A(n254), .B(n230), .C(n239), .Z(N147) );
  GTECH_AND_NOT U262 ( .A(n197), .B(n255), .Z(n239) );
  GTECH_AND3 U263 ( .A(n246), .B(n169), .C(n244), .Z(n255) );
  GTECH_NAND4 U264 ( .A(n184), .B(n183), .C(n170), .D(n256), .Z(n244) );
  GTECH_NAND2 U265 ( .A(n14), .B(n257), .Z(n230) );
  GTECH_NOT U266 ( .A(n169), .Z(n257) );
  GTECH_NAND3 U267 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n254) );
  GTECH_MUX2 U268 ( .A(n253), .B(n258), .S(n184), .Z(N146) );
  GTECH_OAI21 U269 ( .A(n251), .B(n250), .C(n259), .Z(n258) );
  GTECH_OAI22 U270 ( .A(n260), .B(n242), .C(n261), .D(n250), .Z(n253) );
  GTECH_NOT U271 ( .A(n251), .Z(n261) );
  GTECH_NAND3 U272 ( .A(n262), .B(n263), .C(n264), .Z(n251) );
  GTECH_AND_NOT U273 ( .A(n256), .B(n262), .Z(n260) );
  GTECH_NOT U274 ( .A(n170), .Z(n262) );
  GTECH_NAND2 U275 ( .A(n265), .B(n259), .Z(N144) );
  GTECH_NAND3 U276 ( .A(N152), .B(n256), .C(n170), .Z(n259) );
  GTECH_MUX2 U277 ( .A(n266), .B(n267), .S(n170), .Z(n265) );
  GTECH_NAND3 U278 ( .A(n264), .B(n263), .C(N150), .Z(n267) );
  GTECH_OA21 U279 ( .A(n242), .B(n256), .C(n268), .Z(n266) );
  GTECH_OAI21 U280 ( .A(n22), .B(n269), .C(N150), .Z(n268) );
  GTECH_NAND2 U281 ( .A(n270), .B(n263), .Z(n256) );
  GTECH_NOT U282 ( .A(n22), .Z(n263) );
  GTECH_OAI21 U283 ( .A(n250), .B(n271), .C(n272), .Z(N142) );
  GTECH_MUX2 U284 ( .A(n273), .B(n274), .S(n22), .Z(n272) );
  GTECH_NAND2 U285 ( .A(N152), .B(n270), .Z(n274) );
  GTECH_XOR2 U286 ( .A(n22), .B(n264), .Z(n271) );
  GTECH_NOT U287 ( .A(n269), .Z(n264) );
  GTECH_NAND3 U288 ( .A(n275), .B(n276), .C(sub_85_carry_2_), .Z(n269) );
  GTECH_NOT U289 ( .A(n20), .Z(n276) );
  GTECH_NAND2 U290 ( .A(n277), .B(n273), .Z(N140) );
  GTECH_NAND2 U291 ( .A(n278), .B(N152), .Z(n273) );
  GTECH_NOT U292 ( .A(n242), .Z(N152) );
  GTECH_NOT U293 ( .A(n270), .Z(n278) );
  GTECH_NAND2 U294 ( .A(n20), .B(n279), .Z(n270) );
  GTECH_NOT U295 ( .A(sub_85_carry_2_), .Z(n279) );
  GTECH_MUX2 U296 ( .A(n280), .B(n281), .S(n20), .Z(n277) );
  GTECH_NAND3 U297 ( .A(sub_85_carry_2_), .B(n275), .C(N150), .Z(n281) );
  GTECH_NOT U298 ( .A(n16), .Z(n275) );
  GTECH_AND_NOT U299 ( .A(n282), .B(n283), .Z(n280) );
  GTECH_MUX2 U300 ( .A(n250), .B(n242), .S(sub_85_carry_2_), .Z(n282) );
  GTECH_NOT U301 ( .A(n284), .Z(N14) );
  GTECH_AOI21 U302 ( .A(period[5]), .B(n226), .C(reset), .Z(n284) );
  GTECH_MUX2 U303 ( .A(n285), .B(n283), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U304 ( .A(n286), .Z(n283) );
  GTECH_OAI21 U305 ( .A(n16), .B(n250), .C(n242), .Z(n285) );
  GTECH_OAI21 U306 ( .A(n16), .B(n242), .C(n286), .Z(N136) );
  GTECH_NAND2 U307 ( .A(n16), .B(N150), .Z(n286) );
  GTECH_NOT U308 ( .A(n250), .Z(N150) );
  GTECH_NAND2 U309 ( .A(n287), .B(n197), .Z(n250) );
  GTECH_NOT U310 ( .A(n238), .Z(n287) );
  GTECH_NAND2 U311 ( .A(n169), .B(n288), .Z(n242) );
  GTECH_NOT U312 ( .A(N169), .Z(n288) );
  GTECH_NAND2 U313 ( .A(n197), .B(n246), .Z(N169) );
  GTECH_NOT U314 ( .A(n14), .Z(n246) );
  GTECH_OA21 U315 ( .A(n289), .B(n290), .C(n291), .Z(N134) );
  GTECH_NOR2 U316 ( .A(n292), .B(n182), .Z(n290) );
  GTECH_NAND2 U317 ( .A(n197), .B(n238), .Z(N133) );
  GTECH_NAND2 U318 ( .A(n169), .B(n14), .Z(n238) );
  GTECH_AND_NOT U319 ( .A(n293), .B(n294), .Z(N132) );
  GTECH_XOR2 U320 ( .A(n292), .B(n182), .Z(n293) );
  GTECH_NAND2 U321 ( .A(n295), .B(n296), .Z(n292) );
  GTECH_NOT U322 ( .A(n297), .Z(n295) );
  GTECH_AND_NOT U323 ( .A(n298), .B(n294), .Z(N130) );
  GTECH_XOR2 U324 ( .A(n297), .B(n172), .Z(n298) );
  GTECH_NAND2 U325 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U326 ( .A(n173), .Z(n300) );
  GTECH_NOT U327 ( .A(n301), .Z(n299) );
  GTECH_AND_NOT U328 ( .A(period[4]), .B(n227), .Z(N13) );
  GTECH_AND_NOT U329 ( .A(n302), .B(n294), .Z(N128) );
  GTECH_XOR2 U330 ( .A(n301), .B(n173), .Z(n302) );
  GTECH_NAND2 U331 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U332 ( .A(n305), .Z(n303) );
  GTECH_AND_NOT U333 ( .A(n306), .B(n294), .Z(N126) );
  GTECH_XOR2 U334 ( .A(n305), .B(n174), .Z(n306) );
  GTECH_NAND2 U335 ( .A(n307), .B(n308), .Z(n305) );
  GTECH_NOT U336 ( .A(n175), .Z(n308) );
  GTECH_NOT U337 ( .A(n309), .Z(n307) );
  GTECH_AND_NOT U338 ( .A(n310), .B(n294), .Z(N124) );
  GTECH_XOR2 U339 ( .A(n309), .B(n175), .Z(n310) );
  GTECH_NAND2 U340 ( .A(n311), .B(n312), .Z(n309) );
  GTECH_NOT U341 ( .A(n176), .Z(n312) );
  GTECH_NOT U342 ( .A(n313), .Z(n311) );
  GTECH_AND_NOT U343 ( .A(n314), .B(n294), .Z(N122) );
  GTECH_XOR2 U344 ( .A(n313), .B(n176), .Z(n314) );
  GTECH_NAND2 U345 ( .A(n315), .B(n316), .Z(n313) );
  GTECH_NOT U346 ( .A(n317), .Z(n315) );
  GTECH_AND_NOT U347 ( .A(n318), .B(n294), .Z(N120) );
  GTECH_XOR2 U348 ( .A(n317), .B(n177), .Z(n318) );
  GTECH_NAND2 U349 ( .A(n319), .B(n320), .Z(n317) );
  GTECH_NOT U350 ( .A(n321), .Z(n319) );
  GTECH_NOT U351 ( .A(n322), .Z(N12) );
  GTECH_AOI21 U352 ( .A(period[3]), .B(n226), .C(reset), .Z(n322) );
  GTECH_AND_NOT U353 ( .A(n323), .B(n294), .Z(N118) );
  GTECH_XOR2 U354 ( .A(n321), .B(n178), .Z(n323) );
  GTECH_NAND3 U355 ( .A(n324), .B(n325), .C(n326), .Z(n321) );
  GTECH_NOT U356 ( .A(n179), .Z(n326) );
  GTECH_OAI22 U357 ( .A(n179), .B(n327), .C(n294), .D(n328), .Z(N116) );
  GTECH_MUX2 U358 ( .A(n324), .B(n329), .S(n179), .Z(n328) );
  GTECH_NAND2 U359 ( .A(n324), .B(n325), .Z(n329) );
  GTECH_NOT U360 ( .A(n181), .Z(n325) );
  GTECH_MUX2 U361 ( .A(N112), .B(n330), .S(n180), .Z(N114) );
  GTECH_AND_NOT U362 ( .A(n291), .B(n181), .Z(n330) );
  GTECH_NOT U363 ( .A(n327), .Z(N112) );
  GTECH_NAND2 U364 ( .A(n291), .B(n181), .Z(n327) );
  GTECH_NOT U365 ( .A(n294), .Z(n291) );
  GTECH_NAND2 U366 ( .A(n237), .B(n197), .Z(n294) );
  GTECH_NOT U367 ( .A(n331), .Z(n237) );
  GTECH_AOI222 U368 ( .A(n332), .B(n333), .C(update_period[11]), .D(n171), .E(
        n334), .F(n335), .Z(n331) );
  GTECH_OAI2N2 U369 ( .A(n336), .B(n337), .C(n338), .D(n339), .Z(n334) );
  GTECH_OAI21 U370 ( .A(n340), .B(n296), .C(n341), .Z(n339) );
  GTECH_NAND3 U371 ( .A(n342), .B(update_period[8]), .C(n173), .Z(n341) );
  GTECH_AND3 U372 ( .A(n335), .B(n342), .C(n338), .Z(n333) );
  GTECH_NAND2 U373 ( .A(n337), .B(n336), .Z(n338) );
  GTECH_NOT U374 ( .A(n182), .Z(n336) );
  GTECH_NOT U375 ( .A(update_period[10]), .Z(n337) );
  GTECH_NAND2 U376 ( .A(n340), .B(n296), .Z(n342) );
  GTECH_NOT U377 ( .A(n172), .Z(n296) );
  GTECH_NOT U378 ( .A(update_period[9]), .Z(n340) );
  GTECH_NAND2 U379 ( .A(n343), .B(n289), .Z(n335) );
  GTECH_NOT U380 ( .A(n171), .Z(n289) );
  GTECH_NOT U381 ( .A(update_period[11]), .Z(n343) );
  GTECH_OA22 U382 ( .A(n173), .B(update_period[8]), .C(n344), .D(n345), .Z(
        n332) );
  GTECH_OAI21 U383 ( .A(n304), .B(n346), .C(n347), .Z(n345) );
  GTECH_NAND3 U384 ( .A(n348), .B(update_period[6]), .C(n175), .Z(n347) );
  GTECH_OAI2N2 U385 ( .A(n349), .B(n350), .C(n351), .D(n352), .Z(n344) );
  GTECH_ADD_ABC U386 ( .A(n353), .B(n176), .C(update_period[5]), .COUT(n352)
         );
  GTECH_AND_NOT U387 ( .A(update_period[4]), .B(n316), .Z(n353) );
  GTECH_NOT U388 ( .A(n177), .Z(n316) );
  GTECH_OAI21 U389 ( .A(update_period[4]), .B(n177), .C(n351), .Z(n350) );
  GTECH_NOT U390 ( .A(n354), .Z(n351) );
  GTECH_OAI21 U391 ( .A(update_period[6]), .B(n175), .C(n348), .Z(n354) );
  GTECH_NAND2 U392 ( .A(n346), .B(n304), .Z(n348) );
  GTECH_NOT U393 ( .A(n174), .Z(n304) );
  GTECH_NOT U394 ( .A(update_period[7]), .Z(n346) );
  GTECH_OAI22 U395 ( .A(update_period[5]), .B(n176), .C(n355), .D(n356), .Z(
        n349) );
  GTECH_OAI21 U396 ( .A(n320), .B(n357), .C(n358), .Z(n356) );
  GTECH_NAND3 U397 ( .A(n359), .B(update_period[2]), .C(n179), .Z(n358) );
  GTECH_AND3 U398 ( .A(n360), .B(n361), .C(n359), .Z(n355) );
  GTECH_NAND2 U399 ( .A(n357), .B(n320), .Z(n359) );
  GTECH_NOT U400 ( .A(n178), .Z(n320) );
  GTECH_NOT U401 ( .A(update_period[3]), .Z(n357) );
  GTECH_OAI21 U402 ( .A(n362), .B(n324), .C(n186), .Z(n361) );
  GTECH_NOT U403 ( .A(n180), .Z(n324) );
  GTECH_OA21 U404 ( .A(n179), .B(update_period[2]), .C(n363), .Z(n360) );
  GTECH_OR_NOT U405 ( .A(n180), .B(n362), .Z(n363) );
  GTECH_NAND2 U406 ( .A(update_period[0]), .B(n181), .Z(n362) );
  GTECH_NOT U407 ( .A(n364), .Z(N11) );
  GTECH_AOI21 U408 ( .A(period[2]), .B(n226), .C(reset), .Z(n364) );
  GTECH_NOT U409 ( .A(n365), .Z(N10) );
  GTECH_AOI21 U410 ( .A(period[1]), .B(n226), .C(reset), .Z(n365) );
  GTECH_NOT U411 ( .A(n227), .Z(n226) );
  GTECH_NAND2 U412 ( .A(period_load), .B(n197), .Z(n227) );
  GTECH_NOT U413 ( .A(reset), .Z(n197) );
endmodule

