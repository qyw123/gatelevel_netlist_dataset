
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
         n27, n28, n29, n31, n32, n33, n78, n79, n160, n163, sub_85_carry_2_,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n180, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354;
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
        .CP(clk), .Q(update_period[1]), .QN(n180) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n79), .K(n79), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD2 edge_detect0_q0_reg ( .D(signal), .CP(clk), .CD(n78), .Q(
        edge_detect0_q0) );
  GTECH_FD2 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .CD(n78), .Q(
        edge_detect0_q1) );
  GTECH_FD2 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .CD(n78), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n79), .K(n79), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n178) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n79), .K(n79), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n177) );
  GTECH_FJK1S state_reg_0_ ( .J(n79), .K(n79), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n79), .K(n79), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n163) );
  GTECH_FJK1S update_digits_reg ( .J(n79), .K(n79), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n79), .K(n79), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n176) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n79), .K(n79), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n79), .K(n79), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n79), .K(n79), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n79), .K(n79), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n79), .K(n79), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n79), .K(n79), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n79), .K(n79), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n79), .K(n79), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n79), .K(n79), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n79), .K(n79), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n79), .K(n79), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n165) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n79), .K(n79), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n164) );
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
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n28) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n29) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n32) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n33) );
  GTECH_FD2 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .CD(
        n78), .Q(digit), .QN(n160) );
  GTECH_ZERO U172 ( .Z(n79) );
  GTECH_ONE U173 ( .Z(n78) );
  GTECH_NAND2 U174 ( .A(n15), .B(n191), .Z(seven_segment0_N9) );
  GTECH_AND2 U175 ( .A(ten_count[0]), .B(n191), .Z(seven_segment0_N8) );
  GTECH_AND2 U176 ( .A(n160), .B(n191), .Z(seven_segment0_N6) );
  GTECH_AND2 U177 ( .A(unit_count[3]), .B(n191), .Z(seven_segment0_N22) );
  GTECH_AND2 U178 ( .A(unit_count[2]), .B(n191), .Z(seven_segment0_N20) );
  GTECH_AND2 U179 ( .A(unit_count[1]), .B(n191), .Z(seven_segment0_N18) );
  GTECH_AND2 U180 ( .A(unit_count[0]), .B(n191), .Z(seven_segment0_N16) );
  GTECH_AND2 U181 ( .A(ten_count[3]), .B(n191), .Z(seven_segment0_N14) );
  GTECH_AND2 U182 ( .A(ten_count[2]), .B(n191), .Z(seven_segment0_N12) );
  GTECH_AND2 U183 ( .A(ten_count[1]), .B(n191), .Z(seven_segment0_N10) );
  GTECH_NAND2 U184 ( .A(n192), .B(n193), .Z(segments[6]) );
  GTECH_OAI21 U185 ( .A(n194), .B(n195), .C(n196), .Z(segments[3]) );
  GTECH_AND_NOT U186 ( .A(n197), .B(segments[4]), .Z(n196) );
  GTECH_OAI21 U187 ( .A(n198), .B(n195), .C(n199), .Z(segments[4]) );
  GTECH_NAND2 U188 ( .A(n200), .B(n201), .Z(segments[2]) );
  GTECH_NOT U189 ( .A(segments[5]), .Z(n201) );
  GTECH_NAND2 U190 ( .A(n202), .B(n193), .Z(segments[5]) );
  GTECH_OA21 U191 ( .A(n203), .B(n204), .C(n197), .Z(n193) );
  GTECH_OR_NOT U192 ( .A(n198), .B(n205), .Z(n204) );
  GTECH_OA21 U193 ( .A(n205), .B(n206), .C(n199), .Z(n202) );
  GTECH_NOT U194 ( .A(n207), .Z(n200) );
  GTECH_OR3 U195 ( .A(n208), .B(n209), .C(n207), .Z(segments[1]) );
  GTECH_NAND2 U196 ( .A(n210), .B(n206), .Z(n207) );
  GTECH_AND3 U197 ( .A(n205), .B(n211), .C(n212), .Z(n208) );
  GTECH_NAND4 U198 ( .A(n192), .B(n210), .C(n199), .D(n197), .Z(segments[0])
         );
  GTECH_NAND4 U199 ( .A(n212), .B(n198), .C(n205), .D(n194), .Z(n197) );
  GTECH_NAND2 U200 ( .A(n213), .B(n211), .Z(n199) );
  GTECH_NOT U201 ( .A(n198), .Z(n211) );
  GTECH_NOT U202 ( .A(n206), .Z(n213) );
  GTECH_NAND2 U203 ( .A(n198), .B(n214), .Z(n210) );
  GTECH_NOT U204 ( .A(n195), .Z(n214) );
  GTECH_MUX2 U205 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n160), .Z(n198) );
  GTECH_NOT U206 ( .A(n209), .Z(n192) );
  GTECH_OAI22 U207 ( .A(n205), .B(n206), .C(n194), .D(n195), .Z(n209) );
  GTECH_NAND2 U208 ( .A(n205), .B(n215), .Z(n195) );
  GTECH_NOT U209 ( .A(n212), .Z(n215) );
  GTECH_NOT U210 ( .A(n203), .Z(n194) );
  GTECH_NAND2 U211 ( .A(n212), .B(n203), .Z(n206) );
  GTECH_MUX2 U212 ( .A(n32), .B(n28), .S(n160), .Z(n203) );
  GTECH_MUX2 U213 ( .A(n31), .B(n27), .S(n160), .Z(n212) );
  GTECH_MUX2 U214 ( .A(n33), .B(n29), .S(n160), .Z(n205) );
  GTECH_AO21 U215 ( .A(period[0]), .B(n216), .C(reset), .Z(N9) );
  GTECH_AND2 U216 ( .A(period[11]), .B(n216), .Z(N21) );
  GTECH_NAND2 U217 ( .A(n191), .B(n217), .Z(N20) );
  GTECH_AO21 U218 ( .A(period[10]), .B(n216), .C(reset), .Z(N19) );
  GTECH_AND2 U219 ( .A(period[9]), .B(n216), .Z(N18) );
  GTECH_AND2 U220 ( .A(period[8]), .B(n216), .Z(N17) );
  GTECH_AND2 U221 ( .A(N170), .B(n218), .Z(N168) );
  GTECH_NAND2 U222 ( .A(n219), .B(n220), .Z(N167) );
  GTECH_AND2 U223 ( .A(N170), .B(n221), .Z(N166) );
  GTECH_NOT U224 ( .A(n20), .Z(n221) );
  GTECH_AND2 U225 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U226 ( .A(N170), .B(n222), .Z(N162) );
  GTECH_NOT U227 ( .A(n16), .Z(n222) );
  GTECH_NOT U228 ( .A(n223), .Z(N170) );
  GTECH_NAND2 U229 ( .A(n224), .B(n191), .Z(n223) );
  GTECH_OAI22 U230 ( .A(n225), .B(n226), .C(n227), .D(n228), .Z(N160) );
  GTECH_MUX2 U231 ( .A(n225), .B(n229), .S(ten_count[2]), .Z(n228) );
  GTECH_NAND2 U232 ( .A(n230), .B(n225), .Z(n229) );
  GTECH_NOT U233 ( .A(ten_count[3]), .Z(n225) );
  GTECH_AO21 U234 ( .A(period[7]), .B(n216), .C(reset), .Z(N16) );
  GTECH_OAI21 U235 ( .A(n231), .B(n232), .C(n233), .Z(N159) );
  GTECH_NOT U236 ( .A(n234), .Z(n233) );
  GTECH_MUX2 U237 ( .A(n235), .B(n236), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U238 ( .A(n226), .Z(n236) );
  GTECH_NAND2 U239 ( .A(N152), .B(n237), .Z(n226) );
  GTECH_AND2 U240 ( .A(N152), .B(n230), .Z(n235) );
  GTECH_NOT U241 ( .A(n237), .Z(n230) );
  GTECH_NAND2 U242 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n237) );
  GTECH_MUX2 U243 ( .A(n238), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U244 ( .A(N152), .B(ten_count[0]), .Z(n238) );
  GTECH_NOT U245 ( .A(n239), .Z(N154) );
  GTECH_NAND2 U246 ( .A(N152), .B(n240), .Z(n239) );
  GTECH_NOT U247 ( .A(ten_count[0]), .Z(n240) );
  GTECH_NAND2 U248 ( .A(n241), .B(n163), .Z(N151) );
  GTECH_OA21 U249 ( .A(n14), .B(n242), .C(n219), .Z(n241) );
  GTECH_NOT U250 ( .A(n243), .Z(n219) );
  GTECH_OAI21 U251 ( .A(n244), .B(n231), .C(n191), .Z(n243) );
  GTECH_AND2 U252 ( .A(period[6]), .B(n216), .Z(N15) );
  GTECH_OAI21 U253 ( .A(n227), .B(n242), .C(n245), .Z(N148) );
  GTECH_MUX2 U254 ( .A(n246), .B(n247), .S(n177), .Z(n245) );
  GTECH_OR3 U255 ( .A(n248), .B(n249), .C(n178), .Z(n247) );
  GTECH_AND_NOT U256 ( .A(n250), .B(n251), .Z(n246) );
  GTECH_MUX2 U257 ( .A(n227), .B(n249), .S(n178), .Z(n250) );
  GTECH_OR3 U258 ( .A(n224), .B(n252), .C(n234), .Z(N147) );
  GTECH_OAI21 U259 ( .A(n14), .B(n253), .C(n191), .Z(n234) );
  GTECH_NAND2 U260 ( .A(n242), .B(n163), .Z(n253) );
  GTECH_NAND4 U261 ( .A(n178), .B(n177), .C(n164), .D(n254), .Z(n242) );
  GTECH_AND3 U262 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n252) );
  GTECH_NOT U263 ( .A(n220), .Z(n224) );
  GTECH_NAND2 U264 ( .A(n14), .B(n255), .Z(n220) );
  GTECH_NOT U265 ( .A(n163), .Z(n255) );
  GTECH_MUX2 U266 ( .A(n251), .B(n256), .S(n178), .Z(N146) );
  GTECH_OAI21 U267 ( .A(n248), .B(n249), .C(n257), .Z(n256) );
  GTECH_OAI21 U268 ( .A(n258), .B(n249), .C(n259), .Z(n251) );
  GTECH_OAI21 U269 ( .A(n260), .B(n261), .C(N152), .Z(n259) );
  GTECH_NOT U270 ( .A(n248), .Z(n258) );
  GTECH_OR3 U271 ( .A(n22), .B(n164), .C(n262), .Z(n248) );
  GTECH_NAND2 U272 ( .A(n263), .B(n257), .Z(N144) );
  GTECH_OR3 U273 ( .A(n260), .B(n227), .C(n261), .Z(n257) );
  GTECH_NOT U274 ( .A(n164), .Z(n261) );
  GTECH_NOT U275 ( .A(n254), .Z(n260) );
  GTECH_MUX2 U276 ( .A(n264), .B(n265), .S(n164), .Z(n263) );
  GTECH_OR3 U277 ( .A(n22), .B(n262), .C(n249), .Z(n265) );
  GTECH_OA21 U278 ( .A(n227), .B(n254), .C(n266), .Z(n264) );
  GTECH_OAI21 U279 ( .A(n22), .B(n262), .C(N150), .Z(n266) );
  GTECH_NAND2 U280 ( .A(n267), .B(n218), .Z(n254) );
  GTECH_NOT U281 ( .A(n22), .Z(n218) );
  GTECH_OAI21 U282 ( .A(n249), .B(n268), .C(n269), .Z(N142) );
  GTECH_MUX2 U283 ( .A(n270), .B(n271), .S(n22), .Z(n269) );
  GTECH_NAND2 U284 ( .A(N152), .B(n267), .Z(n271) );
  GTECH_XNOR2 U285 ( .A(n22), .B(n262), .Z(n268) );
  GTECH_OR3 U286 ( .A(n20), .B(n16), .C(n272), .Z(n262) );
  GTECH_NAND2 U287 ( .A(n273), .B(n270), .Z(N140) );
  GTECH_NAND2 U288 ( .A(n274), .B(N152), .Z(n270) );
  GTECH_NOT U289 ( .A(n227), .Z(N152) );
  GTECH_NOT U290 ( .A(n267), .Z(n274) );
  GTECH_NAND2 U291 ( .A(n20), .B(n272), .Z(n267) );
  GTECH_MUX2 U292 ( .A(n275), .B(n276), .S(n20), .Z(n273) );
  GTECH_OR3 U293 ( .A(n16), .B(n272), .C(n249), .Z(n276) );
  GTECH_NOT U294 ( .A(sub_85_carry_2_), .Z(n272) );
  GTECH_AND2 U295 ( .A(n277), .B(n278), .Z(n275) );
  GTECH_MUX2 U296 ( .A(n249), .B(n227), .S(sub_85_carry_2_), .Z(n277) );
  GTECH_AO21 U297 ( .A(period[5]), .B(n216), .C(reset), .Z(N14) );
  GTECH_MUX2 U298 ( .A(n279), .B(n280), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U299 ( .A(n278), .Z(n280) );
  GTECH_OAI21 U300 ( .A(n16), .B(n249), .C(n227), .Z(n279) );
  GTECH_OAI21 U301 ( .A(n16), .B(n227), .C(n278), .Z(N136) );
  GTECH_NAND2 U302 ( .A(n16), .B(N150), .Z(n278) );
  GTECH_NOT U303 ( .A(n249), .Z(N150) );
  GTECH_NAND2 U304 ( .A(n281), .B(n191), .Z(n249) );
  GTECH_NOT U305 ( .A(n232), .Z(n281) );
  GTECH_NAND2 U306 ( .A(n163), .B(n282), .Z(n227) );
  GTECH_NOT U307 ( .A(N169), .Z(n282) );
  GTECH_NAND2 U308 ( .A(n191), .B(n244), .Z(N169) );
  GTECH_NOT U309 ( .A(n14), .Z(n244) );
  GTECH_AND2 U310 ( .A(n283), .B(n284), .Z(N134) );
  GTECH_OAI21 U311 ( .A(n176), .B(n285), .C(n165), .Z(n284) );
  GTECH_NAND2 U312 ( .A(n191), .B(n232), .Z(N133) );
  GTECH_NAND2 U313 ( .A(n163), .B(n14), .Z(n232) );
  GTECH_AND2 U314 ( .A(n286), .B(n283), .Z(N132) );
  GTECH_XOR2 U315 ( .A(n285), .B(n176), .Z(n286) );
  GTECH_NAND2 U316 ( .A(n287), .B(n288), .Z(n285) );
  GTECH_NOT U317 ( .A(n166), .Z(n288) );
  GTECH_NOT U318 ( .A(n289), .Z(n287) );
  GTECH_AND2 U319 ( .A(n290), .B(n283), .Z(N130) );
  GTECH_XOR2 U320 ( .A(n289), .B(n166), .Z(n290) );
  GTECH_NAND2 U321 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_NOT U322 ( .A(n167), .Z(n292) );
  GTECH_NOT U323 ( .A(n293), .Z(n291) );
  GTECH_AND2 U324 ( .A(period[4]), .B(n216), .Z(N13) );
  GTECH_AND2 U325 ( .A(n294), .B(n283), .Z(N128) );
  GTECH_XOR2 U326 ( .A(n293), .B(n167), .Z(n294) );
  GTECH_NAND2 U327 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_NOT U328 ( .A(n297), .Z(n295) );
  GTECH_AND2 U329 ( .A(n298), .B(n283), .Z(N126) );
  GTECH_XOR2 U330 ( .A(n297), .B(n168), .Z(n298) );
  GTECH_NAND2 U331 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U332 ( .A(n169), .Z(n300) );
  GTECH_NOT U333 ( .A(n301), .Z(n299) );
  GTECH_AND2 U334 ( .A(n302), .B(n283), .Z(N124) );
  GTECH_XOR2 U335 ( .A(n301), .B(n169), .Z(n302) );
  GTECH_NAND2 U336 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U337 ( .A(n170), .Z(n304) );
  GTECH_NOT U338 ( .A(n305), .Z(n303) );
  GTECH_AND2 U339 ( .A(n306), .B(n283), .Z(N122) );
  GTECH_XOR2 U340 ( .A(n305), .B(n170), .Z(n306) );
  GTECH_NAND2 U341 ( .A(n307), .B(n308), .Z(n305) );
  GTECH_NOT U342 ( .A(n171), .Z(n308) );
  GTECH_NOT U343 ( .A(n309), .Z(n307) );
  GTECH_AND2 U344 ( .A(n310), .B(n283), .Z(N120) );
  GTECH_XOR2 U345 ( .A(n309), .B(n171), .Z(n310) );
  GTECH_NAND2 U346 ( .A(n311), .B(n312), .Z(n309) );
  GTECH_NOT U347 ( .A(n313), .Z(n311) );
  GTECH_AO21 U348 ( .A(period[3]), .B(n216), .C(reset), .Z(N12) );
  GTECH_AND2 U349 ( .A(n314), .B(n283), .Z(N118) );
  GTECH_XOR2 U350 ( .A(n313), .B(n172), .Z(n314) );
  GTECH_OR3 U351 ( .A(n175), .B(n174), .C(n173), .Z(n313) );
  GTECH_OAI22 U352 ( .A(n173), .B(n315), .C(n316), .D(n317), .Z(N116) );
  GTECH_MUX2 U353 ( .A(n318), .B(n319), .S(n173), .Z(n317) );
  GTECH_NAND2 U354 ( .A(n318), .B(n320), .Z(n319) );
  GTECH_MUX2 U355 ( .A(N112), .B(n321), .S(n174), .Z(N114) );
  GTECH_AND2 U356 ( .A(n283), .B(n320), .Z(n321) );
  GTECH_NOT U357 ( .A(n175), .Z(n320) );
  GTECH_NOT U358 ( .A(n315), .Z(N112) );
  GTECH_NAND2 U359 ( .A(n283), .B(n175), .Z(n315) );
  GTECH_NOT U360 ( .A(n316), .Z(n283) );
  GTECH_NAND2 U361 ( .A(n231), .B(n191), .Z(n316) );
  GTECH_NOT U362 ( .A(n322), .Z(n231) );
  GTECH_AOI222 U363 ( .A(n323), .B(n324), .C(update_period[11]), .D(n165), .E(
        n325), .F(n326), .Z(n322) );
  GTECH_OAI2N2 U364 ( .A(n327), .B(n328), .C(n329), .D(n330), .Z(n325) );
  GTECH_AO22 U365 ( .A(update_period[8]), .B(n331), .C(n166), .D(
        update_period[9]), .Z(n330) );
  GTECH_OA21 U366 ( .A(n166), .B(update_period[9]), .C(n167), .Z(n331) );
  GTECH_OA21 U367 ( .A(n332), .B(n333), .C(n334), .Z(n324) );
  GTECH_AND2 U368 ( .A(n329), .B(n326), .Z(n334) );
  GTECH_NAND2 U369 ( .A(n335), .B(n336), .Z(n326) );
  GTECH_NOT U370 ( .A(update_period[11]), .Z(n336) );
  GTECH_NOT U371 ( .A(n165), .Z(n335) );
  GTECH_NAND2 U372 ( .A(n328), .B(n327), .Z(n329) );
  GTECH_NOT U373 ( .A(n176), .Z(n327) );
  GTECH_NOT U374 ( .A(update_period[10]), .Z(n328) );
  GTECH_OAI2N2 U375 ( .A(n296), .B(n337), .C(n338), .D(n339), .Z(n333) );
  GTECH_AND2 U376 ( .A(update_period[6]), .B(n169), .Z(n338) );
  GTECH_OAI2N2 U377 ( .A(n340), .B(n341), .C(n342), .D(n343), .Z(n332) );
  GTECH_ADD_ABC U378 ( .A(n344), .B(n170), .C(update_period[5]), .COUT(n343)
         );
  GTECH_AND2 U379 ( .A(update_period[4]), .B(n171), .Z(n344) );
  GTECH_OAI21 U380 ( .A(update_period[4]), .B(n171), .C(n342), .Z(n341) );
  GTECH_NOT U381 ( .A(n345), .Z(n342) );
  GTECH_OAI21 U382 ( .A(update_period[6]), .B(n169), .C(n339), .Z(n345) );
  GTECH_NAND2 U383 ( .A(n337), .B(n296), .Z(n339) );
  GTECH_NOT U384 ( .A(n168), .Z(n296) );
  GTECH_NOT U385 ( .A(update_period[7]), .Z(n337) );
  GTECH_OAI22 U386 ( .A(update_period[5]), .B(n170), .C(n346), .D(n347), .Z(
        n340) );
  GTECH_OAI2N2 U387 ( .A(n312), .B(n348), .C(n349), .D(n350), .Z(n347) );
  GTECH_AND2 U388 ( .A(n173), .B(update_period[2]), .Z(n349) );
  GTECH_AND3 U389 ( .A(n351), .B(n352), .C(n350), .Z(n346) );
  GTECH_NAND2 U390 ( .A(n348), .B(n312), .Z(n350) );
  GTECH_NOT U391 ( .A(n172), .Z(n312) );
  GTECH_NOT U392 ( .A(update_period[3]), .Z(n348) );
  GTECH_OAI21 U393 ( .A(n353), .B(n318), .C(n180), .Z(n352) );
  GTECH_NOT U394 ( .A(n174), .Z(n318) );
  GTECH_OA21 U395 ( .A(n173), .B(update_period[2]), .C(n354), .Z(n351) );
  GTECH_OR_NOT U396 ( .A(n174), .B(n353), .Z(n354) );
  GTECH_NAND2 U397 ( .A(update_period[0]), .B(n175), .Z(n353) );
  GTECH_OA22 U398 ( .A(n167), .B(update_period[8]), .C(n166), .D(
        update_period[9]), .Z(n323) );
  GTECH_AO21 U399 ( .A(period[2]), .B(n216), .C(reset), .Z(N11) );
  GTECH_AO21 U400 ( .A(period[1]), .B(n216), .C(reset), .Z(N10) );
  GTECH_NOT U401 ( .A(n217), .Z(n216) );
  GTECH_NAND2 U402 ( .A(period_load), .B(n191), .Z(n217) );
  GTECH_NOT U403 ( .A(reset), .Z(n191) );
endmodule

