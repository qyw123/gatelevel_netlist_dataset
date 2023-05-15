
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
         seven_segment0_N8, seven_segment0_N6, n12, n13, n14, n15, n16, n20,
         n22, n26, n27, n28, n29, n31, n32, n33, n89, n168, sub_85_carry_2_,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n187, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n89), .K(n89), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n89), .K(n89), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n89), .K(n89), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n89), .K(n89), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n89), .K(n89), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n89), .K(n89), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n89), .K(n89), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n89), .K(n89), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n89), .K(n89), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n89), .K(n89), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n89), .K(n89), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n187) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n89), .K(n89), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n12) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n89), .K(n89), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n185) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n89), .K(n89), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n184) );
  GTECH_FJK1S state_reg_0_ ( .J(n89), .K(n89), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n13) );
  GTECH_FJK1S state_reg_1_ ( .J(n89), .K(n89), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n14) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n89), .K(n89), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n183) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n89), .K(n89), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n182) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n89), .K(n89), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n181) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n89), .K(n89), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n180) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n89), .K(n89), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n179) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n89), .K(n89), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n178) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n89), .K(n89), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n177) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n89), .K(n89), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n176) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n89), .K(n89), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n89), .K(n89), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n89), .K(n89), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n89), .K(n89), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n172) );
  GTECH_FJK1S update_digits_reg ( .J(n89), .K(n89), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n89), .K(n89), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n171) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n89), .K(n89), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n89), .K(n89), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n89), .K(n89), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n89), .K(n89), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n89), .K(n89), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n89), .K(n89), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n89), .K(n89), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n89), .K(n89), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n89), .K(n89), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n89), .K(n89), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n89), .K(n89), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n89), .K(n89), .TI(N160), .TE(N159), .CP(
        clk), .Q(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n89), .K(n89), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n89), .K(n89), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n28) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n89), .K(n89), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n29) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n89), .K(n89), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n89), .K(n89), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n89), .K(n89), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n32) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n89), .K(n89), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n33) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n89), .K(n89), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n168) );
  GTECH_ZERO U178 ( .Z(n89) );
  GTECH_NAND2 U179 ( .A(n15), .B(n198), .Z(seven_segment0_N9) );
  GTECH_AND2 U180 ( .A(ten_count[0]), .B(n198), .Z(seven_segment0_N8) );
  GTECH_AND2 U181 ( .A(n168), .B(n198), .Z(seven_segment0_N6) );
  GTECH_AND2 U182 ( .A(unit_count[3]), .B(n198), .Z(seven_segment0_N22) );
  GTECH_AND2 U183 ( .A(unit_count[2]), .B(n198), .Z(seven_segment0_N20) );
  GTECH_AND2 U184 ( .A(unit_count[1]), .B(n198), .Z(seven_segment0_N18) );
  GTECH_AND2 U185 ( .A(unit_count[0]), .B(n198), .Z(seven_segment0_N16) );
  GTECH_AND2 U186 ( .A(n26), .B(n198), .Z(seven_segment0_N14) );
  GTECH_AND2 U187 ( .A(ten_count[2]), .B(n198), .Z(seven_segment0_N12) );
  GTECH_AND2 U188 ( .A(ten_count[1]), .B(n198), .Z(seven_segment0_N10) );
  GTECH_OAI21 U189 ( .A(n199), .B(n200), .C(n201), .Z(segments[6]) );
  GTECH_NAND2 U190 ( .A(n202), .B(n201), .Z(segments[5]) );
  GTECH_OA21 U191 ( .A(n203), .B(n204), .C(n205), .Z(n202) );
  GTECH_NOT U192 ( .A(n206), .Z(segments[4]) );
  GTECH_OAI21 U193 ( .A(n200), .B(n207), .C(n208), .Z(segments[3]) );
  GTECH_AND2 U194 ( .A(n209), .B(n206), .Z(n208) );
  GTECH_OAI21 U195 ( .A(n210), .B(n211), .C(n212), .Z(n206) );
  GTECH_NOT U196 ( .A(n207), .Z(n211) );
  GTECH_NOT U197 ( .A(n204), .Z(n210) );
  GTECH_NAND2 U198 ( .A(n213), .B(n201), .Z(segments[2]) );
  GTECH_AND2 U199 ( .A(n209), .B(n214), .Z(n201) );
  GTECH_NAND3 U200 ( .A(n203), .B(n212), .C(n200), .Z(n214) );
  GTECH_NAND2 U201 ( .A(n215), .B(n213), .Z(segments[1]) );
  GTECH_NOT U202 ( .A(n216), .Z(n213) );
  GTECH_OAI21 U203 ( .A(n212), .B(n207), .C(n204), .Z(n216) );
  GTECH_OA21 U204 ( .A(n200), .B(n207), .C(n205), .Z(n215) );
  GTECH_NAND3 U205 ( .A(n212), .B(n203), .C(n217), .Z(n205) );
  GTECH_NAND2 U206 ( .A(n218), .B(n219), .Z(segments[0]) );
  GTECH_MUX2 U207 ( .A(n204), .B(n207), .S(n220), .Z(n219) );
  GTECH_NAND2 U208 ( .A(n221), .B(n217), .Z(n204) );
  GTECH_OA21 U209 ( .A(n199), .B(n200), .C(n209), .Z(n218) );
  GTECH_NAND4 U210 ( .A(n217), .B(n220), .C(n200), .D(n203), .Z(n209) );
  GTECH_NOT U211 ( .A(n212), .Z(n220) );
  GTECH_MUX2 U212 ( .A(n31), .B(n27), .S(n168), .Z(n212) );
  GTECH_NOT U213 ( .A(n221), .Z(n200) );
  GTECH_MUX2 U214 ( .A(n33), .B(n29), .S(n168), .Z(n221) );
  GTECH_NOT U215 ( .A(n222), .Z(n199) );
  GTECH_OAI21 U216 ( .A(n223), .B(n203), .C(n207), .Z(n222) );
  GTECH_NAND2 U217 ( .A(n223), .B(n203), .Z(n207) );
  GTECH_NOT U218 ( .A(n224), .Z(n203) );
  GTECH_MUX2 U219 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n168), .Z(n224) );
  GTECH_NOT U220 ( .A(n217), .Z(n223) );
  GTECH_MUX2 U221 ( .A(n32), .B(n28), .S(n168), .Z(n217) );
  GTECH_NOT U222 ( .A(n225), .Z(N9) );
  GTECH_AOI21 U223 ( .A(period[0]), .B(n226), .C(reset), .Z(n225) );
  GTECH_AND2 U224 ( .A(period[11]), .B(n226), .Z(N21) );
  GTECH_NAND2 U225 ( .A(n198), .B(n227), .Z(N20) );
  GTECH_NOT U226 ( .A(n228), .Z(N19) );
  GTECH_AOI21 U227 ( .A(period[10]), .B(n226), .C(reset), .Z(n228) );
  GTECH_AND2 U228 ( .A(period[9]), .B(n226), .Z(N18) );
  GTECH_AND2 U229 ( .A(period[8]), .B(n226), .Z(N17) );
  GTECH_AND2 U230 ( .A(N170), .B(n229), .Z(N168) );
  GTECH_NAND2 U231 ( .A(n230), .B(n231), .Z(N167) );
  GTECH_AND2 U232 ( .A(N170), .B(n232), .Z(N166) );
  GTECH_AND2 U233 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U234 ( .A(N170), .B(n233), .Z(N162) );
  GTECH_NOT U235 ( .A(n234), .Z(N170) );
  GTECH_NAND2 U236 ( .A(n235), .B(n198), .Z(n234) );
  GTECH_NOT U237 ( .A(n231), .Z(n235) );
  GTECH_OAI22 U238 ( .A(n236), .B(n237), .C(n238), .D(n239), .Z(N160) );
  GTECH_MUX2 U239 ( .A(n236), .B(n240), .S(ten_count[2]), .Z(n239) );
  GTECH_NAND2 U240 ( .A(n241), .B(n236), .Z(n240) );
  GTECH_NOT U241 ( .A(n26), .Z(n236) );
  GTECH_NOT U242 ( .A(n242), .Z(N16) );
  GTECH_AOI21 U243 ( .A(period[7]), .B(n226), .C(reset), .Z(n242) );
  GTECH_OAI21 U244 ( .A(n243), .B(n244), .C(n245), .Z(N159) );
  GTECH_MUX2 U245 ( .A(n246), .B(n247), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U246 ( .A(n237), .Z(n247) );
  GTECH_NAND2 U247 ( .A(N152), .B(n248), .Z(n237) );
  GTECH_AND2 U248 ( .A(N152), .B(n241), .Z(n246) );
  GTECH_NOT U249 ( .A(n248), .Z(n241) );
  GTECH_NAND2 U250 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n248) );
  GTECH_MUX2 U251 ( .A(n249), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U252 ( .A(N152), .B(ten_count[0]), .Z(n249) );
  GTECH_NOT U253 ( .A(n250), .Z(N154) );
  GTECH_NAND2 U254 ( .A(N152), .B(n251), .Z(n250) );
  GTECH_NOT U255 ( .A(ten_count[0]), .Z(n251) );
  GTECH_NAND2 U256 ( .A(n252), .B(n14), .Z(N151) );
  GTECH_OA21 U257 ( .A(n13), .B(n253), .C(n230), .Z(n252) );
  GTECH_NOT U258 ( .A(n254), .Z(n230) );
  GTECH_OAI21 U259 ( .A(n255), .B(n243), .C(n198), .Z(n254) );
  GTECH_AND2 U260 ( .A(period[6]), .B(n226), .Z(N15) );
  GTECH_OAI21 U261 ( .A(n238), .B(n253), .C(n256), .Z(N148) );
  GTECH_NOT U262 ( .A(n257), .Z(n256) );
  GTECH_MUX2 U263 ( .A(n258), .B(n259), .S(n184), .Z(n257) );
  GTECH_NOR3 U264 ( .A(n260), .B(n185), .C(n261), .Z(n259) );
  GTECH_OR_NOT U265 ( .A(n262), .B(n263), .Z(n258) );
  GTECH_MUX2 U266 ( .A(n238), .B(n261), .S(n185), .Z(n263) );
  GTECH_NAND3 U267 ( .A(n264), .B(n231), .C(n245), .Z(N147) );
  GTECH_AND2 U268 ( .A(n198), .B(n265), .Z(n245) );
  GTECH_NAND3 U269 ( .A(n255), .B(n14), .C(n253), .Z(n265) );
  GTECH_NAND4 U270 ( .A(n185), .B(n184), .C(n171), .D(n266), .Z(n253) );
  GTECH_NAND2 U271 ( .A(n13), .B(n267), .Z(n231) );
  GTECH_NOT U272 ( .A(n14), .Z(n267) );
  GTECH_NAND3 U273 ( .A(n13), .B(edge_detect0_q1), .C(n12), .Z(n264) );
  GTECH_MUX2 U274 ( .A(n262), .B(n268), .S(n185), .Z(N146) );
  GTECH_OAI21 U275 ( .A(n260), .B(n261), .C(n269), .Z(n268) );
  GTECH_OAI22 U276 ( .A(n270), .B(n238), .C(n271), .D(n261), .Z(n262) );
  GTECH_NOT U277 ( .A(n260), .Z(n271) );
  GTECH_NAND3 U278 ( .A(n272), .B(n229), .C(n273), .Z(n260) );
  GTECH_NOT U279 ( .A(n171), .Z(n272) );
  GTECH_AND2 U280 ( .A(n266), .B(n171), .Z(n270) );
  GTECH_NAND2 U281 ( .A(n274), .B(n269), .Z(N144) );
  GTECH_NAND3 U282 ( .A(N152), .B(n266), .C(n171), .Z(n269) );
  GTECH_MUX2 U283 ( .A(n275), .B(n276), .S(n171), .Z(n274) );
  GTECH_NAND3 U284 ( .A(n273), .B(n229), .C(N150), .Z(n276) );
  GTECH_OA21 U285 ( .A(n238), .B(n266), .C(n277), .Z(n275) );
  GTECH_OAI21 U286 ( .A(n22), .B(n278), .C(N150), .Z(n277) );
  GTECH_NAND2 U287 ( .A(n279), .B(n229), .Z(n266) );
  GTECH_NOT U288 ( .A(n22), .Z(n229) );
  GTECH_OAI21 U289 ( .A(n261), .B(n280), .C(n281), .Z(N142) );
  GTECH_MUX2 U290 ( .A(n282), .B(n283), .S(n22), .Z(n281) );
  GTECH_NAND2 U291 ( .A(N152), .B(n279), .Z(n283) );
  GTECH_XOR2 U292 ( .A(n22), .B(n273), .Z(n280) );
  GTECH_NOT U293 ( .A(n278), .Z(n273) );
  GTECH_NAND3 U294 ( .A(n233), .B(n232), .C(sub_85_carry_2_), .Z(n278) );
  GTECH_NOT U295 ( .A(n20), .Z(n232) );
  GTECH_NAND2 U296 ( .A(n284), .B(n282), .Z(N140) );
  GTECH_NAND2 U297 ( .A(n285), .B(N152), .Z(n282) );
  GTECH_NOT U298 ( .A(n238), .Z(N152) );
  GTECH_NOT U299 ( .A(n279), .Z(n285) );
  GTECH_NAND2 U300 ( .A(n20), .B(n286), .Z(n279) );
  GTECH_NOT U301 ( .A(sub_85_carry_2_), .Z(n286) );
  GTECH_MUX2 U302 ( .A(n287), .B(n288), .S(n20), .Z(n284) );
  GTECH_NAND3 U303 ( .A(sub_85_carry_2_), .B(n233), .C(N150), .Z(n288) );
  GTECH_NOT U304 ( .A(n16), .Z(n233) );
  GTECH_AND2 U305 ( .A(n289), .B(n290), .Z(n287) );
  GTECH_MUX2 U306 ( .A(n261), .B(n238), .S(sub_85_carry_2_), .Z(n289) );
  GTECH_NOT U307 ( .A(n291), .Z(N14) );
  GTECH_AOI21 U308 ( .A(period[5]), .B(n226), .C(reset), .Z(n291) );
  GTECH_MUX2 U309 ( .A(n292), .B(n293), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U310 ( .A(n290), .Z(n293) );
  GTECH_OAI21 U311 ( .A(n16), .B(n261), .C(n238), .Z(n292) );
  GTECH_OAI21 U312 ( .A(n16), .B(n238), .C(n290), .Z(N136) );
  GTECH_NAND2 U313 ( .A(n16), .B(N150), .Z(n290) );
  GTECH_NOT U314 ( .A(n261), .Z(N150) );
  GTECH_NAND2 U315 ( .A(n294), .B(n198), .Z(n261) );
  GTECH_NOT U316 ( .A(n244), .Z(n294) );
  GTECH_NAND2 U317 ( .A(n14), .B(n295), .Z(n238) );
  GTECH_NOT U318 ( .A(N169), .Z(n295) );
  GTECH_NAND2 U319 ( .A(n198), .B(n255), .Z(N169) );
  GTECH_NOT U320 ( .A(n13), .Z(n255) );
  GTECH_AND2 U321 ( .A(n296), .B(n297), .Z(N134) );
  GTECH_OAI21 U322 ( .A(n183), .B(n298), .C(n172), .Z(n297) );
  GTECH_NAND2 U323 ( .A(n198), .B(n244), .Z(N133) );
  GTECH_NAND2 U324 ( .A(n14), .B(n13), .Z(n244) );
  GTECH_AND2 U325 ( .A(n299), .B(n296), .Z(N132) );
  GTECH_XOR2 U326 ( .A(n298), .B(n183), .Z(n299) );
  GTECH_NAND2 U327 ( .A(n300), .B(n301), .Z(n298) );
  GTECH_NOT U328 ( .A(n173), .Z(n301) );
  GTECH_NOT U329 ( .A(n302), .Z(n300) );
  GTECH_AND2 U330 ( .A(n303), .B(n296), .Z(N130) );
  GTECH_XOR2 U331 ( .A(n302), .B(n173), .Z(n303) );
  GTECH_NAND2 U332 ( .A(n304), .B(n305), .Z(n302) );
  GTECH_NOT U333 ( .A(n174), .Z(n305) );
  GTECH_NOT U334 ( .A(n306), .Z(n304) );
  GTECH_AND2 U335 ( .A(period[4]), .B(n226), .Z(N13) );
  GTECH_AND2 U336 ( .A(n307), .B(n296), .Z(N128) );
  GTECH_XOR2 U337 ( .A(n306), .B(n174), .Z(n307) );
  GTECH_NAND2 U338 ( .A(n308), .B(n309), .Z(n306) );
  GTECH_NOT U339 ( .A(n310), .Z(n308) );
  GTECH_AND2 U340 ( .A(n311), .B(n296), .Z(N126) );
  GTECH_XOR2 U341 ( .A(n310), .B(n175), .Z(n311) );
  GTECH_NAND2 U342 ( .A(n312), .B(n313), .Z(n310) );
  GTECH_NOT U343 ( .A(n176), .Z(n313) );
  GTECH_NOT U344 ( .A(n314), .Z(n312) );
  GTECH_AND2 U345 ( .A(n315), .B(n296), .Z(N124) );
  GTECH_XOR2 U346 ( .A(n314), .B(n176), .Z(n315) );
  GTECH_NAND2 U347 ( .A(n316), .B(n317), .Z(n314) );
  GTECH_NOT U348 ( .A(n177), .Z(n317) );
  GTECH_NOT U349 ( .A(n318), .Z(n316) );
  GTECH_AND2 U350 ( .A(n319), .B(n296), .Z(N122) );
  GTECH_XOR2 U351 ( .A(n318), .B(n177), .Z(n319) );
  GTECH_NAND2 U352 ( .A(n320), .B(n321), .Z(n318) );
  GTECH_NOT U353 ( .A(n178), .Z(n321) );
  GTECH_NOT U354 ( .A(n322), .Z(n320) );
  GTECH_AND2 U355 ( .A(n323), .B(n296), .Z(N120) );
  GTECH_XOR2 U356 ( .A(n322), .B(n178), .Z(n323) );
  GTECH_NAND2 U357 ( .A(n324), .B(n325), .Z(n322) );
  GTECH_NOT U358 ( .A(n326), .Z(n324) );
  GTECH_NOT U359 ( .A(n327), .Z(N12) );
  GTECH_AOI21 U360 ( .A(period[3]), .B(n226), .C(reset), .Z(n327) );
  GTECH_AND2 U361 ( .A(n328), .B(n296), .Z(N118) );
  GTECH_XOR2 U362 ( .A(n326), .B(n179), .Z(n328) );
  GTECH_NAND3 U363 ( .A(n329), .B(n330), .C(n331), .Z(n326) );
  GTECH_NOT U364 ( .A(n180), .Z(n331) );
  GTECH_OAI22 U365 ( .A(n180), .B(n332), .C(n333), .D(n334), .Z(N116) );
  GTECH_MUX2 U366 ( .A(n329), .B(n335), .S(n180), .Z(n334) );
  GTECH_NAND2 U367 ( .A(n329), .B(n330), .Z(n335) );
  GTECH_MUX2 U368 ( .A(N112), .B(n336), .S(n181), .Z(N114) );
  GTECH_AND2 U369 ( .A(n296), .B(n330), .Z(n336) );
  GTECH_NOT U370 ( .A(n182), .Z(n330) );
  GTECH_NOT U371 ( .A(n332), .Z(N112) );
  GTECH_NAND2 U372 ( .A(n296), .B(n182), .Z(n332) );
  GTECH_NOT U373 ( .A(n333), .Z(n296) );
  GTECH_NAND2 U374 ( .A(n243), .B(n198), .Z(n333) );
  GTECH_NOT U375 ( .A(n337), .Z(n243) );
  GTECH_AOI222 U376 ( .A(n338), .B(n339), .C(update_period[11]), .D(n172), .E(
        n340), .F(n341), .Z(n337) );
  GTECH_OAI2N2 U377 ( .A(n342), .B(n343), .C(n344), .D(n345), .Z(n340) );
  GTECH_AO22 U378 ( .A(update_period[8]), .B(n346), .C(n173), .D(
        update_period[9]), .Z(n345) );
  GTECH_OA21 U379 ( .A(n173), .B(update_period[9]), .C(n174), .Z(n346) );
  GTECH_OA21 U380 ( .A(n347), .B(n348), .C(n349), .Z(n339) );
  GTECH_AND2 U381 ( .A(n344), .B(n341), .Z(n349) );
  GTECH_NAND2 U382 ( .A(n350), .B(n351), .Z(n341) );
  GTECH_NOT U383 ( .A(update_period[11]), .Z(n351) );
  GTECH_NOT U384 ( .A(n172), .Z(n350) );
  GTECH_NAND2 U385 ( .A(n343), .B(n342), .Z(n344) );
  GTECH_NOT U386 ( .A(n183), .Z(n342) );
  GTECH_NOT U387 ( .A(update_period[10]), .Z(n343) );
  GTECH_OAI21 U388 ( .A(n309), .B(n352), .C(n353), .Z(n348) );
  GTECH_NAND3 U389 ( .A(n354), .B(update_period[6]), .C(n176), .Z(n353) );
  GTECH_OAI2N2 U390 ( .A(n355), .B(n356), .C(n357), .D(n358), .Z(n347) );
  GTECH_ADD_ABC U391 ( .A(n359), .B(n177), .C(update_period[5]), .COUT(n358)
         );
  GTECH_AND2 U392 ( .A(update_period[4]), .B(n178), .Z(n359) );
  GTECH_OAI21 U393 ( .A(update_period[4]), .B(n178), .C(n357), .Z(n356) );
  GTECH_NOT U394 ( .A(n360), .Z(n357) );
  GTECH_OAI21 U395 ( .A(update_period[6]), .B(n176), .C(n354), .Z(n360) );
  GTECH_NAND2 U396 ( .A(n352), .B(n309), .Z(n354) );
  GTECH_NOT U397 ( .A(n175), .Z(n309) );
  GTECH_NOT U398 ( .A(update_period[7]), .Z(n352) );
  GTECH_OAI22 U399 ( .A(update_period[5]), .B(n177), .C(n361), .D(n362), .Z(
        n355) );
  GTECH_OAI21 U400 ( .A(n325), .B(n363), .C(n364), .Z(n362) );
  GTECH_NAND3 U401 ( .A(n365), .B(update_period[2]), .C(n180), .Z(n364) );
  GTECH_AND3 U402 ( .A(n366), .B(n367), .C(n365), .Z(n361) );
  GTECH_NAND2 U403 ( .A(n363), .B(n325), .Z(n365) );
  GTECH_NOT U404 ( .A(n179), .Z(n325) );
  GTECH_NOT U405 ( .A(update_period[3]), .Z(n363) );
  GTECH_OAI21 U406 ( .A(n368), .B(n329), .C(n187), .Z(n367) );
  GTECH_NOT U407 ( .A(n181), .Z(n329) );
  GTECH_OA21 U408 ( .A(n180), .B(update_period[2]), .C(n369), .Z(n366) );
  GTECH_OR_NOT U409 ( .A(n181), .B(n368), .Z(n369) );
  GTECH_NAND2 U410 ( .A(update_period[0]), .B(n182), .Z(n368) );
  GTECH_OA22 U411 ( .A(n174), .B(update_period[8]), .C(n173), .D(
        update_period[9]), .Z(n338) );
  GTECH_NOT U412 ( .A(n370), .Z(N11) );
  GTECH_AOI21 U413 ( .A(period[2]), .B(n226), .C(reset), .Z(n370) );
  GTECH_NOT U414 ( .A(n371), .Z(N10) );
  GTECH_AOI21 U415 ( .A(period[1]), .B(n226), .C(reset), .Z(n371) );
  GTECH_NOT U416 ( .A(n227), .Z(n226) );
  GTECH_NAND2 U417 ( .A(period_load), .B(n198), .Z(n227) );
  GTECH_NOT U418 ( .A(reset), .Z(n198) );
endmodule

