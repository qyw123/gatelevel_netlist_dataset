
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
         n22, n26, n28, n30, n32, n79, n159, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n178, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
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
         n353;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n79), .K(n79), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n79), .K(n79), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n79), .K(n79), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n79), .K(n79), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n79), .K(n79), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n79), .K(n79), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n79), .K(n79), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n79), .K(n79), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n79), .K(n79), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n79), .K(n79), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n79), .K(n79), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n178) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n79), .K(n79), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n79), .K(n79), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n176) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n79), .K(n79), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n175) );
  GTECH_FJK1S state_reg_0_ ( .J(n79), .K(n79), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n79), .K(n79), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n161) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n79), .K(n79), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n79), .K(n79), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n79), .K(n79), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n79), .K(n79), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n79), .K(n79), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n79), .K(n79), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n79), .K(n79), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n79), .K(n79), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n79), .K(n79), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n79), .K(n79), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n79), .K(n79), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n79), .K(n79), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n163) );
  GTECH_FJK1S update_digits_reg ( .J(n79), .K(n79), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n79), .K(n79), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n162) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n79), .K(n79), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n79), .K(n79), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n79), .K(n79), .TI(N138), .TE(N147), 
        .CP(clk), .Q(edge_counter[1]), .QN(n18) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n79), .K(n79), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n79), .K(n79), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n79), .K(n79), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n79), .K(n79), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n79), .K(n79), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n79), .K(n79), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n79), .K(n79), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n79), .K(n79), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n79), .K(n79), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n159) );
  GTECH_ZERO U170 ( .Z(n79) );
  GTECH_NAND2 U171 ( .A(n15), .B(n189), .Z(seven_segment0_N9) );
  GTECH_AND2 U172 ( .A(ten_count[0]), .B(n189), .Z(seven_segment0_N8) );
  GTECH_AND2 U173 ( .A(n159), .B(n189), .Z(seven_segment0_N6) );
  GTECH_AND2 U174 ( .A(unit_count[3]), .B(n189), .Z(seven_segment0_N22) );
  GTECH_AND2 U175 ( .A(unit_count[2]), .B(n189), .Z(seven_segment0_N20) );
  GTECH_AND2 U176 ( .A(unit_count[1]), .B(n189), .Z(seven_segment0_N18) );
  GTECH_AND2 U177 ( .A(unit_count[0]), .B(n189), .Z(seven_segment0_N16) );
  GTECH_AND2 U178 ( .A(ten_count[3]), .B(n189), .Z(seven_segment0_N14) );
  GTECH_AND2 U179 ( .A(ten_count[2]), .B(n189), .Z(seven_segment0_N12) );
  GTECH_AND2 U180 ( .A(ten_count[1]), .B(n189), .Z(seven_segment0_N10) );
  GTECH_NAND2 U181 ( .A(n190), .B(n191), .Z(segments[6]) );
  GTECH_NAND2 U182 ( .A(n192), .B(n190), .Z(segments[5]) );
  GTECH_OA21 U183 ( .A(n193), .B(n194), .C(n195), .Z(n192) );
  GTECH_NAND3 U184 ( .A(n196), .B(n197), .C(n198), .Z(segments[3]) );
  GTECH_NOT U185 ( .A(segments[4]), .Z(n197) );
  GTECH_OAI21 U186 ( .A(n199), .B(n200), .C(n195), .Z(segments[4]) );
  GTECH_NAND3 U187 ( .A(n190), .B(n194), .C(n201), .Z(segments[2]) );
  GTECH_AND3 U188 ( .A(n202), .B(n203), .C(n198), .Z(n190) );
  GTECH_NAND3 U189 ( .A(n204), .B(n205), .C(n206), .Z(n203) );
  GTECH_NAND3 U190 ( .A(n202), .B(n194), .C(n207), .Z(segments[1]) );
  GTECH_OA21 U191 ( .A(n204), .B(n200), .C(n196), .Z(n207) );
  GTECH_OR4 U192 ( .A(n208), .B(n209), .C(n199), .D(n210), .Z(n202) );
  GTECH_NAND3 U193 ( .A(n191), .B(n198), .C(n201), .Z(segments[0]) );
  GTECH_NOT U194 ( .A(n211), .Z(n201) );
  GTECH_OAI21 U195 ( .A(n204), .B(n200), .C(n195), .Z(n211) );
  GTECH_NAND2 U196 ( .A(n212), .B(n204), .Z(n195) );
  GTECH_NOT U197 ( .A(n194), .Z(n212) );
  GTECH_OR4 U198 ( .A(n208), .B(n204), .C(n209), .D(n210), .Z(n198) );
  GTECH_NOT U199 ( .A(n199), .Z(n204) );
  GTECH_MUX2 U200 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n159), .Z(n199) );
  GTECH_NOT U201 ( .A(n193), .Z(n208) );
  GTECH_NOT U202 ( .A(n213), .Z(n191) );
  GTECH_OAI21 U203 ( .A(n193), .B(n194), .C(n196), .Z(n213) );
  GTECH_NAND2 U204 ( .A(n205), .B(n209), .Z(n196) );
  GTECH_NOT U205 ( .A(n200), .Z(n205) );
  GTECH_NAND2 U206 ( .A(n193), .B(n210), .Z(n200) );
  GTECH_NOT U207 ( .A(n214), .Z(n210) );
  GTECH_NAND2 U208 ( .A(n214), .B(n209), .Z(n194) );
  GTECH_NOT U209 ( .A(n206), .Z(n209) );
  GTECH_MUX2 U210 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n159), .Z(n206) );
  GTECH_MUX2 U211 ( .A(n30), .B(n26), .S(n159), .Z(n214) );
  GTECH_MUX2 U212 ( .A(n32), .B(n28), .S(n159), .Z(n193) );
  GTECH_AO21 U213 ( .A(period[0]), .B(n215), .C(reset), .Z(N9) );
  GTECH_AND2 U214 ( .A(period[11]), .B(n215), .Z(N21) );
  GTECH_NAND2 U215 ( .A(n189), .B(n216), .Z(N20) );
  GTECH_AO21 U216 ( .A(period[10]), .B(n215), .C(reset), .Z(N19) );
  GTECH_AND2 U217 ( .A(period[9]), .B(n215), .Z(N18) );
  GTECH_AND2 U218 ( .A(period[8]), .B(n215), .Z(N17) );
  GTECH_AND2 U219 ( .A(N170), .B(n217), .Z(N168) );
  GTECH_NAND2 U220 ( .A(n218), .B(n219), .Z(N167) );
  GTECH_AND2 U221 ( .A(N170), .B(n220), .Z(N166) );
  GTECH_AND2 U222 ( .A(N170), .B(n221), .Z(N164) );
  GTECH_AND2 U223 ( .A(N170), .B(n222), .Z(N162) );
  GTECH_NOT U224 ( .A(n223), .Z(N170) );
  GTECH_NAND2 U225 ( .A(n224), .B(n189), .Z(n223) );
  GTECH_NOT U226 ( .A(n219), .Z(n224) );
  GTECH_MUX2 U227 ( .A(n225), .B(n226), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U228 ( .A(ten_count[2]), .B(n227), .C(n228), .Z(n226) );
  GTECH_NOT U229 ( .A(n229), .Z(n228) );
  GTECH_AND2 U230 ( .A(n230), .B(ten_count[2]), .Z(n225) );
  GTECH_AO21 U231 ( .A(period[7]), .B(n215), .C(reset), .Z(N16) );
  GTECH_OAI21 U232 ( .A(n231), .B(n232), .C(n233), .Z(N159) );
  GTECH_MUX2 U233 ( .A(n230), .B(n229), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U234 ( .A(ten_count[1]), .B(n227), .C(n234), .Z(n229) );
  GTECH_NOT U235 ( .A(n235), .Z(n230) );
  GTECH_NAND3 U236 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n235) );
  GTECH_MUX2 U237 ( .A(n236), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U238 ( .A(N152), .B(ten_count[0]), .Z(n236) );
  GTECH_NOT U239 ( .A(n234), .Z(N154) );
  GTECH_NAND2 U240 ( .A(N152), .B(n237), .Z(n234) );
  GTECH_NOT U241 ( .A(ten_count[0]), .Z(n237) );
  GTECH_NAND2 U242 ( .A(n238), .B(n161), .Z(N151) );
  GTECH_OA21 U243 ( .A(n14), .B(n239), .C(n218), .Z(n238) );
  GTECH_NOT U244 ( .A(n240), .Z(n218) );
  GTECH_OAI21 U245 ( .A(n241), .B(n231), .C(n189), .Z(n240) );
  GTECH_AND2 U246 ( .A(period[6]), .B(n215), .Z(N15) );
  GTECH_OAI21 U247 ( .A(n227), .B(n239), .C(n242), .Z(N148) );
  GTECH_MUX2 U248 ( .A(n243), .B(n244), .S(n175), .Z(n242) );
  GTECH_NAND3 U249 ( .A(n245), .B(N150), .C(n246), .Z(n244) );
  GTECH_AND_NOT U250 ( .A(n247), .B(n248), .Z(n243) );
  GTECH_MUX2 U251 ( .A(n227), .B(n249), .S(n176), .Z(n247) );
  GTECH_NAND3 U252 ( .A(n250), .B(n219), .C(n233), .Z(N147) );
  GTECH_AND2 U253 ( .A(n189), .B(n251), .Z(n233) );
  GTECH_NAND3 U254 ( .A(n241), .B(n161), .C(n239), .Z(n251) );
  GTECH_OR4 U255 ( .A(n252), .B(n245), .C(n253), .D(n254), .Z(n239) );
  GTECH_NOT U256 ( .A(n176), .Z(n245) );
  GTECH_NOT U257 ( .A(n175), .Z(n252) );
  GTECH_NAND2 U258 ( .A(n14), .B(n255), .Z(n219) );
  GTECH_NOT U259 ( .A(n161), .Z(n255) );
  GTECH_NAND3 U260 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n250) );
  GTECH_MUX2 U261 ( .A(n248), .B(n256), .S(n176), .Z(N146) );
  GTECH_OAI21 U262 ( .A(n257), .B(n249), .C(n258), .Z(n256) );
  GTECH_OAI21 U263 ( .A(n246), .B(n249), .C(n259), .Z(n248) );
  GTECH_OAI21 U264 ( .A(n253), .B(n254), .C(N152), .Z(n259) );
  GTECH_NOT U265 ( .A(n260), .Z(n253) );
  GTECH_NOT U266 ( .A(n257), .Z(n246) );
  GTECH_NAND3 U267 ( .A(n254), .B(n217), .C(n261), .Z(n257) );
  GTECH_NOT U268 ( .A(n162), .Z(n254) );
  GTECH_NAND2 U269 ( .A(n262), .B(n258), .Z(N144) );
  GTECH_NAND3 U270 ( .A(N152), .B(n260), .C(n162), .Z(n258) );
  GTECH_MUX2 U271 ( .A(n263), .B(n264), .S(n162), .Z(n262) );
  GTECH_NAND3 U272 ( .A(n261), .B(n217), .C(N150), .Z(n264) );
  GTECH_OA21 U273 ( .A(n227), .B(n260), .C(n265), .Z(n263) );
  GTECH_OAI21 U274 ( .A(n22), .B(n266), .C(N150), .Z(n265) );
  GTECH_OAI21 U275 ( .A(n221), .B(n220), .C(n217), .Z(n260) );
  GTECH_NOT U276 ( .A(n22), .Z(n217) );
  GTECH_MUX2 U277 ( .A(n267), .B(n268), .S(n22), .Z(N142) );
  GTECH_OAI21 U278 ( .A(n266), .B(n249), .C(n269), .Z(n268) );
  GTECH_OAI21 U279 ( .A(n221), .B(n220), .C(N152), .Z(n269) );
  GTECH_OAI21 U280 ( .A(n261), .B(n249), .C(n270), .Z(n267) );
  GTECH_NOT U281 ( .A(n266), .Z(n261) );
  GTECH_NAND3 U282 ( .A(n221), .B(n220), .C(n222), .Z(n266) );
  GTECH_NOT U283 ( .A(n20), .Z(n220) );
  GTECH_NAND2 U284 ( .A(n271), .B(n270), .Z(N140) );
  GTECH_NAND3 U285 ( .A(n18), .B(N152), .C(n20), .Z(n270) );
  GTECH_NOT U286 ( .A(n227), .Z(N152) );
  GTECH_MUX2 U287 ( .A(n272), .B(n273), .S(n20), .Z(n271) );
  GTECH_NAND3 U288 ( .A(n222), .B(n221), .C(N150), .Z(n273) );
  GTECH_NOT U289 ( .A(n18), .Z(n221) );
  GTECH_NOT U290 ( .A(n16), .Z(n222) );
  GTECH_AND2 U291 ( .A(n274), .B(n275), .Z(n272) );
  GTECH_MUX2 U292 ( .A(n227), .B(n249), .S(n18), .Z(n274) );
  GTECH_AO21 U293 ( .A(period[5]), .B(n215), .C(reset), .Z(N14) );
  GTECH_MUX2 U294 ( .A(n276), .B(n277), .S(n18), .Z(N138) );
  GTECH_OAI21 U295 ( .A(n16), .B(n249), .C(n227), .Z(n277) );
  GTECH_NOT U296 ( .A(n275), .Z(n276) );
  GTECH_OAI21 U297 ( .A(n16), .B(n227), .C(n275), .Z(N136) );
  GTECH_NAND2 U298 ( .A(n16), .B(N150), .Z(n275) );
  GTECH_NOT U299 ( .A(n249), .Z(N150) );
  GTECH_NAND2 U300 ( .A(n278), .B(n189), .Z(n249) );
  GTECH_NOT U301 ( .A(n232), .Z(n278) );
  GTECH_NAND2 U302 ( .A(n161), .B(n279), .Z(n227) );
  GTECH_NOT U303 ( .A(N169), .Z(n279) );
  GTECH_NAND2 U304 ( .A(n189), .B(n241), .Z(N169) );
  GTECH_NOT U305 ( .A(n14), .Z(n241) );
  GTECH_AND2 U306 ( .A(n280), .B(n281), .Z(N134) );
  GTECH_OAI21 U307 ( .A(n174), .B(n282), .C(n163), .Z(n281) );
  GTECH_NAND2 U308 ( .A(n189), .B(n232), .Z(N133) );
  GTECH_NAND2 U309 ( .A(n161), .B(n14), .Z(n232) );
  GTECH_AND2 U310 ( .A(n283), .B(n280), .Z(N132) );
  GTECH_XOR2 U311 ( .A(n282), .B(n174), .Z(n283) );
  GTECH_NAND2 U312 ( .A(n284), .B(n285), .Z(n282) );
  GTECH_NOT U313 ( .A(n286), .Z(n284) );
  GTECH_AND2 U314 ( .A(n287), .B(n280), .Z(N130) );
  GTECH_XOR2 U315 ( .A(n286), .B(n164), .Z(n287) );
  GTECH_NAND2 U316 ( .A(n288), .B(n289), .Z(n286) );
  GTECH_NOT U317 ( .A(n165), .Z(n289) );
  GTECH_NOT U318 ( .A(n290), .Z(n288) );
  GTECH_AND2 U319 ( .A(period[4]), .B(n215), .Z(N13) );
  GTECH_AND2 U320 ( .A(n291), .B(n280), .Z(N128) );
  GTECH_XOR2 U321 ( .A(n290), .B(n165), .Z(n291) );
  GTECH_NAND2 U322 ( .A(n292), .B(n293), .Z(n290) );
  GTECH_NOT U323 ( .A(n294), .Z(n292) );
  GTECH_AND2 U324 ( .A(n295), .B(n280), .Z(N126) );
  GTECH_XOR2 U325 ( .A(n294), .B(n166), .Z(n295) );
  GTECH_NAND2 U326 ( .A(n296), .B(n297), .Z(n294) );
  GTECH_NOT U327 ( .A(n167), .Z(n297) );
  GTECH_NOT U328 ( .A(n298), .Z(n296) );
  GTECH_AND2 U329 ( .A(n299), .B(n280), .Z(N124) );
  GTECH_XOR2 U330 ( .A(n298), .B(n167), .Z(n299) );
  GTECH_NAND2 U331 ( .A(n300), .B(n301), .Z(n298) );
  GTECH_NOT U332 ( .A(n168), .Z(n301) );
  GTECH_NOT U333 ( .A(n302), .Z(n300) );
  GTECH_AND2 U334 ( .A(n303), .B(n280), .Z(N122) );
  GTECH_XOR2 U335 ( .A(n302), .B(n168), .Z(n303) );
  GTECH_NAND2 U336 ( .A(n304), .B(n305), .Z(n302) );
  GTECH_NOT U337 ( .A(n169), .Z(n305) );
  GTECH_NOT U338 ( .A(n306), .Z(n304) );
  GTECH_AND2 U339 ( .A(n307), .B(n280), .Z(N120) );
  GTECH_XOR2 U340 ( .A(n306), .B(n169), .Z(n307) );
  GTECH_NAND2 U341 ( .A(n308), .B(n309), .Z(n306) );
  GTECH_NOT U342 ( .A(n310), .Z(n308) );
  GTECH_AO21 U343 ( .A(period[3]), .B(n215), .C(reset), .Z(N12) );
  GTECH_AND2 U344 ( .A(n311), .B(n280), .Z(N118) );
  GTECH_XOR2 U345 ( .A(n310), .B(n170), .Z(n311) );
  GTECH_NAND3 U346 ( .A(n312), .B(n313), .C(n314), .Z(n310) );
  GTECH_NOT U347 ( .A(n171), .Z(n314) );
  GTECH_OAI22 U348 ( .A(n171), .B(n315), .C(n316), .D(n317), .Z(N116) );
  GTECH_MUX2 U349 ( .A(n312), .B(n318), .S(n171), .Z(n317) );
  GTECH_NAND2 U350 ( .A(n312), .B(n313), .Z(n318) );
  GTECH_MUX2 U351 ( .A(N112), .B(n319), .S(n172), .Z(N114) );
  GTECH_AND2 U352 ( .A(n280), .B(n313), .Z(n319) );
  GTECH_NOT U353 ( .A(n173), .Z(n313) );
  GTECH_NOT U354 ( .A(n315), .Z(N112) );
  GTECH_NAND2 U355 ( .A(n280), .B(n173), .Z(n315) );
  GTECH_NOT U356 ( .A(n316), .Z(n280) );
  GTECH_NAND2 U357 ( .A(n231), .B(n189), .Z(n316) );
  GTECH_NOT U358 ( .A(n320), .Z(n231) );
  GTECH_AOI222 U359 ( .A(n321), .B(n322), .C(update_period[11]), .D(n163), .E(
        n323), .F(n324), .Z(n320) );
  GTECH_OAI2N2 U360 ( .A(n325), .B(n326), .C(n327), .D(n328), .Z(n323) );
  GTECH_OAI21 U361 ( .A(n329), .B(n285), .C(n330), .Z(n328) );
  GTECH_NAND3 U362 ( .A(n331), .B(update_period[8]), .C(n165), .Z(n330) );
  GTECH_AND3 U363 ( .A(n331), .B(n327), .C(n324), .Z(n322) );
  GTECH_NAND2 U364 ( .A(n332), .B(n333), .Z(n324) );
  GTECH_NOT U365 ( .A(n163), .Z(n333) );
  GTECH_NOT U366 ( .A(update_period[11]), .Z(n332) );
  GTECH_NAND2 U367 ( .A(n326), .B(n325), .Z(n327) );
  GTECH_NOT U368 ( .A(n174), .Z(n325) );
  GTECH_NOT U369 ( .A(update_period[10]), .Z(n326) );
  GTECH_NAND2 U370 ( .A(n285), .B(n329), .Z(n331) );
  GTECH_NOT U371 ( .A(update_period[9]), .Z(n329) );
  GTECH_NOT U372 ( .A(n164), .Z(n285) );
  GTECH_OA22 U373 ( .A(n165), .B(update_period[8]), .C(n334), .D(n335), .Z(
        n321) );
  GTECH_OAI21 U374 ( .A(n293), .B(n336), .C(n337), .Z(n335) );
  GTECH_NAND3 U375 ( .A(n338), .B(update_period[6]), .C(n167), .Z(n337) );
  GTECH_OAI21 U376 ( .A(n339), .B(n340), .C(n341), .Z(n334) );
  GTECH_OR3 U377 ( .A(n342), .B(n339), .C(n343), .Z(n341) );
  GTECH_OAI22 U378 ( .A(update_period[5]), .B(n168), .C(n344), .D(n345), .Z(
        n343) );
  GTECH_OAI21 U379 ( .A(n309), .B(n346), .C(n347), .Z(n345) );
  GTECH_NAND3 U380 ( .A(n348), .B(update_period[2]), .C(n171), .Z(n347) );
  GTECH_AND3 U381 ( .A(n349), .B(n350), .C(n348), .Z(n344) );
  GTECH_NAND2 U382 ( .A(n346), .B(n309), .Z(n348) );
  GTECH_NOT U383 ( .A(n170), .Z(n309) );
  GTECH_NOT U384 ( .A(update_period[3]), .Z(n346) );
  GTECH_OAI21 U385 ( .A(n351), .B(n312), .C(n178), .Z(n350) );
  GTECH_NOT U386 ( .A(n172), .Z(n312) );
  GTECH_OA21 U387 ( .A(n171), .B(update_period[2]), .C(n352), .Z(n349) );
  GTECH_OR_NOT U388 ( .A(n172), .B(n351), .Z(n352) );
  GTECH_NAND2 U389 ( .A(update_period[0]), .B(n173), .Z(n351) );
  GTECH_NOR2 U390 ( .A(update_period[4]), .B(n169), .Z(n342) );
  GTECH_OAI21 U391 ( .A(update_period[5]), .B(n168), .C(n353), .Z(n340) );
  GTECH_AO22 U392 ( .A(update_period[5]), .B(n168), .C(update_period[4]), .D(
        n169), .Z(n353) );
  GTECH_OAI21 U393 ( .A(update_period[6]), .B(n167), .C(n338), .Z(n339) );
  GTECH_NAND2 U394 ( .A(n336), .B(n293), .Z(n338) );
  GTECH_NOT U395 ( .A(n166), .Z(n293) );
  GTECH_NOT U396 ( .A(update_period[7]), .Z(n336) );
  GTECH_AO21 U397 ( .A(period[2]), .B(n215), .C(reset), .Z(N11) );
  GTECH_AO21 U398 ( .A(period[1]), .B(n215), .C(reset), .Z(N10) );
  GTECH_NOT U399 ( .A(n216), .Z(n215) );
  GTECH_NAND2 U400 ( .A(period_load), .B(n189), .Z(n216) );
  GTECH_NOT U401 ( .A(reset), .Z(n189) );
endmodule

