
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
         n26, n28, n30, n32, n77, n155, n159, sub_85_carry_2_, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n77), .K(n77), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n77), .K(n77), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n77), .K(n77), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n77), .K(n77), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n77), .K(n77), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n77), .K(n77), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n77), .K(n77), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n77), .K(n77), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n77), .K(n77), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n77), .K(n77), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n77), .K(n77), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n77), .K(n77), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n77), .K(n77), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n173) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n77), .K(n77), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n172) );
  GTECH_FJK1S state_reg_0_ ( .J(n77), .K(n77), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n77), .K(n77), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n159) );
  GTECH_FJK1S update_digits_reg ( .J(n77), .K(n77), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n77), .K(n77), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n77), .K(n77), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n77), .K(n77), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n77), .K(n77), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n77), .K(n77), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n77), .K(n77), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n77), .K(n77), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n77), .K(n77), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n77), .K(n77), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n77), .K(n77), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n77), .K(n77), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n161) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n77), .K(n77), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n160) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n77), .K(n77), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n186) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n77), .K(n77), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n77), .K(n77), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n77), .K(n77), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n77), .K(n77), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n77), .K(n77), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n77), .K(n77), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n77), .K(n77), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n77), .K(n77), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n77), .K(n77), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n77), .K(n77), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n77), .K(n77), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n77), .K(n77), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n155) );
  GTECH_ZERO U168 ( .Z(n77) );
  GTECH_NAND2 U169 ( .A(n15), .B(n187), .Z(seven_segment0_N9) );
  GTECH_AND2 U170 ( .A(ten_count[0]), .B(n187), .Z(seven_segment0_N8) );
  GTECH_AND2 U171 ( .A(n155), .B(n187), .Z(seven_segment0_N6) );
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
  GTECH_AO21 U192 ( .A(n195), .B(n206), .C(n198), .Z(n205) );
  GTECH_NOT U193 ( .A(n193), .Z(n198) );
  GTECH_NAND3 U194 ( .A(n202), .B(n199), .C(n207), .Z(n204) );
  GTECH_NAND3 U195 ( .A(n192), .B(n189), .C(n208), .Z(segments[0]) );
  GTECH_OA22 U196 ( .A(n209), .B(n193), .C(n194), .D(n199), .Z(n208) );
  GTECH_NOT U197 ( .A(n195), .Z(n199) );
  GTECH_NAND2 U198 ( .A(n207), .B(n210), .Z(n193) );
  GTECH_NAND2 U199 ( .A(n206), .B(n210), .Z(n189) );
  GTECH_NOT U200 ( .A(n203), .Z(n210) );
  GTECH_NOT U201 ( .A(n194), .Z(n206) );
  GTECH_NAND2 U202 ( .A(n202), .B(n211), .Z(n194) );
  GTECH_NOT U203 ( .A(n207), .Z(n211) );
  GTECH_NAND3 U204 ( .A(n207), .B(n203), .C(n209), .Z(n192) );
  GTECH_NOT U205 ( .A(n212), .Z(n209) );
  GTECH_NAND2 U206 ( .A(n195), .B(n202), .Z(n212) );
  GTECH_MUX2 U207 ( .A(n32), .B(n28), .S(n155), .Z(n202) );
  GTECH_MUX2 U208 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n155), .Z(n195) );
  GTECH_MUX2 U209 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n155), .Z(n203) );
  GTECH_MUX2 U210 ( .A(n30), .B(n26), .S(n155), .Z(n207) );
  GTECH_AO21 U211 ( .A(period[0]), .B(n213), .C(reset), .Z(N9) );
  GTECH_AND2 U212 ( .A(period[11]), .B(n213), .Z(N21) );
  GTECH_NAND2 U213 ( .A(n187), .B(n214), .Z(N20) );
  GTECH_AO21 U214 ( .A(period[10]), .B(n213), .C(reset), .Z(N19) );
  GTECH_AND2 U215 ( .A(period[9]), .B(n213), .Z(N18) );
  GTECH_AND2 U216 ( .A(period[8]), .B(n213), .Z(N17) );
  GTECH_AND2 U217 ( .A(N170), .B(n215), .Z(N168) );
  GTECH_NAND2 U218 ( .A(n216), .B(n217), .Z(N167) );
  GTECH_AND2 U219 ( .A(N170), .B(n218), .Z(N166) );
  GTECH_AND2 U220 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U221 ( .A(N170), .B(n219), .Z(N162) );
  GTECH_NOT U222 ( .A(n220), .Z(N170) );
  GTECH_NAND2 U223 ( .A(n221), .B(n187), .Z(n220) );
  GTECH_NOT U224 ( .A(n217), .Z(n221) );
  GTECH_MUX2 U225 ( .A(n222), .B(n223), .S(ten_count[3]), .Z(N160) );
  GTECH_AO21 U226 ( .A(N152), .B(n224), .C(n225), .Z(n223) );
  GTECH_NOT U227 ( .A(ten_count[2]), .Z(n224) );
  GTECH_AND2 U228 ( .A(n226), .B(ten_count[2]), .Z(n222) );
  GTECH_AO21 U229 ( .A(period[7]), .B(n213), .C(reset), .Z(N16) );
  GTECH_AO21 U230 ( .A(n227), .B(n228), .C(n229), .Z(N159) );
  GTECH_MUX2 U231 ( .A(n226), .B(n225), .S(ten_count[2]), .Z(N158) );
  GTECH_AO21 U232 ( .A(N152), .B(n230), .C(N154), .Z(n225) );
  GTECH_NOT U233 ( .A(ten_count[1]), .Z(n230) );
  GTECH_NOT U234 ( .A(n231), .Z(n226) );
  GTECH_NAND3 U235 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n231) );
  GTECH_MUX2 U236 ( .A(n232), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U237 ( .A(N152), .B(ten_count[0]), .Z(n232) );
  GTECH_NOT U238 ( .A(n233), .Z(N154) );
  GTECH_NAND2 U239 ( .A(N152), .B(n234), .Z(n233) );
  GTECH_NOT U240 ( .A(ten_count[0]), .Z(n234) );
  GTECH_NAND2 U241 ( .A(n235), .B(n159), .Z(N151) );
  GTECH_OA21 U242 ( .A(n14), .B(n236), .C(n216), .Z(n235) );
  GTECH_NOT U243 ( .A(n237), .Z(n216) );
  GTECH_AO21 U244 ( .A(n228), .B(n14), .C(reset), .Z(n237) );
  GTECH_NOT U245 ( .A(n238), .Z(n228) );
  GTECH_AND2 U246 ( .A(period[6]), .B(n213), .Z(N15) );
  GTECH_NOT U247 ( .A(n239), .Z(N148) );
  GTECH_OA21 U248 ( .A(n236), .B(n240), .C(n241), .Z(n239) );
  GTECH_MUX2 U249 ( .A(n242), .B(n243), .S(n172), .Z(n241) );
  GTECH_OR3 U250 ( .A(n173), .B(n244), .C(n245), .Z(n243) );
  GTECH_AND_NOT U251 ( .A(n246), .B(n247), .Z(n242) );
  GTECH_MUX2 U252 ( .A(n240), .B(n244), .S(n173), .Z(n246) );
  GTECH_NAND3 U253 ( .A(n248), .B(n217), .C(n249), .Z(N147) );
  GTECH_NOT U254 ( .A(n229), .Z(n249) );
  GTECH_NAND2 U255 ( .A(n187), .B(n250), .Z(n229) );
  GTECH_NAND3 U256 ( .A(n236), .B(n251), .C(n159), .Z(n250) );
  GTECH_NAND4 U257 ( .A(n186), .B(n173), .C(n172), .D(n252), .Z(n236) );
  GTECH_NAND2 U258 ( .A(n14), .B(n253), .Z(n217) );
  GTECH_NOT U259 ( .A(n159), .Z(n253) );
  GTECH_NAND3 U260 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n248) );
  GTECH_MUX2 U261 ( .A(n247), .B(n254), .S(n173), .Z(N146) );
  GTECH_AO21 U262 ( .A(N150), .B(n255), .C(n256), .Z(n254) );
  GTECH_NOT U263 ( .A(n257), .Z(n256) );
  GTECH_OAI22 U264 ( .A(n255), .B(n244), .C(n258), .D(n240), .Z(n247) );
  GTECH_AND2 U265 ( .A(n186), .B(n252), .Z(n258) );
  GTECH_NOT U266 ( .A(n245), .Z(n255) );
  GTECH_NAND3 U267 ( .A(n215), .B(n259), .C(n260), .Z(n245) );
  GTECH_NOT U268 ( .A(n186), .Z(n259) );
  GTECH_NAND2 U269 ( .A(n261), .B(n257), .Z(N144) );
  GTECH_NAND3 U270 ( .A(N152), .B(n252), .C(n186), .Z(n257) );
  GTECH_MUX2 U271 ( .A(n262), .B(n263), .S(n186), .Z(n261) );
  GTECH_NAND3 U272 ( .A(n260), .B(n215), .C(N150), .Z(n263) );
  GTECH_OA21 U273 ( .A(n240), .B(n252), .C(n264), .Z(n262) );
  GTECH_AO21 U274 ( .A(n260), .B(n215), .C(n244), .Z(n264) );
  GTECH_NOT U275 ( .A(n265), .Z(n260) );
  GTECH_NAND2 U276 ( .A(n266), .B(n215), .Z(n252) );
  GTECH_NOT U277 ( .A(n22), .Z(n215) );
  GTECH_AO21 U278 ( .A(n267), .B(N150), .C(n268), .Z(N142) );
  GTECH_MUX2 U279 ( .A(n269), .B(n270), .S(n22), .Z(n268) );
  GTECH_AND2 U280 ( .A(N152), .B(n266), .Z(n270) );
  GTECH_NOT U281 ( .A(n271), .Z(n269) );
  GTECH_XOR2 U282 ( .A(n265), .B(n22), .Z(n267) );
  GTECH_NAND3 U283 ( .A(n219), .B(n218), .C(sub_85_carry_2_), .Z(n265) );
  GTECH_NOT U284 ( .A(n20), .Z(n218) );
  GTECH_NAND2 U285 ( .A(n272), .B(n271), .Z(N140) );
  GTECH_NAND2 U286 ( .A(n273), .B(N152), .Z(n271) );
  GTECH_NOT U287 ( .A(n266), .Z(n273) );
  GTECH_NAND2 U288 ( .A(n20), .B(n274), .Z(n266) );
  GTECH_NOT U289 ( .A(sub_85_carry_2_), .Z(n274) );
  GTECH_MUX2 U290 ( .A(n275), .B(n276), .S(n20), .Z(n272) );
  GTECH_NAND3 U291 ( .A(sub_85_carry_2_), .B(n219), .C(N150), .Z(n276) );
  GTECH_AND2 U292 ( .A(n277), .B(n278), .Z(n275) );
  GTECH_MUX2 U293 ( .A(n244), .B(n240), .S(sub_85_carry_2_), .Z(n277) );
  GTECH_AO21 U294 ( .A(period[5]), .B(n213), .C(reset), .Z(N14) );
  GTECH_MUX2 U295 ( .A(n279), .B(n280), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_AO21 U296 ( .A(N150), .B(n219), .C(N152), .Z(n279) );
  GTECH_AO21 U297 ( .A(N152), .B(n219), .C(n280), .Z(N136) );
  GTECH_NOT U298 ( .A(n278), .Z(n280) );
  GTECH_NAND2 U299 ( .A(n16), .B(N150), .Z(n278) );
  GTECH_NOT U300 ( .A(n244), .Z(N150) );
  GTECH_NAND2 U301 ( .A(n227), .B(n187), .Z(n244) );
  GTECH_NOT U302 ( .A(n281), .Z(n227) );
  GTECH_NOT U303 ( .A(n16), .Z(n219) );
  GTECH_NOT U304 ( .A(n240), .Z(N152) );
  GTECH_NAND2 U305 ( .A(n159), .B(n282), .Z(n240) );
  GTECH_NOT U306 ( .A(N169), .Z(n282) );
  GTECH_NAND2 U307 ( .A(n187), .B(n251), .Z(N169) );
  GTECH_NOT U308 ( .A(n14), .Z(n251) );
  GTECH_AND_NOT U309 ( .A(n283), .B(n284), .Z(N134) );
  GTECH_OA21 U310 ( .A(n285), .B(n171), .C(n160), .Z(n284) );
  GTECH_NAND2 U311 ( .A(n187), .B(n281), .Z(N133) );
  GTECH_NAND2 U312 ( .A(n159), .B(n14), .Z(n281) );
  GTECH_AND2 U313 ( .A(n286), .B(n283), .Z(N132) );
  GTECH_XOR2 U314 ( .A(n285), .B(n171), .Z(n286) );
  GTECH_NAND2 U315 ( .A(n287), .B(n288), .Z(n285) );
  GTECH_NOT U316 ( .A(n289), .Z(n287) );
  GTECH_AND2 U317 ( .A(n290), .B(n283), .Z(N130) );
  GTECH_XOR2 U318 ( .A(n289), .B(n161), .Z(n290) );
  GTECH_NAND2 U319 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_NOT U320 ( .A(n162), .Z(n292) );
  GTECH_NOT U321 ( .A(n293), .Z(n291) );
  GTECH_AND2 U322 ( .A(period[4]), .B(n213), .Z(N13) );
  GTECH_AND2 U323 ( .A(n294), .B(n283), .Z(N128) );
  GTECH_XOR2 U324 ( .A(n293), .B(n162), .Z(n294) );
  GTECH_NAND2 U325 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_NOT U326 ( .A(n297), .Z(n295) );
  GTECH_AND2 U327 ( .A(n298), .B(n283), .Z(N126) );
  GTECH_XOR2 U328 ( .A(n297), .B(n163), .Z(n298) );
  GTECH_NAND2 U329 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U330 ( .A(n164), .Z(n300) );
  GTECH_NOT U331 ( .A(n301), .Z(n299) );
  GTECH_AND2 U332 ( .A(n302), .B(n283), .Z(N124) );
  GTECH_XOR2 U333 ( .A(n301), .B(n164), .Z(n302) );
  GTECH_NAND2 U334 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U335 ( .A(n305), .Z(n303) );
  GTECH_AND2 U336 ( .A(n306), .B(n283), .Z(N122) );
  GTECH_XOR2 U337 ( .A(n305), .B(n165), .Z(n306) );
  GTECH_NAND2 U338 ( .A(n307), .B(n308), .Z(n305) );
  GTECH_NOT U339 ( .A(n166), .Z(n308) );
  GTECH_NOT U340 ( .A(n309), .Z(n307) );
  GTECH_AND2 U341 ( .A(n310), .B(n283), .Z(N120) );
  GTECH_XOR2 U342 ( .A(n309), .B(n166), .Z(n310) );
  GTECH_NAND2 U343 ( .A(n311), .B(n312), .Z(n309) );
  GTECH_NOT U344 ( .A(n313), .Z(n311) );
  GTECH_AO21 U345 ( .A(period[3]), .B(n213), .C(reset), .Z(N12) );
  GTECH_AND2 U346 ( .A(n314), .B(n283), .Z(N118) );
  GTECH_XOR2 U347 ( .A(n313), .B(n167), .Z(n314) );
  GTECH_NAND3 U348 ( .A(n315), .B(n316), .C(n317), .Z(n313) );
  GTECH_NOT U349 ( .A(n168), .Z(n317) );
  GTECH_OAI22 U350 ( .A(n168), .B(n318), .C(n319), .D(n320), .Z(N116) );
  GTECH_MUX2 U351 ( .A(n315), .B(n321), .S(n168), .Z(n320) );
  GTECH_NAND2 U352 ( .A(n315), .B(n316), .Z(n321) );
  GTECH_NOT U353 ( .A(n169), .Z(n315) );
  GTECH_MUX2 U354 ( .A(N112), .B(n322), .S(n169), .Z(N114) );
  GTECH_AND2 U355 ( .A(n283), .B(n316), .Z(n322) );
  GTECH_NOT U356 ( .A(n170), .Z(n316) );
  GTECH_NOT U357 ( .A(n318), .Z(N112) );
  GTECH_NAND2 U358 ( .A(n283), .B(n170), .Z(n318) );
  GTECH_NOT U359 ( .A(n319), .Z(n283) );
  GTECH_NAND2 U360 ( .A(n238), .B(n187), .Z(n319) );
  GTECH_NAND2 U361 ( .A(n323), .B(n324), .Z(n238) );
  GTECH_OR4 U362 ( .A(n325), .B(n326), .C(n327), .D(n328), .Z(n324) );
  GTECH_AOI222 U363 ( .A(update_period[7]), .B(n163), .C(n329), .D(
        update_period[6]), .E(n330), .F(n331), .Z(n328) );
  GTECH_NOT U364 ( .A(n332), .Z(n331) );
  GTECH_AOI222 U365 ( .A(update_period[5]), .B(n165), .C(n333), .D(
        update_period[4]), .E(n334), .F(n335), .Z(n332) );
  GTECH_OA21 U366 ( .A(n166), .B(update_period[4]), .C(n336), .Z(n335) );
  GTECH_OA21 U367 ( .A(n337), .B(n338), .C(n339), .Z(n334) );
  GTECH_AO21 U368 ( .A(update_period[1]), .B(n169), .C(n340), .Z(n339) );
  GTECH_AO21 U369 ( .A(n341), .B(update_period[0]), .C(n337), .Z(n340) );
  GTECH_OA21 U370 ( .A(update_period[1]), .B(n169), .C(n170), .Z(n341) );
  GTECH_OA22 U371 ( .A(n168), .B(update_period[2]), .C(n167), .D(
        update_period[3]), .Z(n338) );
  GTECH_OA21 U372 ( .A(update_period[3]), .B(n167), .C(n342), .Z(n337) );
  GTECH_OAI2N2 U373 ( .A(n343), .B(n312), .C(n168), .D(update_period[2]), .Z(
        n342) );
  GTECH_NOT U374 ( .A(n167), .Z(n312) );
  GTECH_NOT U375 ( .A(update_period[3]), .Z(n343) );
  GTECH_AND2 U376 ( .A(n166), .B(n336), .Z(n333) );
  GTECH_NAND2 U377 ( .A(n344), .B(n304), .Z(n336) );
  GTECH_NOT U378 ( .A(n165), .Z(n304) );
  GTECH_NOT U379 ( .A(update_period[5]), .Z(n344) );
  GTECH_OA21 U380 ( .A(update_period[6]), .B(n164), .C(n345), .Z(n330) );
  GTECH_AND2 U381 ( .A(n164), .B(n345), .Z(n329) );
  GTECH_NAND2 U382 ( .A(n346), .B(n296), .Z(n345) );
  GTECH_NOT U383 ( .A(n163), .Z(n296) );
  GTECH_NOT U384 ( .A(update_period[7]), .Z(n346) );
  GTECH_NOT U385 ( .A(n347), .Z(n327) );
  GTECH_NOR2 U386 ( .A(n162), .B(update_period[8]), .Z(n326) );
  GTECH_AOI2N2 U387 ( .A(n160), .B(update_period[11]), .C(n325), .D(n348), .Z(
        n323) );
  GTECH_AOI222 U388 ( .A(update_period[10]), .B(n171), .C(update_period[9]), 
        .D(n161), .E(n349), .F(update_period[8]), .Z(n348) );
  GTECH_AND2 U389 ( .A(n162), .B(n347), .Z(n349) );
  GTECH_NAND2 U390 ( .A(n350), .B(n288), .Z(n347) );
  GTECH_NOT U391 ( .A(n161), .Z(n288) );
  GTECH_NOT U392 ( .A(update_period[9]), .Z(n350) );
  GTECH_OAI22 U393 ( .A(update_period[10]), .B(n171), .C(update_period[11]), 
        .D(n160), .Z(n325) );
  GTECH_AO21 U394 ( .A(period[2]), .B(n213), .C(reset), .Z(N11) );
  GTECH_AO21 U395 ( .A(period[1]), .B(n213), .C(reset), .Z(N10) );
  GTECH_NOT U396 ( .A(n214), .Z(n213) );
  GTECH_NAND2 U397 ( .A(period_load), .B(n187), .Z(n214) );
  GTECH_NOT U398 ( .A(reset), .Z(n187) );
endmodule

