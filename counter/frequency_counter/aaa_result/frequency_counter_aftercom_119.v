
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
         n28, n32, n78, n156, n160, sub_85_carry_2_, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
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
         n342, n343, n344, n345, n346;
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
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n78), .K(n78), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n174) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n78), .K(n78), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n173) );
  GTECH_FJK1S state_reg_0_ ( .J(n78), .K(n78), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n78), .K(n78), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n160) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n78), .K(n78), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n78), .K(n78), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n78), .K(n78), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n78), .K(n78), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n78), .K(n78), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n78), .K(n78), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n78), .K(n78), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n78), .K(n78), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n78), .K(n78), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n78), .K(n78), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n78), .K(n78), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n78), .K(n78), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n161) );
  GTECH_FJK1S update_digits_reg ( .J(n78), .K(n78), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n78), .K(n78), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n187) );
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
        seven_segment0_unit_count_reg[1]) );
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
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n156) );
  GTECH_ZERO U169 ( .Z(n78) );
  GTECH_NAND2 U170 ( .A(n15), .B(n188), .Z(seven_segment0_N9) );
  GTECH_AND_NOT U171 ( .A(ten_count[0]), .B(reset), .Z(seven_segment0_N8) );
  GTECH_AND_NOT U172 ( .A(n156), .B(reset), .Z(seven_segment0_N6) );
  GTECH_AND_NOT U173 ( .A(unit_count[3]), .B(reset), .Z(seven_segment0_N22) );
  GTECH_AND_NOT U174 ( .A(unit_count[2]), .B(reset), .Z(seven_segment0_N20) );
  GTECH_AND_NOT U175 ( .A(unit_count[1]), .B(reset), .Z(seven_segment0_N18) );
  GTECH_AND_NOT U176 ( .A(unit_count[0]), .B(reset), .Z(seven_segment0_N16) );
  GTECH_AND_NOT U177 ( .A(ten_count[3]), .B(reset), .Z(seven_segment0_N14) );
  GTECH_AND_NOT U178 ( .A(ten_count[2]), .B(reset), .Z(seven_segment0_N12) );
  GTECH_AND_NOT U179 ( .A(ten_count[1]), .B(reset), .Z(seven_segment0_N10) );
  GTECH_NAND3 U180 ( .A(n189), .B(n190), .C(n191), .Z(segments[6]) );
  GTECH_OA21 U181 ( .A(n192), .B(n193), .C(n194), .Z(n191) );
  GTECH_AO21 U182 ( .A(n195), .B(n196), .C(n197), .Z(segments[5]) );
  GTECH_NAND3 U183 ( .A(n189), .B(n198), .C(n199), .Z(segments[3]) );
  GTECH_NOT U184 ( .A(segments[4]), .Z(n198) );
  GTECH_AO21 U185 ( .A(n195), .B(n200), .C(n201), .Z(segments[4]) );
  GTECH_NAND2 U186 ( .A(n190), .B(n202), .Z(n201) );
  GTECH_OR_NOT U187 ( .A(n203), .B(n204), .Z(n202) );
  GTECH_NAND3 U188 ( .A(n204), .B(n205), .C(n206), .Z(n189) );
  GTECH_NAND2 U189 ( .A(n207), .B(n194), .Z(segments[2]) );
  GTECH_NOT U190 ( .A(n197), .Z(n194) );
  GTECH_NAND2 U191 ( .A(n203), .B(n199), .Z(n197) );
  GTECH_NAND3 U192 ( .A(n206), .B(n208), .C(n209), .Z(n199) );
  GTECH_NAND2 U193 ( .A(n210), .B(n207), .Z(segments[1]) );
  GTECH_NOT U194 ( .A(n211), .Z(n207) );
  GTECH_AO21 U195 ( .A(n206), .B(n204), .C(n195), .Z(n211) );
  GTECH_NOT U196 ( .A(n196), .Z(n206) );
  GTECH_OA21 U197 ( .A(n204), .B(n203), .C(n190), .Z(n210) );
  GTECH_NAND3 U198 ( .A(n192), .B(n200), .C(n209), .Z(n203) );
  GTECH_NAND2 U199 ( .A(n212), .B(n190), .Z(segments[0]) );
  GTECH_NAND4 U200 ( .A(n192), .B(n204), .C(n200), .D(n205), .Z(n190) );
  GTECH_NOT U201 ( .A(n213), .Z(n200) );
  GTECH_XOR2 U202 ( .A(n196), .B(n195), .Z(n212) );
  GTECH_NOT U203 ( .A(n193), .Z(n195) );
  GTECH_NAND2 U204 ( .A(n208), .B(n205), .Z(n193) );
  GTECH_NOT U205 ( .A(n209), .Z(n205) );
  GTECH_MUX2 U206 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n156), .Z(n209) );
  GTECH_NOT U207 ( .A(n204), .Z(n208) );
  GTECH_MUX2 U208 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n156), .Z(n204) );
  GTECH_NAND2 U209 ( .A(n213), .B(n192), .Z(n196) );
  GTECH_MUX2 U210 ( .A(n32), .B(n28), .S(n156), .Z(n192) );
  GTECH_MUX2 U211 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n156), .Z(n213) );
  GTECH_AO21 U212 ( .A(period[0]), .B(n214), .C(reset), .Z(N9) );
  GTECH_AND_NOT U213 ( .A(period[11]), .B(n215), .Z(N21) );
  GTECH_NAND2 U214 ( .A(n188), .B(n215), .Z(N20) );
  GTECH_AO21 U215 ( .A(period[10]), .B(n214), .C(reset), .Z(N19) );
  GTECH_AND_NOT U216 ( .A(period[9]), .B(n215), .Z(N18) );
  GTECH_AND_NOT U217 ( .A(period[8]), .B(n215), .Z(N17) );
  GTECH_AND_NOT U218 ( .A(N170), .B(n22), .Z(N168) );
  GTECH_NAND2 U219 ( .A(n216), .B(n217), .Z(N167) );
  GTECH_AND_NOT U220 ( .A(N170), .B(n20), .Z(N166) );
  GTECH_AND_NOT U221 ( .A(sub_85_carry_2_), .B(n218), .Z(N164) );
  GTECH_AND_NOT U222 ( .A(N170), .B(n16), .Z(N162) );
  GTECH_NOT U223 ( .A(n218), .Z(N170) );
  GTECH_NAND2 U224 ( .A(n219), .B(n188), .Z(n218) );
  GTECH_NOT U225 ( .A(n217), .Z(n219) );
  GTECH_AND_NOT U226 ( .A(N152), .B(n220), .Z(N160) );
  GTECH_XOR2 U227 ( .A(n221), .B(ten_count[3]), .Z(n220) );
  GTECH_OR_NOT U228 ( .A(n222), .B(ten_count[2]), .Z(n221) );
  GTECH_AO21 U229 ( .A(period[7]), .B(n214), .C(reset), .Z(N16) );
  GTECH_AO21 U230 ( .A(n223), .B(n224), .C(n225), .Z(N159) );
  GTECH_AND_NOT U231 ( .A(N152), .B(n226), .Z(N158) );
  GTECH_XOR2 U232 ( .A(n222), .B(ten_count[2]), .Z(n226) );
  GTECH_AND_NOT U233 ( .A(n227), .B(n228), .Z(N156) );
  GTECH_OA21 U234 ( .A(ten_count[0]), .B(ten_count[1]), .C(n222), .Z(n227) );
  GTECH_NAND2 U235 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n222) );
  GTECH_AND_NOT U236 ( .A(N152), .B(ten_count[0]), .Z(N154) );
  GTECH_NAND2 U237 ( .A(n229), .B(n160), .Z(N151) );
  GTECH_OA21 U238 ( .A(n14), .B(n230), .C(n216), .Z(n229) );
  GTECH_NOT U239 ( .A(n231), .Z(n216) );
  GTECH_AO21 U240 ( .A(n224), .B(n14), .C(reset), .Z(n231) );
  GTECH_NOT U241 ( .A(n232), .Z(n224) );
  GTECH_AND_NOT U242 ( .A(period[6]), .B(n215), .Z(N15) );
  GTECH_NOT U243 ( .A(n233), .Z(N148) );
  GTECH_OA21 U244 ( .A(n230), .B(n228), .C(n234), .Z(n233) );
  GTECH_MUX2 U245 ( .A(n235), .B(n236), .S(n173), .Z(n234) );
  GTECH_OR3 U246 ( .A(n174), .B(n237), .C(n238), .Z(n236) );
  GTECH_AND_NOT U247 ( .A(n239), .B(n240), .Z(n235) );
  GTECH_MUX2 U248 ( .A(n228), .B(n237), .S(n174), .Z(n239) );
  GTECH_NAND3 U249 ( .A(n241), .B(n217), .C(n242), .Z(N147) );
  GTECH_NOT U250 ( .A(n225), .Z(n242) );
  GTECH_NAND2 U251 ( .A(n188), .B(n243), .Z(n225) );
  GTECH_NAND3 U252 ( .A(n230), .B(n244), .C(n160), .Z(n243) );
  GTECH_NAND4 U253 ( .A(n187), .B(n174), .C(n173), .D(n245), .Z(n230) );
  GTECH_NAND2 U254 ( .A(n14), .B(n246), .Z(n217) );
  GTECH_NOT U255 ( .A(n160), .Z(n246) );
  GTECH_NAND3 U256 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n241) );
  GTECH_MUX2 U257 ( .A(n240), .B(n247), .S(n174), .Z(N146) );
  GTECH_AO21 U258 ( .A(N150), .B(n248), .C(n249), .Z(n247) );
  GTECH_NOT U259 ( .A(n250), .Z(n249) );
  GTECH_OAI22 U260 ( .A(n248), .B(n237), .C(n251), .D(n228), .Z(n240) );
  GTECH_ADD_AB U261 ( .A(n187), .B(n245), .COUT(n251) );
  GTECH_NOT U262 ( .A(n238), .Z(n248) );
  GTECH_NAND3 U263 ( .A(n252), .B(n253), .C(n254), .Z(n238) );
  GTECH_NOT U264 ( .A(n187), .Z(n253) );
  GTECH_NAND2 U265 ( .A(n255), .B(n250), .Z(N144) );
  GTECH_NAND3 U266 ( .A(N152), .B(n245), .C(n187), .Z(n250) );
  GTECH_MUX2 U267 ( .A(n256), .B(n257), .S(n187), .Z(n255) );
  GTECH_NAND3 U268 ( .A(n254), .B(n252), .C(N150), .Z(n257) );
  GTECH_OA21 U269 ( .A(n228), .B(n245), .C(n258), .Z(n256) );
  GTECH_AO21 U270 ( .A(n254), .B(n252), .C(n237), .Z(n258) );
  GTECH_NOT U271 ( .A(n259), .Z(n254) );
  GTECH_NAND2 U272 ( .A(n260), .B(n252), .Z(n245) );
  GTECH_NOT U273 ( .A(n22), .Z(n252) );
  GTECH_AO21 U274 ( .A(n261), .B(N150), .C(n262), .Z(N142) );
  GTECH_MUX2 U275 ( .A(n263), .B(n264), .S(n22), .Z(n262) );
  GTECH_AND_NOT U276 ( .A(N152), .B(n265), .Z(n264) );
  GTECH_NOT U277 ( .A(n266), .Z(n263) );
  GTECH_XOR2 U278 ( .A(n259), .B(n22), .Z(n261) );
  GTECH_NAND3 U279 ( .A(n267), .B(n268), .C(sub_85_carry_2_), .Z(n259) );
  GTECH_NOT U280 ( .A(n20), .Z(n268) );
  GTECH_NAND2 U281 ( .A(n269), .B(n266), .Z(N140) );
  GTECH_NAND2 U282 ( .A(n265), .B(N152), .Z(n266) );
  GTECH_NOT U283 ( .A(n260), .Z(n265) );
  GTECH_NAND2 U284 ( .A(n20), .B(n270), .Z(n260) );
  GTECH_NOT U285 ( .A(sub_85_carry_2_), .Z(n270) );
  GTECH_MUX2 U286 ( .A(n271), .B(n272), .S(n20), .Z(n269) );
  GTECH_NAND3 U287 ( .A(sub_85_carry_2_), .B(n267), .C(N150), .Z(n272) );
  GTECH_AND_NOT U288 ( .A(n273), .B(n274), .Z(n271) );
  GTECH_MUX2 U289 ( .A(n237), .B(n228), .S(sub_85_carry_2_), .Z(n273) );
  GTECH_AO21 U290 ( .A(period[5]), .B(n214), .C(reset), .Z(N14) );
  GTECH_MUX2 U291 ( .A(n275), .B(n274), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_AO21 U292 ( .A(N150), .B(n267), .C(N152), .Z(n275) );
  GTECH_AO21 U293 ( .A(N152), .B(n267), .C(n274), .Z(N136) );
  GTECH_NOT U294 ( .A(n276), .Z(n274) );
  GTECH_NAND2 U295 ( .A(n16), .B(N150), .Z(n276) );
  GTECH_NOT U296 ( .A(n237), .Z(N150) );
  GTECH_NAND2 U297 ( .A(n223), .B(n188), .Z(n237) );
  GTECH_NOT U298 ( .A(n277), .Z(n223) );
  GTECH_NOT U299 ( .A(n16), .Z(n267) );
  GTECH_NOT U300 ( .A(n228), .Z(N152) );
  GTECH_NAND2 U301 ( .A(n160), .B(n278), .Z(n228) );
  GTECH_NOT U302 ( .A(N169), .Z(n278) );
  GTECH_NAND2 U303 ( .A(n188), .B(n244), .Z(N169) );
  GTECH_NOT U304 ( .A(n14), .Z(n244) );
  GTECH_AND_NOT U305 ( .A(n279), .B(n280), .Z(N134) );
  GTECH_OA21 U306 ( .A(n281), .B(n172), .C(n161), .Z(n280) );
  GTECH_NAND2 U307 ( .A(n188), .B(n277), .Z(N133) );
  GTECH_NAND2 U308 ( .A(n160), .B(n14), .Z(n277) );
  GTECH_AND_NOT U309 ( .A(n282), .B(n283), .Z(N132) );
  GTECH_XOR2 U310 ( .A(n281), .B(n172), .Z(n282) );
  GTECH_NAND2 U311 ( .A(n284), .B(n285), .Z(n281) );
  GTECH_NOT U312 ( .A(n286), .Z(n284) );
  GTECH_AND_NOT U313 ( .A(n287), .B(n283), .Z(N130) );
  GTECH_XOR2 U314 ( .A(n286), .B(n162), .Z(n287) );
  GTECH_NAND2 U315 ( .A(n288), .B(n289), .Z(n286) );
  GTECH_NOT U316 ( .A(n163), .Z(n289) );
  GTECH_NOT U317 ( .A(n290), .Z(n288) );
  GTECH_AND_NOT U318 ( .A(period[4]), .B(n215), .Z(N13) );
  GTECH_AND_NOT U319 ( .A(n291), .B(n283), .Z(N128) );
  GTECH_XOR2 U320 ( .A(n290), .B(n163), .Z(n291) );
  GTECH_NAND2 U321 ( .A(n292), .B(n293), .Z(n290) );
  GTECH_NOT U322 ( .A(n294), .Z(n292) );
  GTECH_AND_NOT U323 ( .A(n295), .B(n283), .Z(N126) );
  GTECH_XOR2 U324 ( .A(n294), .B(n164), .Z(n295) );
  GTECH_NAND2 U325 ( .A(n296), .B(n297), .Z(n294) );
  GTECH_NOT U326 ( .A(n165), .Z(n297) );
  GTECH_NOT U327 ( .A(n298), .Z(n296) );
  GTECH_AND_NOT U328 ( .A(n299), .B(n283), .Z(N124) );
  GTECH_XOR2 U329 ( .A(n298), .B(n165), .Z(n299) );
  GTECH_NAND2 U330 ( .A(n300), .B(n301), .Z(n298) );
  GTECH_NOT U331 ( .A(n302), .Z(n300) );
  GTECH_AND_NOT U332 ( .A(n303), .B(n283), .Z(N122) );
  GTECH_XOR2 U333 ( .A(n302), .B(n166), .Z(n303) );
  GTECH_NAND2 U334 ( .A(n304), .B(n305), .Z(n302) );
  GTECH_NOT U335 ( .A(n167), .Z(n305) );
  GTECH_NOT U336 ( .A(n306), .Z(n304) );
  GTECH_AND_NOT U337 ( .A(n307), .B(n283), .Z(N120) );
  GTECH_XOR2 U338 ( .A(n306), .B(n167), .Z(n307) );
  GTECH_NAND2 U339 ( .A(n308), .B(n309), .Z(n306) );
  GTECH_NOT U340 ( .A(n310), .Z(n308) );
  GTECH_AO21 U341 ( .A(period[3]), .B(n214), .C(reset), .Z(N12) );
  GTECH_AND_NOT U342 ( .A(n311), .B(n283), .Z(N118) );
  GTECH_XOR2 U343 ( .A(n310), .B(n168), .Z(n311) );
  GTECH_NAND3 U344 ( .A(n312), .B(n313), .C(n314), .Z(n310) );
  GTECH_NOT U345 ( .A(n169), .Z(n314) );
  GTECH_OAI22 U346 ( .A(n169), .B(n315), .C(n283), .D(n316), .Z(N116) );
  GTECH_MUX2 U347 ( .A(n312), .B(n317), .S(n169), .Z(n316) );
  GTECH_NAND2 U348 ( .A(n312), .B(n313), .Z(n317) );
  GTECH_NOT U349 ( .A(n171), .Z(n313) );
  GTECH_NOT U350 ( .A(n170), .Z(n312) );
  GTECH_MUX2 U351 ( .A(N112), .B(n318), .S(n170), .Z(N114) );
  GTECH_AND_NOT U352 ( .A(n279), .B(n171), .Z(n318) );
  GTECH_NOT U353 ( .A(n315), .Z(N112) );
  GTECH_NAND2 U354 ( .A(n279), .B(n171), .Z(n315) );
  GTECH_NOT U355 ( .A(n283), .Z(n279) );
  GTECH_NAND2 U356 ( .A(n232), .B(n188), .Z(n283) );
  GTECH_NAND2 U357 ( .A(n319), .B(n320), .Z(n232) );
  GTECH_OR4 U358 ( .A(n321), .B(n322), .C(n323), .D(n324), .Z(n320) );
  GTECH_AOI222 U359 ( .A(update_period[7]), .B(n164), .C(n325), .D(
        update_period[6]), .E(n326), .F(n327), .Z(n324) );
  GTECH_AO21 U360 ( .A(update_period[5]), .B(n166), .C(n328), .Z(n327) );
  GTECH_AO21 U361 ( .A(n329), .B(n330), .C(n331), .Z(n328) );
  GTECH_AND3 U362 ( .A(n167), .B(n332), .C(update_period[4]), .Z(n331) );
  GTECH_OA21 U363 ( .A(n167), .B(update_period[4]), .C(n332), .Z(n330) );
  GTECH_NAND2 U364 ( .A(n333), .B(n301), .Z(n332) );
  GTECH_NOT U365 ( .A(n166), .Z(n301) );
  GTECH_NOT U366 ( .A(update_period[5]), .Z(n333) );
  GTECH_OA21 U367 ( .A(n334), .B(n335), .C(n336), .Z(n329) );
  GTECH_AO21 U368 ( .A(update_period[1]), .B(n170), .C(n337), .Z(n336) );
  GTECH_AO21 U369 ( .A(n338), .B(update_period[0]), .C(n334), .Z(n337) );
  GTECH_OA21 U370 ( .A(update_period[1]), .B(n170), .C(n171), .Z(n338) );
  GTECH_OA22 U371 ( .A(n169), .B(update_period[2]), .C(n168), .D(
        update_period[3]), .Z(n335) );
  GTECH_OA21 U372 ( .A(update_period[3]), .B(n168), .C(n339), .Z(n334) );
  GTECH_OAI2N2 U373 ( .A(n340), .B(n309), .C(n169), .D(update_period[2]), .Z(
        n339) );
  GTECH_NOT U374 ( .A(n168), .Z(n309) );
  GTECH_NOT U375 ( .A(update_period[3]), .Z(n340) );
  GTECH_OA21 U376 ( .A(update_period[6]), .B(n165), .C(n341), .Z(n326) );
  GTECH_ADD_AB U377 ( .A(n165), .B(n341), .COUT(n325) );
  GTECH_NAND2 U378 ( .A(n342), .B(n293), .Z(n341) );
  GTECH_NOT U379 ( .A(n164), .Z(n293) );
  GTECH_NOT U380 ( .A(update_period[7]), .Z(n342) );
  GTECH_NOT U381 ( .A(n343), .Z(n323) );
  GTECH_NOR2 U382 ( .A(n163), .B(update_period[8]), .Z(n322) );
  GTECH_AOI2N2 U383 ( .A(n161), .B(update_period[11]), .C(n321), .D(n344), .Z(
        n319) );
  GTECH_AOI222 U384 ( .A(update_period[10]), .B(n172), .C(update_period[9]), 
        .D(n162), .E(n345), .F(update_period[8]), .Z(n344) );
  GTECH_ADD_AB U385 ( .A(n163), .B(n343), .COUT(n345) );
  GTECH_NAND2 U386 ( .A(n346), .B(n285), .Z(n343) );
  GTECH_NOT U387 ( .A(n162), .Z(n285) );
  GTECH_NOT U388 ( .A(update_period[9]), .Z(n346) );
  GTECH_OAI22 U389 ( .A(update_period[10]), .B(n172), .C(update_period[11]), 
        .D(n161), .Z(n321) );
  GTECH_AO21 U390 ( .A(period[2]), .B(n214), .C(reset), .Z(N11) );
  GTECH_AO21 U391 ( .A(period[1]), .B(n214), .C(reset), .Z(N10) );
  GTECH_NOT U392 ( .A(n215), .Z(n214) );
  GTECH_NAND2 U393 ( .A(period_load), .B(n188), .Z(n215) );
  GTECH_NOT U394 ( .A(reset), .Z(n188) );
endmodule

