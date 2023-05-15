
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
         n25, n26, n27, n28, n29, n30, n31, n32, n78, n156, n160,
         sub_85_carry_2_, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n176, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354;
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
        .CP(clk), .Q(update_period[1]), .QN(n176) );
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
  GTECH_FJK1S update_digits_reg ( .J(n78), .K(n78), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
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
        seven_segment0_unit_count_reg[0]), .QN(n25) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n29) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n156) );
  GTECH_ZERO U169 ( .Z(n78) );
  GTECH_NAND2 U170 ( .A(n15), .B(n188), .Z(seven_segment0_N9) );
  GTECH_AND2 U171 ( .A(ten_count[0]), .B(n188), .Z(seven_segment0_N8) );
  GTECH_AND2 U172 ( .A(n156), .B(n188), .Z(seven_segment0_N6) );
  GTECH_AND2 U173 ( .A(unit_count[3]), .B(n188), .Z(seven_segment0_N22) );
  GTECH_AND2 U174 ( .A(unit_count[2]), .B(n188), .Z(seven_segment0_N20) );
  GTECH_AND2 U175 ( .A(unit_count[1]), .B(n188), .Z(seven_segment0_N18) );
  GTECH_AND2 U176 ( .A(unit_count[0]), .B(n188), .Z(seven_segment0_N16) );
  GTECH_AND2 U177 ( .A(ten_count[3]), .B(n188), .Z(seven_segment0_N14) );
  GTECH_AND2 U178 ( .A(ten_count[2]), .B(n188), .Z(seven_segment0_N12) );
  GTECH_AND2 U179 ( .A(ten_count[1]), .B(n188), .Z(seven_segment0_N10) );
  GTECH_NAND2 U180 ( .A(n189), .B(n190), .Z(segments[6]) );
  GTECH_NAND2 U181 ( .A(n191), .B(n189), .Z(segments[5]) );
  GTECH_OA21 U182 ( .A(n192), .B(n193), .C(n194), .Z(n191) );
  GTECH_NAND3 U183 ( .A(n195), .B(n196), .C(n197), .Z(segments[3]) );
  GTECH_NOT U184 ( .A(segments[4]), .Z(n196) );
  GTECH_OAI21 U185 ( .A(n198), .B(n199), .C(n194), .Z(segments[4]) );
  GTECH_NAND3 U186 ( .A(n189), .B(n193), .C(n200), .Z(segments[2]) );
  GTECH_AND3 U187 ( .A(n201), .B(n202), .C(n197), .Z(n189) );
  GTECH_NAND2 U188 ( .A(n203), .B(n204), .Z(n202) );
  GTECH_AND_NOT U189 ( .A(n205), .B(n206), .Z(n203) );
  GTECH_NAND3 U190 ( .A(n201), .B(n193), .C(n207), .Z(segments[1]) );
  GTECH_OA21 U191 ( .A(n204), .B(n199), .C(n195), .Z(n207) );
  GTECH_OR4 U192 ( .A(n208), .B(n198), .C(n206), .D(n209), .Z(n201) );
  GTECH_NOT U193 ( .A(n204), .Z(n198) );
  GTECH_NAND3 U194 ( .A(n190), .B(n197), .C(n200), .Z(segments[0]) );
  GTECH_NOT U195 ( .A(n210), .Z(n200) );
  GTECH_OAI21 U196 ( .A(n204), .B(n199), .C(n194), .Z(n210) );
  GTECH_NAND2 U197 ( .A(n211), .B(n204), .Z(n194) );
  GTECH_NOT U198 ( .A(n193), .Z(n211) );
  GTECH_OR4 U199 ( .A(n208), .B(n209), .C(n206), .D(n204), .Z(n197) );
  GTECH_MUX2 U200 ( .A(n29), .B(n25), .S(n156), .Z(n204) );
  GTECH_NOT U201 ( .A(n192), .Z(n208) );
  GTECH_NOT U202 ( .A(n212), .Z(n190) );
  GTECH_OAI21 U203 ( .A(n192), .B(n193), .C(n195), .Z(n212) );
  GTECH_NAND2 U204 ( .A(n206), .B(n205), .Z(n195) );
  GTECH_NOT U205 ( .A(n199), .Z(n205) );
  GTECH_NAND2 U206 ( .A(n192), .B(n209), .Z(n199) );
  GTECH_NOT U207 ( .A(n213), .Z(n209) );
  GTECH_NAND2 U208 ( .A(n206), .B(n213), .Z(n193) );
  GTECH_MUX2 U209 ( .A(n30), .B(n26), .S(n156), .Z(n213) );
  GTECH_MUX2 U210 ( .A(n31), .B(n27), .S(n156), .Z(n206) );
  GTECH_MUX2 U211 ( .A(n32), .B(n28), .S(n156), .Z(n192) );
  GTECH_AO21 U212 ( .A(period[0]), .B(n214), .C(reset), .Z(N9) );
  GTECH_AND2 U213 ( .A(period[11]), .B(n214), .Z(N21) );
  GTECH_NAND2 U214 ( .A(n188), .B(n215), .Z(N20) );
  GTECH_AO21 U215 ( .A(period[10]), .B(n214), .C(reset), .Z(N19) );
  GTECH_AND2 U216 ( .A(period[9]), .B(n214), .Z(N18) );
  GTECH_AND2 U217 ( .A(period[8]), .B(n214), .Z(N17) );
  GTECH_AND2 U218 ( .A(N170), .B(n216), .Z(N168) );
  GTECH_NAND2 U219 ( .A(n217), .B(n218), .Z(N167) );
  GTECH_AND2 U220 ( .A(N170), .B(n219), .Z(N166) );
  GTECH_AND2 U221 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U222 ( .A(N170), .B(n220), .Z(N162) );
  GTECH_NOT U223 ( .A(n221), .Z(N170) );
  GTECH_NAND2 U224 ( .A(n222), .B(n188), .Z(n221) );
  GTECH_NOT U225 ( .A(n218), .Z(n222) );
  GTECH_MUX2 U226 ( .A(n223), .B(n224), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U227 ( .A(ten_count[2]), .B(n225), .C(n226), .Z(n224) );
  GTECH_NOT U228 ( .A(n227), .Z(n226) );
  GTECH_AND2 U229 ( .A(n228), .B(ten_count[2]), .Z(n223) );
  GTECH_AO21 U230 ( .A(period[7]), .B(n214), .C(reset), .Z(N16) );
  GTECH_OAI21 U231 ( .A(n229), .B(n230), .C(n231), .Z(N159) );
  GTECH_MUX2 U232 ( .A(n228), .B(n227), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U233 ( .A(ten_count[1]), .B(n225), .C(n232), .Z(n227) );
  GTECH_NOT U234 ( .A(n233), .Z(n228) );
  GTECH_NAND3 U235 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n233) );
  GTECH_MUX2 U236 ( .A(n234), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U237 ( .A(N152), .B(ten_count[0]), .Z(n234) );
  GTECH_NOT U238 ( .A(n232), .Z(N154) );
  GTECH_NAND2 U239 ( .A(N152), .B(n235), .Z(n232) );
  GTECH_NOT U240 ( .A(ten_count[0]), .Z(n235) );
  GTECH_NAND2 U241 ( .A(n236), .B(n160), .Z(N151) );
  GTECH_OA21 U242 ( .A(n14), .B(n237), .C(n217), .Z(n236) );
  GTECH_NOT U243 ( .A(n238), .Z(n217) );
  GTECH_OAI21 U244 ( .A(n239), .B(n229), .C(n188), .Z(n238) );
  GTECH_AND2 U245 ( .A(period[6]), .B(n214), .Z(N15) );
  GTECH_OAI21 U246 ( .A(n225), .B(n237), .C(n240), .Z(N148) );
  GTECH_MUX2 U247 ( .A(n241), .B(n242), .S(n173), .Z(n240) );
  GTECH_NAND3 U248 ( .A(n243), .B(N150), .C(n244), .Z(n242) );
  GTECH_AND_NOT U249 ( .A(n245), .B(n246), .Z(n241) );
  GTECH_MUX2 U250 ( .A(n225), .B(n247), .S(n174), .Z(n245) );
  GTECH_NAND3 U251 ( .A(n248), .B(n218), .C(n231), .Z(N147) );
  GTECH_AND2 U252 ( .A(n188), .B(n249), .Z(n231) );
  GTECH_NAND3 U253 ( .A(n239), .B(n160), .C(n237), .Z(n249) );
  GTECH_OR4 U254 ( .A(n243), .B(n250), .C(n251), .D(n252), .Z(n237) );
  GTECH_NOT U255 ( .A(n173), .Z(n252) );
  GTECH_NOT U256 ( .A(n174), .Z(n243) );
  GTECH_NAND2 U257 ( .A(n14), .B(n253), .Z(n218) );
  GTECH_NOT U258 ( .A(n160), .Z(n253) );
  GTECH_NAND3 U259 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n248) );
  GTECH_MUX2 U260 ( .A(n246), .B(n254), .S(n174), .Z(N146) );
  GTECH_OAI21 U261 ( .A(n255), .B(n247), .C(n256), .Z(n254) );
  GTECH_OAI21 U262 ( .A(n244), .B(n247), .C(n257), .Z(n246) );
  GTECH_OAI21 U263 ( .A(n251), .B(n250), .C(N152), .Z(n257) );
  GTECH_NOT U264 ( .A(n258), .Z(n251) );
  GTECH_NOT U265 ( .A(n255), .Z(n244) );
  GTECH_NAND3 U266 ( .A(n216), .B(n250), .C(n259), .Z(n255) );
  GTECH_NOT U267 ( .A(n187), .Z(n250) );
  GTECH_NAND2 U268 ( .A(n260), .B(n256), .Z(N144) );
  GTECH_NAND3 U269 ( .A(N152), .B(n258), .C(n187), .Z(n256) );
  GTECH_MUX2 U270 ( .A(n261), .B(n262), .S(n187), .Z(n260) );
  GTECH_NAND3 U271 ( .A(n259), .B(n216), .C(N150), .Z(n262) );
  GTECH_OA21 U272 ( .A(n225), .B(n258), .C(n263), .Z(n261) );
  GTECH_OAI21 U273 ( .A(n22), .B(n264), .C(N150), .Z(n263) );
  GTECH_NAND2 U274 ( .A(n265), .B(n216), .Z(n258) );
  GTECH_NOT U275 ( .A(n22), .Z(n216) );
  GTECH_OAI21 U276 ( .A(n247), .B(n266), .C(n267), .Z(N142) );
  GTECH_MUX2 U277 ( .A(n268), .B(n269), .S(n22), .Z(n267) );
  GTECH_NAND2 U278 ( .A(N152), .B(n265), .Z(n269) );
  GTECH_XOR2 U279 ( .A(n22), .B(n259), .Z(n266) );
  GTECH_NOT U280 ( .A(n264), .Z(n259) );
  GTECH_NAND3 U281 ( .A(n220), .B(n219), .C(sub_85_carry_2_), .Z(n264) );
  GTECH_NOT U282 ( .A(n20), .Z(n219) );
  GTECH_NAND2 U283 ( .A(n270), .B(n268), .Z(N140) );
  GTECH_NAND2 U284 ( .A(n271), .B(N152), .Z(n268) );
  GTECH_NOT U285 ( .A(n225), .Z(N152) );
  GTECH_NOT U286 ( .A(n265), .Z(n271) );
  GTECH_NAND2 U287 ( .A(n20), .B(n272), .Z(n265) );
  GTECH_NOT U288 ( .A(sub_85_carry_2_), .Z(n272) );
  GTECH_MUX2 U289 ( .A(n273), .B(n274), .S(n20), .Z(n270) );
  GTECH_NAND3 U290 ( .A(sub_85_carry_2_), .B(n220), .C(N150), .Z(n274) );
  GTECH_NOT U291 ( .A(n16), .Z(n220) );
  GTECH_AND2 U292 ( .A(n275), .B(n276), .Z(n273) );
  GTECH_MUX2 U293 ( .A(n247), .B(n225), .S(sub_85_carry_2_), .Z(n275) );
  GTECH_AO21 U294 ( .A(period[5]), .B(n214), .C(reset), .Z(N14) );
  GTECH_MUX2 U295 ( .A(n277), .B(n278), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U296 ( .A(n276), .Z(n278) );
  GTECH_OAI21 U297 ( .A(n16), .B(n247), .C(n225), .Z(n277) );
  GTECH_OAI21 U298 ( .A(n16), .B(n225), .C(n276), .Z(N136) );
  GTECH_NAND2 U299 ( .A(n16), .B(N150), .Z(n276) );
  GTECH_NOT U300 ( .A(n247), .Z(N150) );
  GTECH_NAND2 U301 ( .A(n279), .B(n188), .Z(n247) );
  GTECH_NOT U302 ( .A(n230), .Z(n279) );
  GTECH_NAND2 U303 ( .A(n160), .B(n280), .Z(n225) );
  GTECH_NOT U304 ( .A(N169), .Z(n280) );
  GTECH_NAND2 U305 ( .A(n188), .B(n239), .Z(N169) );
  GTECH_NOT U306 ( .A(n14), .Z(n239) );
  GTECH_AND2 U307 ( .A(n281), .B(n282), .Z(N134) );
  GTECH_OAI21 U308 ( .A(n172), .B(n283), .C(n161), .Z(n282) );
  GTECH_NAND2 U309 ( .A(n188), .B(n230), .Z(N133) );
  GTECH_NAND2 U310 ( .A(n160), .B(n14), .Z(n230) );
  GTECH_AND2 U311 ( .A(n284), .B(n281), .Z(N132) );
  GTECH_XOR2 U312 ( .A(n283), .B(n172), .Z(n284) );
  GTECH_NAND2 U313 ( .A(n285), .B(n286), .Z(n283) );
  GTECH_NOT U314 ( .A(n287), .Z(n285) );
  GTECH_AND2 U315 ( .A(n288), .B(n281), .Z(N130) );
  GTECH_XOR2 U316 ( .A(n287), .B(n162), .Z(n288) );
  GTECH_NAND2 U317 ( .A(n289), .B(n290), .Z(n287) );
  GTECH_NOT U318 ( .A(n163), .Z(n290) );
  GTECH_NOT U319 ( .A(n291), .Z(n289) );
  GTECH_AND2 U320 ( .A(period[4]), .B(n214), .Z(N13) );
  GTECH_AND2 U321 ( .A(n292), .B(n281), .Z(N128) );
  GTECH_XOR2 U322 ( .A(n291), .B(n163), .Z(n292) );
  GTECH_NAND2 U323 ( .A(n293), .B(n294), .Z(n291) );
  GTECH_NOT U324 ( .A(n295), .Z(n293) );
  GTECH_AND2 U325 ( .A(n296), .B(n281), .Z(N126) );
  GTECH_XOR2 U326 ( .A(n295), .B(n164), .Z(n296) );
  GTECH_NAND2 U327 ( .A(n297), .B(n298), .Z(n295) );
  GTECH_NOT U328 ( .A(n165), .Z(n298) );
  GTECH_NOT U329 ( .A(n299), .Z(n297) );
  GTECH_AND2 U330 ( .A(n300), .B(n281), .Z(N124) );
  GTECH_XOR2 U331 ( .A(n299), .B(n165), .Z(n300) );
  GTECH_NAND2 U332 ( .A(n301), .B(n302), .Z(n299) );
  GTECH_NOT U333 ( .A(n166), .Z(n302) );
  GTECH_NOT U334 ( .A(n303), .Z(n301) );
  GTECH_AND2 U335 ( .A(n304), .B(n281), .Z(N122) );
  GTECH_XOR2 U336 ( .A(n303), .B(n166), .Z(n304) );
  GTECH_NAND2 U337 ( .A(n305), .B(n306), .Z(n303) );
  GTECH_NOT U338 ( .A(n167), .Z(n306) );
  GTECH_NOT U339 ( .A(n307), .Z(n305) );
  GTECH_AND2 U340 ( .A(n308), .B(n281), .Z(N120) );
  GTECH_XOR2 U341 ( .A(n307), .B(n167), .Z(n308) );
  GTECH_NAND2 U342 ( .A(n309), .B(n310), .Z(n307) );
  GTECH_NOT U343 ( .A(n311), .Z(n309) );
  GTECH_AO21 U344 ( .A(period[3]), .B(n214), .C(reset), .Z(N12) );
  GTECH_AND2 U345 ( .A(n312), .B(n281), .Z(N118) );
  GTECH_XOR2 U346 ( .A(n311), .B(n168), .Z(n312) );
  GTECH_NAND3 U347 ( .A(n313), .B(n314), .C(n315), .Z(n311) );
  GTECH_NOT U348 ( .A(n169), .Z(n315) );
  GTECH_OAI22 U349 ( .A(n169), .B(n316), .C(n317), .D(n318), .Z(N116) );
  GTECH_MUX2 U350 ( .A(n313), .B(n319), .S(n169), .Z(n318) );
  GTECH_NAND2 U351 ( .A(n313), .B(n314), .Z(n319) );
  GTECH_MUX2 U352 ( .A(N112), .B(n320), .S(n170), .Z(N114) );
  GTECH_AND2 U353 ( .A(n281), .B(n314), .Z(n320) );
  GTECH_NOT U354 ( .A(n171), .Z(n314) );
  GTECH_NOT U355 ( .A(n316), .Z(N112) );
  GTECH_NAND2 U356 ( .A(n281), .B(n171), .Z(n316) );
  GTECH_NOT U357 ( .A(n317), .Z(n281) );
  GTECH_NAND2 U358 ( .A(n229), .B(n188), .Z(n317) );
  GTECH_NOT U359 ( .A(n321), .Z(n229) );
  GTECH_AOI222 U360 ( .A(n322), .B(n323), .C(update_period[11]), .D(n161), .E(
        n324), .F(n325), .Z(n321) );
  GTECH_AO22 U361 ( .A(update_period[10]), .B(n172), .C(n326), .D(n327), .Z(
        n324) );
  GTECH_OAI21 U362 ( .A(n328), .B(n286), .C(n329), .Z(n327) );
  GTECH_NAND3 U363 ( .A(n330), .B(update_period[8]), .C(n163), .Z(n329) );
  GTECH_AND3 U364 ( .A(n330), .B(n326), .C(n325), .Z(n323) );
  GTECH_NAND2 U365 ( .A(n331), .B(n332), .Z(n325) );
  GTECH_NOT U366 ( .A(n161), .Z(n332) );
  GTECH_NOT U367 ( .A(update_period[11]), .Z(n331) );
  GTECH_NAND2 U368 ( .A(n333), .B(n334), .Z(n326) );
  GTECH_NOT U369 ( .A(n172), .Z(n334) );
  GTECH_NOT U370 ( .A(update_period[10]), .Z(n333) );
  GTECH_NAND2 U371 ( .A(n286), .B(n328), .Z(n330) );
  GTECH_NOT U372 ( .A(update_period[9]), .Z(n328) );
  GTECH_NOT U373 ( .A(n162), .Z(n286) );
  GTECH_OA22 U374 ( .A(n163), .B(update_period[8]), .C(n335), .D(n336), .Z(
        n322) );
  GTECH_OAI21 U375 ( .A(n294), .B(n337), .C(n338), .Z(n336) );
  GTECH_NAND3 U376 ( .A(n339), .B(update_period[6]), .C(n165), .Z(n338) );
  GTECH_AO22 U377 ( .A(n340), .B(n341), .C(n342), .D(n343), .Z(n335) );
  GTECH_ADD_ABC U378 ( .A(n344), .B(n166), .C(update_period[5]), .COUT(n343)
         );
  GTECH_AND2 U379 ( .A(update_period[4]), .B(n167), .Z(n344) );
  GTECH_OA22 U380 ( .A(n166), .B(update_period[5]), .C(n345), .D(n346), .Z(
        n341) );
  GTECH_AND3 U381 ( .A(n347), .B(n348), .C(n349), .Z(n346) );
  GTECH_OAI21 U382 ( .A(n350), .B(n313), .C(n176), .Z(n348) );
  GTECH_NOT U383 ( .A(n170), .Z(n313) );
  GTECH_OA21 U384 ( .A(n169), .B(update_period[2]), .C(n351), .Z(n347) );
  GTECH_OR_NOT U385 ( .A(n170), .B(n350), .Z(n351) );
  GTECH_NAND2 U386 ( .A(update_period[0]), .B(n171), .Z(n350) );
  GTECH_OAI21 U387 ( .A(n310), .B(n352), .C(n353), .Z(n345) );
  GTECH_NAND3 U388 ( .A(n349), .B(update_period[2]), .C(n169), .Z(n353) );
  GTECH_NAND2 U389 ( .A(n352), .B(n310), .Z(n349) );
  GTECH_NOT U390 ( .A(update_period[3]), .Z(n352) );
  GTECH_NOT U391 ( .A(n168), .Z(n310) );
  GTECH_OA21 U392 ( .A(n167), .B(update_period[4]), .C(n342), .Z(n340) );
  GTECH_NOT U393 ( .A(n354), .Z(n342) );
  GTECH_OAI21 U394 ( .A(update_period[6]), .B(n165), .C(n339), .Z(n354) );
  GTECH_NAND2 U395 ( .A(n337), .B(n294), .Z(n339) );
  GTECH_NOT U396 ( .A(n164), .Z(n294) );
  GTECH_NOT U397 ( .A(update_period[7]), .Z(n337) );
  GTECH_AO21 U398 ( .A(period[2]), .B(n214), .C(reset), .Z(N11) );
  GTECH_AO21 U399 ( .A(period[1]), .B(n214), .C(reset), .Z(N10) );
  GTECH_NOT U400 ( .A(n215), .Z(n214) );
  GTECH_NAND2 U401 ( .A(period_load), .B(n188), .Z(n215) );
  GTECH_NOT U402 ( .A(reset), .Z(n188) );
endmodule

