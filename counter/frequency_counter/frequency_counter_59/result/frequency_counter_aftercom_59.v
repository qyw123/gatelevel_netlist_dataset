
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
         n24, n26, n28, n30, n32, n79, n159, n162, sub_85_carry_2_, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n179, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358;
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
        .CP(clk), .Q(update_period[1]), .QN(n179) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n79), .K(n79), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n79), .K(n79), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n177) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n79), .K(n79), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n176) );
  GTECH_FJK1S state_reg_0_ ( .J(n79), .K(n79), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n79), .K(n79), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n79), .K(n79), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n79), .K(n79), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n79), .K(n79), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n79), .K(n79), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n79), .K(n79), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n79), .K(n79), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n79), .K(n79), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n79), .K(n79), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n79), .K(n79), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n79), .K(n79), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n79), .K(n79), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n79), .K(n79), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n164) );
  GTECH_FJK1S update_digits_reg ( .J(n79), .K(n79), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n79), .K(n79), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n163) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n79), .K(n79), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n79), .K(n79), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n79), .K(n79), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
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
        clk), .Q(n24) );
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
  GTECH_NAND2 U171 ( .A(n15), .B(n190), .Z(seven_segment0_N9) );
  GTECH_AND2 U172 ( .A(ten_count[0]), .B(n190), .Z(seven_segment0_N8) );
  GTECH_AND2 U173 ( .A(n159), .B(n190), .Z(seven_segment0_N6) );
  GTECH_AND2 U174 ( .A(unit_count[3]), .B(n190), .Z(seven_segment0_N22) );
  GTECH_AND2 U175 ( .A(unit_count[2]), .B(n190), .Z(seven_segment0_N20) );
  GTECH_AND2 U176 ( .A(unit_count[1]), .B(n190), .Z(seven_segment0_N18) );
  GTECH_AND2 U177 ( .A(unit_count[0]), .B(n190), .Z(seven_segment0_N16) );
  GTECH_AND2 U178 ( .A(n24), .B(n190), .Z(seven_segment0_N14) );
  GTECH_AND2 U179 ( .A(ten_count[2]), .B(n190), .Z(seven_segment0_N12) );
  GTECH_AND2 U180 ( .A(ten_count[1]), .B(n190), .Z(seven_segment0_N10) );
  GTECH_NAND2 U181 ( .A(n191), .B(n192), .Z(segments[6]) );
  GTECH_NAND2 U182 ( .A(n193), .B(n191), .Z(segments[5]) );
  GTECH_OA21 U183 ( .A(n194), .B(n195), .C(n196), .Z(n193) );
  GTECH_NAND3 U184 ( .A(n197), .B(n198), .C(n199), .Z(segments[3]) );
  GTECH_NOT U185 ( .A(segments[4]), .Z(n198) );
  GTECH_OAI21 U186 ( .A(n200), .B(n201), .C(n196), .Z(segments[4]) );
  GTECH_NAND3 U187 ( .A(n191), .B(n195), .C(n202), .Z(segments[2]) );
  GTECH_AND3 U188 ( .A(n203), .B(n204), .C(n199), .Z(n191) );
  GTECH_NAND3 U189 ( .A(n205), .B(n206), .C(n207), .Z(n204) );
  GTECH_NAND3 U190 ( .A(n203), .B(n195), .C(n208), .Z(segments[1]) );
  GTECH_OA21 U191 ( .A(n205), .B(n201), .C(n197), .Z(n208) );
  GTECH_OR4 U192 ( .A(n209), .B(n210), .C(n200), .D(n211), .Z(n203) );
  GTECH_NAND3 U193 ( .A(n192), .B(n199), .C(n202), .Z(segments[0]) );
  GTECH_NOT U194 ( .A(n212), .Z(n202) );
  GTECH_OAI21 U195 ( .A(n205), .B(n201), .C(n196), .Z(n212) );
  GTECH_NAND2 U196 ( .A(n213), .B(n205), .Z(n196) );
  GTECH_NOT U197 ( .A(n195), .Z(n213) );
  GTECH_OR4 U198 ( .A(n209), .B(n205), .C(n210), .D(n211), .Z(n199) );
  GTECH_NOT U199 ( .A(n200), .Z(n205) );
  GTECH_MUX2 U200 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n159), .Z(n200) );
  GTECH_NOT U201 ( .A(n194), .Z(n209) );
  GTECH_NOT U202 ( .A(n214), .Z(n192) );
  GTECH_OAI21 U203 ( .A(n194), .B(n195), .C(n197), .Z(n214) );
  GTECH_NAND2 U204 ( .A(n206), .B(n210), .Z(n197) );
  GTECH_NOT U205 ( .A(n201), .Z(n206) );
  GTECH_NAND2 U206 ( .A(n194), .B(n211), .Z(n201) );
  GTECH_NOT U207 ( .A(n215), .Z(n211) );
  GTECH_NAND2 U208 ( .A(n215), .B(n210), .Z(n195) );
  GTECH_NOT U209 ( .A(n207), .Z(n210) );
  GTECH_MUX2 U210 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n159), .Z(n207) );
  GTECH_MUX2 U211 ( .A(n30), .B(n26), .S(n159), .Z(n215) );
  GTECH_MUX2 U212 ( .A(n32), .B(n28), .S(n159), .Z(n194) );
  GTECH_AO21 U213 ( .A(period[0]), .B(n216), .C(reset), .Z(N9) );
  GTECH_AND2 U214 ( .A(period[11]), .B(n216), .Z(N21) );
  GTECH_NAND2 U215 ( .A(n190), .B(n217), .Z(N20) );
  GTECH_AO21 U216 ( .A(period[10]), .B(n216), .C(reset), .Z(N19) );
  GTECH_AND2 U217 ( .A(period[9]), .B(n216), .Z(N18) );
  GTECH_AND2 U218 ( .A(period[8]), .B(n216), .Z(N17) );
  GTECH_AND2 U219 ( .A(N170), .B(n218), .Z(N168) );
  GTECH_NAND2 U220 ( .A(n219), .B(n220), .Z(N167) );
  GTECH_AND2 U221 ( .A(N170), .B(n221), .Z(N166) );
  GTECH_AND2 U222 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U223 ( .A(N170), .B(n222), .Z(N162) );
  GTECH_NOT U224 ( .A(n223), .Z(N170) );
  GTECH_NAND2 U225 ( .A(n224), .B(n190), .Z(n223) );
  GTECH_NOT U226 ( .A(n220), .Z(n224) );
  GTECH_OAI22 U227 ( .A(n225), .B(n226), .C(n227), .D(n228), .Z(N160) );
  GTECH_MUX2 U228 ( .A(n225), .B(n229), .S(ten_count[2]), .Z(n228) );
  GTECH_NAND2 U229 ( .A(n230), .B(n225), .Z(n229) );
  GTECH_NOT U230 ( .A(n24), .Z(n225) );
  GTECH_AO21 U231 ( .A(period[7]), .B(n216), .C(reset), .Z(N16) );
  GTECH_OAI21 U232 ( .A(n231), .B(n232), .C(n233), .Z(N159) );
  GTECH_MUX2 U233 ( .A(n234), .B(n235), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U234 ( .A(n226), .Z(n235) );
  GTECH_NAND2 U235 ( .A(N152), .B(n236), .Z(n226) );
  GTECH_AND2 U236 ( .A(N152), .B(n230), .Z(n234) );
  GTECH_NOT U237 ( .A(n236), .Z(n230) );
  GTECH_NAND2 U238 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n236) );
  GTECH_MUX2 U239 ( .A(n237), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U240 ( .A(N152), .B(ten_count[0]), .Z(n237) );
  GTECH_NOT U241 ( .A(n238), .Z(N154) );
  GTECH_NAND2 U242 ( .A(N152), .B(n239), .Z(n238) );
  GTECH_NOT U243 ( .A(ten_count[0]), .Z(n239) );
  GTECH_NAND2 U244 ( .A(n240), .B(n162), .Z(N151) );
  GTECH_OA21 U245 ( .A(n14), .B(n241), .C(n219), .Z(n240) );
  GTECH_NOT U246 ( .A(n242), .Z(n219) );
  GTECH_OAI21 U247 ( .A(n243), .B(n231), .C(n190), .Z(n242) );
  GTECH_AND2 U248 ( .A(period[6]), .B(n216), .Z(N15) );
  GTECH_OAI21 U249 ( .A(n227), .B(n241), .C(n244), .Z(N148) );
  GTECH_MUX2 U250 ( .A(n245), .B(n246), .S(n176), .Z(n244) );
  GTECH_NAND3 U251 ( .A(n247), .B(N150), .C(n248), .Z(n246) );
  GTECH_AND_NOT U252 ( .A(n249), .B(n250), .Z(n245) );
  GTECH_MUX2 U253 ( .A(n227), .B(n251), .S(n177), .Z(n249) );
  GTECH_NAND3 U254 ( .A(n252), .B(n220), .C(n233), .Z(N147) );
  GTECH_AND2 U255 ( .A(n190), .B(n253), .Z(n233) );
  GTECH_NAND3 U256 ( .A(n243), .B(n162), .C(n241), .Z(n253) );
  GTECH_OR4 U257 ( .A(n254), .B(n247), .C(n255), .D(n256), .Z(n241) );
  GTECH_NOT U258 ( .A(n177), .Z(n247) );
  GTECH_NOT U259 ( .A(n176), .Z(n254) );
  GTECH_NAND2 U260 ( .A(n14), .B(n257), .Z(n220) );
  GTECH_NOT U261 ( .A(n162), .Z(n257) );
  GTECH_NAND3 U262 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n252) );
  GTECH_MUX2 U263 ( .A(n250), .B(n258), .S(n177), .Z(N146) );
  GTECH_OAI21 U264 ( .A(n259), .B(n251), .C(n260), .Z(n258) );
  GTECH_OAI21 U265 ( .A(n248), .B(n251), .C(n261), .Z(n250) );
  GTECH_OAI21 U266 ( .A(n255), .B(n256), .C(N152), .Z(n261) );
  GTECH_NOT U267 ( .A(n262), .Z(n255) );
  GTECH_NOT U268 ( .A(n259), .Z(n248) );
  GTECH_NAND3 U269 ( .A(n256), .B(n218), .C(n263), .Z(n259) );
  GTECH_NOT U270 ( .A(n163), .Z(n256) );
  GTECH_NAND2 U271 ( .A(n264), .B(n260), .Z(N144) );
  GTECH_NAND3 U272 ( .A(N152), .B(n262), .C(n163), .Z(n260) );
  GTECH_MUX2 U273 ( .A(n265), .B(n266), .S(n163), .Z(n264) );
  GTECH_NAND3 U274 ( .A(n263), .B(n218), .C(N150), .Z(n266) );
  GTECH_NOT U275 ( .A(n267), .Z(n263) );
  GTECH_OA21 U276 ( .A(n227), .B(n262), .C(n268), .Z(n265) );
  GTECH_OAI21 U277 ( .A(n22), .B(n267), .C(N150), .Z(n268) );
  GTECH_NAND2 U278 ( .A(n269), .B(n218), .Z(n262) );
  GTECH_NOT U279 ( .A(n22), .Z(n218) );
  GTECH_OAI21 U280 ( .A(n251), .B(n270), .C(n271), .Z(N142) );
  GTECH_MUX2 U281 ( .A(n272), .B(n273), .S(n22), .Z(n271) );
  GTECH_NAND2 U282 ( .A(N152), .B(n269), .Z(n273) );
  GTECH_XNOR2 U283 ( .A(n22), .B(n267), .Z(n270) );
  GTECH_NAND3 U284 ( .A(n222), .B(n221), .C(sub_85_carry_2_), .Z(n267) );
  GTECH_NOT U285 ( .A(n20), .Z(n221) );
  GTECH_NAND2 U286 ( .A(n274), .B(n272), .Z(N140) );
  GTECH_NAND2 U287 ( .A(n275), .B(N152), .Z(n272) );
  GTECH_NOT U288 ( .A(n227), .Z(N152) );
  GTECH_NOT U289 ( .A(n269), .Z(n275) );
  GTECH_NAND2 U290 ( .A(n20), .B(n276), .Z(n269) );
  GTECH_NOT U291 ( .A(sub_85_carry_2_), .Z(n276) );
  GTECH_MUX2 U292 ( .A(n277), .B(n278), .S(n20), .Z(n274) );
  GTECH_NAND3 U293 ( .A(sub_85_carry_2_), .B(n222), .C(N150), .Z(n278) );
  GTECH_NOT U294 ( .A(n16), .Z(n222) );
  GTECH_AND2 U295 ( .A(n279), .B(n280), .Z(n277) );
  GTECH_MUX2 U296 ( .A(n251), .B(n227), .S(sub_85_carry_2_), .Z(n279) );
  GTECH_AO21 U297 ( .A(period[5]), .B(n216), .C(reset), .Z(N14) );
  GTECH_MUX2 U298 ( .A(n281), .B(n282), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U299 ( .A(n280), .Z(n282) );
  GTECH_OAI21 U300 ( .A(n16), .B(n251), .C(n227), .Z(n281) );
  GTECH_OAI21 U301 ( .A(n16), .B(n227), .C(n280), .Z(N136) );
  GTECH_NAND2 U302 ( .A(n16), .B(N150), .Z(n280) );
  GTECH_NOT U303 ( .A(n251), .Z(N150) );
  GTECH_NAND2 U304 ( .A(n283), .B(n190), .Z(n251) );
  GTECH_NOT U305 ( .A(n232), .Z(n283) );
  GTECH_NAND2 U306 ( .A(n162), .B(n284), .Z(n227) );
  GTECH_NOT U307 ( .A(N169), .Z(n284) );
  GTECH_NAND2 U308 ( .A(n190), .B(n243), .Z(N169) );
  GTECH_NOT U309 ( .A(n14), .Z(n243) );
  GTECH_AND2 U310 ( .A(n285), .B(n286), .Z(N134) );
  GTECH_OAI21 U311 ( .A(n175), .B(n287), .C(n164), .Z(n286) );
  GTECH_NAND2 U312 ( .A(n190), .B(n232), .Z(N133) );
  GTECH_NAND2 U313 ( .A(n162), .B(n14), .Z(n232) );
  GTECH_AND_NOT U314 ( .A(n285), .B(n288), .Z(N132) );
  GTECH_XNOR2 U315 ( .A(n175), .B(n287), .Z(n288) );
  GTECH_NAND2 U316 ( .A(n289), .B(n290), .Z(n287) );
  GTECH_AND2 U317 ( .A(n291), .B(n285), .Z(N130) );
  GTECH_XNOR2 U318 ( .A(n165), .B(n289), .Z(n291) );
  GTECH_NOT U319 ( .A(n292), .Z(n289) );
  GTECH_NAND2 U320 ( .A(n293), .B(n294), .Z(n292) );
  GTECH_NOT U321 ( .A(n166), .Z(n294) );
  GTECH_AND2 U322 ( .A(period[4]), .B(n216), .Z(N13) );
  GTECH_AND2 U323 ( .A(n295), .B(n285), .Z(N128) );
  GTECH_XNOR2 U324 ( .A(n166), .B(n293), .Z(n295) );
  GTECH_NOT U325 ( .A(n296), .Z(n293) );
  GTECH_NAND2 U326 ( .A(n297), .B(n298), .Z(n296) );
  GTECH_AND2 U327 ( .A(n299), .B(n285), .Z(N126) );
  GTECH_XNOR2 U328 ( .A(n167), .B(n297), .Z(n299) );
  GTECH_NOT U329 ( .A(n300), .Z(n297) );
  GTECH_NAND2 U330 ( .A(n301), .B(n302), .Z(n300) );
  GTECH_NOT U331 ( .A(n168), .Z(n302) );
  GTECH_AND2 U332 ( .A(n303), .B(n285), .Z(N124) );
  GTECH_XNOR2 U333 ( .A(n168), .B(n301), .Z(n303) );
  GTECH_NOT U334 ( .A(n304), .Z(n301) );
  GTECH_NAND2 U335 ( .A(n305), .B(n306), .Z(n304) );
  GTECH_NOT U336 ( .A(n169), .Z(n306) );
  GTECH_AND2 U337 ( .A(n307), .B(n285), .Z(N122) );
  GTECH_XNOR2 U338 ( .A(n169), .B(n305), .Z(n307) );
  GTECH_NOT U339 ( .A(n308), .Z(n305) );
  GTECH_NAND2 U340 ( .A(n309), .B(n310), .Z(n308) );
  GTECH_NOT U341 ( .A(n170), .Z(n310) );
  GTECH_AND2 U342 ( .A(n311), .B(n285), .Z(N120) );
  GTECH_XNOR2 U343 ( .A(n170), .B(n309), .Z(n311) );
  GTECH_NOT U344 ( .A(n312), .Z(n309) );
  GTECH_NAND2 U345 ( .A(n313), .B(n314), .Z(n312) );
  GTECH_AO21 U346 ( .A(period[3]), .B(n216), .C(reset), .Z(N12) );
  GTECH_AND2 U347 ( .A(n315), .B(n285), .Z(N118) );
  GTECH_XNOR2 U348 ( .A(n171), .B(n313), .Z(n315) );
  GTECH_NOT U349 ( .A(n316), .Z(n313) );
  GTECH_NAND3 U350 ( .A(n317), .B(n318), .C(n319), .Z(n316) );
  GTECH_NOT U351 ( .A(n172), .Z(n319) );
  GTECH_OAI22 U352 ( .A(n172), .B(n320), .C(n321), .D(n322), .Z(N116) );
  GTECH_MUX2 U353 ( .A(n317), .B(n323), .S(n172), .Z(n322) );
  GTECH_NAND2 U354 ( .A(n317), .B(n318), .Z(n323) );
  GTECH_MUX2 U355 ( .A(N112), .B(n324), .S(n173), .Z(N114) );
  GTECH_AND2 U356 ( .A(n285), .B(n318), .Z(n324) );
  GTECH_NOT U357 ( .A(n174), .Z(n318) );
  GTECH_NOT U358 ( .A(n320), .Z(N112) );
  GTECH_NAND2 U359 ( .A(n285), .B(n174), .Z(n320) );
  GTECH_NOT U360 ( .A(n321), .Z(n285) );
  GTECH_NAND2 U361 ( .A(n231), .B(n190), .Z(n321) );
  GTECH_NOT U362 ( .A(n325), .Z(n231) );
  GTECH_AOI222 U363 ( .A(n326), .B(n327), .C(update_period[11]), .D(n164), .E(
        n328), .F(n329), .Z(n325) );
  GTECH_OAI2N2 U364 ( .A(n330), .B(n331), .C(n332), .D(n333), .Z(n328) );
  GTECH_OAI21 U365 ( .A(n334), .B(n290), .C(n335), .Z(n333) );
  GTECH_NAND3 U366 ( .A(n336), .B(update_period[8]), .C(n166), .Z(n335) );
  GTECH_AND3 U367 ( .A(n336), .B(n332), .C(n329), .Z(n327) );
  GTECH_NAND2 U368 ( .A(n337), .B(n338), .Z(n329) );
  GTECH_NOT U369 ( .A(n164), .Z(n338) );
  GTECH_NOT U370 ( .A(update_period[11]), .Z(n337) );
  GTECH_NAND2 U371 ( .A(n331), .B(n330), .Z(n332) );
  GTECH_NOT U372 ( .A(n175), .Z(n330) );
  GTECH_NOT U373 ( .A(update_period[10]), .Z(n331) );
  GTECH_NAND2 U374 ( .A(n290), .B(n334), .Z(n336) );
  GTECH_NOT U375 ( .A(update_period[9]), .Z(n334) );
  GTECH_NOT U376 ( .A(n165), .Z(n290) );
  GTECH_OA22 U377 ( .A(n166), .B(update_period[8]), .C(n339), .D(n340), .Z(
        n326) );
  GTECH_OAI21 U378 ( .A(n298), .B(n341), .C(n342), .Z(n340) );
  GTECH_NAND3 U379 ( .A(n343), .B(update_period[6]), .C(n168), .Z(n342) );
  GTECH_OAI2N2 U380 ( .A(n344), .B(n345), .C(n346), .D(n347), .Z(n339) );
  GTECH_ADD_ABC U381 ( .A(n348), .B(n169), .C(update_period[5]), .COUT(n347)
         );
  GTECH_AND2 U382 ( .A(update_period[4]), .B(n170), .Z(n348) );
  GTECH_OAI21 U383 ( .A(update_period[4]), .B(n170), .C(n346), .Z(n345) );
  GTECH_NOT U384 ( .A(n349), .Z(n346) );
  GTECH_OAI21 U385 ( .A(update_period[6]), .B(n168), .C(n343), .Z(n349) );
  GTECH_NAND2 U386 ( .A(n341), .B(n298), .Z(n343) );
  GTECH_NOT U387 ( .A(n167), .Z(n298) );
  GTECH_NOT U388 ( .A(update_period[7]), .Z(n341) );
  GTECH_OAI22 U389 ( .A(update_period[5]), .B(n169), .C(n350), .D(n351), .Z(
        n344) );
  GTECH_OAI21 U390 ( .A(n314), .B(n352), .C(n353), .Z(n351) );
  GTECH_NAND3 U391 ( .A(n354), .B(update_period[2]), .C(n172), .Z(n353) );
  GTECH_AND3 U392 ( .A(n355), .B(n356), .C(n354), .Z(n350) );
  GTECH_NAND2 U393 ( .A(n352), .B(n314), .Z(n354) );
  GTECH_NOT U394 ( .A(n171), .Z(n314) );
  GTECH_NOT U395 ( .A(update_period[3]), .Z(n352) );
  GTECH_OAI21 U396 ( .A(n357), .B(n317), .C(n179), .Z(n356) );
  GTECH_NOT U397 ( .A(n173), .Z(n317) );
  GTECH_OA21 U398 ( .A(n172), .B(update_period[2]), .C(n358), .Z(n355) );
  GTECH_OR_NOT U399 ( .A(n173), .B(n357), .Z(n358) );
  GTECH_NAND2 U400 ( .A(update_period[0]), .B(n174), .Z(n357) );
  GTECH_AO21 U401 ( .A(period[2]), .B(n216), .C(reset), .Z(N11) );
  GTECH_AO21 U402 ( .A(period[1]), .B(n216), .C(reset), .Z(N10) );
  GTECH_NOT U403 ( .A(n217), .Z(n216) );
  GTECH_NAND2 U404 ( .A(period_load), .B(n190), .Z(n217) );
  GTECH_NOT U405 ( .A(reset), .Z(n190) );
endmodule

