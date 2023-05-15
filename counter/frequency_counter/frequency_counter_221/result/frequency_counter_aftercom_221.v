
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
         seven_segment0_N8, seven_segment0_N6, n12, n14, n15, n16, n20, n22,
         n24, n26, n28, n30, n32, n80, n162, n163, sub_85_carry_2_, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n180, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356;
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
        .CP(clk), .Q(update_period[1]), .QN(n180) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n80), .K(n80), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1), .QN(n12) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n80), .K(n80), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n178) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n80), .K(n80), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n177) );
  GTECH_FJK1S state_reg_0_ ( .J(n80), .K(n80), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n80), .K(n80), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n80), .K(n80), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n176) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n80), .K(n80), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n80), .K(n80), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n80), .K(n80), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n80), .K(n80), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n80), .K(n80), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n80), .K(n80), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n80), .K(n80), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n80), .K(n80), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n80), .K(n80), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n80), .K(n80), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n80), .K(n80), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n165) );
  GTECH_FJK1S update_digits_reg ( .J(n80), .K(n80), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n80), .K(n80), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n164) );
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
        clk), .Q(n24) );
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
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n162) );
  GTECH_ZERO U171 ( .Z(n80) );
  GTECH_NAND2 U172 ( .A(n15), .B(n191), .Z(seven_segment0_N9) );
  GTECH_AND2 U173 ( .A(ten_count[0]), .B(n191), .Z(seven_segment0_N8) );
  GTECH_AND2 U174 ( .A(n162), .B(n191), .Z(seven_segment0_N6) );
  GTECH_AND2 U175 ( .A(unit_count[3]), .B(n191), .Z(seven_segment0_N22) );
  GTECH_AND2 U176 ( .A(unit_count[2]), .B(n191), .Z(seven_segment0_N20) );
  GTECH_AND2 U177 ( .A(unit_count[1]), .B(n191), .Z(seven_segment0_N18) );
  GTECH_AND2 U178 ( .A(unit_count[0]), .B(n191), .Z(seven_segment0_N16) );
  GTECH_AND2 U179 ( .A(ten_count[3]), .B(n191), .Z(seven_segment0_N14) );
  GTECH_AND2 U180 ( .A(ten_count[2]), .B(n191), .Z(seven_segment0_N12) );
  GTECH_AND2 U181 ( .A(n24), .B(n191), .Z(seven_segment0_N10) );
  GTECH_NAND2 U182 ( .A(n192), .B(n193), .Z(segments[6]) );
  GTECH_OR3 U183 ( .A(segments[4]), .B(n194), .C(n195), .Z(segments[3]) );
  GTECH_NOT U184 ( .A(n196), .Z(n195) );
  GTECH_NOT U185 ( .A(n197), .Z(n194) );
  GTECH_OAI22 U186 ( .A(n198), .B(n199), .C(n200), .D(n201), .Z(segments[4])
         );
  GTECH_NAND2 U187 ( .A(n202), .B(n203), .Z(segments[2]) );
  GTECH_NOT U188 ( .A(segments[5]), .Z(n203) );
  GTECH_OAI21 U189 ( .A(n204), .B(n199), .C(n193), .Z(segments[5]) );
  GTECH_NOT U190 ( .A(n205), .Z(n193) );
  GTECH_OAI21 U191 ( .A(n206), .B(n201), .C(n196), .Z(n205) );
  GTECH_NAND2 U192 ( .A(n207), .B(n202), .Z(segments[1]) );
  GTECH_NOT U193 ( .A(n208), .Z(n202) );
  GTECH_NAND2 U194 ( .A(n209), .B(n199), .Z(n208) );
  GTECH_OA21 U195 ( .A(n210), .B(n201), .C(n192), .Z(n207) );
  GTECH_NAND2 U196 ( .A(n211), .B(n212), .Z(n201) );
  GTECH_NOT U197 ( .A(n198), .Z(n212) );
  GTECH_NAND4 U198 ( .A(n192), .B(n213), .C(n196), .D(n209), .Z(segments[0])
         );
  GTECH_NAND2 U199 ( .A(n204), .B(n210), .Z(n209) );
  GTECH_NOT U200 ( .A(n214), .Z(n204) );
  GTECH_OR3 U201 ( .A(n206), .B(n210), .C(n214), .Z(n196) );
  GTECH_NAND2 U202 ( .A(n198), .B(n211), .Z(n214) );
  GTECH_NOT U203 ( .A(n200), .Z(n210) );
  GTECH_OR2 U204 ( .A(n198), .B(n199), .Z(n213) );
  GTECH_MUX2 U205 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n162), .Z(n198) );
  GTECH_NOT U206 ( .A(n215), .Z(n192) );
  GTECH_OAI21 U207 ( .A(n211), .B(n199), .C(n197), .Z(n215) );
  GTECH_OR3 U208 ( .A(n216), .B(n200), .C(n217), .Z(n197) );
  GTECH_NOT U209 ( .A(n211), .Z(n217) );
  GTECH_NAND2 U210 ( .A(n200), .B(n206), .Z(n199) );
  GTECH_NOT U211 ( .A(n216), .Z(n206) );
  GTECH_MUX2 U212 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n162), .Z(n216) );
  GTECH_MUX2 U213 ( .A(n30), .B(n26), .S(n162), .Z(n200) );
  GTECH_MUX2 U214 ( .A(n32), .B(n28), .S(n162), .Z(n211) );
  GTECH_AO21 U215 ( .A(period[0]), .B(n218), .C(reset), .Z(N9) );
  GTECH_AND2 U216 ( .A(period[11]), .B(n218), .Z(N21) );
  GTECH_NAND2 U217 ( .A(n191), .B(n219), .Z(N20) );
  GTECH_AO21 U218 ( .A(period[10]), .B(n218), .C(reset), .Z(N19) );
  GTECH_AND2 U219 ( .A(period[9]), .B(n218), .Z(N18) );
  GTECH_AND2 U220 ( .A(period[8]), .B(n218), .Z(N17) );
  GTECH_AND2 U221 ( .A(N170), .B(n220), .Z(N168) );
  GTECH_NAND2 U222 ( .A(n221), .B(n222), .Z(N167) );
  GTECH_AND2 U223 ( .A(N170), .B(n223), .Z(N166) );
  GTECH_NOT U224 ( .A(n20), .Z(n223) );
  GTECH_AND2 U225 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U226 ( .A(N170), .B(n224), .Z(N162) );
  GTECH_NOT U227 ( .A(n16), .Z(n224) );
  GTECH_NOT U228 ( .A(n225), .Z(N170) );
  GTECH_NAND2 U229 ( .A(n226), .B(n191), .Z(n225) );
  GTECH_MUX2 U230 ( .A(n227), .B(n228), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U231 ( .A(ten_count[2]), .B(n229), .C(n230), .Z(n228) );
  GTECH_NOT U232 ( .A(n231), .Z(n230) );
  GTECH_AND2 U233 ( .A(n232), .B(ten_count[2]), .Z(n227) );
  GTECH_AO21 U234 ( .A(period[7]), .B(n218), .C(reset), .Z(N16) );
  GTECH_OAI21 U235 ( .A(n233), .B(n234), .C(n235), .Z(N159) );
  GTECH_NOT U236 ( .A(n236), .Z(n235) );
  GTECH_MUX2 U237 ( .A(n232), .B(n231), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U238 ( .A(n24), .B(n229), .C(n237), .Z(n231) );
  GTECH_NOT U239 ( .A(n238), .Z(n232) );
  GTECH_OR3 U240 ( .A(n239), .B(n240), .C(n229), .Z(n238) );
  GTECH_NOT U241 ( .A(n24), .Z(n240) );
  GTECH_MUX2 U242 ( .A(n241), .B(N154), .S(n24), .Z(N156) );
  GTECH_AND2 U243 ( .A(N152), .B(ten_count[0]), .Z(n241) );
  GTECH_NOT U244 ( .A(n237), .Z(N154) );
  GTECH_NAND2 U245 ( .A(N152), .B(n239), .Z(n237) );
  GTECH_NOT U246 ( .A(ten_count[0]), .Z(n239) );
  GTECH_NAND2 U247 ( .A(n242), .B(n163), .Z(N151) );
  GTECH_OA21 U248 ( .A(n14), .B(n243), .C(n221), .Z(n242) );
  GTECH_NOT U249 ( .A(n244), .Z(n221) );
  GTECH_OAI21 U250 ( .A(n245), .B(n233), .C(n191), .Z(n244) );
  GTECH_AND2 U251 ( .A(period[6]), .B(n218), .Z(N15) );
  GTECH_OAI21 U252 ( .A(n229), .B(n243), .C(n246), .Z(N148) );
  GTECH_MUX2 U253 ( .A(n247), .B(n248), .S(n177), .Z(n246) );
  GTECH_OR3 U254 ( .A(n249), .B(n250), .C(n178), .Z(n248) );
  GTECH_AND_NOT U255 ( .A(n251), .B(n252), .Z(n247) );
  GTECH_MUX2 U256 ( .A(n229), .B(n250), .S(n178), .Z(n251) );
  GTECH_OR3 U257 ( .A(n226), .B(n253), .C(n236), .Z(N147) );
  GTECH_OAI21 U258 ( .A(n14), .B(n254), .C(n191), .Z(n236) );
  GTECH_NAND2 U259 ( .A(n243), .B(n163), .Z(n254) );
  GTECH_NAND4 U260 ( .A(n178), .B(n177), .C(n164), .D(n255), .Z(n243) );
  GTECH_NOR3 U261 ( .A(edge_detect0_q2), .B(n12), .C(n245), .Z(n253) );
  GTECH_NOT U262 ( .A(n222), .Z(n226) );
  GTECH_NAND2 U263 ( .A(n14), .B(n256), .Z(n222) );
  GTECH_NOT U264 ( .A(n163), .Z(n256) );
  GTECH_MUX2 U265 ( .A(n252), .B(n257), .S(n178), .Z(N146) );
  GTECH_OAI21 U266 ( .A(n249), .B(n250), .C(n258), .Z(n257) );
  GTECH_OAI21 U267 ( .A(n259), .B(n250), .C(n260), .Z(n252) );
  GTECH_OAI21 U268 ( .A(n261), .B(n262), .C(N152), .Z(n260) );
  GTECH_NOT U269 ( .A(n249), .Z(n259) );
  GTECH_OR3 U270 ( .A(n22), .B(n164), .C(n263), .Z(n249) );
  GTECH_NAND2 U271 ( .A(n264), .B(n258), .Z(N144) );
  GTECH_OR3 U272 ( .A(n261), .B(n229), .C(n262), .Z(n258) );
  GTECH_NOT U273 ( .A(n164), .Z(n262) );
  GTECH_NOT U274 ( .A(n255), .Z(n261) );
  GTECH_MUX2 U275 ( .A(n265), .B(n266), .S(n164), .Z(n264) );
  GTECH_OR3 U276 ( .A(n22), .B(n263), .C(n250), .Z(n266) );
  GTECH_OA21 U277 ( .A(n229), .B(n255), .C(n267), .Z(n265) );
  GTECH_OAI21 U278 ( .A(n22), .B(n263), .C(N150), .Z(n267) );
  GTECH_NAND2 U279 ( .A(n268), .B(n220), .Z(n255) );
  GTECH_NOT U280 ( .A(n22), .Z(n220) );
  GTECH_OAI21 U281 ( .A(n250), .B(n269), .C(n270), .Z(N142) );
  GTECH_MUX2 U282 ( .A(n271), .B(n272), .S(n22), .Z(n270) );
  GTECH_NAND2 U283 ( .A(N152), .B(n268), .Z(n272) );
  GTECH_XNOR2 U284 ( .A(n22), .B(n263), .Z(n269) );
  GTECH_OR3 U285 ( .A(n20), .B(n16), .C(n273), .Z(n263) );
  GTECH_NAND2 U286 ( .A(n274), .B(n271), .Z(N140) );
  GTECH_NAND2 U287 ( .A(n275), .B(N152), .Z(n271) );
  GTECH_NOT U288 ( .A(n229), .Z(N152) );
  GTECH_NOT U289 ( .A(n268), .Z(n275) );
  GTECH_NAND2 U290 ( .A(n20), .B(n273), .Z(n268) );
  GTECH_MUX2 U291 ( .A(n276), .B(n277), .S(n20), .Z(n274) );
  GTECH_OR3 U292 ( .A(n16), .B(n273), .C(n250), .Z(n277) );
  GTECH_NOT U293 ( .A(sub_85_carry_2_), .Z(n273) );
  GTECH_AND2 U294 ( .A(n278), .B(n279), .Z(n276) );
  GTECH_MUX2 U295 ( .A(n250), .B(n229), .S(sub_85_carry_2_), .Z(n278) );
  GTECH_AO21 U296 ( .A(period[5]), .B(n218), .C(reset), .Z(N14) );
  GTECH_MUX2 U297 ( .A(n280), .B(n281), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U298 ( .A(n279), .Z(n281) );
  GTECH_OAI21 U299 ( .A(n16), .B(n250), .C(n229), .Z(n280) );
  GTECH_OAI21 U300 ( .A(n16), .B(n229), .C(n279), .Z(N136) );
  GTECH_NAND2 U301 ( .A(n16), .B(N150), .Z(n279) );
  GTECH_NOT U302 ( .A(n250), .Z(N150) );
  GTECH_NAND2 U303 ( .A(n282), .B(n191), .Z(n250) );
  GTECH_NOT U304 ( .A(n234), .Z(n282) );
  GTECH_NAND2 U305 ( .A(n163), .B(n283), .Z(n229) );
  GTECH_NOT U306 ( .A(N169), .Z(n283) );
  GTECH_NAND2 U307 ( .A(n191), .B(n245), .Z(N169) );
  GTECH_NOT U308 ( .A(n14), .Z(n245) );
  GTECH_AND2 U309 ( .A(n284), .B(n285), .Z(N134) );
  GTECH_OAI21 U310 ( .A(n176), .B(n286), .C(n165), .Z(n285) );
  GTECH_NAND2 U311 ( .A(n191), .B(n234), .Z(N133) );
  GTECH_NAND2 U312 ( .A(n163), .B(n14), .Z(n234) );
  GTECH_AND2 U313 ( .A(n287), .B(n284), .Z(N132) );
  GTECH_XOR2 U314 ( .A(n286), .B(n176), .Z(n287) );
  GTECH_NAND2 U315 ( .A(n288), .B(n289), .Z(n286) );
  GTECH_NOT U316 ( .A(n166), .Z(n289) );
  GTECH_NOT U317 ( .A(n290), .Z(n288) );
  GTECH_AND2 U318 ( .A(n291), .B(n284), .Z(N130) );
  GTECH_XOR2 U319 ( .A(n290), .B(n166), .Z(n291) );
  GTECH_NAND2 U320 ( .A(n292), .B(n293), .Z(n290) );
  GTECH_NOT U321 ( .A(n167), .Z(n293) );
  GTECH_NOT U322 ( .A(n294), .Z(n292) );
  GTECH_AND2 U323 ( .A(period[4]), .B(n218), .Z(N13) );
  GTECH_AND2 U324 ( .A(n295), .B(n284), .Z(N128) );
  GTECH_XOR2 U325 ( .A(n294), .B(n167), .Z(n295) );
  GTECH_NAND2 U326 ( .A(n296), .B(n297), .Z(n294) );
  GTECH_NOT U327 ( .A(n298), .Z(n296) );
  GTECH_AND2 U328 ( .A(n299), .B(n284), .Z(N126) );
  GTECH_XOR2 U329 ( .A(n298), .B(n168), .Z(n299) );
  GTECH_NAND2 U330 ( .A(n300), .B(n301), .Z(n298) );
  GTECH_NOT U331 ( .A(n169), .Z(n301) );
  GTECH_NOT U332 ( .A(n302), .Z(n300) );
  GTECH_AND2 U333 ( .A(n303), .B(n284), .Z(N124) );
  GTECH_XOR2 U334 ( .A(n302), .B(n169), .Z(n303) );
  GTECH_NAND2 U335 ( .A(n304), .B(n305), .Z(n302) );
  GTECH_NOT U336 ( .A(n170), .Z(n305) );
  GTECH_NOT U337 ( .A(n306), .Z(n304) );
  GTECH_AND2 U338 ( .A(n307), .B(n284), .Z(N122) );
  GTECH_XOR2 U339 ( .A(n306), .B(n170), .Z(n307) );
  GTECH_NAND2 U340 ( .A(n308), .B(n309), .Z(n306) );
  GTECH_NOT U341 ( .A(n171), .Z(n309) );
  GTECH_NOT U342 ( .A(n310), .Z(n308) );
  GTECH_AND2 U343 ( .A(n311), .B(n284), .Z(N120) );
  GTECH_XOR2 U344 ( .A(n310), .B(n171), .Z(n311) );
  GTECH_NAND2 U345 ( .A(n312), .B(n313), .Z(n310) );
  GTECH_NOT U346 ( .A(n314), .Z(n312) );
  GTECH_AO21 U347 ( .A(period[3]), .B(n218), .C(reset), .Z(N12) );
  GTECH_AND2 U348 ( .A(n315), .B(n284), .Z(N118) );
  GTECH_XOR2 U349 ( .A(n314), .B(n172), .Z(n315) );
  GTECH_OR3 U350 ( .A(n175), .B(n174), .C(n173), .Z(n314) );
  GTECH_OAI22 U351 ( .A(n173), .B(n316), .C(n317), .D(n318), .Z(N116) );
  GTECH_MUX2 U352 ( .A(n319), .B(n320), .S(n173), .Z(n318) );
  GTECH_NAND2 U353 ( .A(n319), .B(n321), .Z(n320) );
  GTECH_MUX2 U354 ( .A(N112), .B(n322), .S(n174), .Z(N114) );
  GTECH_AND2 U355 ( .A(n284), .B(n321), .Z(n322) );
  GTECH_NOT U356 ( .A(n175), .Z(n321) );
  GTECH_NOT U357 ( .A(n316), .Z(N112) );
  GTECH_NAND2 U358 ( .A(n284), .B(n175), .Z(n316) );
  GTECH_NOT U359 ( .A(n317), .Z(n284) );
  GTECH_NAND2 U360 ( .A(n233), .B(n191), .Z(n317) );
  GTECH_NOT U361 ( .A(n323), .Z(n233) );
  GTECH_AOI222 U362 ( .A(n324), .B(n325), .C(update_period[11]), .D(n165), .E(
        n326), .F(n327), .Z(n323) );
  GTECH_OAI2N2 U363 ( .A(n328), .B(n329), .C(n330), .D(n331), .Z(n326) );
  GTECH_AO22 U364 ( .A(update_period[8]), .B(n332), .C(n166), .D(
        update_period[9]), .Z(n331) );
  GTECH_OA21 U365 ( .A(n166), .B(update_period[9]), .C(n167), .Z(n332) );
  GTECH_OA21 U366 ( .A(n333), .B(n334), .C(n335), .Z(n325) );
  GTECH_AND2 U367 ( .A(n330), .B(n327), .Z(n335) );
  GTECH_NAND2 U368 ( .A(n336), .B(n337), .Z(n327) );
  GTECH_NOT U369 ( .A(update_period[11]), .Z(n337) );
  GTECH_NOT U370 ( .A(n165), .Z(n336) );
  GTECH_NAND2 U371 ( .A(n329), .B(n328), .Z(n330) );
  GTECH_NOT U372 ( .A(n176), .Z(n328) );
  GTECH_NOT U373 ( .A(update_period[10]), .Z(n329) );
  GTECH_OAI2N2 U374 ( .A(n297), .B(n338), .C(n339), .D(n340), .Z(n334) );
  GTECH_AND2 U375 ( .A(update_period[6]), .B(n169), .Z(n339) );
  GTECH_OAI2N2 U376 ( .A(n341), .B(n342), .C(n343), .D(n344), .Z(n333) );
  GTECH_ADD_ABC U377 ( .A(n345), .B(n170), .C(update_period[5]), .COUT(n344)
         );
  GTECH_AND2 U378 ( .A(update_period[4]), .B(n171), .Z(n345) );
  GTECH_OAI21 U379 ( .A(update_period[4]), .B(n171), .C(n343), .Z(n342) );
  GTECH_NOT U380 ( .A(n346), .Z(n343) );
  GTECH_OAI21 U381 ( .A(update_period[6]), .B(n169), .C(n340), .Z(n346) );
  GTECH_NAND2 U382 ( .A(n338), .B(n297), .Z(n340) );
  GTECH_NOT U383 ( .A(n168), .Z(n297) );
  GTECH_NOT U384 ( .A(update_period[7]), .Z(n338) );
  GTECH_OAI22 U385 ( .A(update_period[5]), .B(n170), .C(n347), .D(n348), .Z(
        n341) );
  GTECH_OAI22 U386 ( .A(n349), .B(n350), .C(n313), .D(n351), .Z(n348) );
  GTECH_NAND2 U387 ( .A(n173), .B(update_period[2]), .Z(n350) );
  GTECH_NOR3 U388 ( .A(n352), .B(n353), .C(n349), .Z(n347) );
  GTECH_NOT U389 ( .A(n354), .Z(n349) );
  GTECH_NAND2 U390 ( .A(n351), .B(n313), .Z(n354) );
  GTECH_NOT U391 ( .A(n172), .Z(n313) );
  GTECH_NOT U392 ( .A(update_period[3]), .Z(n351) );
  GTECH_OAI21 U393 ( .A(update_period[2]), .B(n173), .C(n355), .Z(n353) );
  GTECH_OR_NOT U394 ( .A(n174), .B(n356), .Z(n355) );
  GTECH_OA21 U395 ( .A(n319), .B(n356), .C(n180), .Z(n352) );
  GTECH_NAND2 U396 ( .A(update_period[0]), .B(n175), .Z(n356) );
  GTECH_NOT U397 ( .A(n174), .Z(n319) );
  GTECH_OA22 U398 ( .A(n167), .B(update_period[8]), .C(n166), .D(
        update_period[9]), .Z(n324) );
  GTECH_AO21 U399 ( .A(period[2]), .B(n218), .C(reset), .Z(N11) );
  GTECH_AO21 U400 ( .A(period[1]), .B(n218), .C(reset), .Z(N10) );
  GTECH_NOT U401 ( .A(n219), .Z(n218) );
  GTECH_NAND2 U402 ( .A(period_load), .B(n191), .Z(n219) );
  GTECH_NOT U403 ( .A(reset), .Z(n191) );
endmodule

