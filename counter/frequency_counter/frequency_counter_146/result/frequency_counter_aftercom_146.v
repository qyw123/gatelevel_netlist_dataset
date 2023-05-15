
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
         n26, n27, n28, n30, n31, n32, n79, n157, n160, sub_85_carry_2_, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n188, n189, n190, n191, n192, n193, n194, n195,
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
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366;
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
        .CP(clk), .Q(update_period[1]) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n79), .K(n79), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n79), .K(n79), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n175) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n79), .K(n79), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n174) );
  GTECH_FJK1S state_reg_0_ ( .J(n79), .K(n79), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n79), .K(n79), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n160) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n79), .K(n79), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n79), .K(n79), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n79), .K(n79), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n79), .K(n79), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n79), .K(n79), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n79), .K(n79), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n79), .K(n79), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n79), .K(n79), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n79), .K(n79), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n79), .K(n79), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n79), .K(n79), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n79), .K(n79), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n162) );
  GTECH_FJK1S update_digits_reg ( .J(n79), .K(n79), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n79), .K(n79), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n161) );
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
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n28) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n32) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n157) );
  GTECH_ZERO U169 ( .Z(n79) );
  GTECH_NAND2 U170 ( .A(n15), .B(n188), .Z(seven_segment0_N9) );
  GTECH_AND2 U171 ( .A(ten_count[0]), .B(n188), .Z(seven_segment0_N8) );
  GTECH_AND2 U172 ( .A(n157), .B(n188), .Z(seven_segment0_N6) );
  GTECH_AND2 U173 ( .A(unit_count[3]), .B(n188), .Z(seven_segment0_N22) );
  GTECH_AND2 U174 ( .A(unit_count[2]), .B(n188), .Z(seven_segment0_N20) );
  GTECH_AND2 U175 ( .A(unit_count[1]), .B(n188), .Z(seven_segment0_N18) );
  GTECH_AND2 U176 ( .A(unit_count[0]), .B(n188), .Z(seven_segment0_N16) );
  GTECH_AND2 U177 ( .A(ten_count[3]), .B(n188), .Z(seven_segment0_N14) );
  GTECH_AND2 U178 ( .A(ten_count[2]), .B(n188), .Z(seven_segment0_N12) );
  GTECH_AND2 U179 ( .A(ten_count[1]), .B(n188), .Z(seven_segment0_N10) );
  GTECH_NAND3 U180 ( .A(n189), .B(n190), .C(n191), .Z(segments[6]) );
  GTECH_OA21 U181 ( .A(n192), .B(n193), .C(n194), .Z(n191) );
  GTECH_NAND2 U182 ( .A(n194), .B(n195), .Z(segments[3]) );
  GTECH_NOT U183 ( .A(segments[4]), .Z(n195) );
  GTECH_AO21 U184 ( .A(n196), .B(n197), .C(n198), .Z(segments[4]) );
  GTECH_NOT U185 ( .A(n190), .Z(n198) );
  GTECH_NOT U186 ( .A(n199), .Z(n194) );
  GTECH_AO21 U187 ( .A(n200), .B(n201), .C(n202), .Z(n199) );
  GTECH_NAND2 U188 ( .A(n203), .B(n204), .Z(segments[2]) );
  GTECH_NOT U189 ( .A(segments[5]), .Z(n204) );
  GTECH_NAND2 U190 ( .A(n205), .B(n206), .Z(segments[5]) );
  GTECH_OA21 U191 ( .A(n200), .B(n190), .C(n189), .Z(n205) );
  GTECH_NAND2 U192 ( .A(n201), .B(n197), .Z(n190) );
  GTECH_NAND2 U193 ( .A(n207), .B(n203), .Z(segments[1]) );
  GTECH_NOT U194 ( .A(n208), .Z(n203) );
  GTECH_AO21 U195 ( .A(n201), .B(n209), .C(n196), .Z(n208) );
  GTECH_NOT U196 ( .A(n210), .Z(n201) );
  GTECH_OA21 U197 ( .A(n211), .B(n212), .C(n189), .Z(n207) );
  GTECH_NAND4 U198 ( .A(n213), .B(n197), .C(n212), .D(n192), .Z(n189) );
  GTECH_NAND2 U199 ( .A(n214), .B(n206), .Z(segments[0]) );
  GTECH_NOT U200 ( .A(n215), .Z(n206) );
  GTECH_AO21 U201 ( .A(n196), .B(n216), .C(n202), .Z(n215) );
  GTECH_NOT U202 ( .A(n217), .Z(n202) );
  GTECH_NAND3 U203 ( .A(n213), .B(n212), .C(n218), .Z(n217) );
  GTECH_NOT U204 ( .A(n216), .Z(n218) );
  GTECH_NOT U205 ( .A(n200), .Z(n212) );
  GTECH_NAND2 U206 ( .A(n209), .B(n192), .Z(n216) );
  GTECH_NOT U207 ( .A(n193), .Z(n196) );
  GTECH_NAND2 U208 ( .A(n200), .B(n213), .Z(n193) );
  GTECH_MUX2 U209 ( .A(n219), .B(n210), .S(n209), .Z(n214) );
  GTECH_NOT U210 ( .A(n197), .Z(n209) );
  GTECH_MUX2 U211 ( .A(n30), .B(n26), .S(n157), .Z(n197) );
  GTECH_NAND2 U212 ( .A(n220), .B(n192), .Z(n210) );
  GTECH_NOT U213 ( .A(n213), .Z(n220) );
  GTECH_MUX2 U214 ( .A(n31), .B(n27), .S(n157), .Z(n213) );
  GTECH_NAND2 U215 ( .A(n192), .B(n200), .Z(n219) );
  GTECH_MUX2 U216 ( .A(n32), .B(n28), .S(n157), .Z(n200) );
  GTECH_NOT U217 ( .A(n211), .Z(n192) );
  GTECH_MUX2 U218 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n157), .Z(n211) );
  GTECH_AO21 U219 ( .A(period[0]), .B(n221), .C(reset), .Z(N9) );
  GTECH_AND2 U220 ( .A(period[11]), .B(n221), .Z(N21) );
  GTECH_NAND2 U221 ( .A(n188), .B(n222), .Z(N20) );
  GTECH_AO21 U222 ( .A(period[10]), .B(n221), .C(reset), .Z(N19) );
  GTECH_AND2 U223 ( .A(period[9]), .B(n221), .Z(N18) );
  GTECH_AND2 U224 ( .A(period[8]), .B(n221), .Z(N17) );
  GTECH_AND2 U225 ( .A(N170), .B(n223), .Z(N168) );
  GTECH_NAND2 U226 ( .A(n224), .B(n225), .Z(N167) );
  GTECH_AND2 U227 ( .A(N170), .B(n226), .Z(N166) );
  GTECH_AND2 U228 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U229 ( .A(N170), .B(n227), .Z(N162) );
  GTECH_NOT U230 ( .A(n228), .Z(N170) );
  GTECH_NAND2 U231 ( .A(n229), .B(n188), .Z(n228) );
  GTECH_NOT U232 ( .A(n225), .Z(n229) );
  GTECH_MUX2 U233 ( .A(n230), .B(n231), .S(ten_count[3]), .Z(N160) );
  GTECH_AO21 U234 ( .A(N152), .B(n232), .C(n233), .Z(n231) );
  GTECH_NOT U235 ( .A(ten_count[2]), .Z(n232) );
  GTECH_AND2 U236 ( .A(n234), .B(ten_count[2]), .Z(n230) );
  GTECH_AO21 U237 ( .A(period[7]), .B(n221), .C(reset), .Z(N16) );
  GTECH_AO21 U238 ( .A(n235), .B(n236), .C(n237), .Z(N159) );
  GTECH_MUX2 U239 ( .A(n234), .B(n233), .S(ten_count[2]), .Z(N158) );
  GTECH_AO21 U240 ( .A(N152), .B(n238), .C(N154), .Z(n233) );
  GTECH_NOT U241 ( .A(ten_count[1]), .Z(n238) );
  GTECH_NOT U242 ( .A(n239), .Z(n234) );
  GTECH_NAND3 U243 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n239) );
  GTECH_MUX2 U244 ( .A(n240), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U245 ( .A(N152), .B(ten_count[0]), .Z(n240) );
  GTECH_NOT U246 ( .A(n241), .Z(N154) );
  GTECH_NAND2 U247 ( .A(N152), .B(n242), .Z(n241) );
  GTECH_NOT U248 ( .A(ten_count[0]), .Z(n242) );
  GTECH_NAND2 U249 ( .A(n243), .B(n160), .Z(N151) );
  GTECH_OA21 U250 ( .A(n14), .B(n244), .C(n224), .Z(n243) );
  GTECH_NOT U251 ( .A(n245), .Z(n224) );
  GTECH_AO21 U252 ( .A(n236), .B(n14), .C(reset), .Z(n245) );
  GTECH_NOT U253 ( .A(n246), .Z(n236) );
  GTECH_AND2 U254 ( .A(period[6]), .B(n221), .Z(N15) );
  GTECH_NOT U255 ( .A(n247), .Z(N148) );
  GTECH_OA21 U256 ( .A(n244), .B(n248), .C(n249), .Z(n247) );
  GTECH_MUX2 U257 ( .A(n250), .B(n251), .S(n174), .Z(n249) );
  GTECH_OR3 U258 ( .A(n175), .B(n252), .C(n253), .Z(n251) );
  GTECH_AND_NOT U259 ( .A(n254), .B(n255), .Z(n250) );
  GTECH_MUX2 U260 ( .A(n248), .B(n252), .S(n175), .Z(n254) );
  GTECH_NAND3 U261 ( .A(n256), .B(n225), .C(n257), .Z(N147) );
  GTECH_NOT U262 ( .A(n237), .Z(n257) );
  GTECH_NAND2 U263 ( .A(n188), .B(n258), .Z(n237) );
  GTECH_NAND3 U264 ( .A(n244), .B(n259), .C(n160), .Z(n258) );
  GTECH_NAND4 U265 ( .A(n175), .B(n174), .C(n161), .D(n260), .Z(n244) );
  GTECH_NAND2 U266 ( .A(n14), .B(n261), .Z(n225) );
  GTECH_NOT U267 ( .A(n160), .Z(n261) );
  GTECH_NAND3 U268 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n256) );
  GTECH_MUX2 U269 ( .A(n255), .B(n262), .S(n175), .Z(N146) );
  GTECH_AO21 U270 ( .A(N150), .B(n263), .C(n264), .Z(n262) );
  GTECH_NOT U271 ( .A(n265), .Z(n264) );
  GTECH_OAI22 U272 ( .A(n263), .B(n252), .C(n266), .D(n248), .Z(n255) );
  GTECH_AND2 U273 ( .A(n161), .B(n260), .Z(n266) );
  GTECH_NOT U274 ( .A(n253), .Z(n263) );
  GTECH_NAND3 U275 ( .A(n267), .B(n223), .C(n268), .Z(n253) );
  GTECH_NOT U276 ( .A(n161), .Z(n267) );
  GTECH_NAND2 U277 ( .A(n269), .B(n265), .Z(N144) );
  GTECH_NAND3 U278 ( .A(N152), .B(n260), .C(n161), .Z(n265) );
  GTECH_MUX2 U279 ( .A(n270), .B(n271), .S(n161), .Z(n269) );
  GTECH_NAND3 U280 ( .A(n268), .B(n223), .C(N150), .Z(n271) );
  GTECH_OA21 U281 ( .A(n248), .B(n260), .C(n272), .Z(n270) );
  GTECH_AO21 U282 ( .A(n268), .B(n223), .C(n252), .Z(n272) );
  GTECH_NOT U283 ( .A(n273), .Z(n268) );
  GTECH_NAND2 U284 ( .A(n274), .B(n223), .Z(n260) );
  GTECH_NOT U285 ( .A(n22), .Z(n223) );
  GTECH_AO21 U286 ( .A(n275), .B(N150), .C(n276), .Z(N142) );
  GTECH_MUX2 U287 ( .A(n277), .B(n278), .S(n22), .Z(n276) );
  GTECH_AND2 U288 ( .A(N152), .B(n274), .Z(n278) );
  GTECH_NOT U289 ( .A(n279), .Z(n277) );
  GTECH_XOR2 U290 ( .A(n273), .B(n22), .Z(n275) );
  GTECH_NAND3 U291 ( .A(n227), .B(n226), .C(sub_85_carry_2_), .Z(n273) );
  GTECH_NOT U292 ( .A(n20), .Z(n226) );
  GTECH_NAND2 U293 ( .A(n280), .B(n279), .Z(N140) );
  GTECH_NAND2 U294 ( .A(n281), .B(N152), .Z(n279) );
  GTECH_NOT U295 ( .A(n274), .Z(n281) );
  GTECH_NAND2 U296 ( .A(n20), .B(n282), .Z(n274) );
  GTECH_NOT U297 ( .A(sub_85_carry_2_), .Z(n282) );
  GTECH_MUX2 U298 ( .A(n283), .B(n284), .S(n20), .Z(n280) );
  GTECH_NAND3 U299 ( .A(sub_85_carry_2_), .B(n227), .C(N150), .Z(n284) );
  GTECH_AND2 U300 ( .A(n285), .B(n286), .Z(n283) );
  GTECH_MUX2 U301 ( .A(n252), .B(n248), .S(sub_85_carry_2_), .Z(n285) );
  GTECH_AO21 U302 ( .A(period[5]), .B(n221), .C(reset), .Z(N14) );
  GTECH_MUX2 U303 ( .A(n287), .B(n288), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_AO21 U304 ( .A(N150), .B(n227), .C(N152), .Z(n287) );
  GTECH_AO21 U305 ( .A(N152), .B(n227), .C(n288), .Z(N136) );
  GTECH_NOT U306 ( .A(n286), .Z(n288) );
  GTECH_NAND2 U307 ( .A(n16), .B(N150), .Z(n286) );
  GTECH_NOT U308 ( .A(n252), .Z(N150) );
  GTECH_NAND2 U309 ( .A(n235), .B(n188), .Z(n252) );
  GTECH_NOT U310 ( .A(n289), .Z(n235) );
  GTECH_NOT U311 ( .A(n16), .Z(n227) );
  GTECH_NOT U312 ( .A(n248), .Z(N152) );
  GTECH_NAND2 U313 ( .A(n160), .B(n290), .Z(n248) );
  GTECH_NOT U314 ( .A(N169), .Z(n290) );
  GTECH_NAND2 U315 ( .A(n188), .B(n259), .Z(N169) );
  GTECH_NOT U316 ( .A(n14), .Z(n259) );
  GTECH_OA21 U317 ( .A(n291), .B(n292), .C(n293), .Z(N134) );
  GTECH_AND_NOT U318 ( .A(n294), .B(n295), .Z(n291) );
  GTECH_NAND2 U319 ( .A(n188), .B(n289), .Z(N133) );
  GTECH_NAND2 U320 ( .A(n160), .B(n14), .Z(n289) );
  GTECH_AND2 U321 ( .A(n296), .B(n293), .Z(N132) );
  GTECH_XOR2 U322 ( .A(n295), .B(n173), .Z(n296) );
  GTECH_NAND2 U323 ( .A(n297), .B(n298), .Z(n295) );
  GTECH_NOT U324 ( .A(n299), .Z(n297) );
  GTECH_AND2 U325 ( .A(n300), .B(n293), .Z(N130) );
  GTECH_XOR2 U326 ( .A(n299), .B(n163), .Z(n300) );
  GTECH_NAND2 U327 ( .A(n301), .B(n302), .Z(n299) );
  GTECH_NOT U328 ( .A(n303), .Z(n301) );
  GTECH_AND2 U329 ( .A(period[4]), .B(n221), .Z(N13) );
  GTECH_AND2 U330 ( .A(n304), .B(n293), .Z(N128) );
  GTECH_XOR2 U331 ( .A(n303), .B(n164), .Z(n304) );
  GTECH_NAND2 U332 ( .A(n305), .B(n306), .Z(n303) );
  GTECH_NOT U333 ( .A(n307), .Z(n305) );
  GTECH_AND2 U334 ( .A(n308), .B(n293), .Z(N126) );
  GTECH_XOR2 U335 ( .A(n307), .B(n165), .Z(n308) );
  GTECH_NAND2 U336 ( .A(n309), .B(n310), .Z(n307) );
  GTECH_NOT U337 ( .A(n311), .Z(n309) );
  GTECH_AND2 U338 ( .A(n312), .B(n293), .Z(N124) );
  GTECH_XOR2 U339 ( .A(n311), .B(n166), .Z(n312) );
  GTECH_NAND2 U340 ( .A(n313), .B(n314), .Z(n311) );
  GTECH_NOT U341 ( .A(n315), .Z(n313) );
  GTECH_AND2 U342 ( .A(n316), .B(n293), .Z(N122) );
  GTECH_XOR2 U343 ( .A(n315), .B(n167), .Z(n316) );
  GTECH_NAND2 U344 ( .A(n317), .B(n318), .Z(n315) );
  GTECH_NOT U345 ( .A(n168), .Z(n318) );
  GTECH_NOT U346 ( .A(n319), .Z(n317) );
  GTECH_AND2 U347 ( .A(n320), .B(n293), .Z(N120) );
  GTECH_XOR2 U348 ( .A(n319), .B(n168), .Z(n320) );
  GTECH_NAND2 U349 ( .A(n321), .B(n322), .Z(n319) );
  GTECH_NOT U350 ( .A(n169), .Z(n322) );
  GTECH_NOT U351 ( .A(n323), .Z(n321) );
  GTECH_AO21 U352 ( .A(period[3]), .B(n221), .C(reset), .Z(N12) );
  GTECH_AND2 U353 ( .A(n324), .B(n293), .Z(N118) );
  GTECH_XOR2 U354 ( .A(n323), .B(n169), .Z(n324) );
  GTECH_NAND3 U355 ( .A(n325), .B(n326), .C(n327), .Z(n323) );
  GTECH_NOT U356 ( .A(n170), .Z(n327) );
  GTECH_OAI22 U357 ( .A(n170), .B(n328), .C(n329), .D(n330), .Z(N116) );
  GTECH_MUX2 U358 ( .A(n325), .B(n331), .S(n170), .Z(n330) );
  GTECH_NAND2 U359 ( .A(n325), .B(n326), .Z(n331) );
  GTECH_NOT U360 ( .A(n171), .Z(n325) );
  GTECH_MUX2 U361 ( .A(N112), .B(n332), .S(n171), .Z(N114) );
  GTECH_AND2 U362 ( .A(n293), .B(n326), .Z(n332) );
  GTECH_NOT U363 ( .A(n172), .Z(n326) );
  GTECH_NOT U364 ( .A(n328), .Z(N112) );
  GTECH_NAND2 U365 ( .A(n293), .B(n172), .Z(n328) );
  GTECH_NOT U366 ( .A(n329), .Z(n293) );
  GTECH_NAND2 U367 ( .A(n246), .B(n188), .Z(n329) );
  GTECH_AO21 U368 ( .A(n333), .B(n334), .C(n335), .Z(n246) );
  GTECH_ADD_ABC U369 ( .A(update_period[11]), .B(n162), .C(n336), .COUT(n335)
         );
  GTECH_ADD_ABC U370 ( .A(update_period[10]), .B(n173), .C(n337), .COUT(n336)
         );
  GTECH_OAI22 U371 ( .A(n338), .B(n339), .C(n298), .D(n340), .Z(n337) );
  GTECH_AO21 U372 ( .A(n298), .B(n340), .C(n302), .Z(n339) );
  GTECH_NOT U373 ( .A(n164), .Z(n302) );
  GTECH_NOT U374 ( .A(update_period[8]), .Z(n338) );
  GTECH_AOI222 U375 ( .A(n298), .B(n340), .C(n341), .D(n342), .E(n292), .F(
        n343), .Z(n334) );
  GTECH_NOT U376 ( .A(update_period[11]), .Z(n343) );
  GTECH_NOT U377 ( .A(n162), .Z(n292) );
  GTECH_OA21 U378 ( .A(n344), .B(n345), .C(n346), .Z(n342) );
  GTECH_NAND3 U379 ( .A(n166), .B(n347), .C(update_period[6]), .Z(n346) );
  GTECH_OA21 U380 ( .A(n314), .B(n348), .C(n349), .Z(n344) );
  GTECH_NAND3 U381 ( .A(n168), .B(n350), .C(update_period[4]), .Z(n349) );
  GTECH_OA21 U382 ( .A(n306), .B(n351), .C(n352), .Z(n341) );
  GTECH_NAND4 U383 ( .A(n353), .B(n350), .C(n354), .D(n355), .Z(n352) );
  GTECH_OA21 U384 ( .A(update_period[4]), .B(n168), .C(n356), .Z(n355) );
  GTECH_NOT U385 ( .A(n345), .Z(n356) );
  GTECH_AO21 U386 ( .A(n310), .B(n357), .C(n358), .Z(n345) );
  GTECH_NOT U387 ( .A(n347), .Z(n358) );
  GTECH_NAND2 U388 ( .A(n351), .B(n306), .Z(n347) );
  GTECH_NOT U389 ( .A(update_period[6]), .Z(n357) );
  GTECH_NOT U390 ( .A(n166), .Z(n310) );
  GTECH_NAND2 U391 ( .A(n359), .B(n360), .Z(n354) );
  GTECH_OAI22 U392 ( .A(update_period[2]), .B(n170), .C(update_period[3]), .D(
        n169), .Z(n359) );
  GTECH_NAND2 U393 ( .A(n348), .B(n314), .Z(n350) );
  GTECH_NOT U394 ( .A(n167), .Z(n314) );
  GTECH_NOT U395 ( .A(update_period[5]), .Z(n348) );
  GTECH_AO21 U396 ( .A(update_period[1]), .B(n171), .C(n361), .Z(n353) );
  GTECH_AO21 U397 ( .A(n362), .B(update_period[0]), .C(n363), .Z(n361) );
  GTECH_NOT U398 ( .A(n360), .Z(n363) );
  GTECH_NOT U399 ( .A(n364), .Z(n360) );
  GTECH_OA21 U400 ( .A(update_period[3]), .B(n169), .C(n365), .Z(n364) );
  GTECH_AO22 U401 ( .A(update_period[3]), .B(n169), .C(n170), .D(
        update_period[2]), .Z(n365) );
  GTECH_OA21 U402 ( .A(n171), .B(update_period[1]), .C(n172), .Z(n362) );
  GTECH_NOT U403 ( .A(update_period[7]), .Z(n351) );
  GTECH_NOT U404 ( .A(n165), .Z(n306) );
  GTECH_NOT U405 ( .A(update_period[9]), .Z(n340) );
  GTECH_NOT U406 ( .A(n163), .Z(n298) );
  GTECH_AOI2N2 U407 ( .A(n294), .B(n366), .C(update_period[8]), .D(n164), .Z(
        n333) );
  GTECH_NOT U408 ( .A(update_period[10]), .Z(n366) );
  GTECH_NOT U409 ( .A(n173), .Z(n294) );
  GTECH_AO21 U410 ( .A(period[2]), .B(n221), .C(reset), .Z(N11) );
  GTECH_AO21 U411 ( .A(period[1]), .B(n221), .C(reset), .Z(N10) );
  GTECH_NOT U412 ( .A(n222), .Z(n221) );
  GTECH_NAND2 U413 ( .A(period_load), .B(n188), .Z(n222) );
  GTECH_NOT U414 ( .A(reset), .Z(n188) );
endmodule

