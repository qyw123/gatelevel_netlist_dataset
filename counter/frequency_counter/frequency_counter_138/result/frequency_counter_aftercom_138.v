
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
         n26, n28, n30, n32, n76, n77, n158, n162, sub_85_carry_2_, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
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
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352;
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
  GTECH_FD2 edge_detect0_q0_reg ( .D(signal), .CP(clk), .CD(n76), .Q(
        edge_detect0_q0) );
  GTECH_FD2 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .CD(n76), .Q(
        edge_detect0_q1) );
  GTECH_FD2 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .CD(n76), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n77), .K(n77), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n176) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n77), .K(n77), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n175) );
  GTECH_FJK1S state_reg_0_ ( .J(n77), .K(n77), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n77), .K(n77), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n77), .K(n77), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n77), .K(n77), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n77), .K(n77), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n77), .K(n77), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n77), .K(n77), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n77), .K(n77), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n77), .K(n77), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n77), .K(n77), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n77), .K(n77), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n77), .K(n77), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n77), .K(n77), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n77), .K(n77), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n163) );
  GTECH_FJK1S update_digits_reg ( .J(n77), .K(n77), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n77), .K(n77), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n189) );
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
  GTECH_FD2 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .CD(
        n76), .Q(digit), .QN(n158) );
  GTECH_ZERO U171 ( .Z(n77) );
  GTECH_ONE U172 ( .Z(n76) );
  GTECH_NAND2 U173 ( .A(n15), .B(n190), .Z(seven_segment0_N9) );
  GTECH_AND2 U174 ( .A(ten_count[0]), .B(n190), .Z(seven_segment0_N8) );
  GTECH_AND2 U175 ( .A(n158), .B(n190), .Z(seven_segment0_N6) );
  GTECH_AND2 U176 ( .A(unit_count[3]), .B(n190), .Z(seven_segment0_N22) );
  GTECH_AND2 U177 ( .A(unit_count[2]), .B(n190), .Z(seven_segment0_N20) );
  GTECH_AND2 U178 ( .A(unit_count[1]), .B(n190), .Z(seven_segment0_N18) );
  GTECH_AND2 U179 ( .A(unit_count[0]), .B(n190), .Z(seven_segment0_N16) );
  GTECH_AND2 U180 ( .A(ten_count[3]), .B(n190), .Z(seven_segment0_N14) );
  GTECH_AND2 U181 ( .A(ten_count[2]), .B(n190), .Z(seven_segment0_N12) );
  GTECH_AND2 U182 ( .A(ten_count[1]), .B(n190), .Z(seven_segment0_N10) );
  GTECH_NAND4 U183 ( .A(n191), .B(n192), .C(n193), .D(n194), .Z(segments[6])
         );
  GTECH_NAND3 U184 ( .A(n194), .B(n195), .C(n196), .Z(segments[5]) );
  GTECH_OR_NOT U185 ( .A(n192), .B(n197), .Z(n195) );
  GTECH_OAI21 U186 ( .A(n198), .B(n199), .C(n200), .Z(segments[3]) );
  GTECH_AND_NOT U187 ( .A(n193), .B(segments[4]), .Z(n200) );
  GTECH_NAND2 U188 ( .A(n201), .B(n192), .Z(segments[4]) );
  GTECH_NAND2 U189 ( .A(n202), .B(n199), .Z(n192) );
  GTECH_NAND2 U190 ( .A(n203), .B(n204), .Z(segments[2]) );
  GTECH_AOI21 U191 ( .A(n202), .B(n197), .C(n205), .Z(n203) );
  GTECH_NAND2 U192 ( .A(n204), .B(n193), .Z(segments[1]) );
  GTECH_AND3 U193 ( .A(n206), .B(n194), .C(n207), .Z(n204) );
  GTECH_OR_NOT U194 ( .A(n208), .B(n209), .Z(n207) );
  GTECH_NAND2 U195 ( .A(n210), .B(n199), .Z(n194) );
  GTECH_NOT U196 ( .A(n198), .Z(n210) );
  GTECH_NAND3 U197 ( .A(n193), .B(n211), .C(n196), .Z(segments[0]) );
  GTECH_NOT U198 ( .A(n205), .Z(n196) );
  GTECH_NAND2 U199 ( .A(n191), .B(n201), .Z(n205) );
  GTECH_NAND2 U200 ( .A(n212), .B(n199), .Z(n201) );
  GTECH_NOT U201 ( .A(n206), .Z(n212) );
  GTECH_NOT U202 ( .A(n213), .Z(n191) );
  GTECH_OAI22 U203 ( .A(n198), .B(n199), .C(n214), .D(n206), .Z(n213) );
  GTECH_NAND2 U204 ( .A(n215), .B(n216), .Z(n206) );
  GTECH_NOT U205 ( .A(n209), .Z(n199) );
  GTECH_NAND3 U206 ( .A(n215), .B(n197), .C(n214), .Z(n198) );
  GTECH_NAND2 U207 ( .A(n209), .B(n202), .Z(n211) );
  GTECH_MUX2 U208 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n158), .Z(n209) );
  GTECH_NAND2 U209 ( .A(n202), .B(n216), .Z(n193) );
  GTECH_NOT U210 ( .A(n197), .Z(n216) );
  GTECH_MUX2 U211 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n158), .Z(n197) );
  GTECH_NOT U212 ( .A(n208), .Z(n202) );
  GTECH_NAND2 U213 ( .A(n214), .B(n217), .Z(n208) );
  GTECH_NOT U214 ( .A(n215), .Z(n217) );
  GTECH_MUX2 U215 ( .A(n30), .B(n26), .S(n158), .Z(n215) );
  GTECH_MUX2 U216 ( .A(n32), .B(n28), .S(n158), .Z(n214) );
  GTECH_AO21 U217 ( .A(period[0]), .B(n218), .C(reset), .Z(N9) );
  GTECH_AND2 U218 ( .A(period[11]), .B(n218), .Z(N21) );
  GTECH_NAND2 U219 ( .A(n190), .B(n219), .Z(N20) );
  GTECH_AO21 U220 ( .A(period[10]), .B(n218), .C(reset), .Z(N19) );
  GTECH_AND2 U221 ( .A(period[9]), .B(n218), .Z(N18) );
  GTECH_AND2 U222 ( .A(period[8]), .B(n218), .Z(N17) );
  GTECH_AND2 U223 ( .A(N170), .B(n220), .Z(N168) );
  GTECH_NAND2 U224 ( .A(n221), .B(n222), .Z(N167) );
  GTECH_NOT U225 ( .A(n223), .Z(n221) );
  GTECH_AND2 U226 ( .A(N170), .B(n224), .Z(N166) );
  GTECH_AND2 U227 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U228 ( .A(N170), .B(n225), .Z(N162) );
  GTECH_NOT U229 ( .A(n226), .Z(N170) );
  GTECH_NAND2 U230 ( .A(n227), .B(n190), .Z(n226) );
  GTECH_NOT U231 ( .A(n222), .Z(n227) );
  GTECH_MUX2 U232 ( .A(n228), .B(n229), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U233 ( .A(ten_count[2]), .B(n230), .C(n231), .Z(n229) );
  GTECH_NOT U234 ( .A(n232), .Z(n231) );
  GTECH_AND2 U235 ( .A(n233), .B(ten_count[2]), .Z(n228) );
  GTECH_AO21 U236 ( .A(period[7]), .B(n218), .C(reset), .Z(N16) );
  GTECH_OAI21 U237 ( .A(n234), .B(n235), .C(n236), .Z(N159) );
  GTECH_MUX2 U238 ( .A(n233), .B(n232), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U239 ( .A(ten_count[1]), .B(n230), .C(n237), .Z(n232) );
  GTECH_NOT U240 ( .A(n238), .Z(n233) );
  GTECH_NAND3 U241 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n238) );
  GTECH_MUX2 U242 ( .A(n239), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U243 ( .A(N152), .B(ten_count[0]), .Z(n239) );
  GTECH_NOT U244 ( .A(n237), .Z(N154) );
  GTECH_NAND2 U245 ( .A(N152), .B(n240), .Z(n237) );
  GTECH_NOT U246 ( .A(ten_count[0]), .Z(n240) );
  GTECH_NAND2 U247 ( .A(n241), .B(n162), .Z(N151) );
  GTECH_AOI21 U248 ( .A(n242), .B(n243), .C(n223), .Z(n241) );
  GTECH_OAI21 U249 ( .A(n243), .B(n234), .C(n190), .Z(n223) );
  GTECH_NOT U250 ( .A(n244), .Z(n242) );
  GTECH_AND2 U251 ( .A(period[6]), .B(n218), .Z(N15) );
  GTECH_OAI21 U252 ( .A(n230), .B(n244), .C(n245), .Z(N148) );
  GTECH_MUX2 U253 ( .A(n246), .B(n247), .S(n175), .Z(n245) );
  GTECH_OR3 U254 ( .A(n176), .B(n248), .C(n249), .Z(n247) );
  GTECH_AND_NOT U255 ( .A(n250), .B(n251), .Z(n246) );
  GTECH_MUX2 U256 ( .A(n230), .B(n248), .S(n176), .Z(n250) );
  GTECH_NAND3 U257 ( .A(n252), .B(n222), .C(n236), .Z(N147) );
  GTECH_AND2 U258 ( .A(n190), .B(n253), .Z(n236) );
  GTECH_NAND3 U259 ( .A(n243), .B(n162), .C(n244), .Z(n253) );
  GTECH_NAND4 U260 ( .A(n189), .B(n176), .C(n175), .D(n254), .Z(n244) );
  GTECH_NAND2 U261 ( .A(n14), .B(n255), .Z(n222) );
  GTECH_NOT U262 ( .A(n162), .Z(n255) );
  GTECH_NAND3 U263 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n252) );
  GTECH_MUX2 U264 ( .A(n251), .B(n256), .S(n176), .Z(N146) );
  GTECH_OAI21 U265 ( .A(n249), .B(n248), .C(n257), .Z(n256) );
  GTECH_OAI21 U266 ( .A(n258), .B(n248), .C(n259), .Z(n251) );
  GTECH_AO21 U267 ( .A(n254), .B(n189), .C(n230), .Z(n259) );
  GTECH_NOT U268 ( .A(n249), .Z(n258) );
  GTECH_NAND3 U269 ( .A(n220), .B(n260), .C(n261), .Z(n249) );
  GTECH_NOT U270 ( .A(n189), .Z(n260) );
  GTECH_NAND2 U271 ( .A(n262), .B(n257), .Z(N144) );
  GTECH_NAND3 U272 ( .A(N152), .B(n254), .C(n189), .Z(n257) );
  GTECH_MUX2 U273 ( .A(n263), .B(n264), .S(n189), .Z(n262) );
  GTECH_NAND3 U274 ( .A(n261), .B(n220), .C(N150), .Z(n264) );
  GTECH_OA22 U275 ( .A(n265), .B(n248), .C(n230), .D(n254), .Z(n263) );
  GTECH_NAND2 U276 ( .A(n266), .B(n220), .Z(n254) );
  GTECH_AND2 U277 ( .A(n261), .B(n220), .Z(n265) );
  GTECH_NOT U278 ( .A(n22), .Z(n220) );
  GTECH_OAI21 U279 ( .A(n248), .B(n267), .C(n268), .Z(N142) );
  GTECH_MUX2 U280 ( .A(n269), .B(n270), .S(n22), .Z(n268) );
  GTECH_NAND2 U281 ( .A(N152), .B(n266), .Z(n270) );
  GTECH_XOR2 U282 ( .A(n22), .B(n261), .Z(n267) );
  GTECH_NOT U283 ( .A(n271), .Z(n261) );
  GTECH_NAND3 U284 ( .A(n225), .B(n224), .C(sub_85_carry_2_), .Z(n271) );
  GTECH_NOT U285 ( .A(n20), .Z(n224) );
  GTECH_NAND2 U286 ( .A(n272), .B(n269), .Z(N140) );
  GTECH_NAND2 U287 ( .A(n273), .B(N152), .Z(n269) );
  GTECH_NOT U288 ( .A(n230), .Z(N152) );
  GTECH_NOT U289 ( .A(n266), .Z(n273) );
  GTECH_NAND2 U290 ( .A(n20), .B(n274), .Z(n266) );
  GTECH_NOT U291 ( .A(sub_85_carry_2_), .Z(n274) );
  GTECH_MUX2 U292 ( .A(n275), .B(n276), .S(n20), .Z(n272) );
  GTECH_NAND3 U293 ( .A(sub_85_carry_2_), .B(n225), .C(N150), .Z(n276) );
  GTECH_NOT U294 ( .A(n16), .Z(n225) );
  GTECH_AND2 U295 ( .A(n277), .B(n278), .Z(n275) );
  GTECH_MUX2 U296 ( .A(n248), .B(n230), .S(sub_85_carry_2_), .Z(n277) );
  GTECH_AO21 U297 ( .A(period[5]), .B(n218), .C(reset), .Z(N14) );
  GTECH_MUX2 U298 ( .A(n279), .B(n280), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U299 ( .A(n278), .Z(n280) );
  GTECH_OAI21 U300 ( .A(n16), .B(n248), .C(n230), .Z(n279) );
  GTECH_OAI21 U301 ( .A(n16), .B(n230), .C(n278), .Z(N136) );
  GTECH_NAND2 U302 ( .A(n16), .B(N150), .Z(n278) );
  GTECH_NOT U303 ( .A(n248), .Z(N150) );
  GTECH_NAND2 U304 ( .A(n281), .B(n190), .Z(n248) );
  GTECH_NOT U305 ( .A(n235), .Z(n281) );
  GTECH_NAND2 U306 ( .A(n162), .B(n282), .Z(n230) );
  GTECH_NOT U307 ( .A(N169), .Z(n282) );
  GTECH_NAND2 U308 ( .A(n190), .B(n243), .Z(N169) );
  GTECH_NOT U309 ( .A(n14), .Z(n243) );
  GTECH_AND2 U310 ( .A(n283), .B(n284), .Z(N134) );
  GTECH_OAI21 U311 ( .A(n174), .B(n285), .C(n163), .Z(n284) );
  GTECH_NAND2 U312 ( .A(n190), .B(n235), .Z(N133) );
  GTECH_NAND2 U313 ( .A(n162), .B(n14), .Z(n235) );
  GTECH_AND2 U314 ( .A(n286), .B(n283), .Z(N132) );
  GTECH_XOR2 U315 ( .A(n285), .B(n174), .Z(n286) );
  GTECH_NAND2 U316 ( .A(n287), .B(n288), .Z(n285) );
  GTECH_NOT U317 ( .A(n289), .Z(n287) );
  GTECH_AND2 U318 ( .A(n290), .B(n283), .Z(N130) );
  GTECH_XOR2 U319 ( .A(n289), .B(n164), .Z(n290) );
  GTECH_NAND2 U320 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_NOT U321 ( .A(n165), .Z(n292) );
  GTECH_NOT U322 ( .A(n293), .Z(n291) );
  GTECH_AND2 U323 ( .A(period[4]), .B(n218), .Z(N13) );
  GTECH_AND2 U324 ( .A(n294), .B(n283), .Z(N128) );
  GTECH_XOR2 U325 ( .A(n293), .B(n165), .Z(n294) );
  GTECH_NAND2 U326 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_NOT U327 ( .A(n166), .Z(n296) );
  GTECH_NOT U328 ( .A(n297), .Z(n295) );
  GTECH_AND2 U329 ( .A(n298), .B(n283), .Z(N126) );
  GTECH_XOR2 U330 ( .A(n297), .B(n166), .Z(n298) );
  GTECH_NAND2 U331 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U332 ( .A(n167), .Z(n300) );
  GTECH_NOT U333 ( .A(n301), .Z(n299) );
  GTECH_AND2 U334 ( .A(n302), .B(n283), .Z(N124) );
  GTECH_XOR2 U335 ( .A(n301), .B(n167), .Z(n302) );
  GTECH_NAND2 U336 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U337 ( .A(n168), .Z(n304) );
  GTECH_NOT U338 ( .A(n305), .Z(n303) );
  GTECH_AND2 U339 ( .A(n306), .B(n283), .Z(N122) );
  GTECH_XOR2 U340 ( .A(n305), .B(n168), .Z(n306) );
  GTECH_NAND2 U341 ( .A(n307), .B(n308), .Z(n305) );
  GTECH_NOT U342 ( .A(n169), .Z(n308) );
  GTECH_NOT U343 ( .A(n309), .Z(n307) );
  GTECH_AND2 U344 ( .A(n310), .B(n283), .Z(N120) );
  GTECH_XOR2 U345 ( .A(n309), .B(n169), .Z(n310) );
  GTECH_NAND2 U346 ( .A(n311), .B(n312), .Z(n309) );
  GTECH_NOT U347 ( .A(n170), .Z(n312) );
  GTECH_NOT U348 ( .A(n313), .Z(n311) );
  GTECH_AO21 U349 ( .A(period[3]), .B(n218), .C(reset), .Z(N12) );
  GTECH_AND2 U350 ( .A(n314), .B(n283), .Z(N118) );
  GTECH_XOR2 U351 ( .A(n313), .B(n170), .Z(n314) );
  GTECH_NAND3 U352 ( .A(n315), .B(n316), .C(n317), .Z(n313) );
  GTECH_NOT U353 ( .A(n171), .Z(n317) );
  GTECH_OAI22 U354 ( .A(n171), .B(n318), .C(n319), .D(n320), .Z(N116) );
  GTECH_MUX2 U355 ( .A(n315), .B(n321), .S(n171), .Z(n320) );
  GTECH_NAND2 U356 ( .A(n315), .B(n316), .Z(n321) );
  GTECH_NOT U357 ( .A(n172), .Z(n315) );
  GTECH_MUX2 U358 ( .A(N112), .B(n322), .S(n172), .Z(N114) );
  GTECH_AND2 U359 ( .A(n283), .B(n316), .Z(n322) );
  GTECH_NOT U360 ( .A(n173), .Z(n316) );
  GTECH_NOT U361 ( .A(n318), .Z(N112) );
  GTECH_NAND2 U362 ( .A(n283), .B(n173), .Z(n318) );
  GTECH_NOT U363 ( .A(n319), .Z(n283) );
  GTECH_NAND2 U364 ( .A(n234), .B(n190), .Z(n319) );
  GTECH_NOT U365 ( .A(n323), .Z(n234) );
  GTECH_AOI222 U366 ( .A(n324), .B(n325), .C(update_period[11]), .D(n163), .E(
        n326), .F(n327), .Z(n323) );
  GTECH_OAI2N2 U367 ( .A(n328), .B(n329), .C(n330), .D(n331), .Z(n326) );
  GTECH_OAI21 U368 ( .A(n332), .B(n288), .C(n333), .Z(n331) );
  GTECH_NAND3 U369 ( .A(n165), .B(n334), .C(update_period[8]), .Z(n333) );
  GTECH_AND3 U370 ( .A(n334), .B(n330), .C(n327), .Z(n325) );
  GTECH_NAND2 U371 ( .A(n335), .B(n336), .Z(n327) );
  GTECH_NOT U372 ( .A(n163), .Z(n336) );
  GTECH_NOT U373 ( .A(update_period[11]), .Z(n335) );
  GTECH_NAND2 U374 ( .A(n329), .B(n328), .Z(n330) );
  GTECH_NOT U375 ( .A(n174), .Z(n328) );
  GTECH_NOT U376 ( .A(update_period[10]), .Z(n329) );
  GTECH_NAND2 U377 ( .A(n288), .B(n332), .Z(n334) );
  GTECH_NOT U378 ( .A(update_period[9]), .Z(n332) );
  GTECH_NOT U379 ( .A(n164), .Z(n288) );
  GTECH_OA22 U380 ( .A(n165), .B(update_period[8]), .C(n337), .D(n338), .Z(
        n324) );
  GTECH_OAI2N2 U381 ( .A(n339), .B(n340), .C(n341), .D(n342), .Z(n338) );
  GTECH_ADD_ABC U382 ( .A(n343), .B(n168), .C(update_period[5]), .COUT(n342)
         );
  GTECH_AND2 U383 ( .A(update_period[4]), .B(n169), .Z(n343) );
  GTECH_NOT U384 ( .A(update_period[6]), .Z(n340) );
  GTECH_OAI21 U385 ( .A(update_period[7]), .B(n166), .C(n167), .Z(n339) );
  GTECH_OAI2N2 U386 ( .A(n344), .B(n345), .C(update_period[7]), .D(n166), .Z(
        n337) );
  GTECH_OAI21 U387 ( .A(update_period[4]), .B(n169), .C(n341), .Z(n345) );
  GTECH_NOT U388 ( .A(n346), .Z(n341) );
  GTECH_OAI22 U389 ( .A(update_period[6]), .B(n167), .C(update_period[7]), .D(
        n166), .Z(n346) );
  GTECH_OAI21 U390 ( .A(update_period[5]), .B(n168), .C(n347), .Z(n344) );
  GTECH_AO21 U391 ( .A(n348), .B(n349), .C(n350), .Z(n347) );
  GTECH_ADD_ABC U392 ( .A(n351), .B(n170), .C(update_period[3]), .COUT(n350)
         );
  GTECH_AND2 U393 ( .A(update_period[2]), .B(n171), .Z(n351) );
  GTECH_ADD_ABC U394 ( .A(update_period[1]), .B(n352), .C(n172), .COUT(n349)
         );
  GTECH_AND2 U395 ( .A(update_period[0]), .B(n173), .Z(n352) );
  GTECH_OA22 U396 ( .A(n171), .B(update_period[2]), .C(n170), .D(
        update_period[3]), .Z(n348) );
  GTECH_AO21 U397 ( .A(period[2]), .B(n218), .C(reset), .Z(N11) );
  GTECH_AO21 U398 ( .A(period[1]), .B(n218), .C(reset), .Z(N10) );
  GTECH_NOT U399 ( .A(n219), .Z(n218) );
  GTECH_NAND2 U400 ( .A(period_load), .B(n190), .Z(n219) );
  GTECH_NOT U401 ( .A(reset), .Z(n190) );
endmodule

