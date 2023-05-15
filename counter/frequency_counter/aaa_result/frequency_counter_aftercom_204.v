
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
         n28, n32, n88, n166, n169, sub_85_carry_2_, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
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
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367;
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
        .CP(clk), .Q(update_period[1]) );
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
        seven_segment0_unit_count_reg[0]) );
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
        seven_segment0_ten_count_reg[0]) );
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
  GTECH_AND2 U180 ( .A(ten_count[0]), .B(n197), .Z(seven_segment0_N8) );
  GTECH_AND2 U181 ( .A(n166), .B(n197), .Z(seven_segment0_N6) );
  GTECH_AND2 U182 ( .A(unit_count[3]), .B(n197), .Z(seven_segment0_N22) );
  GTECH_AND2 U183 ( .A(unit_count[2]), .B(n197), .Z(seven_segment0_N20) );
  GTECH_AND2 U184 ( .A(unit_count[1]), .B(n197), .Z(seven_segment0_N18) );
  GTECH_AND2 U185 ( .A(unit_count[0]), .B(n197), .Z(seven_segment0_N16) );
  GTECH_AND2 U186 ( .A(ten_count[3]), .B(n197), .Z(seven_segment0_N14) );
  GTECH_AND2 U187 ( .A(ten_count[2]), .B(n197), .Z(seven_segment0_N12) );
  GTECH_AND2 U188 ( .A(ten_count[1]), .B(n197), .Z(seven_segment0_N10) );
  GTECH_NAND2 U189 ( .A(n198), .B(n199), .Z(segments[6]) );
  GTECH_NOT U190 ( .A(n200), .Z(segments[5]) );
  GTECH_NAND3 U191 ( .A(n199), .B(n201), .C(n202), .Z(segments[3]) );
  GTECH_NOT U192 ( .A(segments[4]), .Z(n201) );
  GTECH_OA21 U193 ( .A(n203), .B(n204), .C(n205), .Z(segments[4]) );
  GTECH_NOT U194 ( .A(n206), .Z(n204) );
  GTECH_NAND2 U195 ( .A(n207), .B(n200), .Z(segments[2]) );
  GTECH_OA21 U196 ( .A(n208), .B(n206), .C(n198), .Z(n200) );
  GTECH_AND2 U197 ( .A(n209), .B(n202), .Z(n198) );
  GTECH_MUX2 U198 ( .A(n206), .B(n210), .S(n211), .Z(n209) );
  GTECH_NAND2 U199 ( .A(n205), .B(n212), .Z(n210) );
  GTECH_NAND3 U200 ( .A(n213), .B(n199), .C(n207), .Z(segments[1]) );
  GTECH_OA21 U201 ( .A(n214), .B(n205), .C(n206), .Z(n207) );
  GTECH_NAND3 U202 ( .A(n215), .B(n211), .C(n205), .Z(n213) );
  GTECH_NAND3 U203 ( .A(n202), .B(n199), .C(n216), .Z(segments[0]) );
  GTECH_OA22 U204 ( .A(n217), .B(n206), .C(n214), .D(n205), .Z(n216) );
  GTECH_NOT U205 ( .A(n208), .Z(n205) );
  GTECH_NAND2 U206 ( .A(n218), .B(n215), .Z(n206) );
  GTECH_NAND2 U207 ( .A(n203), .B(n218), .Z(n199) );
  GTECH_NOT U208 ( .A(n214), .Z(n203) );
  GTECH_NAND2 U209 ( .A(n219), .B(n211), .Z(n214) );
  GTECH_NAND3 U210 ( .A(n212), .B(n215), .C(n217), .Z(n202) );
  GTECH_NOT U211 ( .A(n220), .Z(n217) );
  GTECH_NAND2 U212 ( .A(n208), .B(n211), .Z(n220) );
  GTECH_NOT U213 ( .A(n221), .Z(n211) );
  GTECH_MUX2 U214 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n166), .Z(n221) );
  GTECH_MUX2 U215 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n166), .Z(n208) );
  GTECH_NOT U216 ( .A(n219), .Z(n215) );
  GTECH_MUX2 U217 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n166), .Z(n219) );
  GTECH_NOT U218 ( .A(n218), .Z(n212) );
  GTECH_MUX2 U219 ( .A(n32), .B(n28), .S(n166), .Z(n218) );
  GTECH_NOT U220 ( .A(n222), .Z(N9) );
  GTECH_AOI21 U221 ( .A(period[0]), .B(n223), .C(reset), .Z(n222) );
  GTECH_AND2 U222 ( .A(period[11]), .B(n223), .Z(N21) );
  GTECH_NAND2 U223 ( .A(n197), .B(n224), .Z(N20) );
  GTECH_NOT U224 ( .A(n225), .Z(N19) );
  GTECH_AOI21 U225 ( .A(period[10]), .B(n223), .C(reset), .Z(n225) );
  GTECH_AND2 U226 ( .A(period[9]), .B(n223), .Z(N18) );
  GTECH_AND2 U227 ( .A(period[8]), .B(n223), .Z(N17) );
  GTECH_AND2 U228 ( .A(N170), .B(n226), .Z(N168) );
  GTECH_NAND2 U229 ( .A(n227), .B(n228), .Z(N167) );
  GTECH_AND2 U230 ( .A(N170), .B(n229), .Z(N166) );
  GTECH_AND2 U231 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U232 ( .A(N170), .B(n230), .Z(N162) );
  GTECH_NOT U233 ( .A(n231), .Z(N170) );
  GTECH_NAND2 U234 ( .A(n232), .B(n197), .Z(n231) );
  GTECH_NOT U235 ( .A(n228), .Z(n232) );
  GTECH_OAI22 U236 ( .A(n233), .B(n234), .C(n235), .D(n236), .Z(N160) );
  GTECH_MUX2 U237 ( .A(n233), .B(n237), .S(ten_count[2]), .Z(n236) );
  GTECH_NAND2 U238 ( .A(n238), .B(n233), .Z(n237) );
  GTECH_NOT U239 ( .A(ten_count[3]), .Z(n233) );
  GTECH_NOT U240 ( .A(n239), .Z(N16) );
  GTECH_AOI21 U241 ( .A(period[7]), .B(n223), .C(reset), .Z(n239) );
  GTECH_NOT U242 ( .A(n240), .Z(N159) );
  GTECH_OA21 U243 ( .A(n241), .B(n242), .C(n243), .Z(n240) );
  GTECH_MUX2 U244 ( .A(n244), .B(n245), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U245 ( .A(n234), .Z(n245) );
  GTECH_NAND2 U246 ( .A(N152), .B(n246), .Z(n234) );
  GTECH_AND2 U247 ( .A(N152), .B(n238), .Z(n244) );
  GTECH_NOT U248 ( .A(n246), .Z(n238) );
  GTECH_NAND2 U249 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n246) );
  GTECH_MUX2 U250 ( .A(n247), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U251 ( .A(N152), .B(ten_count[0]), .Z(n247) );
  GTECH_NOT U252 ( .A(n248), .Z(N154) );
  GTECH_NAND2 U253 ( .A(N152), .B(n249), .Z(n248) );
  GTECH_NOT U254 ( .A(ten_count[0]), .Z(n249) );
  GTECH_NAND2 U255 ( .A(n250), .B(n169), .Z(N151) );
  GTECH_OA21 U256 ( .A(n14), .B(n251), .C(n227), .Z(n250) );
  GTECH_OA21 U257 ( .A(n252), .B(n241), .C(n197), .Z(n227) );
  GTECH_AND2 U258 ( .A(period[6]), .B(n223), .Z(N15) );
  GTECH_NOT U259 ( .A(n253), .Z(N148) );
  GTECH_OA21 U260 ( .A(n251), .B(n235), .C(n254), .Z(n253) );
  GTECH_MUX2 U261 ( .A(n255), .B(n256), .S(n183), .Z(n254) );
  GTECH_OR3 U262 ( .A(n184), .B(n257), .C(n258), .Z(n256) );
  GTECH_AND2 U263 ( .A(n259), .B(n260), .Z(n255) );
  GTECH_MUX2 U264 ( .A(n235), .B(n257), .S(n184), .Z(n259) );
  GTECH_NAND3 U265 ( .A(n261), .B(n228), .C(n243), .Z(N147) );
  GTECH_AND2 U266 ( .A(n197), .B(n262), .Z(n243) );
  GTECH_NAND3 U267 ( .A(n252), .B(n169), .C(n251), .Z(n262) );
  GTECH_NAND4 U268 ( .A(n184), .B(n183), .C(n170), .D(n263), .Z(n251) );
  GTECH_NAND2 U269 ( .A(n14), .B(n264), .Z(n228) );
  GTECH_NOT U270 ( .A(n169), .Z(n264) );
  GTECH_NAND3 U271 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n261) );
  GTECH_NOT U272 ( .A(n265), .Z(N146) );
  GTECH_MUX2 U273 ( .A(n260), .B(n266), .S(n184), .Z(n265) );
  GTECH_OA21 U274 ( .A(n258), .B(n257), .C(n267), .Z(n266) );
  GTECH_OA22 U275 ( .A(n268), .B(n235), .C(n269), .D(n257), .Z(n260) );
  GTECH_NOT U276 ( .A(n258), .Z(n269) );
  GTECH_NAND3 U277 ( .A(n270), .B(n226), .C(n271), .Z(n258) );
  GTECH_NOT U278 ( .A(n170), .Z(n270) );
  GTECH_AND2 U279 ( .A(n170), .B(n263), .Z(n268) );
  GTECH_NAND2 U280 ( .A(n272), .B(n267), .Z(N144) );
  GTECH_NAND3 U281 ( .A(N152), .B(n263), .C(n170), .Z(n267) );
  GTECH_MUX2 U282 ( .A(n273), .B(n274), .S(n170), .Z(n272) );
  GTECH_NAND3 U283 ( .A(n271), .B(n226), .C(N150), .Z(n274) );
  GTECH_OA22 U284 ( .A(n275), .B(n257), .C(n235), .D(n263), .Z(n273) );
  GTECH_NAND2 U285 ( .A(n276), .B(n226), .Z(n263) );
  GTECH_AND2 U286 ( .A(n271), .B(n226), .Z(n275) );
  GTECH_NOT U287 ( .A(n22), .Z(n226) );
  GTECH_NOT U288 ( .A(n277), .Z(N142) );
  GTECH_OA21 U289 ( .A(n257), .B(n278), .C(n279), .Z(n277) );
  GTECH_MUX2 U290 ( .A(n280), .B(n281), .S(n22), .Z(n279) );
  GTECH_NAND2 U291 ( .A(N152), .B(n276), .Z(n281) );
  GTECH_XOR2 U292 ( .A(n22), .B(n271), .Z(n278) );
  GTECH_NOT U293 ( .A(n282), .Z(n271) );
  GTECH_NAND3 U294 ( .A(n230), .B(n229), .C(sub_85_carry_2_), .Z(n282) );
  GTECH_NOT U295 ( .A(n20), .Z(n229) );
  GTECH_NAND2 U296 ( .A(n283), .B(n280), .Z(N140) );
  GTECH_NAND2 U297 ( .A(n284), .B(N152), .Z(n280) );
  GTECH_NOT U298 ( .A(n235), .Z(N152) );
  GTECH_NOT U299 ( .A(n276), .Z(n284) );
  GTECH_NAND2 U300 ( .A(n20), .B(n285), .Z(n276) );
  GTECH_NOT U301 ( .A(sub_85_carry_2_), .Z(n285) );
  GTECH_MUX2 U302 ( .A(n286), .B(n287), .S(n20), .Z(n283) );
  GTECH_NAND3 U303 ( .A(sub_85_carry_2_), .B(n230), .C(N150), .Z(n287) );
  GTECH_NOT U304 ( .A(n16), .Z(n230) );
  GTECH_AND2 U305 ( .A(n288), .B(n289), .Z(n286) );
  GTECH_MUX2 U306 ( .A(n257), .B(n235), .S(sub_85_carry_2_), .Z(n288) );
  GTECH_NOT U307 ( .A(n290), .Z(N14) );
  GTECH_AOI21 U308 ( .A(period[5]), .B(n223), .C(reset), .Z(n290) );
  GTECH_NOT U309 ( .A(n291), .Z(N138) );
  GTECH_MUX2 U310 ( .A(n292), .B(n289), .S(sub_85_carry_2_), .Z(n291) );
  GTECH_OA21 U311 ( .A(n16), .B(n257), .C(n235), .Z(n292) );
  GTECH_NOT U312 ( .A(n293), .Z(N136) );
  GTECH_OA21 U313 ( .A(n16), .B(n235), .C(n289), .Z(n293) );
  GTECH_NAND2 U314 ( .A(n16), .B(N150), .Z(n289) );
  GTECH_NOT U315 ( .A(n257), .Z(N150) );
  GTECH_NAND2 U316 ( .A(n294), .B(n197), .Z(n257) );
  GTECH_NOT U317 ( .A(n242), .Z(n294) );
  GTECH_NAND2 U318 ( .A(n169), .B(n295), .Z(n235) );
  GTECH_NOT U319 ( .A(N169), .Z(n295) );
  GTECH_NAND2 U320 ( .A(n197), .B(n252), .Z(N169) );
  GTECH_NOT U321 ( .A(n14), .Z(n252) );
  GTECH_OA21 U322 ( .A(n296), .B(n297), .C(n298), .Z(N134) );
  GTECH_AND_NOT U323 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NAND2 U324 ( .A(n197), .B(n242), .Z(N133) );
  GTECH_NAND2 U325 ( .A(n169), .B(n14), .Z(n242) );
  GTECH_AND2 U326 ( .A(n301), .B(n298), .Z(N132) );
  GTECH_XOR2 U327 ( .A(n300), .B(n182), .Z(n301) );
  GTECH_NAND2 U328 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_NOT U329 ( .A(n304), .Z(n302) );
  GTECH_AND2 U330 ( .A(n305), .B(n298), .Z(N130) );
  GTECH_XOR2 U331 ( .A(n304), .B(n172), .Z(n305) );
  GTECH_NAND2 U332 ( .A(n306), .B(n307), .Z(n304) );
  GTECH_NOT U333 ( .A(n173), .Z(n307) );
  GTECH_NOT U334 ( .A(n308), .Z(n306) );
  GTECH_AND2 U335 ( .A(period[4]), .B(n223), .Z(N13) );
  GTECH_AND2 U336 ( .A(n309), .B(n298), .Z(N128) );
  GTECH_XOR2 U337 ( .A(n308), .B(n173), .Z(n309) );
  GTECH_NAND2 U338 ( .A(n310), .B(n311), .Z(n308) );
  GTECH_NOT U339 ( .A(n312), .Z(n310) );
  GTECH_AND2 U340 ( .A(n313), .B(n298), .Z(N126) );
  GTECH_XOR2 U341 ( .A(n312), .B(n174), .Z(n313) );
  GTECH_NAND2 U342 ( .A(n314), .B(n315), .Z(n312) );
  GTECH_NOT U343 ( .A(n316), .Z(n314) );
  GTECH_AND2 U344 ( .A(n317), .B(n298), .Z(N124) );
  GTECH_XOR2 U345 ( .A(n316), .B(n175), .Z(n317) );
  GTECH_NAND2 U346 ( .A(n318), .B(n319), .Z(n316) );
  GTECH_NOT U347 ( .A(n176), .Z(n319) );
  GTECH_NOT U348 ( .A(n320), .Z(n318) );
  GTECH_AND2 U349 ( .A(n321), .B(n298), .Z(N122) );
  GTECH_XOR2 U350 ( .A(n320), .B(n176), .Z(n321) );
  GTECH_NAND2 U351 ( .A(n322), .B(n323), .Z(n320) );
  GTECH_NOT U352 ( .A(n324), .Z(n322) );
  GTECH_AND2 U353 ( .A(n325), .B(n298), .Z(N120) );
  GTECH_XOR2 U354 ( .A(n324), .B(n177), .Z(n325) );
  GTECH_NAND2 U355 ( .A(n326), .B(n327), .Z(n324) );
  GTECH_NOT U356 ( .A(n178), .Z(n327) );
  GTECH_NOT U357 ( .A(n328), .Z(n326) );
  GTECH_NOT U358 ( .A(n329), .Z(N12) );
  GTECH_AOI21 U359 ( .A(period[3]), .B(n223), .C(reset), .Z(n329) );
  GTECH_AND2 U360 ( .A(n330), .B(n298), .Z(N118) );
  GTECH_XOR2 U361 ( .A(n328), .B(n178), .Z(n330) );
  GTECH_NAND3 U362 ( .A(n331), .B(n332), .C(n333), .Z(n328) );
  GTECH_OAI22 U363 ( .A(n179), .B(n334), .C(n335), .D(n336), .Z(N116) );
  GTECH_MUX2 U364 ( .A(n331), .B(n337), .S(n179), .Z(n336) );
  GTECH_NAND2 U365 ( .A(n331), .B(n332), .Z(n337) );
  GTECH_NOT U366 ( .A(n180), .Z(n331) );
  GTECH_MUX2 U367 ( .A(N112), .B(n338), .S(n180), .Z(N114) );
  GTECH_AND2 U368 ( .A(n298), .B(n332), .Z(n338) );
  GTECH_NOT U369 ( .A(n181), .Z(n332) );
  GTECH_NOT U370 ( .A(n334), .Z(N112) );
  GTECH_NAND2 U371 ( .A(n298), .B(n181), .Z(n334) );
  GTECH_NOT U372 ( .A(n335), .Z(n298) );
  GTECH_NAND2 U373 ( .A(n241), .B(n197), .Z(n335) );
  GTECH_NAND2 U374 ( .A(n339), .B(n340), .Z(n241) );
  GTECH_NAND4 U375 ( .A(n341), .B(n342), .C(n343), .D(n344), .Z(n340) );
  GTECH_OA21 U376 ( .A(n173), .B(update_period[8]), .C(n345), .Z(n344) );
  GTECH_AO22 U377 ( .A(n346), .B(n347), .C(n348), .D(n349), .Z(n342) );
  GTECH_OA21 U378 ( .A(n176), .B(update_period[5]), .C(n346), .Z(n349) );
  GTECH_AOI21 U379 ( .A(n350), .B(n315), .C(n351), .Z(n348) );
  GTECH_AOI222 U380 ( .A(update_period[4]), .B(n177), .C(update_period[5]), 
        .D(n176), .E(n352), .F(n353), .Z(n351) );
  GTECH_OR_NOT U381 ( .A(update_period[4]), .B(n323), .Z(n353) );
  GTECH_NOT U382 ( .A(n177), .Z(n323) );
  GTECH_OA21 U383 ( .A(n178), .B(update_period[3]), .C(n354), .Z(n352) );
  GTECH_NOT U384 ( .A(n355), .Z(n354) );
  GTECH_AOI222 U385 ( .A(update_period[2]), .B(n179), .C(update_period[3]), 
        .D(n178), .E(n356), .F(n357), .Z(n355) );
  GTECH_AO22 U386 ( .A(update_period[1]), .B(n180), .C(n358), .D(
        update_period[0]), .Z(n357) );
  GTECH_OA21 U387 ( .A(update_period[1]), .B(n180), .C(n181), .Z(n358) );
  GTECH_OR_NOT U388 ( .A(update_period[2]), .B(n333), .Z(n356) );
  GTECH_NOT U389 ( .A(n179), .Z(n333) );
  GTECH_OAI22 U390 ( .A(n359), .B(n311), .C(n350), .D(n315), .Z(n347) );
  GTECH_NOT U391 ( .A(n175), .Z(n315) );
  GTECH_NOT U392 ( .A(update_period[6]), .Z(n350) );
  GTECH_NAND2 U393 ( .A(n311), .B(n359), .Z(n346) );
  GTECH_NOT U394 ( .A(update_period[7]), .Z(n359) );
  GTECH_NOT U395 ( .A(n174), .Z(n311) );
  GTECH_OR_NOT U396 ( .A(n360), .B(n343), .Z(n339) );
  GTECH_NAND2 U397 ( .A(n296), .B(n361), .Z(n343) );
  GTECH_NOT U398 ( .A(update_period[11]), .Z(n361) );
  GTECH_NOT U399 ( .A(n171), .Z(n296) );
  GTECH_AOI222 U400 ( .A(update_period[10]), .B(n182), .C(update_period[11]), 
        .D(n171), .E(n362), .F(n363), .Z(n360) );
  GTECH_OAI2N2 U401 ( .A(n303), .B(n364), .C(update_period[8]), .D(n173), .Z(
        n363) );
  GTECH_AND2 U402 ( .A(n345), .B(n341), .Z(n362) );
  GTECH_NAND2 U403 ( .A(n303), .B(n364), .Z(n341) );
  GTECH_NOT U404 ( .A(update_period[9]), .Z(n364) );
  GTECH_NOT U405 ( .A(n172), .Z(n303) );
  GTECH_NAND2 U406 ( .A(n365), .B(n299), .Z(n345) );
  GTECH_NOT U407 ( .A(n182), .Z(n299) );
  GTECH_NOT U408 ( .A(update_period[10]), .Z(n365) );
  GTECH_NOT U409 ( .A(n366), .Z(N11) );
  GTECH_AOI21 U410 ( .A(period[2]), .B(n223), .C(reset), .Z(n366) );
  GTECH_NOT U411 ( .A(n367), .Z(N10) );
  GTECH_AOI21 U412 ( .A(period[1]), .B(n223), .C(reset), .Z(n367) );
  GTECH_NOT U413 ( .A(n224), .Z(n223) );
  GTECH_NAND2 U414 ( .A(period_load), .B(n197), .Z(n224) );
  GTECH_NOT U415 ( .A(reset), .Z(n197) );
endmodule

