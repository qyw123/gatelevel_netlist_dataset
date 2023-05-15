
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
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366;
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
  GTECH_MUX2 U196 ( .A(n203), .B(n208), .S(n209), .Z(n207) );
  GTECH_NAND2 U197 ( .A(n202), .B(n210), .Z(n208) );
  GTECH_NAND3 U198 ( .A(n211), .B(n197), .C(n204), .Z(segments[1]) );
  GTECH_NOT U199 ( .A(n212), .Z(n204) );
  GTECH_OAI21 U200 ( .A(n213), .B(n202), .C(n203), .Z(n212) );
  GTECH_NAND3 U201 ( .A(n209), .B(n202), .C(n214), .Z(n211) );
  GTECH_NAND3 U202 ( .A(n199), .B(n197), .C(n215), .Z(segments[0]) );
  GTECH_OA22 U203 ( .A(n216), .B(n203), .C(n213), .D(n202), .Z(n215) );
  GTECH_NOT U204 ( .A(n206), .Z(n202) );
  GTECH_NAND2 U205 ( .A(n214), .B(n217), .Z(n203) );
  GTECH_NAND2 U206 ( .A(n200), .B(n217), .Z(n197) );
  GTECH_NOT U207 ( .A(n213), .Z(n200) );
  GTECH_NAND2 U208 ( .A(n209), .B(n218), .Z(n213) );
  GTECH_NOT U209 ( .A(n214), .Z(n218) );
  GTECH_NAND3 U210 ( .A(n214), .B(n210), .C(n216), .Z(n199) );
  GTECH_NOT U211 ( .A(n219), .Z(n216) );
  GTECH_NAND2 U212 ( .A(n206), .B(n209), .Z(n219) );
  GTECH_MUX2 U213 ( .A(n33), .B(n29), .S(n164), .Z(n209) );
  GTECH_MUX2 U214 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n164), .Z(n206) );
  GTECH_NOT U215 ( .A(n217), .Z(n210) );
  GTECH_MUX2 U216 ( .A(n32), .B(n28), .S(n164), .Z(n217) );
  GTECH_MUX2 U217 ( .A(n31), .B(n27), .S(n164), .Z(n214) );
  GTECH_NOT U218 ( .A(n220), .Z(N9) );
  GTECH_AOI21 U219 ( .A(period[0]), .B(n221), .C(reset), .Z(n220) );
  GTECH_AND2 U220 ( .A(period[11]), .B(n221), .Z(N21) );
  GTECH_NAND2 U221 ( .A(n195), .B(n222), .Z(N20) );
  GTECH_NOT U222 ( .A(n223), .Z(N19) );
  GTECH_AOI21 U223 ( .A(period[10]), .B(n221), .C(reset), .Z(n223) );
  GTECH_AND2 U224 ( .A(period[9]), .B(n221), .Z(N18) );
  GTECH_AND2 U225 ( .A(period[8]), .B(n221), .Z(N17) );
  GTECH_AND2 U226 ( .A(N170), .B(n224), .Z(N168) );
  GTECH_NAND2 U227 ( .A(n225), .B(n226), .Z(N167) );
  GTECH_AND2 U228 ( .A(N170), .B(n227), .Z(N166) );
  GTECH_AND2 U229 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U230 ( .A(N170), .B(n228), .Z(N162) );
  GTECH_NOT U231 ( .A(n229), .Z(N170) );
  GTECH_NAND2 U232 ( .A(n230), .B(n195), .Z(n229) );
  GTECH_NOT U233 ( .A(n226), .Z(n230) );
  GTECH_OAI22 U234 ( .A(n231), .B(n232), .C(n233), .D(n234), .Z(N160) );
  GTECH_MUX2 U235 ( .A(n231), .B(n235), .S(ten_count[2]), .Z(n234) );
  GTECH_NAND2 U236 ( .A(n236), .B(n231), .Z(n235) );
  GTECH_NOT U237 ( .A(ten_count[3]), .Z(n231) );
  GTECH_NOT U238 ( .A(n237), .Z(N16) );
  GTECH_AOI21 U239 ( .A(period[7]), .B(n221), .C(reset), .Z(n237) );
  GTECH_OAI21 U240 ( .A(n238), .B(n239), .C(n240), .Z(N159) );
  GTECH_MUX2 U241 ( .A(n241), .B(n242), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U242 ( .A(n232), .Z(n242) );
  GTECH_NAND2 U243 ( .A(N152), .B(n243), .Z(n232) );
  GTECH_AND2 U244 ( .A(N152), .B(n236), .Z(n241) );
  GTECH_NOT U245 ( .A(n243), .Z(n236) );
  GTECH_NAND2 U246 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n243) );
  GTECH_MUX2 U247 ( .A(n244), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U248 ( .A(N152), .B(ten_count[0]), .Z(n244) );
  GTECH_NOT U249 ( .A(n245), .Z(N154) );
  GTECH_NAND2 U250 ( .A(N152), .B(n246), .Z(n245) );
  GTECH_NOT U251 ( .A(ten_count[0]), .Z(n246) );
  GTECH_NAND2 U252 ( .A(n247), .B(n167), .Z(N151) );
  GTECH_OA21 U253 ( .A(n14), .B(n248), .C(n225), .Z(n247) );
  GTECH_NOT U254 ( .A(n249), .Z(n225) );
  GTECH_OAI21 U255 ( .A(n250), .B(n238), .C(n195), .Z(n249) );
  GTECH_AND2 U256 ( .A(period[6]), .B(n221), .Z(N15) );
  GTECH_OAI21 U257 ( .A(n233), .B(n248), .C(n251), .Z(N148) );
  GTECH_MUX2 U258 ( .A(n252), .B(n253), .S(n181), .Z(n251) );
  GTECH_OR3 U259 ( .A(n182), .B(n254), .C(n255), .Z(n253) );
  GTECH_AND_NOT U260 ( .A(n256), .B(n257), .Z(n252) );
  GTECH_MUX2 U261 ( .A(n233), .B(n254), .S(n182), .Z(n256) );
  GTECH_NAND3 U262 ( .A(n258), .B(n226), .C(n240), .Z(N147) );
  GTECH_AND2 U263 ( .A(n195), .B(n259), .Z(n240) );
  GTECH_NAND3 U264 ( .A(n250), .B(n167), .C(n248), .Z(n259) );
  GTECH_NAND4 U265 ( .A(n182), .B(n181), .C(n168), .D(n260), .Z(n248) );
  GTECH_NAND2 U266 ( .A(n14), .B(n261), .Z(n226) );
  GTECH_NOT U267 ( .A(n167), .Z(n261) );
  GTECH_NAND3 U268 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n258) );
  GTECH_MUX2 U269 ( .A(n257), .B(n262), .S(n182), .Z(N146) );
  GTECH_OAI21 U270 ( .A(n255), .B(n254), .C(n263), .Z(n262) );
  GTECH_OAI22 U271 ( .A(n264), .B(n233), .C(n265), .D(n254), .Z(n257) );
  GTECH_NOT U272 ( .A(n255), .Z(n265) );
  GTECH_NAND3 U273 ( .A(n266), .B(n224), .C(n267), .Z(n255) );
  GTECH_NOT U274 ( .A(n168), .Z(n266) );
  GTECH_AND2 U275 ( .A(n260), .B(n168), .Z(n264) );
  GTECH_NAND2 U276 ( .A(n268), .B(n263), .Z(N144) );
  GTECH_NAND3 U277 ( .A(N152), .B(n260), .C(n168), .Z(n263) );
  GTECH_MUX2 U278 ( .A(n269), .B(n270), .S(n168), .Z(n268) );
  GTECH_NAND3 U279 ( .A(n267), .B(n224), .C(N150), .Z(n270) );
  GTECH_OA21 U280 ( .A(n233), .B(n260), .C(n271), .Z(n269) );
  GTECH_OAI21 U281 ( .A(n22), .B(n272), .C(N150), .Z(n271) );
  GTECH_NAND2 U282 ( .A(n273), .B(n224), .Z(n260) );
  GTECH_NOT U283 ( .A(n22), .Z(n224) );
  GTECH_OAI21 U284 ( .A(n254), .B(n274), .C(n275), .Z(N142) );
  GTECH_MUX2 U285 ( .A(n276), .B(n277), .S(n22), .Z(n275) );
  GTECH_NAND2 U286 ( .A(N152), .B(n273), .Z(n277) );
  GTECH_XOR2 U287 ( .A(n22), .B(n267), .Z(n274) );
  GTECH_NOT U288 ( .A(n272), .Z(n267) );
  GTECH_NAND3 U289 ( .A(n228), .B(n227), .C(sub_85_carry_2_), .Z(n272) );
  GTECH_NOT U290 ( .A(n20), .Z(n227) );
  GTECH_NAND2 U291 ( .A(n278), .B(n276), .Z(N140) );
  GTECH_NAND2 U292 ( .A(n279), .B(N152), .Z(n276) );
  GTECH_NOT U293 ( .A(n233), .Z(N152) );
  GTECH_NOT U294 ( .A(n273), .Z(n279) );
  GTECH_NAND2 U295 ( .A(n20), .B(n280), .Z(n273) );
  GTECH_NOT U296 ( .A(sub_85_carry_2_), .Z(n280) );
  GTECH_MUX2 U297 ( .A(n281), .B(n282), .S(n20), .Z(n278) );
  GTECH_NAND3 U298 ( .A(sub_85_carry_2_), .B(n228), .C(N150), .Z(n282) );
  GTECH_NOT U299 ( .A(n16), .Z(n228) );
  GTECH_AND2 U300 ( .A(n283), .B(n284), .Z(n281) );
  GTECH_MUX2 U301 ( .A(n254), .B(n233), .S(sub_85_carry_2_), .Z(n283) );
  GTECH_NOT U302 ( .A(n285), .Z(N14) );
  GTECH_AOI21 U303 ( .A(period[5]), .B(n221), .C(reset), .Z(n285) );
  GTECH_MUX2 U304 ( .A(n286), .B(n287), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U305 ( .A(n284), .Z(n287) );
  GTECH_OAI21 U306 ( .A(n16), .B(n254), .C(n233), .Z(n286) );
  GTECH_OAI21 U307 ( .A(n16), .B(n233), .C(n284), .Z(N136) );
  GTECH_NAND2 U308 ( .A(n16), .B(N150), .Z(n284) );
  GTECH_NOT U309 ( .A(n254), .Z(N150) );
  GTECH_NAND2 U310 ( .A(n288), .B(n195), .Z(n254) );
  GTECH_NOT U311 ( .A(n239), .Z(n288) );
  GTECH_NAND2 U312 ( .A(n167), .B(n289), .Z(n233) );
  GTECH_NOT U313 ( .A(N169), .Z(n289) );
  GTECH_NAND2 U314 ( .A(n195), .B(n250), .Z(N169) );
  GTECH_NOT U315 ( .A(n14), .Z(n250) );
  GTECH_AND2 U316 ( .A(n290), .B(n291), .Z(N134) );
  GTECH_OAI21 U317 ( .A(n180), .B(n292), .C(n169), .Z(n291) );
  GTECH_NAND2 U318 ( .A(n195), .B(n239), .Z(N133) );
  GTECH_NAND2 U319 ( .A(n167), .B(n14), .Z(n239) );
  GTECH_AND2 U320 ( .A(n293), .B(n290), .Z(N132) );
  GTECH_XOR2 U321 ( .A(n292), .B(n180), .Z(n293) );
  GTECH_NAND2 U322 ( .A(n294), .B(n295), .Z(n292) );
  GTECH_NOT U323 ( .A(n296), .Z(n294) );
  GTECH_AND2 U324 ( .A(n297), .B(n290), .Z(N130) );
  GTECH_XOR2 U325 ( .A(n296), .B(n170), .Z(n297) );
  GTECH_NAND2 U326 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_NOT U327 ( .A(n171), .Z(n299) );
  GTECH_NOT U328 ( .A(n300), .Z(n298) );
  GTECH_AND2 U329 ( .A(period[4]), .B(n221), .Z(N13) );
  GTECH_AND2 U330 ( .A(n301), .B(n290), .Z(N128) );
  GTECH_XOR2 U331 ( .A(n300), .B(n171), .Z(n301) );
  GTECH_NAND2 U332 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_NOT U333 ( .A(n304), .Z(n302) );
  GTECH_AND2 U334 ( .A(n305), .B(n290), .Z(N126) );
  GTECH_XOR2 U335 ( .A(n304), .B(n172), .Z(n305) );
  GTECH_NAND2 U336 ( .A(n306), .B(n307), .Z(n304) );
  GTECH_NOT U337 ( .A(n173), .Z(n307) );
  GTECH_NOT U338 ( .A(n308), .Z(n306) );
  GTECH_AND2 U339 ( .A(n309), .B(n290), .Z(N124) );
  GTECH_XOR2 U340 ( .A(n308), .B(n173), .Z(n309) );
  GTECH_NAND2 U341 ( .A(n310), .B(n311), .Z(n308) );
  GTECH_NOT U342 ( .A(n174), .Z(n311) );
  GTECH_NOT U343 ( .A(n312), .Z(n310) );
  GTECH_AND2 U344 ( .A(n313), .B(n290), .Z(N122) );
  GTECH_XOR2 U345 ( .A(n312), .B(n174), .Z(n313) );
  GTECH_NAND2 U346 ( .A(n314), .B(n315), .Z(n312) );
  GTECH_NOT U347 ( .A(n175), .Z(n315) );
  GTECH_NOT U348 ( .A(n316), .Z(n314) );
  GTECH_AND2 U349 ( .A(n317), .B(n290), .Z(N120) );
  GTECH_XOR2 U350 ( .A(n316), .B(n175), .Z(n317) );
  GTECH_NAND2 U351 ( .A(n318), .B(n319), .Z(n316) );
  GTECH_NOT U352 ( .A(n320), .Z(n318) );
  GTECH_NOT U353 ( .A(n321), .Z(N12) );
  GTECH_AOI21 U354 ( .A(period[3]), .B(n221), .C(reset), .Z(n321) );
  GTECH_AND2 U355 ( .A(n322), .B(n290), .Z(N118) );
  GTECH_XOR2 U356 ( .A(n320), .B(n176), .Z(n322) );
  GTECH_NAND3 U357 ( .A(n323), .B(n324), .C(n325), .Z(n320) );
  GTECH_NOT U358 ( .A(n177), .Z(n325) );
  GTECH_OAI22 U359 ( .A(n177), .B(n326), .C(n327), .D(n328), .Z(N116) );
  GTECH_MUX2 U360 ( .A(n323), .B(n329), .S(n177), .Z(n328) );
  GTECH_NAND2 U361 ( .A(n323), .B(n324), .Z(n329) );
  GTECH_MUX2 U362 ( .A(N112), .B(n330), .S(n178), .Z(N114) );
  GTECH_AND2 U363 ( .A(n290), .B(n324), .Z(n330) );
  GTECH_NOT U364 ( .A(n179), .Z(n324) );
  GTECH_NOT U365 ( .A(n326), .Z(N112) );
  GTECH_NAND2 U366 ( .A(n290), .B(n179), .Z(n326) );
  GTECH_NOT U367 ( .A(n327), .Z(n290) );
  GTECH_NAND2 U368 ( .A(n238), .B(n195), .Z(n327) );
  GTECH_NOT U369 ( .A(n331), .Z(n238) );
  GTECH_AOI222 U370 ( .A(n332), .B(n333), .C(update_period[11]), .D(n169), .E(
        n334), .F(n335), .Z(n331) );
  GTECH_OAI2N2 U371 ( .A(n336), .B(n337), .C(n338), .D(n339), .Z(n334) );
  GTECH_OAI21 U372 ( .A(n340), .B(n295), .C(n341), .Z(n339) );
  GTECH_NAND3 U373 ( .A(n342), .B(update_period[8]), .C(n171), .Z(n341) );
  GTECH_AND3 U374 ( .A(n335), .B(n342), .C(n338), .Z(n333) );
  GTECH_NAND2 U375 ( .A(n337), .B(n336), .Z(n338) );
  GTECH_NOT U376 ( .A(n180), .Z(n336) );
  GTECH_NOT U377 ( .A(update_period[10]), .Z(n337) );
  GTECH_NAND2 U378 ( .A(n340), .B(n295), .Z(n342) );
  GTECH_NOT U379 ( .A(n170), .Z(n295) );
  GTECH_NOT U380 ( .A(update_period[9]), .Z(n340) );
  GTECH_NAND2 U381 ( .A(n343), .B(n344), .Z(n335) );
  GTECH_NOT U382 ( .A(n169), .Z(n344) );
  GTECH_NOT U383 ( .A(update_period[11]), .Z(n343) );
  GTECH_OA22 U384 ( .A(n171), .B(update_period[8]), .C(n345), .D(n346), .Z(
        n332) );
  GTECH_OAI21 U385 ( .A(n303), .B(n347), .C(n348), .Z(n346) );
  GTECH_NAND3 U386 ( .A(n349), .B(update_period[6]), .C(n173), .Z(n348) );
  GTECH_OAI2N2 U387 ( .A(n350), .B(n351), .C(n352), .D(n353), .Z(n345) );
  GTECH_ADD_ABC U388 ( .A(n354), .B(n174), .C(update_period[5]), .COUT(n353)
         );
  GTECH_AND2 U389 ( .A(update_period[4]), .B(n175), .Z(n354) );
  GTECH_OAI21 U390 ( .A(update_period[4]), .B(n175), .C(n352), .Z(n351) );
  GTECH_NOT U391 ( .A(n355), .Z(n352) );
  GTECH_OAI21 U392 ( .A(update_period[6]), .B(n173), .C(n349), .Z(n355) );
  GTECH_NAND2 U393 ( .A(n347), .B(n303), .Z(n349) );
  GTECH_NOT U394 ( .A(n172), .Z(n303) );
  GTECH_NOT U395 ( .A(update_period[7]), .Z(n347) );
  GTECH_OAI22 U396 ( .A(update_period[5]), .B(n174), .C(n356), .D(n357), .Z(
        n350) );
  GTECH_OAI21 U397 ( .A(n319), .B(n358), .C(n359), .Z(n357) );
  GTECH_NAND3 U398 ( .A(n360), .B(update_period[2]), .C(n177), .Z(n359) );
  GTECH_AND3 U399 ( .A(n361), .B(n362), .C(n360), .Z(n356) );
  GTECH_NAND2 U400 ( .A(n358), .B(n319), .Z(n360) );
  GTECH_NOT U401 ( .A(n176), .Z(n319) );
  GTECH_NOT U402 ( .A(update_period[3]), .Z(n358) );
  GTECH_OAI21 U403 ( .A(n363), .B(n323), .C(n184), .Z(n362) );
  GTECH_NOT U404 ( .A(n178), .Z(n323) );
  GTECH_OA21 U405 ( .A(n177), .B(update_period[2]), .C(n364), .Z(n361) );
  GTECH_OR_NOT U406 ( .A(n178), .B(n363), .Z(n364) );
  GTECH_NAND2 U407 ( .A(update_period[0]), .B(n179), .Z(n363) );
  GTECH_NOT U408 ( .A(n365), .Z(N11) );
  GTECH_AOI21 U409 ( .A(period[2]), .B(n221), .C(reset), .Z(n365) );
  GTECH_NOT U410 ( .A(n366), .Z(N10) );
  GTECH_AOI21 U411 ( .A(period[1]), .B(n221), .C(reset), .Z(n366) );
  GTECH_NOT U412 ( .A(n222), .Z(n221) );
  GTECH_NAND2 U413 ( .A(period_load), .B(n195), .Z(n222) );
  GTECH_NOT U414 ( .A(reset), .Z(n195) );
endmodule

