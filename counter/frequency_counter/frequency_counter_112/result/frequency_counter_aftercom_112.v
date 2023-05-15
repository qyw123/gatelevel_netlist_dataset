
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
         seven_segment0_N8, seven_segment0_N6, n13, n14, n15, n16, n17, n21,
         n23, n26, n27, n29, n31, n33, n88, n167, sub_85_carry_2_, n170, n171,
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
         n359, n360, n361;
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
        .Q(dbg_state[1]), .QN(n15) );
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
  GTECH_FJK1S update_digits_reg ( .J(n88), .K(n88), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n16) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n88), .K(n88), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n170) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n88), .K(n88), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n17) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n88), .K(n88), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n88), .K(n88), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n88), .K(n88), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n88), .K(n88), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n21) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n88), .K(n88), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n88), .K(n88), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n23) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n88), .K(n88), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n88), .K(n88), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n88), .K(n88), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n88), .K(n88), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n88), .K(n88), .TI(N160), .TE(N159), .CP(
        clk), .Q(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n29) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n33) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n88), .K(n88), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n167) );
  GTECH_ZERO U177 ( .Z(n88) );
  GTECH_OR_NOT U178 ( .A(reset), .B(n16), .Z(seven_segment0_N9) );
  GTECH_AND2 U179 ( .A(ten_count[0]), .B(n197), .Z(seven_segment0_N8) );
  GTECH_AND2 U180 ( .A(n167), .B(n197), .Z(seven_segment0_N6) );
  GTECH_AND2 U181 ( .A(unit_count[3]), .B(n197), .Z(seven_segment0_N22) );
  GTECH_AND2 U182 ( .A(unit_count[2]), .B(n197), .Z(seven_segment0_N20) );
  GTECH_AND2 U183 ( .A(unit_count[1]), .B(n197), .Z(seven_segment0_N18) );
  GTECH_AND2 U184 ( .A(unit_count[0]), .B(n197), .Z(seven_segment0_N16) );
  GTECH_AND2 U185 ( .A(n26), .B(n197), .Z(seven_segment0_N14) );
  GTECH_AND2 U186 ( .A(ten_count[2]), .B(n197), .Z(seven_segment0_N12) );
  GTECH_AND2 U187 ( .A(ten_count[1]), .B(n197), .Z(seven_segment0_N10) );
  GTECH_OR_NOT U188 ( .A(n198), .B(n199), .Z(segments[6]) );
  GTECH_NOT U189 ( .A(n200), .Z(n198) );
  GTECH_OR_NOT U190 ( .A(n201), .B(n199), .Z(segments[5]) );
  GTECH_NOT U191 ( .A(n202), .Z(n199) );
  GTECH_OAI21 U192 ( .A(n203), .B(n204), .C(n205), .Z(n202) );
  GTECH_NOT U193 ( .A(n206), .Z(n201) );
  GTECH_NAND3 U194 ( .A(n200), .B(n207), .C(n208), .Z(segments[3]) );
  GTECH_NOT U195 ( .A(segments[4]), .Z(n207) );
  GTECH_OAI21 U196 ( .A(n209), .B(n210), .C(n206), .Z(segments[4]) );
  GTECH_NAND3 U197 ( .A(n205), .B(n204), .C(n211), .Z(segments[2]) );
  GTECH_AND3 U198 ( .A(n212), .B(n213), .C(n208), .Z(n205) );
  GTECH_NAND3 U199 ( .A(n214), .B(n215), .C(n216), .Z(n213) );
  GTECH_NAND3 U200 ( .A(n200), .B(n204), .C(n217), .Z(segments[1]) );
  GTECH_OA21 U201 ( .A(n215), .B(n209), .C(n212), .Z(n217) );
  GTECH_NAND4 U202 ( .A(n215), .B(n214), .C(n218), .D(n203), .Z(n212) );
  GTECH_NAND3 U203 ( .A(n208), .B(n200), .C(n219), .Z(segments[0]) );
  GTECH_OA21 U204 ( .A(n203), .B(n204), .C(n211), .Z(n219) );
  GTECH_NOT U205 ( .A(n220), .Z(n211) );
  GTECH_OAI21 U206 ( .A(n215), .B(n209), .C(n206), .Z(n220) );
  GTECH_OR_NOT U207 ( .A(n210), .B(n221), .Z(n206) );
  GTECH_NOT U208 ( .A(n204), .Z(n221) );
  GTECH_OR_NOT U209 ( .A(n222), .B(n223), .Z(n204) );
  GTECH_OR_NOT U210 ( .A(n214), .B(n216), .Z(n200) );
  GTECH_NOT U211 ( .A(n209), .Z(n216) );
  GTECH_OR_NOT U212 ( .A(n224), .B(n222), .Z(n209) );
  GTECH_NAND4 U213 ( .A(n210), .B(n214), .C(n218), .D(n203), .Z(n208) );
  GTECH_NOT U214 ( .A(n224), .Z(n203) );
  GTECH_MUX2 U215 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n167), .Z(n224) );
  GTECH_NOT U216 ( .A(n222), .Z(n218) );
  GTECH_MUX2 U217 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n167), .Z(n222) );
  GTECH_NOT U218 ( .A(n223), .Z(n214) );
  GTECH_MUX2 U219 ( .A(n33), .B(n29), .S(n167), .Z(n223) );
  GTECH_NOT U220 ( .A(n215), .Z(n210) );
  GTECH_MUX2 U221 ( .A(n31), .B(n27), .S(n167), .Z(n215) );
  GTECH_NOT U222 ( .A(n225), .Z(N9) );
  GTECH_AOI21 U223 ( .A(period[0]), .B(n226), .C(reset), .Z(n225) );
  GTECH_AND2 U224 ( .A(period[11]), .B(n226), .Z(N21) );
  GTECH_OR_NOT U225 ( .A(n226), .B(n197), .Z(N20) );
  GTECH_NOT U226 ( .A(n227), .Z(N19) );
  GTECH_AOI21 U227 ( .A(period[10]), .B(n226), .C(reset), .Z(n227) );
  GTECH_AND2 U228 ( .A(period[9]), .B(n226), .Z(N18) );
  GTECH_AND2 U229 ( .A(period[8]), .B(n226), .Z(N17) );
  GTECH_AND2 U230 ( .A(N170), .B(n228), .Z(N168) );
  GTECH_OR_NOT U231 ( .A(n229), .B(n230), .Z(N167) );
  GTECH_AND2 U232 ( .A(N170), .B(n231), .Z(N166) );
  GTECH_AND2 U233 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U234 ( .A(N170), .B(n232), .Z(N162) );
  GTECH_NOT U235 ( .A(n233), .Z(N170) );
  GTECH_OR_NOT U236 ( .A(reset), .B(n229), .Z(n233) );
  GTECH_NOT U237 ( .A(n234), .Z(n229) );
  GTECH_OAI22 U238 ( .A(n235), .B(n236), .C(n237), .D(n238), .Z(N160) );
  GTECH_MUX2 U239 ( .A(n235), .B(n239), .S(ten_count[2]), .Z(n238) );
  GTECH_OR_NOT U240 ( .A(n26), .B(n240), .Z(n239) );
  GTECH_NOT U241 ( .A(n26), .Z(n235) );
  GTECH_NOT U242 ( .A(n241), .Z(N16) );
  GTECH_AOI21 U243 ( .A(period[7]), .B(n226), .C(reset), .Z(n241) );
  GTECH_OAI21 U244 ( .A(n242), .B(n243), .C(n244), .Z(N159) );
  GTECH_MUX2 U245 ( .A(n245), .B(n246), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U246 ( .A(n236), .Z(n246) );
  GTECH_OR_NOT U247 ( .A(n240), .B(N152), .Z(n236) );
  GTECH_AND2 U248 ( .A(N152), .B(n240), .Z(n245) );
  GTECH_NOT U249 ( .A(n247), .Z(n240) );
  GTECH_OR_NOT U250 ( .A(n248), .B(ten_count[1]), .Z(n247) );
  GTECH_NOT U251 ( .A(ten_count[0]), .Z(n248) );
  GTECH_MUX2 U252 ( .A(n249), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U253 ( .A(N152), .B(ten_count[0]), .Z(n249) );
  GTECH_NOT U254 ( .A(n250), .Z(N154) );
  GTECH_OR_NOT U255 ( .A(ten_count[0]), .B(N152), .Z(n250) );
  GTECH_OR_NOT U256 ( .A(n251), .B(n252), .Z(N151) );
  GTECH_OA21 U257 ( .A(n14), .B(n253), .C(n230), .Z(n252) );
  GTECH_NOT U258 ( .A(n254), .Z(n230) );
  GTECH_OAI21 U259 ( .A(n255), .B(n242), .C(n197), .Z(n254) );
  GTECH_AND2 U260 ( .A(period[6]), .B(n226), .Z(N15) );
  GTECH_OAI21 U261 ( .A(n237), .B(n253), .C(n256), .Z(N148) );
  GTECH_MUX2 U262 ( .A(n257), .B(n258), .S(n183), .Z(n256) );
  GTECH_OR3 U263 ( .A(n184), .B(n259), .C(n260), .Z(n258) );
  GTECH_AND_NOT U264 ( .A(n261), .B(n262), .Z(n257) );
  GTECH_MUX2 U265 ( .A(n237), .B(n259), .S(n184), .Z(n261) );
  GTECH_NAND3 U266 ( .A(n263), .B(n234), .C(n244), .Z(N147) );
  GTECH_OA21 U267 ( .A(n251), .B(n264), .C(n197), .Z(n244) );
  GTECH_OR_NOT U268 ( .A(n14), .B(n253), .Z(n264) );
  GTECH_NAND4 U269 ( .A(n184), .B(n183), .C(n170), .D(n265), .Z(n253) );
  GTECH_NOT U270 ( .A(n15), .Z(n251) );
  GTECH_OR_NOT U271 ( .A(n15), .B(n14), .Z(n234) );
  GTECH_NAND3 U272 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n263) );
  GTECH_MUX2 U273 ( .A(n262), .B(n266), .S(n184), .Z(N146) );
  GTECH_OAI21 U274 ( .A(n260), .B(n259), .C(n267), .Z(n266) );
  GTECH_OAI22 U275 ( .A(n268), .B(n237), .C(n269), .D(n259), .Z(n262) );
  GTECH_NOT U276 ( .A(n260), .Z(n269) );
  GTECH_NAND3 U277 ( .A(n270), .B(n228), .C(n271), .Z(n260) );
  GTECH_NOT U278 ( .A(n170), .Z(n270) );
  GTECH_AND2 U279 ( .A(n265), .B(n170), .Z(n268) );
  GTECH_OR_NOT U280 ( .A(n272), .B(n267), .Z(N144) );
  GTECH_NAND3 U281 ( .A(N152), .B(n265), .C(n170), .Z(n267) );
  GTECH_MUX2 U282 ( .A(n273), .B(n274), .S(n170), .Z(n272) );
  GTECH_AND3 U283 ( .A(n228), .B(N150), .C(n271), .Z(n274) );
  GTECH_NOT U284 ( .A(n23), .Z(n228) );
  GTECH_OAI21 U285 ( .A(n265), .B(n237), .C(n275), .Z(n273) );
  GTECH_OAI21 U286 ( .A(n23), .B(n276), .C(N150), .Z(n275) );
  GTECH_OR_NOT U287 ( .A(n23), .B(n277), .Z(n265) );
  GTECH_OAI21 U288 ( .A(n259), .B(n278), .C(n279), .Z(N142) );
  GTECH_MUX2 U289 ( .A(n280), .B(n281), .S(n23), .Z(n279) );
  GTECH_OR_NOT U290 ( .A(n282), .B(N152), .Z(n281) );
  GTECH_NOT U291 ( .A(n237), .Z(N152) );
  GTECH_XOR2 U292 ( .A(n23), .B(n271), .Z(n278) );
  GTECH_NOT U293 ( .A(n276), .Z(n271) );
  GTECH_NAND3 U294 ( .A(n232), .B(n231), .C(sub_85_carry_2_), .Z(n276) );
  GTECH_NOT U295 ( .A(n21), .Z(n231) );
  GTECH_OR_NOT U296 ( .A(n283), .B(n284), .Z(N140) );
  GTECH_MUX2 U297 ( .A(n285), .B(n286), .S(n21), .Z(n284) );
  GTECH_NAND3 U298 ( .A(sub_85_carry_2_), .B(n232), .C(N150), .Z(n286) );
  GTECH_NOT U299 ( .A(n259), .Z(N150) );
  GTECH_NOT U300 ( .A(n17), .Z(n232) );
  GTECH_AND2 U301 ( .A(n287), .B(n288), .Z(n285) );
  GTECH_MUX2 U302 ( .A(n259), .B(n237), .S(sub_85_carry_2_), .Z(n287) );
  GTECH_NOT U303 ( .A(n280), .Z(n283) );
  GTECH_OR_NOT U304 ( .A(n237), .B(n282), .Z(n280) );
  GTECH_NOT U305 ( .A(n277), .Z(n282) );
  GTECH_OR_NOT U306 ( .A(sub_85_carry_2_), .B(n21), .Z(n277) );
  GTECH_NOT U307 ( .A(n289), .Z(N14) );
  GTECH_AOI21 U308 ( .A(period[5]), .B(n226), .C(reset), .Z(n289) );
  GTECH_MUX2 U309 ( .A(n290), .B(n291), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U310 ( .A(n288), .Z(n291) );
  GTECH_OAI21 U311 ( .A(n17), .B(n259), .C(n237), .Z(n290) );
  GTECH_OAI21 U312 ( .A(n17), .B(n237), .C(n288), .Z(N136) );
  GTECH_OR_NOT U313 ( .A(n259), .B(n17), .Z(n288) );
  GTECH_OR_NOT U314 ( .A(reset), .B(n292), .Z(n259) );
  GTECH_OR_NOT U315 ( .A(N169), .B(n15), .Z(n237) );
  GTECH_OR_NOT U316 ( .A(n14), .B(n197), .Z(N169) );
  GTECH_AND2 U317 ( .A(n293), .B(n294), .Z(N134) );
  GTECH_OAI21 U318 ( .A(n182), .B(n295), .C(n171), .Z(n294) );
  GTECH_OR_NOT U319 ( .A(n292), .B(n197), .Z(N133) );
  GTECH_NOT U320 ( .A(reset), .Z(n197) );
  GTECH_NOT U321 ( .A(n243), .Z(n292) );
  GTECH_OR_NOT U322 ( .A(n255), .B(n15), .Z(n243) );
  GTECH_NOT U323 ( .A(n14), .Z(n255) );
  GTECH_AND2 U324 ( .A(n296), .B(n293), .Z(N132) );
  GTECH_XOR2 U325 ( .A(n295), .B(n182), .Z(n296) );
  GTECH_OR_NOT U326 ( .A(n172), .B(n297), .Z(n295) );
  GTECH_NOT U327 ( .A(n298), .Z(n297) );
  GTECH_AND2 U328 ( .A(n299), .B(n293), .Z(N130) );
  GTECH_XOR2 U329 ( .A(n298), .B(n172), .Z(n299) );
  GTECH_OR_NOT U330 ( .A(n173), .B(n300), .Z(n298) );
  GTECH_NOT U331 ( .A(n301), .Z(n300) );
  GTECH_AND2 U332 ( .A(period[4]), .B(n226), .Z(N13) );
  GTECH_AND2 U333 ( .A(n302), .B(n293), .Z(N128) );
  GTECH_XOR2 U334 ( .A(n301), .B(n173), .Z(n302) );
  GTECH_OR_NOT U335 ( .A(n174), .B(n303), .Z(n301) );
  GTECH_NOT U336 ( .A(n304), .Z(n303) );
  GTECH_AND2 U337 ( .A(n305), .B(n293), .Z(N126) );
  GTECH_XOR2 U338 ( .A(n304), .B(n174), .Z(n305) );
  GTECH_OR_NOT U339 ( .A(n175), .B(n306), .Z(n304) );
  GTECH_NOT U340 ( .A(n307), .Z(n306) );
  GTECH_AND2 U341 ( .A(n308), .B(n293), .Z(N124) );
  GTECH_XOR2 U342 ( .A(n307), .B(n175), .Z(n308) );
  GTECH_OR_NOT U343 ( .A(n176), .B(n309), .Z(n307) );
  GTECH_NOT U344 ( .A(n310), .Z(n309) );
  GTECH_AND2 U345 ( .A(n311), .B(n293), .Z(N122) );
  GTECH_XOR2 U346 ( .A(n310), .B(n176), .Z(n311) );
  GTECH_OR_NOT U347 ( .A(n177), .B(n312), .Z(n310) );
  GTECH_NOT U348 ( .A(n313), .Z(n312) );
  GTECH_AND2 U349 ( .A(n314), .B(n293), .Z(N120) );
  GTECH_XOR2 U350 ( .A(n313), .B(n177), .Z(n314) );
  GTECH_OR_NOT U351 ( .A(n178), .B(n315), .Z(n313) );
  GTECH_NOT U352 ( .A(n316), .Z(n315) );
  GTECH_NOT U353 ( .A(n317), .Z(N12) );
  GTECH_AOI21 U354 ( .A(period[3]), .B(n226), .C(reset), .Z(n317) );
  GTECH_AND2 U355 ( .A(n318), .B(n293), .Z(N118) );
  GTECH_XOR2 U356 ( .A(n316), .B(n178), .Z(n318) );
  GTECH_NAND3 U357 ( .A(n319), .B(n320), .C(n321), .Z(n316) );
  GTECH_NOT U358 ( .A(n179), .Z(n321) );
  GTECH_OAI22 U359 ( .A(n179), .B(n322), .C(n323), .D(n324), .Z(N116) );
  GTECH_MUX2 U360 ( .A(n319), .B(n325), .S(n179), .Z(n324) );
  GTECH_OR_NOT U361 ( .A(n181), .B(n319), .Z(n325) );
  GTECH_MUX2 U362 ( .A(N112), .B(n326), .S(n180), .Z(N114) );
  GTECH_AND2 U363 ( .A(n293), .B(n320), .Z(n326) );
  GTECH_NOT U364 ( .A(n322), .Z(N112) );
  GTECH_OR_NOT U365 ( .A(n320), .B(n293), .Z(n322) );
  GTECH_NOT U366 ( .A(n323), .Z(n293) );
  GTECH_OR_NOT U367 ( .A(reset), .B(n242), .Z(n323) );
  GTECH_NOT U368 ( .A(n327), .Z(n242) );
  GTECH_AOI222 U369 ( .A(n328), .B(n329), .C(update_period[11]), .D(n171), .E(
        n330), .F(n331), .Z(n327) );
  GTECH_AO22 U370 ( .A(n182), .B(update_period[10]), .C(n332), .D(n333), .Z(
        n330) );
  GTECH_AO22 U371 ( .A(n172), .B(update_period[9]), .C(n334), .D(n173), .Z(
        n333) );
  GTECH_AND2 U372 ( .A(n335), .B(update_period[8]), .Z(n334) );
  GTECH_AND3 U373 ( .A(n331), .B(n335), .C(n332), .Z(n329) );
  GTECH_OR_NOT U374 ( .A(n182), .B(n336), .Z(n332) );
  GTECH_NOT U375 ( .A(update_period[10]), .Z(n336) );
  GTECH_OR_NOT U376 ( .A(n172), .B(n337), .Z(n335) );
  GTECH_NOT U377 ( .A(update_period[9]), .Z(n337) );
  GTECH_OR_NOT U378 ( .A(n171), .B(n338), .Z(n331) );
  GTECH_NOT U379 ( .A(update_period[11]), .Z(n338) );
  GTECH_OA22 U380 ( .A(n173), .B(update_period[8]), .C(n339), .D(n340), .Z(
        n328) );
  GTECH_AO22 U381 ( .A(n341), .B(n175), .C(n174), .D(update_period[7]), .Z(
        n340) );
  GTECH_AND2 U382 ( .A(n342), .B(update_period[6]), .Z(n341) );
  GTECH_OAI2N2 U383 ( .A(n343), .B(n344), .C(n345), .D(n346), .Z(n339) );
  GTECH_ADD_ABC U384 ( .A(n347), .B(n176), .C(update_period[5]), .COUT(n346)
         );
  GTECH_AND2 U385 ( .A(update_period[4]), .B(n177), .Z(n347) );
  GTECH_OAI21 U386 ( .A(update_period[4]), .B(n177), .C(n345), .Z(n344) );
  GTECH_NOT U387 ( .A(n348), .Z(n345) );
  GTECH_OAI21 U388 ( .A(update_period[6]), .B(n175), .C(n342), .Z(n348) );
  GTECH_OR_NOT U389 ( .A(n174), .B(n349), .Z(n342) );
  GTECH_NOT U390 ( .A(update_period[7]), .Z(n349) );
  GTECH_OAI22 U391 ( .A(update_period[5]), .B(n176), .C(n350), .D(n351), .Z(
        n343) );
  GTECH_AO22 U392 ( .A(n352), .B(n179), .C(n178), .D(update_period[3]), .Z(
        n351) );
  GTECH_AND2 U393 ( .A(n353), .B(update_period[2]), .Z(n352) );
  GTECH_AND3 U394 ( .A(n354), .B(n355), .C(n353), .Z(n350) );
  GTECH_OR_NOT U395 ( .A(n178), .B(n356), .Z(n353) );
  GTECH_NOT U396 ( .A(update_period[3]), .Z(n356) );
  GTECH_OAI21 U397 ( .A(n357), .B(n319), .C(n186), .Z(n355) );
  GTECH_NOT U398 ( .A(n180), .Z(n319) );
  GTECH_OA21 U399 ( .A(n179), .B(update_period[2]), .C(n358), .Z(n354) );
  GTECH_OR_NOT U400 ( .A(n180), .B(n357), .Z(n358) );
  GTECH_OR_NOT U401 ( .A(n320), .B(update_period[0]), .Z(n357) );
  GTECH_NOT U402 ( .A(n181), .Z(n320) );
  GTECH_NOT U403 ( .A(n359), .Z(N11) );
  GTECH_AOI21 U404 ( .A(period[2]), .B(n226), .C(reset), .Z(n359) );
  GTECH_NOT U405 ( .A(n360), .Z(N10) );
  GTECH_AOI21 U406 ( .A(period[1]), .B(n226), .C(reset), .Z(n360) );
  GTECH_NOT U407 ( .A(n361), .Z(n226) );
  GTECH_OR_NOT U408 ( .A(reset), .B(period_load), .Z(n361) );
endmodule

