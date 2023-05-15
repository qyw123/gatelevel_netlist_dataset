
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
         n25, n26, n27, n28, n29, n30, n31, n32, n80, n158, n162,
         sub_85_carry_2_, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n179, n190, n191, n192, n193,
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
         n359;
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
        .CP(clk), .Q(update_period[1]), .QN(n179) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n80), .K(n80), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n80), .K(n80), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n177) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n80), .K(n80), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n176) );
  GTECH_FJK1S state_reg_0_ ( .J(n80), .K(n80), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n80), .K(n80), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n80), .K(n80), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n80), .K(n80), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n80), .K(n80), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n80), .K(n80), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n80), .K(n80), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n80), .K(n80), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n80), .K(n80), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n80), .K(n80), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n80), .K(n80), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n80), .K(n80), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n80), .K(n80), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n80), .K(n80), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n164) );
  GTECH_FJK1S update_digits_reg ( .J(n80), .K(n80), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n80), .K(n80), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n163) );
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
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n80), .K(n80), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n80), .K(n80), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n25) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n29) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n158) );
  GTECH_ZERO U171 ( .Z(n80) );
  GTECH_NAND2 U172 ( .A(n15), .B(n190), .Z(seven_segment0_N9) );
  GTECH_AND2 U173 ( .A(ten_count[0]), .B(n190), .Z(seven_segment0_N8) );
  GTECH_AND2 U174 ( .A(n158), .B(n190), .Z(seven_segment0_N6) );
  GTECH_AND2 U175 ( .A(unit_count[3]), .B(n190), .Z(seven_segment0_N22) );
  GTECH_AND2 U176 ( .A(unit_count[2]), .B(n190), .Z(seven_segment0_N20) );
  GTECH_AND2 U177 ( .A(unit_count[1]), .B(n190), .Z(seven_segment0_N18) );
  GTECH_AND2 U178 ( .A(unit_count[0]), .B(n190), .Z(seven_segment0_N16) );
  GTECH_AND2 U179 ( .A(ten_count[3]), .B(n190), .Z(seven_segment0_N14) );
  GTECH_AND2 U180 ( .A(ten_count[2]), .B(n190), .Z(seven_segment0_N12) );
  GTECH_AND2 U181 ( .A(ten_count[1]), .B(n190), .Z(seven_segment0_N10) );
  GTECH_NAND2 U182 ( .A(n191), .B(n192), .Z(segments[6]) );
  GTECH_NAND3 U183 ( .A(n192), .B(n193), .C(n194), .Z(segments[3]) );
  GTECH_NOT U184 ( .A(segments[4]), .Z(n193) );
  GTECH_OAI21 U185 ( .A(n195), .B(n196), .C(n197), .Z(segments[4]) );
  GTECH_NAND2 U186 ( .A(n198), .B(n199), .Z(segments[2]) );
  GTECH_NOT U187 ( .A(segments[5]), .Z(n199) );
  GTECH_NAND2 U188 ( .A(n191), .B(n197), .Z(segments[5]) );
  GTECH_AOI21 U189 ( .A(n200), .B(n201), .C(n202), .Z(n191) );
  GTECH_AND_NOT U190 ( .A(n203), .B(n204), .Z(n200) );
  GTECH_NAND3 U191 ( .A(n205), .B(n192), .C(n198), .Z(segments[1]) );
  GTECH_NOT U192 ( .A(n206), .Z(n198) );
  GTECH_NAND2 U193 ( .A(n207), .B(n208), .Z(n206) );
  GTECH_NAND3 U194 ( .A(n201), .B(n209), .C(n203), .Z(n205) );
  GTECH_OR4 U195 ( .A(n210), .B(n202), .C(n211), .D(n212), .Z(segments[0]) );
  GTECH_NOT U196 ( .A(n192), .Z(n212) );
  GTECH_NAND2 U197 ( .A(n213), .B(n204), .Z(n192) );
  GTECH_NOT U198 ( .A(n197), .Z(n211) );
  GTECH_NAND2 U199 ( .A(n203), .B(n214), .Z(n197) );
  GTECH_NOT U200 ( .A(n208), .Z(n214) );
  GTECH_OAI21 U201 ( .A(n201), .B(n208), .C(n194), .Z(n202) );
  GTECH_OR4 U202 ( .A(n215), .B(n216), .C(n204), .D(n203), .Z(n194) );
  GTECH_NOT U203 ( .A(n201), .Z(n216) );
  GTECH_NAND2 U204 ( .A(n209), .B(n204), .Z(n208) );
  GTECH_MUX2 U205 ( .A(n31), .B(n27), .S(n158), .Z(n204) );
  GTECH_NOT U206 ( .A(n207), .Z(n210) );
  GTECH_NAND2 U207 ( .A(n213), .B(n196), .Z(n207) );
  GTECH_NOT U208 ( .A(n203), .Z(n196) );
  GTECH_MUX2 U209 ( .A(n29), .B(n25), .S(n158), .Z(n203) );
  GTECH_NOT U210 ( .A(n195), .Z(n213) );
  GTECH_NAND2 U211 ( .A(n201), .B(n215), .Z(n195) );
  GTECH_NOT U212 ( .A(n209), .Z(n215) );
  GTECH_MUX2 U213 ( .A(n30), .B(n26), .S(n158), .Z(n209) );
  GTECH_MUX2 U214 ( .A(n32), .B(n28), .S(n158), .Z(n201) );
  GTECH_AO21 U215 ( .A(period[0]), .B(n217), .C(reset), .Z(N9) );
  GTECH_AND2 U216 ( .A(period[11]), .B(n217), .Z(N21) );
  GTECH_NAND2 U217 ( .A(n190), .B(n218), .Z(N20) );
  GTECH_AO21 U218 ( .A(period[10]), .B(n217), .C(reset), .Z(N19) );
  GTECH_AND2 U219 ( .A(period[9]), .B(n217), .Z(N18) );
  GTECH_AND2 U220 ( .A(period[8]), .B(n217), .Z(N17) );
  GTECH_AND2 U221 ( .A(N170), .B(n219), .Z(N168) );
  GTECH_NAND2 U222 ( .A(n220), .B(n221), .Z(N167) );
  GTECH_AND2 U223 ( .A(N170), .B(n222), .Z(N166) );
  GTECH_AND2 U224 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U225 ( .A(N170), .B(n223), .Z(N162) );
  GTECH_NOT U226 ( .A(n224), .Z(N170) );
  GTECH_NAND2 U227 ( .A(n225), .B(n190), .Z(n224) );
  GTECH_NOT U228 ( .A(n221), .Z(n225) );
  GTECH_OAI22 U229 ( .A(n226), .B(n227), .C(n228), .D(n229), .Z(N160) );
  GTECH_MUX2 U230 ( .A(n226), .B(n230), .S(ten_count[2]), .Z(n229) );
  GTECH_NAND2 U231 ( .A(n231), .B(n226), .Z(n230) );
  GTECH_NOT U232 ( .A(ten_count[3]), .Z(n226) );
  GTECH_AO21 U233 ( .A(period[7]), .B(n217), .C(reset), .Z(N16) );
  GTECH_OAI21 U234 ( .A(n232), .B(n233), .C(n234), .Z(N159) );
  GTECH_MUX2 U235 ( .A(n235), .B(n236), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U236 ( .A(n227), .Z(n236) );
  GTECH_NAND2 U237 ( .A(N152), .B(n237), .Z(n227) );
  GTECH_AND2 U238 ( .A(N152), .B(n231), .Z(n235) );
  GTECH_NOT U239 ( .A(n237), .Z(n231) );
  GTECH_NAND2 U240 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n237) );
  GTECH_MUX2 U241 ( .A(n238), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U242 ( .A(N152), .B(ten_count[0]), .Z(n238) );
  GTECH_NOT U243 ( .A(n239), .Z(N154) );
  GTECH_NAND2 U244 ( .A(N152), .B(n240), .Z(n239) );
  GTECH_NOT U245 ( .A(ten_count[0]), .Z(n240) );
  GTECH_NAND2 U246 ( .A(n241), .B(n162), .Z(N151) );
  GTECH_OA21 U247 ( .A(n14), .B(n242), .C(n220), .Z(n241) );
  GTECH_NOT U248 ( .A(n243), .Z(n220) );
  GTECH_OAI21 U249 ( .A(n244), .B(n232), .C(n190), .Z(n243) );
  GTECH_AND2 U250 ( .A(period[6]), .B(n217), .Z(N15) );
  GTECH_OAI21 U251 ( .A(n228), .B(n242), .C(n245), .Z(N148) );
  GTECH_MUX2 U252 ( .A(n246), .B(n247), .S(n176), .Z(n245) );
  GTECH_NAND3 U253 ( .A(n248), .B(N150), .C(n249), .Z(n247) );
  GTECH_AND_NOT U254 ( .A(n250), .B(n251), .Z(n246) );
  GTECH_MUX2 U255 ( .A(n228), .B(n252), .S(n177), .Z(n250) );
  GTECH_NAND3 U256 ( .A(n253), .B(n221), .C(n234), .Z(N147) );
  GTECH_AND2 U257 ( .A(n190), .B(n254), .Z(n234) );
  GTECH_NAND3 U258 ( .A(n244), .B(n162), .C(n242), .Z(n254) );
  GTECH_OR4 U259 ( .A(n255), .B(n248), .C(n256), .D(n257), .Z(n242) );
  GTECH_NOT U260 ( .A(n177), .Z(n248) );
  GTECH_NOT U261 ( .A(n176), .Z(n255) );
  GTECH_NAND2 U262 ( .A(n14), .B(n258), .Z(n221) );
  GTECH_NOT U263 ( .A(n162), .Z(n258) );
  GTECH_NAND3 U264 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n253) );
  GTECH_MUX2 U265 ( .A(n251), .B(n259), .S(n177), .Z(N146) );
  GTECH_OAI21 U266 ( .A(n260), .B(n252), .C(n261), .Z(n259) );
  GTECH_OAI21 U267 ( .A(n249), .B(n252), .C(n262), .Z(n251) );
  GTECH_OAI21 U268 ( .A(n256), .B(n257), .C(N152), .Z(n262) );
  GTECH_NOT U269 ( .A(n263), .Z(n256) );
  GTECH_NOT U270 ( .A(n260), .Z(n249) );
  GTECH_NAND3 U271 ( .A(n257), .B(n219), .C(n264), .Z(n260) );
  GTECH_NOT U272 ( .A(n163), .Z(n257) );
  GTECH_NAND2 U273 ( .A(n265), .B(n261), .Z(N144) );
  GTECH_NAND3 U274 ( .A(N152), .B(n263), .C(n163), .Z(n261) );
  GTECH_MUX2 U275 ( .A(n266), .B(n267), .S(n163), .Z(n265) );
  GTECH_NAND3 U276 ( .A(n264), .B(n219), .C(N150), .Z(n267) );
  GTECH_OA21 U277 ( .A(n228), .B(n263), .C(n268), .Z(n266) );
  GTECH_OAI21 U278 ( .A(n22), .B(n269), .C(N150), .Z(n268) );
  GTECH_NAND2 U279 ( .A(n270), .B(n219), .Z(n263) );
  GTECH_NOT U280 ( .A(n22), .Z(n219) );
  GTECH_OAI21 U281 ( .A(n252), .B(n271), .C(n272), .Z(N142) );
  GTECH_MUX2 U282 ( .A(n273), .B(n274), .S(n22), .Z(n272) );
  GTECH_NAND2 U283 ( .A(N152), .B(n270), .Z(n274) );
  GTECH_XOR2 U284 ( .A(n22), .B(n264), .Z(n271) );
  GTECH_NOT U285 ( .A(n269), .Z(n264) );
  GTECH_NAND3 U286 ( .A(n223), .B(n222), .C(sub_85_carry_2_), .Z(n269) );
  GTECH_NOT U287 ( .A(n20), .Z(n222) );
  GTECH_NAND2 U288 ( .A(n275), .B(n273), .Z(N140) );
  GTECH_NAND2 U289 ( .A(n276), .B(N152), .Z(n273) );
  GTECH_NOT U290 ( .A(n228), .Z(N152) );
  GTECH_NOT U291 ( .A(n270), .Z(n276) );
  GTECH_NAND2 U292 ( .A(n20), .B(n277), .Z(n270) );
  GTECH_NOT U293 ( .A(sub_85_carry_2_), .Z(n277) );
  GTECH_MUX2 U294 ( .A(n278), .B(n279), .S(n20), .Z(n275) );
  GTECH_NAND3 U295 ( .A(sub_85_carry_2_), .B(n223), .C(N150), .Z(n279) );
  GTECH_NOT U296 ( .A(n16), .Z(n223) );
  GTECH_AND2 U297 ( .A(n280), .B(n281), .Z(n278) );
  GTECH_MUX2 U298 ( .A(n252), .B(n228), .S(sub_85_carry_2_), .Z(n280) );
  GTECH_AO21 U299 ( .A(period[5]), .B(n217), .C(reset), .Z(N14) );
  GTECH_MUX2 U300 ( .A(n282), .B(n283), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U301 ( .A(n281), .Z(n283) );
  GTECH_OAI21 U302 ( .A(n16), .B(n252), .C(n228), .Z(n282) );
  GTECH_OAI21 U303 ( .A(n16), .B(n228), .C(n281), .Z(N136) );
  GTECH_NAND2 U304 ( .A(n16), .B(N150), .Z(n281) );
  GTECH_NOT U305 ( .A(n252), .Z(N150) );
  GTECH_NAND2 U306 ( .A(n284), .B(n190), .Z(n252) );
  GTECH_NOT U307 ( .A(n233), .Z(n284) );
  GTECH_NAND2 U308 ( .A(n162), .B(n285), .Z(n228) );
  GTECH_NOT U309 ( .A(N169), .Z(n285) );
  GTECH_NAND2 U310 ( .A(n190), .B(n244), .Z(N169) );
  GTECH_NOT U311 ( .A(n14), .Z(n244) );
  GTECH_AND2 U312 ( .A(n286), .B(n287), .Z(N134) );
  GTECH_OAI21 U313 ( .A(n175), .B(n288), .C(n164), .Z(n287) );
  GTECH_NAND2 U314 ( .A(n190), .B(n233), .Z(N133) );
  GTECH_NAND2 U315 ( .A(n162), .B(n14), .Z(n233) );
  GTECH_AND2 U316 ( .A(n289), .B(n286), .Z(N132) );
  GTECH_XOR2 U317 ( .A(n288), .B(n175), .Z(n289) );
  GTECH_NAND2 U318 ( .A(n290), .B(n291), .Z(n288) );
  GTECH_NOT U319 ( .A(n292), .Z(n290) );
  GTECH_AND2 U320 ( .A(n293), .B(n286), .Z(N130) );
  GTECH_XOR2 U321 ( .A(n292), .B(n165), .Z(n293) );
  GTECH_NAND2 U322 ( .A(n294), .B(n295), .Z(n292) );
  GTECH_NOT U323 ( .A(n166), .Z(n295) );
  GTECH_NOT U324 ( .A(n296), .Z(n294) );
  GTECH_AND2 U325 ( .A(period[4]), .B(n217), .Z(N13) );
  GTECH_AND2 U326 ( .A(n297), .B(n286), .Z(N128) );
  GTECH_XOR2 U327 ( .A(n296), .B(n166), .Z(n297) );
  GTECH_NAND2 U328 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_NOT U329 ( .A(n300), .Z(n298) );
  GTECH_AND2 U330 ( .A(n301), .B(n286), .Z(N126) );
  GTECH_XOR2 U331 ( .A(n300), .B(n167), .Z(n301) );
  GTECH_NAND2 U332 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_NOT U333 ( .A(n168), .Z(n303) );
  GTECH_NOT U334 ( .A(n304), .Z(n302) );
  GTECH_AND2 U335 ( .A(n305), .B(n286), .Z(N124) );
  GTECH_XOR2 U336 ( .A(n304), .B(n168), .Z(n305) );
  GTECH_NAND2 U337 ( .A(n306), .B(n307), .Z(n304) );
  GTECH_NOT U338 ( .A(n169), .Z(n307) );
  GTECH_NOT U339 ( .A(n308), .Z(n306) );
  GTECH_AND2 U340 ( .A(n309), .B(n286), .Z(N122) );
  GTECH_XOR2 U341 ( .A(n308), .B(n169), .Z(n309) );
  GTECH_NAND2 U342 ( .A(n310), .B(n311), .Z(n308) );
  GTECH_NOT U343 ( .A(n170), .Z(n311) );
  GTECH_NOT U344 ( .A(n312), .Z(n310) );
  GTECH_AND2 U345 ( .A(n313), .B(n286), .Z(N120) );
  GTECH_XOR2 U346 ( .A(n312), .B(n170), .Z(n313) );
  GTECH_NAND2 U347 ( .A(n314), .B(n315), .Z(n312) );
  GTECH_NOT U348 ( .A(n316), .Z(n314) );
  GTECH_AO21 U349 ( .A(period[3]), .B(n217), .C(reset), .Z(N12) );
  GTECH_AND2 U350 ( .A(n317), .B(n286), .Z(N118) );
  GTECH_XOR2 U351 ( .A(n316), .B(n171), .Z(n317) );
  GTECH_NAND3 U352 ( .A(n318), .B(n319), .C(n320), .Z(n316) );
  GTECH_NOT U353 ( .A(n172), .Z(n320) );
  GTECH_OAI22 U354 ( .A(n172), .B(n321), .C(n322), .D(n323), .Z(N116) );
  GTECH_MUX2 U355 ( .A(n318), .B(n324), .S(n172), .Z(n323) );
  GTECH_NAND2 U356 ( .A(n318), .B(n319), .Z(n324) );
  GTECH_MUX2 U357 ( .A(N112), .B(n325), .S(n173), .Z(N114) );
  GTECH_AND2 U358 ( .A(n286), .B(n319), .Z(n325) );
  GTECH_NOT U359 ( .A(n174), .Z(n319) );
  GTECH_NOT U360 ( .A(n321), .Z(N112) );
  GTECH_NAND2 U361 ( .A(n286), .B(n174), .Z(n321) );
  GTECH_NOT U362 ( .A(n322), .Z(n286) );
  GTECH_NAND2 U363 ( .A(n190), .B(n232), .Z(n322) );
  GTECH_NOT U364 ( .A(n326), .Z(n232) );
  GTECH_AOI222 U365 ( .A(n327), .B(n328), .C(update_period[11]), .D(n164), .E(
        n329), .F(n330), .Z(n326) );
  GTECH_OAI2N2 U366 ( .A(n331), .B(n332), .C(n333), .D(n334), .Z(n329) );
  GTECH_OAI21 U367 ( .A(n335), .B(n291), .C(n336), .Z(n334) );
  GTECH_NAND3 U368 ( .A(n337), .B(update_period[8]), .C(n166), .Z(n336) );
  GTECH_AND3 U369 ( .A(n337), .B(n333), .C(n330), .Z(n328) );
  GTECH_NAND2 U370 ( .A(n338), .B(n339), .Z(n330) );
  GTECH_NOT U371 ( .A(n164), .Z(n339) );
  GTECH_NOT U372 ( .A(update_period[11]), .Z(n338) );
  GTECH_NAND2 U373 ( .A(n332), .B(n331), .Z(n333) );
  GTECH_NOT U374 ( .A(n175), .Z(n331) );
  GTECH_NOT U375 ( .A(update_period[10]), .Z(n332) );
  GTECH_NAND2 U376 ( .A(n291), .B(n335), .Z(n337) );
  GTECH_NOT U377 ( .A(update_period[9]), .Z(n335) );
  GTECH_NOT U378 ( .A(n165), .Z(n291) );
  GTECH_OA22 U379 ( .A(n166), .B(update_period[8]), .C(n340), .D(n341), .Z(
        n327) );
  GTECH_OAI21 U380 ( .A(n299), .B(n342), .C(n343), .Z(n341) );
  GTECH_NAND3 U381 ( .A(n344), .B(update_period[6]), .C(n168), .Z(n343) );
  GTECH_OAI2N2 U382 ( .A(n345), .B(n346), .C(n347), .D(n348), .Z(n340) );
  GTECH_ADD_ABC U383 ( .A(n349), .B(n169), .C(update_period[5]), .COUT(n348)
         );
  GTECH_AND2 U384 ( .A(update_period[4]), .B(n170), .Z(n349) );
  GTECH_OAI21 U385 ( .A(update_period[4]), .B(n170), .C(n347), .Z(n346) );
  GTECH_NOT U386 ( .A(n350), .Z(n347) );
  GTECH_OAI21 U387 ( .A(update_period[6]), .B(n168), .C(n344), .Z(n350) );
  GTECH_NAND2 U388 ( .A(n342), .B(n299), .Z(n344) );
  GTECH_NOT U389 ( .A(n167), .Z(n299) );
  GTECH_NOT U390 ( .A(update_period[7]), .Z(n342) );
  GTECH_OAI22 U391 ( .A(update_period[5]), .B(n169), .C(n351), .D(n352), .Z(
        n345) );
  GTECH_OAI21 U392 ( .A(n315), .B(n353), .C(n354), .Z(n352) );
  GTECH_NAND3 U393 ( .A(n355), .B(update_period[2]), .C(n172), .Z(n354) );
  GTECH_AND3 U394 ( .A(n356), .B(n357), .C(n355), .Z(n351) );
  GTECH_NAND2 U395 ( .A(n353), .B(n315), .Z(n355) );
  GTECH_NOT U396 ( .A(n171), .Z(n315) );
  GTECH_NOT U397 ( .A(update_period[3]), .Z(n353) );
  GTECH_OAI21 U398 ( .A(n358), .B(n318), .C(n179), .Z(n357) );
  GTECH_NOT U399 ( .A(n173), .Z(n318) );
  GTECH_OA22 U400 ( .A(n172), .B(update_period[2]), .C(n359), .D(n173), .Z(
        n356) );
  GTECH_NOT U401 ( .A(n358), .Z(n359) );
  GTECH_NAND2 U402 ( .A(update_period[0]), .B(n174), .Z(n358) );
  GTECH_AO21 U403 ( .A(period[2]), .B(n217), .C(reset), .Z(N11) );
  GTECH_AO21 U404 ( .A(period[1]), .B(n217), .C(reset), .Z(N10) );
  GTECH_NOT U405 ( .A(n218), .Z(n217) );
  GTECH_NAND2 U406 ( .A(period_load), .B(n190), .Z(n218) );
  GTECH_NOT U407 ( .A(reset), .Z(n190) );
endmodule

