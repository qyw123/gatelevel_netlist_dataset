
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
         n24, n28, n76, n154, n159, sub_85_carry_2_, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
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
         n352, n353, n354, n355;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n76), .K(n76), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n76), .K(n76), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n76), .K(n76), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n76), .K(n76), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n76), .K(n76), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n76), .K(n76), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n76), .K(n76), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n76), .K(n76), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n76), .K(n76), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n76), .K(n76), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n76), .K(n76), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n76), .K(n76), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n76), .K(n76), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n172) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n76), .K(n76), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n171) );
  GTECH_FJK1S state_reg_0_ ( .J(n76), .K(n76), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n76), .K(n76), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n159) );
  GTECH_FJK1S update_digits_reg ( .J(n76), .K(n76), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n76), .K(n76), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n76), .K(n76), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n76), .K(n76), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n76), .K(n76), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n76), .K(n76), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n76), .K(n76), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n76), .K(n76), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n76), .K(n76), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n76), .K(n76), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n76), .K(n76), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n161) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n76), .K(n76), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n160) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n76), .K(n76), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n186) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n76), .K(n76), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n185) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n76), .K(n76), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n76), .K(n76), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n76), .K(n76), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n76), .K(n76), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n76), .K(n76), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n76), .K(n76), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n76), .K(n76), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n76), .K(n76), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n76), .K(n76), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n76), .K(n76), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n76), .K(n76), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n76), .K(n76), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n24) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n28) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n154) );
  GTECH_ZERO U168 ( .Z(n76) );
  GTECH_NAND2 U169 ( .A(n15), .B(n187), .Z(seven_segment0_N9) );
  GTECH_AND2 U170 ( .A(ten_count[0]), .B(n187), .Z(seven_segment0_N8) );
  GTECH_AND2 U171 ( .A(n154), .B(n187), .Z(seven_segment0_N6) );
  GTECH_AND2 U172 ( .A(unit_count[3]), .B(n187), .Z(seven_segment0_N22) );
  GTECH_AND2 U173 ( .A(unit_count[2]), .B(n187), .Z(seven_segment0_N20) );
  GTECH_AND2 U174 ( .A(unit_count[1]), .B(n187), .Z(seven_segment0_N18) );
  GTECH_AND2 U175 ( .A(unit_count[0]), .B(n187), .Z(seven_segment0_N16) );
  GTECH_AND2 U176 ( .A(ten_count[3]), .B(n187), .Z(seven_segment0_N14) );
  GTECH_AND2 U177 ( .A(ten_count[2]), .B(n187), .Z(seven_segment0_N12) );
  GTECH_AND2 U178 ( .A(ten_count[1]), .B(n187), .Z(seven_segment0_N10) );
  GTECH_NAND2 U179 ( .A(n188), .B(n189), .Z(segments[6]) );
  GTECH_NOT U180 ( .A(n190), .Z(n188) );
  GTECH_NOT U181 ( .A(n191), .Z(segments[4]) );
  GTECH_NAND3 U182 ( .A(n189), .B(n191), .C(n192), .Z(segments[3]) );
  GTECH_AO21 U183 ( .A(n193), .B(n194), .C(n195), .Z(n191) );
  GTECH_NAND2 U184 ( .A(n196), .B(n197), .Z(segments[2]) );
  GTECH_NOT U185 ( .A(segments[5]), .Z(n197) );
  GTECH_AO21 U186 ( .A(n198), .B(n199), .C(n190), .Z(segments[5]) );
  GTECH_NAND2 U187 ( .A(n200), .B(n192), .Z(n190) );
  GTECH_MUX2 U188 ( .A(n193), .B(n201), .S(n202), .Z(n200) );
  GTECH_NAND2 U189 ( .A(n199), .B(n203), .Z(n201) );
  GTECH_NAND3 U190 ( .A(n204), .B(n189), .C(n196), .Z(segments[1]) );
  GTECH_NOT U191 ( .A(n205), .Z(n196) );
  GTECH_AO21 U192 ( .A(n206), .B(n195), .C(n198), .Z(n205) );
  GTECH_NOT U193 ( .A(n193), .Z(n198) );
  GTECH_NAND3 U194 ( .A(n202), .B(n207), .C(n199), .Z(n204) );
  GTECH_NAND3 U195 ( .A(n192), .B(n189), .C(n208), .Z(segments[0]) );
  GTECH_OA22 U196 ( .A(n209), .B(n193), .C(n199), .D(n194), .Z(n208) );
  GTECH_NAND2 U197 ( .A(n210), .B(n207), .Z(n193) );
  GTECH_NAND2 U198 ( .A(n206), .B(n210), .Z(n189) );
  GTECH_NOT U199 ( .A(n203), .Z(n210) );
  GTECH_NOT U200 ( .A(n194), .Z(n206) );
  GTECH_NAND2 U201 ( .A(n211), .B(n202), .Z(n194) );
  GTECH_NAND3 U202 ( .A(n203), .B(n207), .C(n209), .Z(n192) );
  GTECH_NOT U203 ( .A(n212), .Z(n209) );
  GTECH_NAND2 U204 ( .A(n195), .B(n202), .Z(n212) );
  GTECH_NOT U205 ( .A(n213), .Z(n202) );
  GTECH_MUX2 U206 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n154), .Z(n213) );
  GTECH_NOT U207 ( .A(n199), .Z(n195) );
  GTECH_MUX2 U208 ( .A(n28), .B(n24), .S(n154), .Z(n199) );
  GTECH_NOT U209 ( .A(n211), .Z(n207) );
  GTECH_MUX2 U210 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n154), .Z(n211) );
  GTECH_MUX2 U211 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n154), .Z(n203) );
  GTECH_AO21 U212 ( .A(period[0]), .B(n214), .C(reset), .Z(N9) );
  GTECH_AND2 U213 ( .A(period[11]), .B(n214), .Z(N21) );
  GTECH_NAND2 U214 ( .A(n187), .B(n215), .Z(N20) );
  GTECH_AO21 U215 ( .A(period[10]), .B(n214), .C(reset), .Z(N19) );
  GTECH_AND2 U216 ( .A(period[9]), .B(n214), .Z(N18) );
  GTECH_AND2 U217 ( .A(period[8]), .B(n214), .Z(N17) );
  GTECH_AND2 U218 ( .A(N170), .B(n216), .Z(N168) );
  GTECH_NAND2 U219 ( .A(n217), .B(n218), .Z(N167) );
  GTECH_NOT U220 ( .A(n219), .Z(n217) );
  GTECH_AND2 U221 ( .A(N170), .B(n220), .Z(N166) );
  GTECH_AND2 U222 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U223 ( .A(N170), .B(n221), .Z(N162) );
  GTECH_NOT U224 ( .A(n222), .Z(N170) );
  GTECH_NAND2 U225 ( .A(n223), .B(n187), .Z(n222) );
  GTECH_NOT U226 ( .A(n218), .Z(n223) );
  GTECH_MUX2 U227 ( .A(n224), .B(n225), .S(ten_count[3]), .Z(N160) );
  GTECH_AO21 U228 ( .A(N152), .B(n226), .C(n227), .Z(n225) );
  GTECH_NOT U229 ( .A(ten_count[2]), .Z(n226) );
  GTECH_AND2 U230 ( .A(n228), .B(ten_count[2]), .Z(n224) );
  GTECH_AO21 U231 ( .A(period[7]), .B(n214), .C(reset), .Z(N16) );
  GTECH_AO21 U232 ( .A(n229), .B(n230), .C(n231), .Z(N159) );
  GTECH_MUX2 U233 ( .A(n228), .B(n227), .S(ten_count[2]), .Z(N158) );
  GTECH_AO21 U234 ( .A(N152), .B(n232), .C(N154), .Z(n227) );
  GTECH_NOT U235 ( .A(ten_count[1]), .Z(n232) );
  GTECH_NOT U236 ( .A(n233), .Z(n228) );
  GTECH_NAND3 U237 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n233) );
  GTECH_MUX2 U238 ( .A(n234), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U239 ( .A(N152), .B(ten_count[0]), .Z(n234) );
  GTECH_NOT U240 ( .A(n235), .Z(N154) );
  GTECH_NAND2 U241 ( .A(N152), .B(n236), .Z(n235) );
  GTECH_NOT U242 ( .A(ten_count[0]), .Z(n236) );
  GTECH_NAND2 U243 ( .A(n237), .B(n159), .Z(N151) );
  GTECH_AOI21 U244 ( .A(n238), .B(n239), .C(n219), .Z(n237) );
  GTECH_AO21 U245 ( .A(n230), .B(n14), .C(reset), .Z(n219) );
  GTECH_NOT U246 ( .A(n240), .Z(n230) );
  GTECH_AND2 U247 ( .A(period[6]), .B(n214), .Z(N15) );
  GTECH_AO21 U248 ( .A(n238), .B(N152), .C(n241), .Z(N148) );
  GTECH_MUX2 U249 ( .A(n242), .B(n243), .S(n171), .Z(n241) );
  GTECH_NOR3 U250 ( .A(n244), .B(n172), .C(n245), .Z(n243) );
  GTECH_OR_NOT U251 ( .A(n246), .B(n247), .Z(n242) );
  GTECH_MUX2 U252 ( .A(n248), .B(n245), .S(n172), .Z(n247) );
  GTECH_NOT U253 ( .A(n249), .Z(n238) );
  GTECH_NAND3 U254 ( .A(n250), .B(n218), .C(n251), .Z(N147) );
  GTECH_NOT U255 ( .A(n231), .Z(n251) );
  GTECH_NAND2 U256 ( .A(n187), .B(n252), .Z(n231) );
  GTECH_NAND3 U257 ( .A(n249), .B(n239), .C(n159), .Z(n252) );
  GTECH_NAND4 U258 ( .A(n185), .B(n172), .C(n171), .D(n253), .Z(n249) );
  GTECH_NAND2 U259 ( .A(n14), .B(n254), .Z(n218) );
  GTECH_NOT U260 ( .A(n159), .Z(n254) );
  GTECH_NAND3 U261 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n250) );
  GTECH_MUX2 U262 ( .A(n246), .B(n255), .S(n172), .Z(N146) );
  GTECH_AO21 U263 ( .A(N150), .B(n256), .C(n257), .Z(n255) );
  GTECH_NOT U264 ( .A(n258), .Z(n257) );
  GTECH_OAI22 U265 ( .A(n256), .B(n245), .C(n259), .D(n248), .Z(n246) );
  GTECH_AND2 U266 ( .A(n185), .B(n253), .Z(n259) );
  GTECH_NOT U267 ( .A(n244), .Z(n256) );
  GTECH_NAND3 U268 ( .A(n216), .B(n260), .C(n261), .Z(n244) );
  GTECH_NOT U269 ( .A(n185), .Z(n260) );
  GTECH_NAND2 U270 ( .A(n262), .B(n258), .Z(N144) );
  GTECH_NAND3 U271 ( .A(N152), .B(n253), .C(n185), .Z(n258) );
  GTECH_MUX2 U272 ( .A(n263), .B(n264), .S(n185), .Z(n262) );
  GTECH_NAND3 U273 ( .A(n261), .B(n216), .C(N150), .Z(n264) );
  GTECH_OA22 U274 ( .A(n265), .B(n245), .C(n248), .D(n253), .Z(n263) );
  GTECH_NAND2 U275 ( .A(n266), .B(n216), .Z(n253) );
  GTECH_AND2 U276 ( .A(n261), .B(n216), .Z(n265) );
  GTECH_NOT U277 ( .A(n22), .Z(n216) );
  GTECH_NOT U278 ( .A(n267), .Z(n261) );
  GTECH_AO21 U279 ( .A(n268), .B(N150), .C(n269), .Z(N142) );
  GTECH_MUX2 U280 ( .A(n270), .B(n271), .S(n22), .Z(n269) );
  GTECH_AND2 U281 ( .A(N152), .B(n266), .Z(n271) );
  GTECH_NOT U282 ( .A(n272), .Z(n270) );
  GTECH_XOR2 U283 ( .A(n267), .B(n22), .Z(n268) );
  GTECH_NAND3 U284 ( .A(n221), .B(n220), .C(sub_85_carry_2_), .Z(n267) );
  GTECH_NOT U285 ( .A(n20), .Z(n220) );
  GTECH_NAND2 U286 ( .A(n273), .B(n272), .Z(N140) );
  GTECH_NAND2 U287 ( .A(n274), .B(N152), .Z(n272) );
  GTECH_NOT U288 ( .A(n266), .Z(n274) );
  GTECH_NAND2 U289 ( .A(n20), .B(n275), .Z(n266) );
  GTECH_NOT U290 ( .A(sub_85_carry_2_), .Z(n275) );
  GTECH_MUX2 U291 ( .A(n276), .B(n277), .S(n20), .Z(n273) );
  GTECH_NAND3 U292 ( .A(sub_85_carry_2_), .B(n221), .C(N150), .Z(n277) );
  GTECH_AND2 U293 ( .A(n278), .B(n279), .Z(n276) );
  GTECH_MUX2 U294 ( .A(n245), .B(n248), .S(sub_85_carry_2_), .Z(n278) );
  GTECH_AO21 U295 ( .A(period[5]), .B(n214), .C(reset), .Z(N14) );
  GTECH_MUX2 U296 ( .A(n280), .B(n281), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_AO21 U297 ( .A(N150), .B(n221), .C(N152), .Z(n280) );
  GTECH_AO21 U298 ( .A(N152), .B(n221), .C(n281), .Z(N136) );
  GTECH_NOT U299 ( .A(n279), .Z(n281) );
  GTECH_NAND2 U300 ( .A(n16), .B(N150), .Z(n279) );
  GTECH_NOT U301 ( .A(n245), .Z(N150) );
  GTECH_NAND2 U302 ( .A(n229), .B(n187), .Z(n245) );
  GTECH_NOT U303 ( .A(n282), .Z(n229) );
  GTECH_NOT U304 ( .A(n16), .Z(n221) );
  GTECH_NOT U305 ( .A(n248), .Z(N152) );
  GTECH_NAND2 U306 ( .A(n159), .B(n283), .Z(n248) );
  GTECH_NOT U307 ( .A(N169), .Z(n283) );
  GTECH_NAND2 U308 ( .A(n187), .B(n239), .Z(N169) );
  GTECH_NOT U309 ( .A(n14), .Z(n239) );
  GTECH_AOI21 U310 ( .A(n186), .B(n284), .C(n285), .Z(N134) );
  GTECH_OR2 U311 ( .A(n286), .B(n170), .Z(n284) );
  GTECH_NAND2 U312 ( .A(n187), .B(n282), .Z(N133) );
  GTECH_NAND2 U313 ( .A(n159), .B(n14), .Z(n282) );
  GTECH_AND2 U314 ( .A(n287), .B(n288), .Z(N132) );
  GTECH_XOR2 U315 ( .A(n286), .B(n170), .Z(n287) );
  GTECH_NAND2 U316 ( .A(n289), .B(n290), .Z(n286) );
  GTECH_NOT U317 ( .A(n291), .Z(n289) );
  GTECH_AND2 U318 ( .A(n292), .B(n288), .Z(N130) );
  GTECH_XOR2 U319 ( .A(n291), .B(n160), .Z(n292) );
  GTECH_NAND2 U320 ( .A(n293), .B(n294), .Z(n291) );
  GTECH_NOT U321 ( .A(n295), .Z(n293) );
  GTECH_AND2 U322 ( .A(period[4]), .B(n214), .Z(N13) );
  GTECH_AND2 U323 ( .A(n296), .B(n288), .Z(N128) );
  GTECH_XOR2 U324 ( .A(n295), .B(n161), .Z(n296) );
  GTECH_NAND2 U325 ( .A(n297), .B(n298), .Z(n295) );
  GTECH_NOT U326 ( .A(n299), .Z(n297) );
  GTECH_AND2 U327 ( .A(n300), .B(n288), .Z(N126) );
  GTECH_XOR2 U328 ( .A(n299), .B(n162), .Z(n300) );
  GTECH_NAND2 U329 ( .A(n301), .B(n302), .Z(n299) );
  GTECH_NOT U330 ( .A(n303), .Z(n301) );
  GTECH_AND2 U331 ( .A(n304), .B(n288), .Z(N124) );
  GTECH_XOR2 U332 ( .A(n303), .B(n163), .Z(n304) );
  GTECH_NAND2 U333 ( .A(n305), .B(n306), .Z(n303) );
  GTECH_NOT U334 ( .A(n307), .Z(n305) );
  GTECH_AND2 U335 ( .A(n308), .B(n288), .Z(N122) );
  GTECH_XOR2 U336 ( .A(n307), .B(n164), .Z(n308) );
  GTECH_NAND2 U337 ( .A(n309), .B(n310), .Z(n307) );
  GTECH_NOT U338 ( .A(n311), .Z(n309) );
  GTECH_AND2 U339 ( .A(n312), .B(n288), .Z(N120) );
  GTECH_XOR2 U340 ( .A(n311), .B(n165), .Z(n312) );
  GTECH_NAND2 U341 ( .A(n313), .B(n314), .Z(n311) );
  GTECH_NOT U342 ( .A(n315), .Z(n313) );
  GTECH_AO21 U343 ( .A(period[3]), .B(n214), .C(reset), .Z(N12) );
  GTECH_AND2 U344 ( .A(n316), .B(n288), .Z(N118) );
  GTECH_XOR2 U345 ( .A(n315), .B(n166), .Z(n316) );
  GTECH_NAND3 U346 ( .A(n317), .B(n318), .C(n319), .Z(n315) );
  GTECH_NOT U347 ( .A(n167), .Z(n319) );
  GTECH_OAI22 U348 ( .A(n167), .B(n320), .C(n285), .D(n321), .Z(N116) );
  GTECH_MUX2 U349 ( .A(n317), .B(n322), .S(n167), .Z(n321) );
  GTECH_NAND2 U350 ( .A(n317), .B(n318), .Z(n322) );
  GTECH_MUX2 U351 ( .A(N112), .B(n323), .S(n168), .Z(N114) );
  GTECH_AND2 U352 ( .A(n288), .B(n318), .Z(n323) );
  GTECH_NOT U353 ( .A(n169), .Z(n318) );
  GTECH_NOT U354 ( .A(n320), .Z(N112) );
  GTECH_NAND2 U355 ( .A(n288), .B(n169), .Z(n320) );
  GTECH_NOT U356 ( .A(n285), .Z(n288) );
  GTECH_NAND2 U357 ( .A(n240), .B(n187), .Z(n285) );
  GTECH_NAND2 U358 ( .A(n324), .B(n325), .Z(n240) );
  GTECH_NAND3 U359 ( .A(n326), .B(n327), .C(n328), .Z(n325) );
  GTECH_AO21 U360 ( .A(update_period[7]), .B(n162), .C(n329), .Z(n328) );
  GTECH_OAI22 U361 ( .A(n330), .B(n331), .C(n332), .D(n333), .Z(n329) );
  GTECH_NAND2 U362 ( .A(n163), .B(n334), .Z(n333) );
  GTECH_NAND2 U363 ( .A(n334), .B(n335), .Z(n331) );
  GTECH_NAND2 U364 ( .A(n302), .B(n332), .Z(n335) );
  GTECH_NOT U365 ( .A(update_period[6]), .Z(n332) );
  GTECH_NOT U366 ( .A(n163), .Z(n302) );
  GTECH_NAND2 U367 ( .A(n336), .B(n298), .Z(n334) );
  GTECH_NOT U368 ( .A(n162), .Z(n298) );
  GTECH_NOT U369 ( .A(update_period[7]), .Z(n336) );
  GTECH_AOI222 U370 ( .A(update_period[5]), .B(n164), .C(n337), .D(
        update_period[4]), .E(n338), .F(n339), .Z(n330) );
  GTECH_AND2 U371 ( .A(n340), .B(n341), .Z(n339) );
  GTECH_OR_NOT U372 ( .A(update_period[4]), .B(n310), .Z(n341) );
  GTECH_NOT U373 ( .A(n165), .Z(n310) );
  GTECH_OA22 U374 ( .A(n342), .B(n343), .C(n344), .D(n345), .Z(n338) );
  GTECH_AND2 U375 ( .A(update_period[1]), .B(n168), .Z(n345) );
  GTECH_OR_NOT U376 ( .A(n342), .B(n346), .Z(n344) );
  GTECH_NAND3 U377 ( .A(n347), .B(n169), .C(update_period[0]), .Z(n346) );
  GTECH_OR_NOT U378 ( .A(update_period[1]), .B(n317), .Z(n347) );
  GTECH_NOT U379 ( .A(n168), .Z(n317) );
  GTECH_OA22 U380 ( .A(n167), .B(update_period[2]), .C(n166), .D(
        update_period[3]), .Z(n343) );
  GTECH_AOI21 U381 ( .A(n314), .B(n348), .C(n349), .Z(n342) );
  GTECH_AOI2N2 U382 ( .A(n167), .B(update_period[2]), .C(n348), .D(n314), .Z(
        n349) );
  GTECH_NOT U383 ( .A(update_period[3]), .Z(n348) );
  GTECH_NOT U384 ( .A(n166), .Z(n314) );
  GTECH_AND2 U385 ( .A(n165), .B(n340), .Z(n337) );
  GTECH_NAND2 U386 ( .A(n350), .B(n306), .Z(n340) );
  GTECH_NOT U387 ( .A(n164), .Z(n306) );
  GTECH_NOT U388 ( .A(update_period[5]), .Z(n350) );
  GTECH_AND_NOT U389 ( .A(n351), .B(n352), .Z(n327) );
  GTECH_OR_NOT U390 ( .A(update_period[8]), .B(n294), .Z(n351) );
  GTECH_NOT U391 ( .A(n161), .Z(n294) );
  GTECH_AOI2N2 U392 ( .A(n186), .B(update_period[11]), .C(n352), .D(n353), .Z(
        n324) );
  GTECH_AOI222 U393 ( .A(update_period[10]), .B(n170), .C(update_period[9]), 
        .D(n160), .E(n354), .F(update_period[8]), .Z(n353) );
  GTECH_AND2 U394 ( .A(n161), .B(n326), .Z(n354) );
  GTECH_NAND2 U395 ( .A(n355), .B(n290), .Z(n326) );
  GTECH_NOT U396 ( .A(n160), .Z(n290) );
  GTECH_NOT U397 ( .A(update_period[9]), .Z(n355) );
  GTECH_OAI22 U398 ( .A(update_period[11]), .B(n186), .C(update_period[10]), 
        .D(n170), .Z(n352) );
  GTECH_AO21 U399 ( .A(period[2]), .B(n214), .C(reset), .Z(N11) );
  GTECH_AO21 U400 ( .A(period[1]), .B(n214), .C(reset), .Z(N10) );
  GTECH_NOT U401 ( .A(n215), .Z(n214) );
  GTECH_NAND2 U402 ( .A(period_load), .B(n187), .Z(n215) );
  GTECH_NOT U403 ( .A(reset), .Z(n187) );
endmodule

