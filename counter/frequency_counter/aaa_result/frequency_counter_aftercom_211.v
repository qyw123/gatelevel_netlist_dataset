
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
         seven_segment0_N8, seven_segment0_N6, n13, n14, n15, n16, n18, n20,
         n22, n27, n28, n29, n31, n32, n33, n86, n164, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n184, n195, n196, n197, n198, n199, n200, n201, n202, n203,
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
         n358, n359, n360, n361, n362, n363, n364;
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
        .CP(clk), .Q(edge_counter[1]), .QN(n18) );
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
  GTECH_AND2 U229 ( .A(N170), .B(n228), .Z(N164) );
  GTECH_AND2 U230 ( .A(N170), .B(n229), .Z(N162) );
  GTECH_NOT U231 ( .A(n230), .Z(N170) );
  GTECH_NAND2 U232 ( .A(n231), .B(n195), .Z(n230) );
  GTECH_NOT U233 ( .A(n226), .Z(n231) );
  GTECH_OAI22 U234 ( .A(n232), .B(n233), .C(n234), .D(n235), .Z(N160) );
  GTECH_MUX2 U235 ( .A(n232), .B(n236), .S(ten_count[2]), .Z(n235) );
  GTECH_NAND2 U236 ( .A(n237), .B(n232), .Z(n236) );
  GTECH_NOT U237 ( .A(ten_count[3]), .Z(n232) );
  GTECH_NOT U238 ( .A(n238), .Z(N16) );
  GTECH_AOI21 U239 ( .A(period[7]), .B(n221), .C(reset), .Z(n238) );
  GTECH_OAI21 U240 ( .A(n239), .B(n240), .C(n241), .Z(N159) );
  GTECH_MUX2 U241 ( .A(n242), .B(n243), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U242 ( .A(n233), .Z(n243) );
  GTECH_NAND2 U243 ( .A(N152), .B(n244), .Z(n233) );
  GTECH_AND2 U244 ( .A(N152), .B(n237), .Z(n242) );
  GTECH_NOT U245 ( .A(n244), .Z(n237) );
  GTECH_NAND2 U246 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n244) );
  GTECH_MUX2 U247 ( .A(n245), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U248 ( .A(N152), .B(ten_count[0]), .Z(n245) );
  GTECH_NOT U249 ( .A(n246), .Z(N154) );
  GTECH_NAND2 U250 ( .A(N152), .B(n247), .Z(n246) );
  GTECH_NOT U251 ( .A(ten_count[0]), .Z(n247) );
  GTECH_NAND2 U252 ( .A(n248), .B(n167), .Z(N151) );
  GTECH_OA21 U253 ( .A(n14), .B(n249), .C(n225), .Z(n248) );
  GTECH_NOT U254 ( .A(n250), .Z(n225) );
  GTECH_OAI21 U255 ( .A(n251), .B(n239), .C(n195), .Z(n250) );
  GTECH_AND2 U256 ( .A(period[6]), .B(n221), .Z(N15) );
  GTECH_OAI21 U257 ( .A(n234), .B(n249), .C(n252), .Z(N148) );
  GTECH_MUX2 U258 ( .A(n253), .B(n254), .S(n181), .Z(n252) );
  GTECH_OR3 U259 ( .A(n182), .B(n255), .C(n256), .Z(n254) );
  GTECH_AND_NOT U260 ( .A(n257), .B(n258), .Z(n253) );
  GTECH_MUX2 U261 ( .A(n234), .B(n255), .S(n182), .Z(n257) );
  GTECH_NAND3 U262 ( .A(n259), .B(n226), .C(n241), .Z(N147) );
  GTECH_AND2 U263 ( .A(n195), .B(n260), .Z(n241) );
  GTECH_NAND3 U264 ( .A(n251), .B(n167), .C(n249), .Z(n260) );
  GTECH_NAND4 U265 ( .A(n182), .B(n181), .C(n168), .D(n261), .Z(n249) );
  GTECH_NAND2 U266 ( .A(n14), .B(n262), .Z(n226) );
  GTECH_NOT U267 ( .A(n167), .Z(n262) );
  GTECH_NAND3 U268 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n259) );
  GTECH_MUX2 U269 ( .A(n258), .B(n263), .S(n182), .Z(N146) );
  GTECH_OAI21 U270 ( .A(n256), .B(n255), .C(n264), .Z(n263) );
  GTECH_OAI22 U271 ( .A(n265), .B(n234), .C(n266), .D(n255), .Z(n258) );
  GTECH_NOT U272 ( .A(n256), .Z(n266) );
  GTECH_NAND3 U273 ( .A(n267), .B(n224), .C(n268), .Z(n256) );
  GTECH_NOT U274 ( .A(n168), .Z(n267) );
  GTECH_AND2 U275 ( .A(n261), .B(n168), .Z(n265) );
  GTECH_NAND2 U276 ( .A(n269), .B(n264), .Z(N144) );
  GTECH_NAND3 U277 ( .A(N152), .B(n261), .C(n168), .Z(n264) );
  GTECH_MUX2 U278 ( .A(n270), .B(n271), .S(n168), .Z(n269) );
  GTECH_NAND3 U279 ( .A(n268), .B(n224), .C(N150), .Z(n271) );
  GTECH_OA21 U280 ( .A(n234), .B(n261), .C(n272), .Z(n270) );
  GTECH_OAI21 U281 ( .A(n22), .B(n273), .C(N150), .Z(n272) );
  GTECH_OAI21 U282 ( .A(n228), .B(n227), .C(n224), .Z(n261) );
  GTECH_NOT U283 ( .A(n22), .Z(n224) );
  GTECH_MUX2 U284 ( .A(n274), .B(n275), .S(n22), .Z(N142) );
  GTECH_OAI21 U285 ( .A(n273), .B(n255), .C(n276), .Z(n275) );
  GTECH_OAI21 U286 ( .A(n228), .B(n227), .C(N152), .Z(n276) );
  GTECH_OAI21 U287 ( .A(n268), .B(n255), .C(n277), .Z(n274) );
  GTECH_NOT U288 ( .A(n273), .Z(n268) );
  GTECH_NAND3 U289 ( .A(n228), .B(n227), .C(n229), .Z(n273) );
  GTECH_NOT U290 ( .A(n20), .Z(n227) );
  GTECH_NAND2 U291 ( .A(n278), .B(n277), .Z(N140) );
  GTECH_NAND3 U292 ( .A(n18), .B(N152), .C(n20), .Z(n277) );
  GTECH_NOT U293 ( .A(n234), .Z(N152) );
  GTECH_MUX2 U294 ( .A(n279), .B(n280), .S(n20), .Z(n278) );
  GTECH_NAND3 U295 ( .A(n229), .B(n228), .C(N150), .Z(n280) );
  GTECH_NOT U296 ( .A(n18), .Z(n228) );
  GTECH_NOT U297 ( .A(n16), .Z(n229) );
  GTECH_AND2 U298 ( .A(n281), .B(n282), .Z(n279) );
  GTECH_MUX2 U299 ( .A(n234), .B(n255), .S(n18), .Z(n281) );
  GTECH_NOT U300 ( .A(n283), .Z(N14) );
  GTECH_AOI21 U301 ( .A(period[5]), .B(n221), .C(reset), .Z(n283) );
  GTECH_MUX2 U302 ( .A(n284), .B(n285), .S(n18), .Z(N138) );
  GTECH_OAI21 U303 ( .A(n16), .B(n255), .C(n234), .Z(n285) );
  GTECH_NOT U304 ( .A(n282), .Z(n284) );
  GTECH_OAI21 U305 ( .A(n16), .B(n234), .C(n282), .Z(N136) );
  GTECH_NAND2 U306 ( .A(n16), .B(N150), .Z(n282) );
  GTECH_NOT U307 ( .A(n255), .Z(N150) );
  GTECH_NAND2 U308 ( .A(n286), .B(n195), .Z(n255) );
  GTECH_NOT U309 ( .A(n240), .Z(n286) );
  GTECH_NAND2 U310 ( .A(n167), .B(n287), .Z(n234) );
  GTECH_NOT U311 ( .A(N169), .Z(n287) );
  GTECH_NAND2 U312 ( .A(n195), .B(n251), .Z(N169) );
  GTECH_NOT U313 ( .A(n14), .Z(n251) );
  GTECH_AND2 U314 ( .A(n288), .B(n289), .Z(N134) );
  GTECH_OAI21 U315 ( .A(n180), .B(n290), .C(n169), .Z(n289) );
  GTECH_NAND2 U316 ( .A(n195), .B(n240), .Z(N133) );
  GTECH_NAND2 U317 ( .A(n167), .B(n14), .Z(n240) );
  GTECH_AND2 U318 ( .A(n291), .B(n288), .Z(N132) );
  GTECH_XOR2 U319 ( .A(n290), .B(n180), .Z(n291) );
  GTECH_NAND2 U320 ( .A(n292), .B(n293), .Z(n290) );
  GTECH_NOT U321 ( .A(n294), .Z(n292) );
  GTECH_AND2 U322 ( .A(n295), .B(n288), .Z(N130) );
  GTECH_XOR2 U323 ( .A(n294), .B(n170), .Z(n295) );
  GTECH_NAND2 U324 ( .A(n296), .B(n297), .Z(n294) );
  GTECH_NOT U325 ( .A(n171), .Z(n297) );
  GTECH_NOT U326 ( .A(n298), .Z(n296) );
  GTECH_AND2 U327 ( .A(period[4]), .B(n221), .Z(N13) );
  GTECH_AND2 U328 ( .A(n299), .B(n288), .Z(N128) );
  GTECH_XOR2 U329 ( .A(n298), .B(n171), .Z(n299) );
  GTECH_NAND2 U330 ( .A(n300), .B(n301), .Z(n298) );
  GTECH_NOT U331 ( .A(n302), .Z(n300) );
  GTECH_AND2 U332 ( .A(n303), .B(n288), .Z(N126) );
  GTECH_XOR2 U333 ( .A(n302), .B(n172), .Z(n303) );
  GTECH_NAND2 U334 ( .A(n304), .B(n305), .Z(n302) );
  GTECH_NOT U335 ( .A(n173), .Z(n305) );
  GTECH_NOT U336 ( .A(n306), .Z(n304) );
  GTECH_AND2 U337 ( .A(n307), .B(n288), .Z(N124) );
  GTECH_XOR2 U338 ( .A(n306), .B(n173), .Z(n307) );
  GTECH_NAND2 U339 ( .A(n308), .B(n309), .Z(n306) );
  GTECH_NOT U340 ( .A(n174), .Z(n309) );
  GTECH_NOT U341 ( .A(n310), .Z(n308) );
  GTECH_AND2 U342 ( .A(n311), .B(n288), .Z(N122) );
  GTECH_XOR2 U343 ( .A(n310), .B(n174), .Z(n311) );
  GTECH_NAND2 U344 ( .A(n312), .B(n313), .Z(n310) );
  GTECH_NOT U345 ( .A(n175), .Z(n313) );
  GTECH_NOT U346 ( .A(n314), .Z(n312) );
  GTECH_AND2 U347 ( .A(n315), .B(n288), .Z(N120) );
  GTECH_XOR2 U348 ( .A(n314), .B(n175), .Z(n315) );
  GTECH_NAND2 U349 ( .A(n316), .B(n317), .Z(n314) );
  GTECH_NOT U350 ( .A(n318), .Z(n316) );
  GTECH_NOT U351 ( .A(n319), .Z(N12) );
  GTECH_AOI21 U352 ( .A(period[3]), .B(n221), .C(reset), .Z(n319) );
  GTECH_AND2 U353 ( .A(n320), .B(n288), .Z(N118) );
  GTECH_XOR2 U354 ( .A(n318), .B(n176), .Z(n320) );
  GTECH_NAND3 U355 ( .A(n321), .B(n322), .C(n323), .Z(n318) );
  GTECH_NOT U356 ( .A(n177), .Z(n323) );
  GTECH_OAI22 U357 ( .A(n177), .B(n324), .C(n325), .D(n326), .Z(N116) );
  GTECH_MUX2 U358 ( .A(n321), .B(n327), .S(n177), .Z(n326) );
  GTECH_NAND2 U359 ( .A(n321), .B(n322), .Z(n327) );
  GTECH_MUX2 U360 ( .A(N112), .B(n328), .S(n178), .Z(N114) );
  GTECH_AND2 U361 ( .A(n288), .B(n322), .Z(n328) );
  GTECH_NOT U362 ( .A(n179), .Z(n322) );
  GTECH_NOT U363 ( .A(n324), .Z(N112) );
  GTECH_NAND2 U364 ( .A(n288), .B(n179), .Z(n324) );
  GTECH_NOT U365 ( .A(n325), .Z(n288) );
  GTECH_NAND2 U366 ( .A(n239), .B(n195), .Z(n325) );
  GTECH_NOT U367 ( .A(n329), .Z(n239) );
  GTECH_AOI222 U368 ( .A(n330), .B(n331), .C(update_period[11]), .D(n169), .E(
        n332), .F(n333), .Z(n329) );
  GTECH_OAI2N2 U369 ( .A(n334), .B(n335), .C(n336), .D(n337), .Z(n332) );
  GTECH_OAI21 U370 ( .A(n338), .B(n293), .C(n339), .Z(n337) );
  GTECH_NAND3 U371 ( .A(n340), .B(update_period[8]), .C(n171), .Z(n339) );
  GTECH_AND3 U372 ( .A(n333), .B(n340), .C(n336), .Z(n331) );
  GTECH_NAND2 U373 ( .A(n335), .B(n334), .Z(n336) );
  GTECH_NOT U374 ( .A(n180), .Z(n334) );
  GTECH_NOT U375 ( .A(update_period[10]), .Z(n335) );
  GTECH_NAND2 U376 ( .A(n338), .B(n293), .Z(n340) );
  GTECH_NOT U377 ( .A(n170), .Z(n293) );
  GTECH_NOT U378 ( .A(update_period[9]), .Z(n338) );
  GTECH_NAND2 U379 ( .A(n341), .B(n342), .Z(n333) );
  GTECH_NOT U380 ( .A(n169), .Z(n342) );
  GTECH_NOT U381 ( .A(update_period[11]), .Z(n341) );
  GTECH_OA22 U382 ( .A(n171), .B(update_period[8]), .C(n343), .D(n344), .Z(
        n330) );
  GTECH_OAI21 U383 ( .A(n301), .B(n345), .C(n346), .Z(n344) );
  GTECH_NAND3 U384 ( .A(n347), .B(update_period[6]), .C(n173), .Z(n346) );
  GTECH_OAI21 U385 ( .A(n348), .B(n349), .C(n350), .Z(n343) );
  GTECH_OR3 U386 ( .A(n351), .B(n348), .C(n352), .Z(n350) );
  GTECH_OAI22 U387 ( .A(update_period[5]), .B(n174), .C(n353), .D(n354), .Z(
        n352) );
  GTECH_OAI21 U388 ( .A(n317), .B(n355), .C(n356), .Z(n354) );
  GTECH_NAND3 U389 ( .A(n357), .B(update_period[2]), .C(n177), .Z(n356) );
  GTECH_AND3 U390 ( .A(n358), .B(n359), .C(n357), .Z(n353) );
  GTECH_NAND2 U391 ( .A(n355), .B(n317), .Z(n357) );
  GTECH_NOT U392 ( .A(n176), .Z(n317) );
  GTECH_NOT U393 ( .A(update_period[3]), .Z(n355) );
  GTECH_OAI21 U394 ( .A(n360), .B(n321), .C(n184), .Z(n359) );
  GTECH_NOT U395 ( .A(n178), .Z(n321) );
  GTECH_OA21 U396 ( .A(n177), .B(update_period[2]), .C(n361), .Z(n358) );
  GTECH_OR_NOT U397 ( .A(n178), .B(n360), .Z(n361) );
  GTECH_NAND2 U398 ( .A(update_period[0]), .B(n179), .Z(n360) );
  GTECH_NOR2 U399 ( .A(update_period[4]), .B(n175), .Z(n351) );
  GTECH_OAI21 U400 ( .A(update_period[5]), .B(n174), .C(n362), .Z(n349) );
  GTECH_AO22 U401 ( .A(update_period[5]), .B(n174), .C(update_period[4]), .D(
        n175), .Z(n362) );
  GTECH_OAI21 U402 ( .A(update_period[6]), .B(n173), .C(n347), .Z(n348) );
  GTECH_NAND2 U403 ( .A(n345), .B(n301), .Z(n347) );
  GTECH_NOT U404 ( .A(n172), .Z(n301) );
  GTECH_NOT U405 ( .A(update_period[7]), .Z(n345) );
  GTECH_NOT U406 ( .A(n363), .Z(N11) );
  GTECH_AOI21 U407 ( .A(period[2]), .B(n221), .C(reset), .Z(n363) );
  GTECH_NOT U408 ( .A(n364), .Z(N10) );
  GTECH_AOI21 U409 ( .A(period[1]), .B(n221), .C(reset), .Z(n364) );
  GTECH_NOT U410 ( .A(n222), .Z(n221) );
  GTECH_NAND2 U411 ( .A(period_load), .B(n195), .Z(n222) );
  GTECH_NOT U412 ( .A(reset), .Z(n195) );
endmodule

