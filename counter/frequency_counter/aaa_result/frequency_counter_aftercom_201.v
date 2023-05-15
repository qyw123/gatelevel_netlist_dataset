
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
         n26, n28, n30, n32, n77, n78, n159, n163, sub_85_carry_2_, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n78), .K(n78), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n78), .K(n78), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n78), .K(n78), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n78), .K(n78), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n78), .K(n78), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n78), .K(n78), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n78), .K(n78), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n78), .K(n78), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n78), .K(n78), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n78), .K(n78), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n78), .K(n78), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n78), .K(n78), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD2 edge_detect0_q0_reg ( .D(signal), .CP(clk), .CD(n77), .Q(
        edge_detect0_q0) );
  GTECH_FD2 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .CD(n77), .Q(
        edge_detect0_q1) );
  GTECH_FD2 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .CD(n77), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n78), .K(n78), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n177) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n78), .K(n78), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n176) );
  GTECH_FJK1S state_reg_0_ ( .J(n78), .K(n78), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n78), .K(n78), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n163) );
  GTECH_FJK1S update_digits_reg ( .J(n78), .K(n78), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n78), .K(n78), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n78), .K(n78), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n78), .K(n78), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n78), .K(n78), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n78), .K(n78), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n78), .K(n78), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n78), .K(n78), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n78), .K(n78), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n78), .K(n78), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n78), .K(n78), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n78), .K(n78), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n78), .K(n78), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n164) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n78), .K(n78), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n190) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n78), .K(n78), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n78), .K(n78), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n78), .K(n78), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n78), .K(n78), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n78), .K(n78), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n78), .K(n78), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n78), .K(n78), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n78), .K(n78), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n78), .K(n78), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n78), .K(n78), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n78), .K(n78), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n78), .K(n78), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
  GTECH_FD2 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .CD(
        n77), .Q(digit), .QN(n159) );
  GTECH_ZERO U172 ( .Z(n78) );
  GTECH_ONE U173 ( .Z(n77) );
  GTECH_NAND2 U174 ( .A(n15), .B(n191), .Z(seven_segment0_N9) );
  GTECH_AND2 U175 ( .A(ten_count[0]), .B(n191), .Z(seven_segment0_N8) );
  GTECH_AND2 U176 ( .A(n159), .B(n191), .Z(seven_segment0_N6) );
  GTECH_AND2 U177 ( .A(unit_count[3]), .B(n191), .Z(seven_segment0_N22) );
  GTECH_AND2 U178 ( .A(unit_count[2]), .B(n191), .Z(seven_segment0_N20) );
  GTECH_AND2 U179 ( .A(unit_count[1]), .B(n191), .Z(seven_segment0_N18) );
  GTECH_AND2 U180 ( .A(unit_count[0]), .B(n191), .Z(seven_segment0_N16) );
  GTECH_AND2 U181 ( .A(ten_count[3]), .B(n191), .Z(seven_segment0_N14) );
  GTECH_AND2 U182 ( .A(ten_count[2]), .B(n191), .Z(seven_segment0_N12) );
  GTECH_AND2 U183 ( .A(ten_count[1]), .B(n191), .Z(seven_segment0_N10) );
  GTECH_NAND2 U184 ( .A(n192), .B(n193), .Z(segments[6]) );
  GTECH_NOT U185 ( .A(n194), .Z(n192) );
  GTECH_NOT U186 ( .A(n195), .Z(segments[4]) );
  GTECH_NAND3 U187 ( .A(n193), .B(n195), .C(n196), .Z(segments[3]) );
  GTECH_AO21 U188 ( .A(n197), .B(n198), .C(n199), .Z(n195) );
  GTECH_NAND2 U189 ( .A(n200), .B(n201), .Z(segments[2]) );
  GTECH_NOT U190 ( .A(segments[5]), .Z(n201) );
  GTECH_AO21 U191 ( .A(n202), .B(n203), .C(n194), .Z(segments[5]) );
  GTECH_NAND2 U192 ( .A(n204), .B(n196), .Z(n194) );
  GTECH_MUX2 U193 ( .A(n197), .B(n205), .S(n206), .Z(n204) );
  GTECH_NAND2 U194 ( .A(n203), .B(n207), .Z(n205) );
  GTECH_NAND3 U195 ( .A(n208), .B(n193), .C(n200), .Z(segments[1]) );
  GTECH_NOT U196 ( .A(n209), .Z(n200) );
  GTECH_AO21 U197 ( .A(n199), .B(n210), .C(n202), .Z(n209) );
  GTECH_NOT U198 ( .A(n197), .Z(n202) );
  GTECH_NAND3 U199 ( .A(n206), .B(n203), .C(n211), .Z(n208) );
  GTECH_NAND3 U200 ( .A(n196), .B(n193), .C(n212), .Z(segments[0]) );
  GTECH_OA22 U201 ( .A(n213), .B(n197), .C(n198), .D(n203), .Z(n212) );
  GTECH_NOT U202 ( .A(n199), .Z(n203) );
  GTECH_NAND2 U203 ( .A(n211), .B(n214), .Z(n197) );
  GTECH_NAND2 U204 ( .A(n210), .B(n214), .Z(n193) );
  GTECH_NOT U205 ( .A(n207), .Z(n214) );
  GTECH_NOT U206 ( .A(n198), .Z(n210) );
  GTECH_NAND2 U207 ( .A(n206), .B(n215), .Z(n198) );
  GTECH_NOT U208 ( .A(n211), .Z(n215) );
  GTECH_NAND3 U209 ( .A(n211), .B(n207), .C(n213), .Z(n196) );
  GTECH_NOT U210 ( .A(n216), .Z(n213) );
  GTECH_NAND2 U211 ( .A(n199), .B(n206), .Z(n216) );
  GTECH_MUX2 U212 ( .A(n32), .B(n28), .S(n159), .Z(n206) );
  GTECH_MUX2 U213 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n159), .Z(n199) );
  GTECH_MUX2 U214 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n159), .Z(n207) );
  GTECH_MUX2 U215 ( .A(n30), .B(n26), .S(n159), .Z(n211) );
  GTECH_AO21 U216 ( .A(period[0]), .B(n217), .C(reset), .Z(N9) );
  GTECH_AND2 U217 ( .A(period[11]), .B(n217), .Z(N21) );
  GTECH_NAND2 U218 ( .A(n191), .B(n218), .Z(N20) );
  GTECH_AO21 U219 ( .A(period[10]), .B(n217), .C(reset), .Z(N19) );
  GTECH_AND2 U220 ( .A(period[9]), .B(n217), .Z(N18) );
  GTECH_AND2 U221 ( .A(period[8]), .B(n217), .Z(N17) );
  GTECH_AND2 U222 ( .A(N170), .B(n219), .Z(N168) );
  GTECH_NAND2 U223 ( .A(n220), .B(n221), .Z(N167) );
  GTECH_AND2 U224 ( .A(N170), .B(n222), .Z(N166) );
  GTECH_AND2 U225 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U226 ( .A(N170), .B(n223), .Z(N162) );
  GTECH_NOT U227 ( .A(n224), .Z(N170) );
  GTECH_NAND2 U228 ( .A(n225), .B(n191), .Z(n224) );
  GTECH_NOT U229 ( .A(n221), .Z(n225) );
  GTECH_MUX2 U230 ( .A(n226), .B(n227), .S(ten_count[3]), .Z(N160) );
  GTECH_AO21 U231 ( .A(N152), .B(n228), .C(n229), .Z(n227) );
  GTECH_NOT U232 ( .A(ten_count[2]), .Z(n228) );
  GTECH_AND2 U233 ( .A(n230), .B(ten_count[2]), .Z(n226) );
  GTECH_AO21 U234 ( .A(period[7]), .B(n217), .C(reset), .Z(N16) );
  GTECH_AO21 U235 ( .A(n231), .B(n232), .C(n233), .Z(N159) );
  GTECH_MUX2 U236 ( .A(n230), .B(n229), .S(ten_count[2]), .Z(N158) );
  GTECH_AO21 U237 ( .A(N152), .B(n234), .C(N154), .Z(n229) );
  GTECH_NOT U238 ( .A(ten_count[1]), .Z(n234) );
  GTECH_NOT U239 ( .A(n235), .Z(n230) );
  GTECH_NAND3 U240 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n235) );
  GTECH_MUX2 U241 ( .A(n236), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U242 ( .A(N152), .B(ten_count[0]), .Z(n236) );
  GTECH_NOT U243 ( .A(n237), .Z(N154) );
  GTECH_NAND2 U244 ( .A(N152), .B(n238), .Z(n237) );
  GTECH_NOT U245 ( .A(ten_count[0]), .Z(n238) );
  GTECH_NAND2 U246 ( .A(n239), .B(n163), .Z(N151) );
  GTECH_OA21 U247 ( .A(n14), .B(n240), .C(n220), .Z(n239) );
  GTECH_NOT U248 ( .A(n241), .Z(n220) );
  GTECH_AO21 U249 ( .A(n232), .B(n14), .C(reset), .Z(n241) );
  GTECH_NOT U250 ( .A(n242), .Z(n232) );
  GTECH_AND2 U251 ( .A(period[6]), .B(n217), .Z(N15) );
  GTECH_NOT U252 ( .A(n243), .Z(N148) );
  GTECH_OA21 U253 ( .A(n240), .B(n244), .C(n245), .Z(n243) );
  GTECH_MUX2 U254 ( .A(n246), .B(n247), .S(n176), .Z(n245) );
  GTECH_OR3 U255 ( .A(n177), .B(n248), .C(n249), .Z(n247) );
  GTECH_AND_NOT U256 ( .A(n250), .B(n251), .Z(n246) );
  GTECH_MUX2 U257 ( .A(n244), .B(n248), .S(n177), .Z(n250) );
  GTECH_NAND3 U258 ( .A(n252), .B(n221), .C(n253), .Z(N147) );
  GTECH_NOT U259 ( .A(n233), .Z(n253) );
  GTECH_NAND2 U260 ( .A(n191), .B(n254), .Z(n233) );
  GTECH_NAND3 U261 ( .A(n240), .B(n255), .C(n163), .Z(n254) );
  GTECH_NAND4 U262 ( .A(n190), .B(n177), .C(n176), .D(n256), .Z(n240) );
  GTECH_NAND2 U263 ( .A(n14), .B(n257), .Z(n221) );
  GTECH_NOT U264 ( .A(n163), .Z(n257) );
  GTECH_NAND3 U265 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n252) );
  GTECH_MUX2 U266 ( .A(n251), .B(n258), .S(n177), .Z(N146) );
  GTECH_AO21 U267 ( .A(N150), .B(n259), .C(n260), .Z(n258) );
  GTECH_NOT U268 ( .A(n261), .Z(n260) );
  GTECH_OAI22 U269 ( .A(n259), .B(n248), .C(n262), .D(n244), .Z(n251) );
  GTECH_AND2 U270 ( .A(n190), .B(n256), .Z(n262) );
  GTECH_NOT U271 ( .A(n249), .Z(n259) );
  GTECH_NAND3 U272 ( .A(n219), .B(n263), .C(n264), .Z(n249) );
  GTECH_NOT U273 ( .A(n190), .Z(n263) );
  GTECH_NAND2 U274 ( .A(n265), .B(n261), .Z(N144) );
  GTECH_NAND3 U275 ( .A(N152), .B(n256), .C(n190), .Z(n261) );
  GTECH_MUX2 U276 ( .A(n266), .B(n267), .S(n190), .Z(n265) );
  GTECH_NAND3 U277 ( .A(n264), .B(n219), .C(N150), .Z(n267) );
  GTECH_OA21 U278 ( .A(n244), .B(n256), .C(n268), .Z(n266) );
  GTECH_AO21 U279 ( .A(n264), .B(n219), .C(n248), .Z(n268) );
  GTECH_NOT U280 ( .A(n269), .Z(n264) );
  GTECH_NAND2 U281 ( .A(n270), .B(n219), .Z(n256) );
  GTECH_NOT U282 ( .A(n22), .Z(n219) );
  GTECH_AO21 U283 ( .A(n271), .B(N150), .C(n272), .Z(N142) );
  GTECH_MUX2 U284 ( .A(n273), .B(n274), .S(n22), .Z(n272) );
  GTECH_AND2 U285 ( .A(N152), .B(n270), .Z(n274) );
  GTECH_NOT U286 ( .A(n275), .Z(n273) );
  GTECH_XOR2 U287 ( .A(n269), .B(n22), .Z(n271) );
  GTECH_NAND3 U288 ( .A(n223), .B(n222), .C(sub_85_carry_2_), .Z(n269) );
  GTECH_NOT U289 ( .A(n20), .Z(n222) );
  GTECH_NAND2 U290 ( .A(n276), .B(n275), .Z(N140) );
  GTECH_NAND2 U291 ( .A(n277), .B(N152), .Z(n275) );
  GTECH_NOT U292 ( .A(n270), .Z(n277) );
  GTECH_NAND2 U293 ( .A(n20), .B(n278), .Z(n270) );
  GTECH_NOT U294 ( .A(sub_85_carry_2_), .Z(n278) );
  GTECH_MUX2 U295 ( .A(n279), .B(n280), .S(n20), .Z(n276) );
  GTECH_NAND3 U296 ( .A(sub_85_carry_2_), .B(n223), .C(N150), .Z(n280) );
  GTECH_AND2 U297 ( .A(n281), .B(n282), .Z(n279) );
  GTECH_MUX2 U298 ( .A(n248), .B(n244), .S(sub_85_carry_2_), .Z(n281) );
  GTECH_AO21 U299 ( .A(period[5]), .B(n217), .C(reset), .Z(N14) );
  GTECH_MUX2 U300 ( .A(n283), .B(n284), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_AO21 U301 ( .A(N150), .B(n223), .C(N152), .Z(n283) );
  GTECH_AO21 U302 ( .A(N152), .B(n223), .C(n284), .Z(N136) );
  GTECH_NOT U303 ( .A(n282), .Z(n284) );
  GTECH_NAND2 U304 ( .A(n16), .B(N150), .Z(n282) );
  GTECH_NOT U305 ( .A(n248), .Z(N150) );
  GTECH_NAND2 U306 ( .A(n231), .B(n191), .Z(n248) );
  GTECH_NOT U307 ( .A(n285), .Z(n231) );
  GTECH_NOT U308 ( .A(n16), .Z(n223) );
  GTECH_NOT U309 ( .A(n244), .Z(N152) );
  GTECH_NAND2 U310 ( .A(n163), .B(n286), .Z(n244) );
  GTECH_NOT U311 ( .A(N169), .Z(n286) );
  GTECH_NAND2 U312 ( .A(n191), .B(n255), .Z(N169) );
  GTECH_NOT U313 ( .A(n14), .Z(n255) );
  GTECH_AND_NOT U314 ( .A(n287), .B(n288), .Z(N134) );
  GTECH_OA21 U315 ( .A(n289), .B(n175), .C(n164), .Z(n288) );
  GTECH_NAND2 U316 ( .A(n191), .B(n285), .Z(N133) );
  GTECH_NAND2 U317 ( .A(n163), .B(n14), .Z(n285) );
  GTECH_AND2 U318 ( .A(n290), .B(n287), .Z(N132) );
  GTECH_XOR2 U319 ( .A(n289), .B(n175), .Z(n290) );
  GTECH_NAND2 U320 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_NOT U321 ( .A(n293), .Z(n291) );
  GTECH_AND2 U322 ( .A(n294), .B(n287), .Z(N130) );
  GTECH_XOR2 U323 ( .A(n293), .B(n165), .Z(n294) );
  GTECH_NAND2 U324 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_NOT U325 ( .A(n166), .Z(n296) );
  GTECH_NOT U326 ( .A(n297), .Z(n295) );
  GTECH_AND2 U327 ( .A(period[4]), .B(n217), .Z(N13) );
  GTECH_AND2 U328 ( .A(n298), .B(n287), .Z(N128) );
  GTECH_XOR2 U329 ( .A(n297), .B(n166), .Z(n298) );
  GTECH_NAND2 U330 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U331 ( .A(n301), .Z(n299) );
  GTECH_AND2 U332 ( .A(n302), .B(n287), .Z(N126) );
  GTECH_XOR2 U333 ( .A(n301), .B(n167), .Z(n302) );
  GTECH_NAND2 U334 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U335 ( .A(n168), .Z(n304) );
  GTECH_NOT U336 ( .A(n305), .Z(n303) );
  GTECH_AND2 U337 ( .A(n306), .B(n287), .Z(N124) );
  GTECH_XOR2 U338 ( .A(n305), .B(n168), .Z(n306) );
  GTECH_NAND2 U339 ( .A(n307), .B(n308), .Z(n305) );
  GTECH_NOT U340 ( .A(n309), .Z(n307) );
  GTECH_AND2 U341 ( .A(n310), .B(n287), .Z(N122) );
  GTECH_XOR2 U342 ( .A(n309), .B(n169), .Z(n310) );
  GTECH_NAND2 U343 ( .A(n311), .B(n312), .Z(n309) );
  GTECH_NOT U344 ( .A(n170), .Z(n312) );
  GTECH_NOT U345 ( .A(n313), .Z(n311) );
  GTECH_AND2 U346 ( .A(n314), .B(n287), .Z(N120) );
  GTECH_XOR2 U347 ( .A(n313), .B(n170), .Z(n314) );
  GTECH_NAND2 U348 ( .A(n315), .B(n316), .Z(n313) );
  GTECH_NOT U349 ( .A(n317), .Z(n315) );
  GTECH_AO21 U350 ( .A(period[3]), .B(n217), .C(reset), .Z(N12) );
  GTECH_AND2 U351 ( .A(n318), .B(n287), .Z(N118) );
  GTECH_XOR2 U352 ( .A(n317), .B(n171), .Z(n318) );
  GTECH_NAND3 U353 ( .A(n319), .B(n320), .C(n321), .Z(n317) );
  GTECH_NOT U354 ( .A(n172), .Z(n321) );
  GTECH_OAI22 U355 ( .A(n172), .B(n322), .C(n323), .D(n324), .Z(N116) );
  GTECH_MUX2 U356 ( .A(n319), .B(n325), .S(n172), .Z(n324) );
  GTECH_NAND2 U357 ( .A(n319), .B(n320), .Z(n325) );
  GTECH_NOT U358 ( .A(n173), .Z(n319) );
  GTECH_MUX2 U359 ( .A(N112), .B(n326), .S(n173), .Z(N114) );
  GTECH_AND2 U360 ( .A(n287), .B(n320), .Z(n326) );
  GTECH_NOT U361 ( .A(n174), .Z(n320) );
  GTECH_NOT U362 ( .A(n322), .Z(N112) );
  GTECH_NAND2 U363 ( .A(n287), .B(n174), .Z(n322) );
  GTECH_NOT U364 ( .A(n323), .Z(n287) );
  GTECH_NAND2 U365 ( .A(n242), .B(n191), .Z(n323) );
  GTECH_NAND2 U366 ( .A(n327), .B(n328), .Z(n242) );
  GTECH_OR4 U367 ( .A(n329), .B(n330), .C(n331), .D(n332), .Z(n328) );
  GTECH_AOI222 U368 ( .A(update_period[7]), .B(n167), .C(n333), .D(
        update_period[6]), .E(n334), .F(n335), .Z(n332) );
  GTECH_NOT U369 ( .A(n336), .Z(n335) );
  GTECH_AOI222 U370 ( .A(update_period[5]), .B(n169), .C(n337), .D(
        update_period[4]), .E(n338), .F(n339), .Z(n336) );
  GTECH_OA21 U371 ( .A(n170), .B(update_period[4]), .C(n340), .Z(n339) );
  GTECH_OA21 U372 ( .A(n341), .B(n342), .C(n343), .Z(n338) );
  GTECH_AO21 U373 ( .A(update_period[1]), .B(n173), .C(n344), .Z(n343) );
  GTECH_AO21 U374 ( .A(n345), .B(update_period[0]), .C(n341), .Z(n344) );
  GTECH_OA21 U375 ( .A(update_period[1]), .B(n173), .C(n174), .Z(n345) );
  GTECH_OA22 U376 ( .A(n172), .B(update_period[2]), .C(n171), .D(
        update_period[3]), .Z(n342) );
  GTECH_OA21 U377 ( .A(update_period[3]), .B(n171), .C(n346), .Z(n341) );
  GTECH_OAI2N2 U378 ( .A(n347), .B(n316), .C(n172), .D(update_period[2]), .Z(
        n346) );
  GTECH_NOT U379 ( .A(n171), .Z(n316) );
  GTECH_NOT U380 ( .A(update_period[3]), .Z(n347) );
  GTECH_AND2 U381 ( .A(n170), .B(n340), .Z(n337) );
  GTECH_NAND2 U382 ( .A(n348), .B(n308), .Z(n340) );
  GTECH_NOT U383 ( .A(n169), .Z(n308) );
  GTECH_NOT U384 ( .A(update_period[5]), .Z(n348) );
  GTECH_OA21 U385 ( .A(update_period[6]), .B(n168), .C(n349), .Z(n334) );
  GTECH_AND2 U386 ( .A(n168), .B(n349), .Z(n333) );
  GTECH_NAND2 U387 ( .A(n350), .B(n300), .Z(n349) );
  GTECH_NOT U388 ( .A(n167), .Z(n300) );
  GTECH_NOT U389 ( .A(update_period[7]), .Z(n350) );
  GTECH_NOT U390 ( .A(n351), .Z(n331) );
  GTECH_NOR2 U391 ( .A(n166), .B(update_period[8]), .Z(n330) );
  GTECH_AOI2N2 U392 ( .A(n164), .B(update_period[11]), .C(n329), .D(n352), .Z(
        n327) );
  GTECH_AOI222 U393 ( .A(update_period[10]), .B(n175), .C(update_period[9]), 
        .D(n165), .E(n353), .F(update_period[8]), .Z(n352) );
  GTECH_AND2 U394 ( .A(n166), .B(n351), .Z(n353) );
  GTECH_NAND2 U395 ( .A(n354), .B(n292), .Z(n351) );
  GTECH_NOT U396 ( .A(n165), .Z(n292) );
  GTECH_NOT U397 ( .A(update_period[9]), .Z(n354) );
  GTECH_OAI22 U398 ( .A(update_period[10]), .B(n175), .C(update_period[11]), 
        .D(n164), .Z(n329) );
  GTECH_AO21 U399 ( .A(period[2]), .B(n217), .C(reset), .Z(N11) );
  GTECH_AO21 U400 ( .A(period[1]), .B(n217), .C(reset), .Z(N10) );
  GTECH_NOT U401 ( .A(n218), .Z(n217) );
  GTECH_NAND2 U402 ( .A(period_load), .B(n191), .Z(n218) );
  GTECH_NOT U403 ( .A(reset), .Z(n191) );
endmodule

