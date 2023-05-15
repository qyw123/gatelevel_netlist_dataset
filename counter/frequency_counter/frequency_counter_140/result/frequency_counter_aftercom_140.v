
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
         n26, n28, n30, n32, n75, n153, n157, sub_85_carry_2_, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
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

  GTECH_FJK1S update_period_reg_11_ ( .J(n75), .K(n75), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n75), .K(n75), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n75), .K(n75), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n75), .K(n75), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n75), .K(n75), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n75), .K(n75), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n75), .K(n75), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n75), .K(n75), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n75), .K(n75), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n75), .K(n75), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n75), .K(n75), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n75), .K(n75), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n75), .K(n75), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n170) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n75), .K(n75), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n169) );
  GTECH_FJK1S state_reg_0_ ( .J(n75), .K(n75), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n75), .K(n75), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n157) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n75), .K(n75), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n75), .K(n75), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n75), .K(n75), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n75), .K(n75), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n75), .K(n75), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n75), .K(n75), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n75), .K(n75), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n75), .K(n75), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n161) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n75), .K(n75), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n160) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n75), .K(n75), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n159) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n75), .K(n75), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n158) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n75), .K(n75), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n184) );
  GTECH_FJK1S update_digits_reg ( .J(n75), .K(n75), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n75), .K(n75), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n183) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n75), .K(n75), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n75), .K(n75), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n75), .K(n75), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n75), .K(n75), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n75), .K(n75), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n75), .K(n75), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n75), .K(n75), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n75), .K(n75), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n75), .K(n75), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n75), .K(n75), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n75), .K(n75), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n75), .K(n75), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n153) );
  GTECH_ZERO U166 ( .Z(n75) );
  GTECH_NAND2 U167 ( .A(n15), .B(n185), .Z(seven_segment0_N9) );
  GTECH_AND2 U168 ( .A(ten_count[0]), .B(n185), .Z(seven_segment0_N8) );
  GTECH_AND2 U169 ( .A(n153), .B(n185), .Z(seven_segment0_N6) );
  GTECH_AND2 U170 ( .A(unit_count[3]), .B(n185), .Z(seven_segment0_N22) );
  GTECH_AND2 U171 ( .A(unit_count[2]), .B(n185), .Z(seven_segment0_N20) );
  GTECH_AND2 U172 ( .A(unit_count[1]), .B(n185), .Z(seven_segment0_N18) );
  GTECH_AND2 U173 ( .A(unit_count[0]), .B(n185), .Z(seven_segment0_N16) );
  GTECH_AND2 U174 ( .A(ten_count[3]), .B(n185), .Z(seven_segment0_N14) );
  GTECH_AND2 U175 ( .A(ten_count[2]), .B(n185), .Z(seven_segment0_N12) );
  GTECH_AND2 U176 ( .A(ten_count[1]), .B(n185), .Z(seven_segment0_N10) );
  GTECH_NAND2 U177 ( .A(n186), .B(n187), .Z(segments[6]) );
  GTECH_OAI21 U178 ( .A(n188), .B(n189), .C(n190), .Z(segments[3]) );
  GTECH_AND_NOT U179 ( .A(n191), .B(segments[4]), .Z(n190) );
  GTECH_OAI21 U180 ( .A(n192), .B(n189), .C(n193), .Z(segments[4]) );
  GTECH_NAND2 U181 ( .A(n194), .B(n195), .Z(segments[2]) );
  GTECH_NOT U182 ( .A(segments[5]), .Z(n195) );
  GTECH_NAND2 U183 ( .A(n196), .B(n187), .Z(segments[5]) );
  GTECH_AND2 U184 ( .A(n197), .B(n191), .Z(n187) );
  GTECH_AOI21 U185 ( .A(n198), .B(n199), .C(n200), .Z(n197) );
  GTECH_AND_NOT U186 ( .A(n188), .B(n189), .Z(n198) );
  GTECH_AOI21 U187 ( .A(n201), .B(n202), .C(n203), .Z(n196) );
  GTECH_NOT U188 ( .A(n193), .Z(n203) );
  GTECH_NOT U189 ( .A(n204), .Z(n194) );
  GTECH_OR3 U190 ( .A(n200), .B(n205), .C(n204), .Z(segments[1]) );
  GTECH_OAI21 U191 ( .A(n189), .B(n199), .C(n206), .Z(n204) );
  GTECH_NOT U192 ( .A(n207), .Z(n200) );
  GTECH_NAND2 U193 ( .A(n208), .B(n199), .Z(n207) );
  GTECH_NAND4 U194 ( .A(n186), .B(n209), .C(n191), .D(n193), .Z(segments[0])
         );
  GTECH_NAND2 U195 ( .A(n201), .B(n199), .Z(n193) );
  GTECH_NOT U196 ( .A(n192), .Z(n199) );
  GTECH_NOT U197 ( .A(n206), .Z(n201) );
  GTECH_NAND2 U198 ( .A(n208), .B(n192), .Z(n191) );
  GTECH_NOT U199 ( .A(n210), .Z(n208) );
  GTECH_OR3 U200 ( .A(n211), .B(n202), .C(n212), .Z(n210) );
  GTECH_NOT U201 ( .A(n213), .Z(n202) );
  GTECH_OR_NOT U202 ( .A(n189), .B(n192), .Z(n209) );
  GTECH_MUX2 U203 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n153), .Z(n192) );
  GTECH_NOT U204 ( .A(n205), .Z(n186) );
  GTECH_OAI22 U205 ( .A(n188), .B(n189), .C(n213), .D(n206), .Z(n205) );
  GTECH_NAND2 U206 ( .A(n214), .B(n212), .Z(n206) );
  GTECH_NOT U207 ( .A(n188), .Z(n212) );
  GTECH_NAND2 U208 ( .A(n213), .B(n211), .Z(n189) );
  GTECH_NOT U209 ( .A(n214), .Z(n211) );
  GTECH_MUX2 U210 ( .A(n30), .B(n26), .S(n153), .Z(n214) );
  GTECH_MUX2 U211 ( .A(n32), .B(n28), .S(n153), .Z(n213) );
  GTECH_MUX2 U212 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n153), .Z(n188) );
  GTECH_AO21 U213 ( .A(period[0]), .B(n215), .C(reset), .Z(N9) );
  GTECH_AND2 U214 ( .A(period[11]), .B(n215), .Z(N21) );
  GTECH_NAND2 U215 ( .A(n185), .B(n216), .Z(N20) );
  GTECH_AO21 U216 ( .A(period[10]), .B(n215), .C(reset), .Z(N19) );
  GTECH_AND2 U217 ( .A(period[9]), .B(n215), .Z(N18) );
  GTECH_AND2 U218 ( .A(period[8]), .B(n215), .Z(N17) );
  GTECH_AND2 U219 ( .A(N170), .B(n217), .Z(N168) );
  GTECH_NAND2 U220 ( .A(n218), .B(n219), .Z(N167) );
  GTECH_NOT U221 ( .A(n220), .Z(n218) );
  GTECH_AND2 U222 ( .A(N170), .B(n221), .Z(N166) );
  GTECH_NOT U223 ( .A(n20), .Z(n221) );
  GTECH_AND2 U224 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U225 ( .A(N170), .B(n222), .Z(N162) );
  GTECH_NOT U226 ( .A(n16), .Z(n222) );
  GTECH_NOT U227 ( .A(n223), .Z(N170) );
  GTECH_NAND2 U228 ( .A(n224), .B(n185), .Z(n223) );
  GTECH_MUX2 U229 ( .A(n225), .B(n226), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U230 ( .A(ten_count[2]), .B(n227), .C(n228), .Z(n226) );
  GTECH_NOT U231 ( .A(n229), .Z(n228) );
  GTECH_AND2 U232 ( .A(n230), .B(ten_count[2]), .Z(n225) );
  GTECH_AO21 U233 ( .A(period[7]), .B(n215), .C(reset), .Z(N16) );
  GTECH_OAI21 U234 ( .A(n231), .B(n232), .C(n233), .Z(N159) );
  GTECH_NOT U235 ( .A(n234), .Z(n233) );
  GTECH_MUX2 U236 ( .A(n230), .B(n229), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U237 ( .A(ten_count[1]), .B(n227), .C(n235), .Z(n229) );
  GTECH_NOT U238 ( .A(n236), .Z(n230) );
  GTECH_OR3 U239 ( .A(n237), .B(n238), .C(n227), .Z(n236) );
  GTECH_NOT U240 ( .A(ten_count[1]), .Z(n238) );
  GTECH_MUX2 U241 ( .A(n239), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U242 ( .A(N152), .B(ten_count[0]), .Z(n239) );
  GTECH_NOT U243 ( .A(n235), .Z(N154) );
  GTECH_NAND2 U244 ( .A(N152), .B(n237), .Z(n235) );
  GTECH_NOT U245 ( .A(ten_count[0]), .Z(n237) );
  GTECH_NAND2 U246 ( .A(n240), .B(n157), .Z(N151) );
  GTECH_AOI21 U247 ( .A(n241), .B(n242), .C(n220), .Z(n240) );
  GTECH_OAI21 U248 ( .A(n242), .B(n231), .C(n185), .Z(n220) );
  GTECH_AND2 U249 ( .A(period[6]), .B(n215), .Z(N15) );
  GTECH_OAI21 U250 ( .A(n227), .B(n243), .C(n244), .Z(N148) );
  GTECH_MUX2 U251 ( .A(n245), .B(n246), .S(n169), .Z(n244) );
  GTECH_OR3 U252 ( .A(n247), .B(n248), .C(n170), .Z(n246) );
  GTECH_AND_NOT U253 ( .A(n249), .B(n250), .Z(n245) );
  GTECH_MUX2 U254 ( .A(n227), .B(n248), .S(n170), .Z(n249) );
  GTECH_OR3 U255 ( .A(n224), .B(n251), .C(n234), .Z(N147) );
  GTECH_NAND2 U256 ( .A(n185), .B(n252), .Z(n234) );
  GTECH_OR3 U257 ( .A(n14), .B(n241), .C(n253), .Z(n252) );
  GTECH_NOT U258 ( .A(n243), .Z(n241) );
  GTECH_NAND4 U259 ( .A(n183), .B(n170), .C(n169), .D(n254), .Z(n243) );
  GTECH_AND3 U260 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n251) );
  GTECH_NOT U261 ( .A(n219), .Z(n224) );
  GTECH_NAND2 U262 ( .A(n14), .B(n253), .Z(n219) );
  GTECH_NOT U263 ( .A(n157), .Z(n253) );
  GTECH_MUX2 U264 ( .A(n250), .B(n255), .S(n170), .Z(N146) );
  GTECH_OAI21 U265 ( .A(n247), .B(n248), .C(n256), .Z(n255) );
  GTECH_OAI21 U266 ( .A(n257), .B(n248), .C(n258), .Z(n250) );
  GTECH_OAI21 U267 ( .A(n259), .B(n260), .C(N152), .Z(n258) );
  GTECH_NOT U268 ( .A(n247), .Z(n257) );
  GTECH_OR3 U269 ( .A(n183), .B(n22), .C(n261), .Z(n247) );
  GTECH_NAND2 U270 ( .A(n262), .B(n256), .Z(N144) );
  GTECH_OR3 U271 ( .A(n259), .B(n227), .C(n260), .Z(n256) );
  GTECH_NOT U272 ( .A(n183), .Z(n260) );
  GTECH_NOT U273 ( .A(n254), .Z(n259) );
  GTECH_MUX2 U274 ( .A(n263), .B(n264), .S(n183), .Z(n262) );
  GTECH_OR3 U275 ( .A(n22), .B(n261), .C(n248), .Z(n264) );
  GTECH_OA22 U276 ( .A(n265), .B(n248), .C(n227), .D(n254), .Z(n263) );
  GTECH_NAND2 U277 ( .A(n266), .B(n217), .Z(n254) );
  GTECH_AND2 U278 ( .A(n267), .B(n217), .Z(n265) );
  GTECH_NOT U279 ( .A(n22), .Z(n217) );
  GTECH_OAI21 U280 ( .A(n248), .B(n268), .C(n269), .Z(N142) );
  GTECH_MUX2 U281 ( .A(n270), .B(n271), .S(n22), .Z(n269) );
  GTECH_NAND2 U282 ( .A(N152), .B(n266), .Z(n271) );
  GTECH_XOR2 U283 ( .A(n22), .B(n267), .Z(n268) );
  GTECH_NOT U284 ( .A(n261), .Z(n267) );
  GTECH_OR3 U285 ( .A(n20), .B(n16), .C(n272), .Z(n261) );
  GTECH_NAND2 U286 ( .A(n273), .B(n270), .Z(N140) );
  GTECH_NAND2 U287 ( .A(n274), .B(N152), .Z(n270) );
  GTECH_NOT U288 ( .A(n227), .Z(N152) );
  GTECH_NOT U289 ( .A(n266), .Z(n274) );
  GTECH_NAND2 U290 ( .A(n20), .B(n272), .Z(n266) );
  GTECH_MUX2 U291 ( .A(n275), .B(n276), .S(n20), .Z(n273) );
  GTECH_OR3 U292 ( .A(n16), .B(n272), .C(n248), .Z(n276) );
  GTECH_NOT U293 ( .A(sub_85_carry_2_), .Z(n272) );
  GTECH_AND2 U294 ( .A(n277), .B(n278), .Z(n275) );
  GTECH_MUX2 U295 ( .A(n248), .B(n227), .S(sub_85_carry_2_), .Z(n277) );
  GTECH_AO21 U296 ( .A(period[5]), .B(n215), .C(reset), .Z(N14) );
  GTECH_MUX2 U297 ( .A(n279), .B(n280), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U298 ( .A(n278), .Z(n280) );
  GTECH_OAI21 U299 ( .A(n16), .B(n248), .C(n227), .Z(n279) );
  GTECH_OAI21 U300 ( .A(n16), .B(n227), .C(n278), .Z(N136) );
  GTECH_NAND2 U301 ( .A(n16), .B(N150), .Z(n278) );
  GTECH_NOT U302 ( .A(n248), .Z(N150) );
  GTECH_NAND2 U303 ( .A(n281), .B(n185), .Z(n248) );
  GTECH_NOT U304 ( .A(n232), .Z(n281) );
  GTECH_NAND2 U305 ( .A(n157), .B(n282), .Z(n227) );
  GTECH_NOT U306 ( .A(N169), .Z(n282) );
  GTECH_NAND2 U307 ( .A(n185), .B(n242), .Z(N169) );
  GTECH_NOT U308 ( .A(n14), .Z(n242) );
  GTECH_AND2 U309 ( .A(n283), .B(n284), .Z(N134) );
  GTECH_OAI21 U310 ( .A(n168), .B(n285), .C(n184), .Z(n284) );
  GTECH_NAND2 U311 ( .A(n185), .B(n232), .Z(N133) );
  GTECH_NAND2 U312 ( .A(n157), .B(n14), .Z(n232) );
  GTECH_AND2 U313 ( .A(n286), .B(n283), .Z(N132) );
  GTECH_XOR2 U314 ( .A(n285), .B(n168), .Z(n286) );
  GTECH_NAND2 U315 ( .A(n287), .B(n288), .Z(n285) );
  GTECH_NOT U316 ( .A(n158), .Z(n288) );
  GTECH_NOT U317 ( .A(n289), .Z(n287) );
  GTECH_AND2 U318 ( .A(n290), .B(n283), .Z(N130) );
  GTECH_XOR2 U319 ( .A(n289), .B(n158), .Z(n290) );
  GTECH_NAND2 U320 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_NOT U321 ( .A(n159), .Z(n292) );
  GTECH_NOT U322 ( .A(n293), .Z(n291) );
  GTECH_AND2 U323 ( .A(period[4]), .B(n215), .Z(N13) );
  GTECH_AND2 U324 ( .A(n294), .B(n283), .Z(N128) );
  GTECH_XOR2 U325 ( .A(n293), .B(n159), .Z(n294) );
  GTECH_NAND2 U326 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_NOT U327 ( .A(n160), .Z(n296) );
  GTECH_NOT U328 ( .A(n297), .Z(n295) );
  GTECH_AND2 U329 ( .A(n298), .B(n283), .Z(N126) );
  GTECH_XOR2 U330 ( .A(n297), .B(n160), .Z(n298) );
  GTECH_NAND2 U331 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U332 ( .A(n161), .Z(n300) );
  GTECH_NOT U333 ( .A(n301), .Z(n299) );
  GTECH_AND2 U334 ( .A(n302), .B(n283), .Z(N124) );
  GTECH_XOR2 U335 ( .A(n301), .B(n161), .Z(n302) );
  GTECH_NAND2 U336 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U337 ( .A(n305), .Z(n303) );
  GTECH_AND2 U338 ( .A(n306), .B(n283), .Z(N122) );
  GTECH_XOR2 U339 ( .A(n305), .B(n162), .Z(n306) );
  GTECH_NAND2 U340 ( .A(n307), .B(n308), .Z(n305) );
  GTECH_NOT U341 ( .A(n309), .Z(n307) );
  GTECH_AND2 U342 ( .A(n310), .B(n283), .Z(N120) );
  GTECH_XOR2 U343 ( .A(n309), .B(n163), .Z(n310) );
  GTECH_NAND2 U344 ( .A(n311), .B(n312), .Z(n309) );
  GTECH_NOT U345 ( .A(n313), .Z(n311) );
  GTECH_AO21 U346 ( .A(period[3]), .B(n215), .C(reset), .Z(N12) );
  GTECH_AND2 U347 ( .A(n314), .B(n283), .Z(N118) );
  GTECH_XOR2 U348 ( .A(n313), .B(n164), .Z(n314) );
  GTECH_OR3 U349 ( .A(n167), .B(n166), .C(n165), .Z(n313) );
  GTECH_OAI22 U350 ( .A(n165), .B(n315), .C(n316), .D(n317), .Z(N116) );
  GTECH_MUX2 U351 ( .A(n318), .B(n319), .S(n165), .Z(n317) );
  GTECH_NAND2 U352 ( .A(n318), .B(n320), .Z(n319) );
  GTECH_NOT U353 ( .A(n166), .Z(n318) );
  GTECH_MUX2 U354 ( .A(N112), .B(n321), .S(n166), .Z(N114) );
  GTECH_AND2 U355 ( .A(n283), .B(n320), .Z(n321) );
  GTECH_NOT U356 ( .A(n167), .Z(n320) );
  GTECH_NOT U357 ( .A(n315), .Z(N112) );
  GTECH_NAND2 U358 ( .A(n283), .B(n167), .Z(n315) );
  GTECH_NOT U359 ( .A(n316), .Z(n283) );
  GTECH_NAND2 U360 ( .A(n231), .B(n185), .Z(n316) );
  GTECH_NOT U361 ( .A(n322), .Z(n231) );
  GTECH_AOI222 U362 ( .A(n323), .B(n324), .C(update_period[11]), .D(n184), .E(
        n325), .F(n326), .Z(n322) );
  GTECH_OAI22 U363 ( .A(n327), .B(n328), .C(n329), .D(n330), .Z(n325) );
  GTECH_AOI2N2 U364 ( .A(n158), .B(update_period[9]), .C(n331), .D(n332), .Z(
        n330) );
  GTECH_NOT U365 ( .A(update_period[8]), .Z(n332) );
  GTECH_OAI21 U366 ( .A(n158), .B(update_period[9]), .C(n159), .Z(n331) );
  GTECH_NOT U367 ( .A(n333), .Z(n329) );
  GTECH_AND3 U368 ( .A(n333), .B(n334), .C(n326), .Z(n324) );
  GTECH_NAND2 U369 ( .A(n335), .B(n336), .Z(n326) );
  GTECH_NOT U370 ( .A(update_period[11]), .Z(n336) );
  GTECH_NOT U371 ( .A(n184), .Z(n335) );
  GTECH_AO21 U372 ( .A(update_period[7]), .B(n160), .C(n337), .Z(n334) );
  GTECH_OAI21 U373 ( .A(n338), .B(n339), .C(n340), .Z(n337) );
  GTECH_OAI21 U374 ( .A(n160), .B(update_period[7]), .C(n341), .Z(n340) );
  GTECH_OAI2N2 U375 ( .A(n342), .B(n343), .C(n161), .D(n344), .Z(n341) );
  GTECH_OR_NOT U376 ( .A(n345), .B(n343), .Z(n344) );
  GTECH_NOT U377 ( .A(update_period[6]), .Z(n343) );
  GTECH_NOT U378 ( .A(n345), .Z(n342) );
  GTECH_OAI2N2 U379 ( .A(n304), .B(n346), .C(n347), .D(n348), .Z(n345) );
  GTECH_AND2 U380 ( .A(update_period[4]), .B(n163), .Z(n347) );
  GTECH_OAI21 U381 ( .A(update_period[6]), .B(n161), .C(n349), .Z(n339) );
  GTECH_OA22 U382 ( .A(n350), .B(n351), .C(update_period[7]), .D(n160), .Z(
        n349) );
  GTECH_ADD_ABC U383 ( .A(update_period[1]), .B(n352), .C(n166), .COUT(n350)
         );
  GTECH_AND2 U384 ( .A(update_period[0]), .B(n167), .Z(n352) );
  GTECH_AO21 U385 ( .A(n308), .B(n353), .C(n354), .Z(n338) );
  GTECH_OAI21 U386 ( .A(n355), .B(n351), .C(n348), .Z(n354) );
  GTECH_NAND2 U387 ( .A(n346), .B(n304), .Z(n348) );
  GTECH_NOT U388 ( .A(n162), .Z(n304) );
  GTECH_NOT U389 ( .A(update_period[5]), .Z(n346) );
  GTECH_OAI21 U390 ( .A(n312), .B(n356), .C(n357), .Z(n351) );
  GTECH_OR3 U391 ( .A(n358), .B(n359), .C(n360), .Z(n357) );
  GTECH_AOI21 U392 ( .A(n359), .B(n360), .C(n358), .Z(n355) );
  GTECH_NOT U393 ( .A(n361), .Z(n358) );
  GTECH_NAND2 U394 ( .A(n356), .B(n312), .Z(n361) );
  GTECH_NOT U395 ( .A(n164), .Z(n312) );
  GTECH_NOT U396 ( .A(update_period[3]), .Z(n356) );
  GTECH_NOT U397 ( .A(update_period[2]), .Z(n360) );
  GTECH_NOT U398 ( .A(n165), .Z(n359) );
  GTECH_NOT U399 ( .A(update_period[4]), .Z(n353) );
  GTECH_NOT U400 ( .A(n163), .Z(n308) );
  GTECH_NAND2 U401 ( .A(n328), .B(n327), .Z(n333) );
  GTECH_NOT U402 ( .A(n168), .Z(n327) );
  GTECH_NOT U403 ( .A(update_period[10]), .Z(n328) );
  GTECH_OA22 U404 ( .A(n159), .B(update_period[8]), .C(n158), .D(
        update_period[9]), .Z(n323) );
  GTECH_AO21 U405 ( .A(period[2]), .B(n215), .C(reset), .Z(N11) );
  GTECH_AO21 U406 ( .A(period[1]), .B(n215), .C(reset), .Z(N10) );
  GTECH_NOT U407 ( .A(n216), .Z(n215) );
  GTECH_NAND2 U408 ( .A(period_load), .B(n185), .Z(n216) );
  GTECH_NOT U409 ( .A(reset), .Z(n185) );
endmodule

