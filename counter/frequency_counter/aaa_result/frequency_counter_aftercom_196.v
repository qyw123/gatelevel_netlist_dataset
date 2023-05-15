
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
         n27, n28, n29, n31, n32, n33, n86, n164, n167, sub_85_carry_2_, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n184, n195, n196, n197, n198, n199, n200, n201,
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
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n86), .K(n86), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n86), .K(n86), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n86), .K(n86), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n86), .K(n86), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n86), .K(n86), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n86), .K(n86), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n86), .K(n86), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n86), .K(n86), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n86), .K(n86), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n86), .K(n86), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n86), .K(n86), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n184) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n86), .K(n86), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n86), .K(n86), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n182) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n86), .K(n86), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n181) );
  GTECH_FJK1S state_reg_0_ ( .J(n86), .K(n86), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n86), .K(n86), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n167) );
  GTECH_FJK1S update_digits_reg ( .J(n86), .K(n86), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n86), .K(n86), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n180) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n86), .K(n86), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n179) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n86), .K(n86), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n178) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n86), .K(n86), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n177) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n86), .K(n86), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n176) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n86), .K(n86), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n86), .K(n86), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n86), .K(n86), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n86), .K(n86), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n86), .K(n86), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n86), .K(n86), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n86), .K(n86), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n169) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n86), .K(n86), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n168) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n86), .K(n86), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n86), .K(n86), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n86), .K(n86), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n86), .K(n86), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n86), .K(n86), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n86), .K(n86), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n86), .K(n86), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n86), .K(n86), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n86), .K(n86), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n86), .K(n86), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n86), .K(n86), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n86), .K(n86), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n86), .K(n86), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n86), .K(n86), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n86), .K(n86), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n28) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n86), .K(n86), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n29) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n86), .K(n86), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n86), .K(n86), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n86), .K(n86), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n32) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n86), .K(n86), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n33) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n164) );
  GTECH_ZERO U176 ( .Z(n86) );
  GTECH_NAND2 U177 ( .A(n15), .B(n195), .Z(seven_segment0_N9) );
  GTECH_AND2 U178 ( .A(ten_count[0]), .B(n195), .Z(seven_segment0_N8) );
  GTECH_AND2 U179 ( .A(n164), .B(n195), .Z(seven_segment0_N6) );
  GTECH_AND2 U180 ( .A(unit_count[3]), .B(n195), .Z(seven_segment0_N22) );
  GTECH_AND2 U181 ( .A(unit_count[2]), .B(n195), .Z(seven_segment0_N20) );
  GTECH_AND2 U182 ( .A(unit_count[1]), .B(n195), .Z(seven_segment0_N18) );
  GTECH_AND2 U183 ( .A(unit_count[0]), .B(n195), .Z(seven_segment0_N16) );
  GTECH_AND2 U184 ( .A(ten_count[3]), .B(n195), .Z(seven_segment0_N14) );
  GTECH_AND2 U185 ( .A(ten_count[2]), .B(n195), .Z(seven_segment0_N12) );
  GTECH_AND2 U186 ( .A(ten_count[1]), .B(n195), .Z(seven_segment0_N10) );
  GTECH_NAND2 U187 ( .A(n196), .B(n197), .Z(segments[6]) );
  GTECH_NOT U188 ( .A(n198), .Z(segments[4]) );
  GTECH_NAND3 U189 ( .A(n197), .B(n198), .C(n199), .Z(segments[3]) );
  GTECH_OAI21 U190 ( .A(n200), .B(n201), .C(n202), .Z(n198) );
  GTECH_NOT U191 ( .A(n203), .Z(n201) );
  GTECH_NAND2 U192 ( .A(n204), .B(n205), .Z(segments[2]) );
  GTECH_NOT U193 ( .A(segments[5]), .Z(n205) );
  GTECH_OAI21 U194 ( .A(n206), .B(n203), .C(n196), .Z(segments[5]) );
  GTECH_AND2 U195 ( .A(n207), .B(n199), .Z(n196) );
  GTECH_OA21 U196 ( .A(n208), .B(n203), .C(n209), .Z(n207) );
  GTECH_NAND3 U197 ( .A(n210), .B(n208), .C(n202), .Z(n209) );
  GTECH_NAND3 U198 ( .A(n211), .B(n197), .C(n204), .Z(segments[1]) );
  GTECH_NOT U199 ( .A(n212), .Z(n204) );
  GTECH_OAI21 U200 ( .A(n213), .B(n202), .C(n203), .Z(n212) );
  GTECH_NAND3 U201 ( .A(n208), .B(n202), .C(n214), .Z(n211) );
  GTECH_NAND3 U202 ( .A(n199), .B(n197), .C(n215), .Z(segments[0]) );
  GTECH_OA22 U203 ( .A(n216), .B(n203), .C(n213), .D(n202), .Z(n215) );
  GTECH_NAND2 U204 ( .A(n214), .B(n217), .Z(n203) );
  GTECH_NAND2 U205 ( .A(n200), .B(n217), .Z(n197) );
  GTECH_NOT U206 ( .A(n210), .Z(n217) );
  GTECH_NOT U207 ( .A(n213), .Z(n200) );
  GTECH_NAND2 U208 ( .A(n208), .B(n218), .Z(n213) );
  GTECH_NAND3 U209 ( .A(n214), .B(n210), .C(n216), .Z(n199) );
  GTECH_NOT U210 ( .A(n219), .Z(n216) );
  GTECH_NAND2 U211 ( .A(n206), .B(n208), .Z(n219) );
  GTECH_NOT U212 ( .A(n220), .Z(n208) );
  GTECH_OAI22 U213 ( .A(n221), .B(n29), .C(n164), .D(n33), .Z(n220) );
  GTECH_NOT U214 ( .A(n202), .Z(n206) );
  GTECH_OAI22 U215 ( .A(seven_segment0_ten_count_reg[0]), .B(n164), .C(
        seven_segment0_unit_count_reg[0]), .D(n221), .Z(n202) );
  GTECH_OAI22 U216 ( .A(n221), .B(n28), .C(n164), .D(n32), .Z(n210) );
  GTECH_NOT U217 ( .A(n218), .Z(n214) );
  GTECH_OAI22 U218 ( .A(n221), .B(n27), .C(n164), .D(n31), .Z(n218) );
  GTECH_NOT U219 ( .A(n164), .Z(n221) );
  GTECH_NOT U220 ( .A(n222), .Z(N9) );
  GTECH_AOI21 U221 ( .A(period[0]), .B(n223), .C(reset), .Z(n222) );
  GTECH_AND2 U222 ( .A(period[11]), .B(n223), .Z(N21) );
  GTECH_NAND2 U223 ( .A(n195), .B(n224), .Z(N20) );
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
  GTECH_NAND2 U234 ( .A(n232), .B(n195), .Z(n231) );
  GTECH_NOT U235 ( .A(n228), .Z(n232) );
  GTECH_OAI22 U236 ( .A(n233), .B(n234), .C(n235), .D(n236), .Z(N160) );
  GTECH_OAI21 U237 ( .A(ten_count[3]), .B(ten_count[2]), .C(n237), .Z(n236) );
  GTECH_OAI21 U238 ( .A(ten_count[3]), .B(n238), .C(ten_count[2]), .Z(n237) );
  GTECH_NOT U239 ( .A(ten_count[3]), .Z(n233) );
  GTECH_NOT U240 ( .A(n239), .Z(N16) );
  GTECH_AOI21 U241 ( .A(period[7]), .B(n223), .C(reset), .Z(n239) );
  GTECH_OAI21 U242 ( .A(n240), .B(n241), .C(n242), .Z(N159) );
  GTECH_OAI21 U243 ( .A(n243), .B(n234), .C(n244), .Z(N158) );
  GTECH_OR3 U244 ( .A(n238), .B(ten_count[2]), .C(n235), .Z(n244) );
  GTECH_NAND2 U245 ( .A(N152), .B(n238), .Z(n234) );
  GTECH_NAND2 U246 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n238) );
  GTECH_NOT U247 ( .A(ten_count[2]), .Z(n243) );
  GTECH_OAI21 U248 ( .A(n245), .B(n246), .C(n247), .Z(N156) );
  GTECH_NAND3 U249 ( .A(N152), .B(ten_count[0]), .C(n245), .Z(n247) );
  GTECH_NOT U250 ( .A(ten_count[1]), .Z(n245) );
  GTECH_NOT U251 ( .A(n246), .Z(N154) );
  GTECH_NAND2 U252 ( .A(N152), .B(n248), .Z(n246) );
  GTECH_NOT U253 ( .A(ten_count[0]), .Z(n248) );
  GTECH_NAND2 U254 ( .A(n249), .B(n167), .Z(N151) );
  GTECH_OA21 U255 ( .A(n14), .B(n250), .C(n227), .Z(n249) );
  GTECH_NOT U256 ( .A(n251), .Z(n227) );
  GTECH_OAI21 U257 ( .A(n252), .B(n240), .C(n195), .Z(n251) );
  GTECH_AND2 U258 ( .A(period[6]), .B(n223), .Z(N15) );
  GTECH_OAI21 U259 ( .A(n235), .B(n250), .C(n253), .Z(N148) );
  GTECH_OA21 U260 ( .A(n181), .B(n254), .C(n255), .Z(n253) );
  GTECH_NAND4 U261 ( .A(n256), .B(N150), .C(n257), .D(n181), .Z(n255) );
  GTECH_AND2 U262 ( .A(n258), .B(n259), .Z(n254) );
  GTECH_OA22 U263 ( .A(n260), .B(n256), .C(n235), .D(n182), .Z(n258) );
  GTECH_NAND3 U264 ( .A(n261), .B(n228), .C(n242), .Z(N147) );
  GTECH_AND2 U265 ( .A(n195), .B(n262), .Z(n242) );
  GTECH_NAND3 U266 ( .A(n252), .B(n167), .C(n250), .Z(n262) );
  GTECH_NAND4 U267 ( .A(n182), .B(n181), .C(n168), .D(n263), .Z(n250) );
  GTECH_NAND2 U268 ( .A(n14), .B(n264), .Z(n228) );
  GTECH_NOT U269 ( .A(n167), .Z(n264) );
  GTECH_NAND3 U270 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n261) );
  GTECH_OAI22 U271 ( .A(n265), .B(n256), .C(n182), .D(n259), .Z(N146) );
  GTECH_OA22 U272 ( .A(n257), .B(n260), .C(n266), .D(n235), .Z(n259) );
  GTECH_AND2 U273 ( .A(n263), .B(n168), .Z(n266) );
  GTECH_NOT U274 ( .A(n267), .Z(n257) );
  GTECH_NOT U275 ( .A(n182), .Z(n256) );
  GTECH_OA21 U276 ( .A(n267), .B(n260), .C(n268), .Z(n265) );
  GTECH_NAND3 U277 ( .A(n269), .B(n226), .C(n270), .Z(n267) );
  GTECH_NOT U278 ( .A(n168), .Z(n269) );
  GTECH_NAND2 U279 ( .A(n271), .B(n268), .Z(N144) );
  GTECH_NAND3 U280 ( .A(N152), .B(n263), .C(n168), .Z(n268) );
  GTECH_OA21 U281 ( .A(n168), .B(n272), .C(n273), .Z(n271) );
  GTECH_NAND4 U282 ( .A(n270), .B(n226), .C(N150), .D(n168), .Z(n273) );
  GTECH_NOT U283 ( .A(n274), .Z(n270) );
  GTECH_OA21 U284 ( .A(n235), .B(n263), .C(n275), .Z(n272) );
  GTECH_OAI21 U285 ( .A(n22), .B(n274), .C(N150), .Z(n275) );
  GTECH_NAND2 U286 ( .A(n276), .B(n226), .Z(n263) );
  GTECH_NOT U287 ( .A(n22), .Z(n226) );
  GTECH_OAI21 U288 ( .A(n260), .B(n277), .C(n278), .Z(N142) );
  GTECH_OA21 U289 ( .A(n22), .B(n279), .C(n280), .Z(n278) );
  GTECH_NAND3 U290 ( .A(N152), .B(n276), .C(n22), .Z(n280) );
  GTECH_XNOR2 U291 ( .A(n274), .B(n22), .Z(n277) );
  GTECH_NAND3 U292 ( .A(n230), .B(n229), .C(sub_85_carry_2_), .Z(n274) );
  GTECH_NAND3 U293 ( .A(n281), .B(n282), .C(n279), .Z(N140) );
  GTECH_NAND2 U294 ( .A(n283), .B(N152), .Z(n279) );
  GTECH_NOT U295 ( .A(n235), .Z(N152) );
  GTECH_NOT U296 ( .A(n276), .Z(n283) );
  GTECH_NAND2 U297 ( .A(n20), .B(n284), .Z(n276) );
  GTECH_OAI21 U298 ( .A(n285), .B(n286), .C(n229), .Z(n282) );
  GTECH_NOT U299 ( .A(n20), .Z(n229) );
  GTECH_OAI22 U300 ( .A(n284), .B(n235), .C(sub_85_carry_2_), .D(n260), .Z(
        n286) );
  GTECH_NOT U301 ( .A(n287), .Z(n285) );
  GTECH_NAND4 U302 ( .A(sub_85_carry_2_), .B(n230), .C(N150), .D(n20), .Z(n281) );
  GTECH_NOT U303 ( .A(n16), .Z(n230) );
  GTECH_NOT U304 ( .A(n288), .Z(N14) );
  GTECH_AOI21 U305 ( .A(period[5]), .B(n223), .C(reset), .Z(n288) );
  GTECH_OAI22 U306 ( .A(sub_85_carry_2_), .B(n289), .C(n284), .D(n287), .Z(
        N138) );
  GTECH_NOT U307 ( .A(sub_85_carry_2_), .Z(n284) );
  GTECH_OA21 U308 ( .A(n16), .B(n260), .C(n235), .Z(n289) );
  GTECH_OAI21 U309 ( .A(n16), .B(n235), .C(n287), .Z(N136) );
  GTECH_NAND2 U310 ( .A(n16), .B(N150), .Z(n287) );
  GTECH_NOT U311 ( .A(n260), .Z(N150) );
  GTECH_NAND2 U312 ( .A(n290), .B(n195), .Z(n260) );
  GTECH_NOT U313 ( .A(n241), .Z(n290) );
  GTECH_NAND2 U314 ( .A(n167), .B(n291), .Z(n235) );
  GTECH_NOT U315 ( .A(N169), .Z(n291) );
  GTECH_NAND2 U316 ( .A(n195), .B(n252), .Z(N169) );
  GTECH_NOT U317 ( .A(n14), .Z(n252) );
  GTECH_AND2 U318 ( .A(n292), .B(n293), .Z(N134) );
  GTECH_OAI21 U319 ( .A(n180), .B(n294), .C(n169), .Z(n293) );
  GTECH_NAND2 U320 ( .A(n195), .B(n241), .Z(N133) );
  GTECH_NAND2 U321 ( .A(n167), .B(n14), .Z(n241) );
  GTECH_AND2 U322 ( .A(n295), .B(n292), .Z(N132) );
  GTECH_XOR2 U323 ( .A(n294), .B(n180), .Z(n295) );
  GTECH_NAND2 U324 ( .A(n296), .B(n297), .Z(n294) );
  GTECH_NOT U325 ( .A(n298), .Z(n296) );
  GTECH_AND2 U326 ( .A(n299), .B(n292), .Z(N130) );
  GTECH_XOR2 U327 ( .A(n298), .B(n170), .Z(n299) );
  GTECH_NAND2 U328 ( .A(n300), .B(n301), .Z(n298) );
  GTECH_NOT U329 ( .A(n171), .Z(n301) );
  GTECH_NOT U330 ( .A(n302), .Z(n300) );
  GTECH_AND2 U331 ( .A(period[4]), .B(n223), .Z(N13) );
  GTECH_AND2 U332 ( .A(n303), .B(n292), .Z(N128) );
  GTECH_XOR2 U333 ( .A(n302), .B(n171), .Z(n303) );
  GTECH_NAND2 U334 ( .A(n304), .B(n305), .Z(n302) );
  GTECH_NOT U335 ( .A(n306), .Z(n304) );
  GTECH_AND2 U336 ( .A(n307), .B(n292), .Z(N126) );
  GTECH_XOR2 U337 ( .A(n306), .B(n172), .Z(n307) );
  GTECH_NAND2 U338 ( .A(n308), .B(n309), .Z(n306) );
  GTECH_NOT U339 ( .A(n173), .Z(n309) );
  GTECH_NOT U340 ( .A(n310), .Z(n308) );
  GTECH_AND2 U341 ( .A(n311), .B(n292), .Z(N124) );
  GTECH_XOR2 U342 ( .A(n310), .B(n173), .Z(n311) );
  GTECH_NAND2 U343 ( .A(n312), .B(n313), .Z(n310) );
  GTECH_NOT U344 ( .A(n174), .Z(n313) );
  GTECH_NOT U345 ( .A(n314), .Z(n312) );
  GTECH_AND2 U346 ( .A(n315), .B(n292), .Z(N122) );
  GTECH_XOR2 U347 ( .A(n314), .B(n174), .Z(n315) );
  GTECH_NAND2 U348 ( .A(n316), .B(n317), .Z(n314) );
  GTECH_NOT U349 ( .A(n175), .Z(n317) );
  GTECH_NOT U350 ( .A(n318), .Z(n316) );
  GTECH_AND2 U351 ( .A(n319), .B(n292), .Z(N120) );
  GTECH_XOR2 U352 ( .A(n318), .B(n175), .Z(n319) );
  GTECH_NAND2 U353 ( .A(n320), .B(n321), .Z(n318) );
  GTECH_NOT U354 ( .A(n322), .Z(n320) );
  GTECH_NOT U355 ( .A(n323), .Z(N12) );
  GTECH_AOI21 U356 ( .A(period[3]), .B(n223), .C(reset), .Z(n323) );
  GTECH_AND2 U357 ( .A(n324), .B(n292), .Z(N118) );
  GTECH_XOR2 U358 ( .A(n322), .B(n176), .Z(n324) );
  GTECH_NAND3 U359 ( .A(n325), .B(n326), .C(n327), .Z(n322) );
  GTECH_NOT U360 ( .A(n177), .Z(n327) );
  GTECH_OAI22 U361 ( .A(n177), .B(n328), .C(n329), .D(n330), .Z(N116) );
  GTECH_OAI21 U362 ( .A(n178), .B(n177), .C(n331), .Z(n330) );
  GTECH_OAI21 U363 ( .A(n179), .B(n178), .C(n177), .Z(n331) );
  GTECH_OAI21 U364 ( .A(n178), .B(n328), .C(n332), .Z(N114) );
  GTECH_NAND3 U365 ( .A(n292), .B(n326), .C(n178), .Z(n332) );
  GTECH_NOT U366 ( .A(n179), .Z(n326) );
  GTECH_NOT U367 ( .A(n328), .Z(N112) );
  GTECH_NAND2 U368 ( .A(n292), .B(n179), .Z(n328) );
  GTECH_NOT U369 ( .A(n329), .Z(n292) );
  GTECH_NAND2 U370 ( .A(n240), .B(n195), .Z(n329) );
  GTECH_NOT U371 ( .A(n333), .Z(n240) );
  GTECH_AOI222 U372 ( .A(n334), .B(n335), .C(update_period[11]), .D(n169), .E(
        n336), .F(n337), .Z(n333) );
  GTECH_OAI2N2 U373 ( .A(n338), .B(n339), .C(n340), .D(n341), .Z(n336) );
  GTECH_OAI21 U374 ( .A(n342), .B(n297), .C(n343), .Z(n341) );
  GTECH_NAND3 U375 ( .A(n344), .B(update_period[8]), .C(n171), .Z(n343) );
  GTECH_AND3 U376 ( .A(n337), .B(n344), .C(n340), .Z(n335) );
  GTECH_NAND2 U377 ( .A(n339), .B(n338), .Z(n340) );
  GTECH_NOT U378 ( .A(n180), .Z(n338) );
  GTECH_NOT U379 ( .A(update_period[10]), .Z(n339) );
  GTECH_NAND2 U380 ( .A(n342), .B(n297), .Z(n344) );
  GTECH_NOT U381 ( .A(n170), .Z(n297) );
  GTECH_NOT U382 ( .A(update_period[9]), .Z(n342) );
  GTECH_NAND2 U383 ( .A(n345), .B(n346), .Z(n337) );
  GTECH_NOT U384 ( .A(n169), .Z(n346) );
  GTECH_NOT U385 ( .A(update_period[11]), .Z(n345) );
  GTECH_OA22 U386 ( .A(n171), .B(update_period[8]), .C(n347), .D(n348), .Z(
        n334) );
  GTECH_OAI21 U387 ( .A(n305), .B(n349), .C(n350), .Z(n348) );
  GTECH_NAND3 U388 ( .A(n351), .B(update_period[6]), .C(n173), .Z(n350) );
  GTECH_OAI2N2 U389 ( .A(n352), .B(n353), .C(n354), .D(n355), .Z(n347) );
  GTECH_ADD_ABC U390 ( .A(n356), .B(n174), .C(update_period[5]), .COUT(n355)
         );
  GTECH_AND2 U391 ( .A(update_period[4]), .B(n175), .Z(n356) );
  GTECH_OAI21 U392 ( .A(update_period[4]), .B(n175), .C(n354), .Z(n353) );
  GTECH_NOT U393 ( .A(n357), .Z(n354) );
  GTECH_OAI21 U394 ( .A(update_period[6]), .B(n173), .C(n351), .Z(n357) );
  GTECH_NAND2 U395 ( .A(n349), .B(n305), .Z(n351) );
  GTECH_NOT U396 ( .A(n172), .Z(n305) );
  GTECH_NOT U397 ( .A(update_period[7]), .Z(n349) );
  GTECH_OAI22 U398 ( .A(update_period[5]), .B(n174), .C(n358), .D(n359), .Z(
        n352) );
  GTECH_OAI21 U399 ( .A(n321), .B(n360), .C(n361), .Z(n359) );
  GTECH_NAND3 U400 ( .A(n362), .B(update_period[2]), .C(n177), .Z(n361) );
  GTECH_AND3 U401 ( .A(n363), .B(n364), .C(n362), .Z(n358) );
  GTECH_NAND2 U402 ( .A(n360), .B(n321), .Z(n362) );
  GTECH_NOT U403 ( .A(n176), .Z(n321) );
  GTECH_NOT U404 ( .A(update_period[3]), .Z(n360) );
  GTECH_OAI21 U405 ( .A(n365), .B(n325), .C(n184), .Z(n364) );
  GTECH_NOT U406 ( .A(n178), .Z(n325) );
  GTECH_OA21 U407 ( .A(n177), .B(update_period[2]), .C(n366), .Z(n363) );
  GTECH_OR_NOT U408 ( .A(n178), .B(n365), .Z(n366) );
  GTECH_NAND2 U409 ( .A(update_period[0]), .B(n179), .Z(n365) );
  GTECH_NOT U410 ( .A(n367), .Z(N11) );
  GTECH_AOI21 U411 ( .A(period[2]), .B(n223), .C(reset), .Z(n367) );
  GTECH_NOT U412 ( .A(n368), .Z(N10) );
  GTECH_AOI21 U413 ( .A(period[1]), .B(n223), .C(reset), .Z(n368) );
  GTECH_NOT U414 ( .A(n224), .Z(n223) );
  GTECH_NAND2 U415 ( .A(period_load), .B(n195), .Z(n224) );
  GTECH_NOT U416 ( .A(reset), .Z(n195) );
endmodule

