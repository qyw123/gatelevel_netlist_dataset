
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
         n25, n27, n28, n29, n31, n32, n88, n166, n170, sub_85_carry_2_, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n187, n198, n199, n200, n201, n202, n203, n204,
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
         n370, n371;
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
        .CP(clk), .Q(update_period[1]), .QN(n187) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n88), .K(n88), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n88), .K(n88), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n185) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n88), .K(n88), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n184) );
  GTECH_FJK1S state_reg_0_ ( .J(n88), .K(n88), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n88), .K(n88), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n88), .K(n88), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n183) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n88), .K(n88), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n182) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n88), .K(n88), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n181) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n88), .K(n88), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n180) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n88), .K(n88), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n179) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n88), .K(n88), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n178) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n88), .K(n88), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n177) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n88), .K(n88), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n176) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n88), .K(n88), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n88), .K(n88), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n88), .K(n88), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n88), .K(n88), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n172) );
  GTECH_FJK1S update_digits_reg ( .J(n88), .K(n88), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n88), .K(n88), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n171) );
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
        seven_segment0_unit_count_reg[0]), .QN(n25) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n29) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n166) );
  GTECH_ZERO U179 ( .Z(n88) );
  GTECH_NAND2 U180 ( .A(n15), .B(n198), .Z(seven_segment0_N9) );
  GTECH_AND2 U181 ( .A(ten_count[0]), .B(n198), .Z(seven_segment0_N8) );
  GTECH_AND2 U182 ( .A(n166), .B(n198), .Z(seven_segment0_N6) );
  GTECH_AND2 U183 ( .A(unit_count[3]), .B(n198), .Z(seven_segment0_N22) );
  GTECH_AND2 U184 ( .A(unit_count[2]), .B(n198), .Z(seven_segment0_N20) );
  GTECH_AND2 U185 ( .A(unit_count[1]), .B(n198), .Z(seven_segment0_N18) );
  GTECH_AND2 U186 ( .A(unit_count[0]), .B(n198), .Z(seven_segment0_N16) );
  GTECH_AND2 U187 ( .A(ten_count[3]), .B(n198), .Z(seven_segment0_N14) );
  GTECH_AND2 U188 ( .A(ten_count[2]), .B(n198), .Z(seven_segment0_N12) );
  GTECH_AND2 U189 ( .A(ten_count[1]), .B(n198), .Z(seven_segment0_N10) );
  GTECH_NAND3 U190 ( .A(n199), .B(n200), .C(n201), .Z(segments[6]) );
  GTECH_OAI21 U191 ( .A(n202), .B(n203), .C(n204), .Z(n199) );
  GTECH_NOT U192 ( .A(n205), .Z(segments[4]) );
  GTECH_OAI21 U193 ( .A(n206), .B(n207), .C(n208), .Z(segments[3]) );
  GTECH_AND2 U194 ( .A(n209), .B(n205), .Z(n208) );
  GTECH_OAI21 U195 ( .A(n210), .B(n204), .C(n203), .Z(n205) );
  GTECH_NOT U196 ( .A(n207), .Z(n204) );
  GTECH_NOT U197 ( .A(n211), .Z(n210) );
  GTECH_OAI21 U198 ( .A(n203), .B(n207), .C(n212), .Z(segments[2]) );
  GTECH_AND_NOT U199 ( .A(n211), .B(segments[5]), .Z(n212) );
  GTECH_OR_NOT U200 ( .A(n213), .B(n214), .Z(segments[5]) );
  GTECH_OAI21 U201 ( .A(n215), .B(n207), .C(n200), .Z(n213) );
  GTECH_OAI21 U202 ( .A(n216), .B(n207), .C(n217), .Z(segments[1]) );
  GTECH_AND2 U203 ( .A(n211), .B(n200), .Z(n217) );
  GTECH_NAND3 U204 ( .A(n218), .B(n219), .C(n216), .Z(n200) );
  GTECH_OAI21 U205 ( .A(n216), .B(n207), .C(n214), .Z(segments[0]) );
  GTECH_NOT U206 ( .A(n220), .Z(n214) );
  GTECH_OAI21 U207 ( .A(n221), .B(n211), .C(n201), .Z(n220) );
  GTECH_NOT U208 ( .A(n222), .Z(n201) );
  GTECH_OAI21 U209 ( .A(n218), .B(n211), .C(n209), .Z(n222) );
  GTECH_NAND4 U210 ( .A(n218), .B(n221), .C(n219), .D(n206), .Z(n209) );
  GTECH_NAND2 U211 ( .A(n202), .B(n219), .Z(n211) );
  GTECH_NOT U212 ( .A(n223), .Z(n219) );
  GTECH_NOT U213 ( .A(n203), .Z(n221) );
  GTECH_NAND2 U214 ( .A(n223), .B(n218), .Z(n207) );
  GTECH_MUX2 U215 ( .A(n32), .B(n28), .S(n166), .Z(n218) );
  GTECH_MUX2 U216 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n166), .Z(n223) );
  GTECH_NOT U217 ( .A(n215), .Z(n216) );
  GTECH_NAND2 U218 ( .A(n203), .B(n206), .Z(n215) );
  GTECH_NOT U219 ( .A(n202), .Z(n206) );
  GTECH_MUX2 U220 ( .A(n31), .B(n27), .S(n166), .Z(n202) );
  GTECH_MUX2 U221 ( .A(n29), .B(n25), .S(n166), .Z(n203) );
  GTECH_NOT U222 ( .A(n224), .Z(N9) );
  GTECH_AOI21 U223 ( .A(period[0]), .B(n225), .C(reset), .Z(n224) );
  GTECH_AND2 U224 ( .A(period[11]), .B(n225), .Z(N21) );
  GTECH_NAND2 U225 ( .A(n198), .B(n226), .Z(N20) );
  GTECH_NOT U226 ( .A(n227), .Z(N19) );
  GTECH_AOI21 U227 ( .A(period[10]), .B(n225), .C(reset), .Z(n227) );
  GTECH_AND2 U228 ( .A(period[9]), .B(n225), .Z(N18) );
  GTECH_AND2 U229 ( .A(period[8]), .B(n225), .Z(N17) );
  GTECH_AND2 U230 ( .A(N170), .B(n228), .Z(N168) );
  GTECH_NAND2 U231 ( .A(n229), .B(n230), .Z(N167) );
  GTECH_NOT U232 ( .A(n231), .Z(n229) );
  GTECH_AND2 U233 ( .A(N170), .B(n232), .Z(N166) );
  GTECH_AND2 U234 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U235 ( .A(N170), .B(n233), .Z(N162) );
  GTECH_NOT U236 ( .A(n234), .Z(N170) );
  GTECH_NAND2 U237 ( .A(n235), .B(n198), .Z(n234) );
  GTECH_NOT U238 ( .A(n230), .Z(n235) );
  GTECH_MUX2 U239 ( .A(n236), .B(n237), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U240 ( .A(ten_count[2]), .B(n238), .C(n239), .Z(n237) );
  GTECH_NOT U241 ( .A(n240), .Z(n239) );
  GTECH_AND2 U242 ( .A(n241), .B(ten_count[2]), .Z(n236) );
  GTECH_NOT U243 ( .A(n242), .Z(N16) );
  GTECH_AOI21 U244 ( .A(period[7]), .B(n225), .C(reset), .Z(n242) );
  GTECH_OAI21 U245 ( .A(n243), .B(n244), .C(n245), .Z(N159) );
  GTECH_MUX2 U246 ( .A(n241), .B(n240), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U247 ( .A(ten_count[1]), .B(n238), .C(n246), .Z(n240) );
  GTECH_NOT U248 ( .A(n247), .Z(n241) );
  GTECH_NAND3 U249 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n247) );
  GTECH_MUX2 U250 ( .A(n248), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U251 ( .A(N152), .B(ten_count[0]), .Z(n248) );
  GTECH_NOT U252 ( .A(n246), .Z(N154) );
  GTECH_NAND2 U253 ( .A(N152), .B(n249), .Z(n246) );
  GTECH_NOT U254 ( .A(ten_count[0]), .Z(n249) );
  GTECH_NAND2 U255 ( .A(n250), .B(n170), .Z(N151) );
  GTECH_AOI21 U256 ( .A(n251), .B(n252), .C(n231), .Z(n250) );
  GTECH_OAI21 U257 ( .A(n252), .B(n243), .C(n198), .Z(n231) );
  GTECH_NOT U258 ( .A(n253), .Z(n251) );
  GTECH_AND2 U259 ( .A(period[6]), .B(n225), .Z(N15) );
  GTECH_OAI21 U260 ( .A(n238), .B(n253), .C(n254), .Z(N148) );
  GTECH_MUX2 U261 ( .A(n255), .B(n256), .S(n184), .Z(n254) );
  GTECH_OR3 U262 ( .A(n185), .B(n257), .C(n258), .Z(n256) );
  GTECH_AND_NOT U263 ( .A(n259), .B(n260), .Z(n255) );
  GTECH_MUX2 U264 ( .A(n238), .B(n257), .S(n185), .Z(n259) );
  GTECH_NAND3 U265 ( .A(n261), .B(n230), .C(n245), .Z(N147) );
  GTECH_AND2 U266 ( .A(n198), .B(n262), .Z(n245) );
  GTECH_NAND3 U267 ( .A(n252), .B(n170), .C(n253), .Z(n262) );
  GTECH_NAND4 U268 ( .A(n185), .B(n184), .C(n171), .D(n263), .Z(n253) );
  GTECH_NAND2 U269 ( .A(n14), .B(n264), .Z(n230) );
  GTECH_NOT U270 ( .A(n170), .Z(n264) );
  GTECH_NAND3 U271 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n261) );
  GTECH_MUX2 U272 ( .A(n260), .B(n265), .S(n185), .Z(N146) );
  GTECH_OAI21 U273 ( .A(n258), .B(n257), .C(n266), .Z(n265) );
  GTECH_OAI22 U274 ( .A(n267), .B(n238), .C(n268), .D(n257), .Z(n260) );
  GTECH_NOT U275 ( .A(n258), .Z(n268) );
  GTECH_NAND3 U276 ( .A(n269), .B(n228), .C(n270), .Z(n258) );
  GTECH_NOT U277 ( .A(n171), .Z(n269) );
  GTECH_AND2 U278 ( .A(n263), .B(n171), .Z(n267) );
  GTECH_NAND2 U279 ( .A(n271), .B(n266), .Z(N144) );
  GTECH_NAND3 U280 ( .A(N152), .B(n263), .C(n171), .Z(n266) );
  GTECH_MUX2 U281 ( .A(n272), .B(n273), .S(n171), .Z(n271) );
  GTECH_NAND3 U282 ( .A(n270), .B(n228), .C(N150), .Z(n273) );
  GTECH_OA22 U283 ( .A(n274), .B(n257), .C(n238), .D(n263), .Z(n272) );
  GTECH_NAND2 U284 ( .A(n275), .B(n228), .Z(n263) );
  GTECH_AND2 U285 ( .A(n270), .B(n228), .Z(n274) );
  GTECH_NOT U286 ( .A(n22), .Z(n228) );
  GTECH_OAI21 U287 ( .A(n257), .B(n276), .C(n277), .Z(N142) );
  GTECH_MUX2 U288 ( .A(n278), .B(n279), .S(n22), .Z(n277) );
  GTECH_NAND2 U289 ( .A(N152), .B(n275), .Z(n279) );
  GTECH_XOR2 U290 ( .A(n22), .B(n270), .Z(n276) );
  GTECH_NOT U291 ( .A(n280), .Z(n270) );
  GTECH_NAND3 U292 ( .A(n233), .B(n232), .C(sub_85_carry_2_), .Z(n280) );
  GTECH_NOT U293 ( .A(n20), .Z(n232) );
  GTECH_NAND2 U294 ( .A(n281), .B(n278), .Z(N140) );
  GTECH_NAND2 U295 ( .A(n282), .B(N152), .Z(n278) );
  GTECH_NOT U296 ( .A(n238), .Z(N152) );
  GTECH_NOT U297 ( .A(n275), .Z(n282) );
  GTECH_NAND2 U298 ( .A(n20), .B(n283), .Z(n275) );
  GTECH_NOT U299 ( .A(sub_85_carry_2_), .Z(n283) );
  GTECH_MUX2 U300 ( .A(n284), .B(n285), .S(n20), .Z(n281) );
  GTECH_NAND3 U301 ( .A(sub_85_carry_2_), .B(n233), .C(N150), .Z(n285) );
  GTECH_NOT U302 ( .A(n16), .Z(n233) );
  GTECH_AND2 U303 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_MUX2 U304 ( .A(n257), .B(n238), .S(sub_85_carry_2_), .Z(n286) );
  GTECH_NOT U305 ( .A(n288), .Z(N14) );
  GTECH_AOI21 U306 ( .A(period[5]), .B(n225), .C(reset), .Z(n288) );
  GTECH_MUX2 U307 ( .A(n289), .B(n290), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U308 ( .A(n287), .Z(n290) );
  GTECH_OAI21 U309 ( .A(n16), .B(n257), .C(n238), .Z(n289) );
  GTECH_OAI21 U310 ( .A(n16), .B(n238), .C(n287), .Z(N136) );
  GTECH_NAND2 U311 ( .A(n16), .B(N150), .Z(n287) );
  GTECH_NOT U312 ( .A(n257), .Z(N150) );
  GTECH_NAND2 U313 ( .A(n291), .B(n198), .Z(n257) );
  GTECH_NOT U314 ( .A(n244), .Z(n291) );
  GTECH_NAND2 U315 ( .A(n170), .B(n292), .Z(n238) );
  GTECH_NOT U316 ( .A(N169), .Z(n292) );
  GTECH_NAND2 U317 ( .A(n198), .B(n252), .Z(N169) );
  GTECH_NOT U318 ( .A(n14), .Z(n252) );
  GTECH_AND2 U319 ( .A(n293), .B(n294), .Z(N134) );
  GTECH_OAI21 U320 ( .A(n183), .B(n295), .C(n172), .Z(n294) );
  GTECH_NAND2 U321 ( .A(n198), .B(n244), .Z(N133) );
  GTECH_NAND2 U322 ( .A(n170), .B(n14), .Z(n244) );
  GTECH_AND2 U323 ( .A(n296), .B(n293), .Z(N132) );
  GTECH_XOR2 U324 ( .A(n295), .B(n183), .Z(n296) );
  GTECH_NAND2 U325 ( .A(n297), .B(n298), .Z(n295) );
  GTECH_NOT U326 ( .A(n299), .Z(n297) );
  GTECH_AND2 U327 ( .A(n300), .B(n293), .Z(N130) );
  GTECH_XOR2 U328 ( .A(n299), .B(n173), .Z(n300) );
  GTECH_NAND2 U329 ( .A(n301), .B(n302), .Z(n299) );
  GTECH_NOT U330 ( .A(n174), .Z(n302) );
  GTECH_NOT U331 ( .A(n303), .Z(n301) );
  GTECH_AND2 U332 ( .A(period[4]), .B(n225), .Z(N13) );
  GTECH_AND2 U333 ( .A(n304), .B(n293), .Z(N128) );
  GTECH_XOR2 U334 ( .A(n303), .B(n174), .Z(n304) );
  GTECH_NAND2 U335 ( .A(n305), .B(n306), .Z(n303) );
  GTECH_NOT U336 ( .A(n307), .Z(n305) );
  GTECH_AND2 U337 ( .A(n308), .B(n293), .Z(N126) );
  GTECH_XOR2 U338 ( .A(n307), .B(n175), .Z(n308) );
  GTECH_NAND2 U339 ( .A(n309), .B(n310), .Z(n307) );
  GTECH_NOT U340 ( .A(n176), .Z(n310) );
  GTECH_NOT U341 ( .A(n311), .Z(n309) );
  GTECH_AND2 U342 ( .A(n312), .B(n293), .Z(N124) );
  GTECH_XOR2 U343 ( .A(n311), .B(n176), .Z(n312) );
  GTECH_NAND2 U344 ( .A(n313), .B(n314), .Z(n311) );
  GTECH_NOT U345 ( .A(n315), .Z(n313) );
  GTECH_AND2 U346 ( .A(n316), .B(n293), .Z(N122) );
  GTECH_XOR2 U347 ( .A(n315), .B(n177), .Z(n316) );
  GTECH_NAND2 U348 ( .A(n317), .B(n318), .Z(n315) );
  GTECH_NOT U349 ( .A(n319), .Z(n317) );
  GTECH_AND2 U350 ( .A(n320), .B(n293), .Z(N120) );
  GTECH_XOR2 U351 ( .A(n319), .B(n178), .Z(n320) );
  GTECH_NAND2 U352 ( .A(n321), .B(n322), .Z(n319) );
  GTECH_NOT U353 ( .A(n323), .Z(n321) );
  GTECH_NOT U354 ( .A(n324), .Z(N12) );
  GTECH_AOI21 U355 ( .A(period[3]), .B(n225), .C(reset), .Z(n324) );
  GTECH_AND2 U356 ( .A(n325), .B(n293), .Z(N118) );
  GTECH_XOR2 U357 ( .A(n323), .B(n179), .Z(n325) );
  GTECH_NAND3 U358 ( .A(n326), .B(n327), .C(n328), .Z(n323) );
  GTECH_NOT U359 ( .A(n180), .Z(n328) );
  GTECH_OAI22 U360 ( .A(n180), .B(n329), .C(n330), .D(n331), .Z(N116) );
  GTECH_MUX2 U361 ( .A(n326), .B(n332), .S(n180), .Z(n331) );
  GTECH_NAND2 U362 ( .A(n326), .B(n327), .Z(n332) );
  GTECH_MUX2 U363 ( .A(N112), .B(n333), .S(n181), .Z(N114) );
  GTECH_AND2 U364 ( .A(n293), .B(n327), .Z(n333) );
  GTECH_NOT U365 ( .A(n182), .Z(n327) );
  GTECH_NOT U366 ( .A(n329), .Z(N112) );
  GTECH_NAND2 U367 ( .A(n293), .B(n182), .Z(n329) );
  GTECH_NOT U368 ( .A(n330), .Z(n293) );
  GTECH_NAND2 U369 ( .A(n243), .B(n198), .Z(n330) );
  GTECH_NOT U370 ( .A(n334), .Z(n243) );
  GTECH_AOI222 U371 ( .A(n335), .B(n336), .C(update_period[11]), .D(n172), .E(
        n337), .F(n338), .Z(n334) );
  GTECH_OAI2N2 U372 ( .A(n339), .B(n340), .C(n341), .D(n342), .Z(n337) );
  GTECH_OAI21 U373 ( .A(n343), .B(n298), .C(n344), .Z(n342) );
  GTECH_NAND3 U374 ( .A(n174), .B(n345), .C(update_period[8]), .Z(n344) );
  GTECH_AND3 U375 ( .A(n345), .B(n341), .C(n338), .Z(n336) );
  GTECH_NAND2 U376 ( .A(n346), .B(n347), .Z(n338) );
  GTECH_NOT U377 ( .A(n172), .Z(n347) );
  GTECH_NOT U378 ( .A(update_period[11]), .Z(n346) );
  GTECH_NAND2 U379 ( .A(n340), .B(n339), .Z(n341) );
  GTECH_NOT U380 ( .A(n183), .Z(n339) );
  GTECH_NOT U381 ( .A(update_period[10]), .Z(n340) );
  GTECH_NAND2 U382 ( .A(n298), .B(n343), .Z(n345) );
  GTECH_NOT U383 ( .A(update_period[9]), .Z(n343) );
  GTECH_NOT U384 ( .A(n173), .Z(n298) );
  GTECH_OA22 U385 ( .A(n348), .B(n349), .C(update_period[8]), .D(n174), .Z(
        n335) );
  GTECH_NAND2 U386 ( .A(n350), .B(n351), .Z(n349) );
  GTECH_OR3 U387 ( .A(n352), .B(n353), .C(n354), .Z(n351) );
  GTECH_OAI21 U388 ( .A(n355), .B(n356), .C(n357), .Z(n354) );
  GTECH_AO22 U389 ( .A(n358), .B(update_period[2]), .C(update_period[3]), .D(
        n179), .Z(n356) );
  GTECH_AND2 U390 ( .A(n180), .B(n359), .Z(n358) );
  GTECH_AND3 U391 ( .A(n359), .B(n360), .C(n361), .Z(n355) );
  GTECH_OA22 U392 ( .A(n180), .B(update_period[2]), .C(n362), .D(n181), .Z(
        n361) );
  GTECH_NOT U393 ( .A(n363), .Z(n362) );
  GTECH_OAI21 U394 ( .A(n363), .B(n326), .C(n187), .Z(n360) );
  GTECH_NOT U395 ( .A(n181), .Z(n326) );
  GTECH_NAND2 U396 ( .A(update_period[0]), .B(n182), .Z(n363) );
  GTECH_NAND2 U397 ( .A(n364), .B(n322), .Z(n359) );
  GTECH_NOT U398 ( .A(n179), .Z(n322) );
  GTECH_NOT U399 ( .A(update_period[3]), .Z(n364) );
  GTECH_AND_NOT U400 ( .A(n318), .B(update_period[4]), .Z(n353) );
  GTECH_NOT U401 ( .A(n178), .Z(n318) );
  GTECH_OAI21 U402 ( .A(update_period[7]), .B(n175), .C(n365), .Z(n350) );
  GTECH_OAI2N2 U403 ( .A(n306), .B(n366), .C(update_period[6]), .D(n176), .Z(
        n365) );
  GTECH_NOT U404 ( .A(update_period[7]), .Z(n366) );
  GTECH_NOT U405 ( .A(n175), .Z(n306) );
  GTECH_AND_NOT U406 ( .A(n367), .B(n352), .Z(n348) );
  GTECH_OAI22 U407 ( .A(update_period[6]), .B(n176), .C(update_period[7]), .D(
        n175), .Z(n352) );
  GTECH_OAI21 U408 ( .A(n314), .B(n368), .C(n369), .Z(n367) );
  GTECH_NAND3 U409 ( .A(n357), .B(update_period[4]), .C(n178), .Z(n369) );
  GTECH_NAND2 U410 ( .A(n368), .B(n314), .Z(n357) );
  GTECH_NOT U411 ( .A(update_period[5]), .Z(n368) );
  GTECH_NOT U412 ( .A(n177), .Z(n314) );
  GTECH_NOT U413 ( .A(n370), .Z(N11) );
  GTECH_AOI21 U414 ( .A(period[2]), .B(n225), .C(reset), .Z(n370) );
  GTECH_NOT U415 ( .A(n371), .Z(N10) );
  GTECH_AOI21 U416 ( .A(period[1]), .B(n225), .C(reset), .Z(n371) );
  GTECH_NOT U417 ( .A(n226), .Z(n225) );
  GTECH_NAND2 U418 ( .A(period_load), .B(n198), .Z(n226) );
  GTECH_NOT U419 ( .A(reset), .Z(n198) );
endmodule

