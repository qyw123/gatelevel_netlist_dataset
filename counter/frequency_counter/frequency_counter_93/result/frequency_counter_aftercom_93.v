
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
         n81, n82, n163, n167, sub_85_carry_2_, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n184,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n82), .K(n82), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n82), .K(n82), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n82), .K(n82), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n82), .K(n82), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n82), .K(n82), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n82), .K(n82), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n82), .K(n82), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n82), .K(n82), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n82), .K(n82), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n82), .K(n82), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n82), .K(n82), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n184) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n82), .K(n82), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD2 edge_detect0_q0_reg ( .D(signal), .CP(clk), .CD(n81), .Q(
        edge_detect0_q0) );
  GTECH_FD2 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .CD(n81), .Q(
        edge_detect0_q1) );
  GTECH_FD2 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .CD(n81), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n82), .K(n82), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n182) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n82), .K(n82), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n181) );
  GTECH_FJK1S state_reg_0_ ( .J(n82), .K(n82), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n82), .K(n82), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n82), .K(n82), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n180) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n82), .K(n82), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n179) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n82), .K(n82), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n178) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n82), .K(n82), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n177) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n82), .K(n82), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n176) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n82), .K(n82), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n82), .K(n82), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n82), .K(n82), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n82), .K(n82), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n82), .K(n82), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n82), .K(n82), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n82), .K(n82), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n169) );
  GTECH_FJK1S update_digits_reg ( .J(n82), .K(n82), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n82), .K(n82), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n168) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n82), .K(n82), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n82), .K(n82), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n82), .K(n82), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n82), .K(n82), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n82), .K(n82), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n82), .K(n82), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n82), .K(n82), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n82), .K(n82), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n82), .K(n82), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n82), .K(n82), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n82), .K(n82), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n82), .K(n82), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD2 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .CD(
        n81), .Q(digit), .QN(n163) );
  GTECH_ZERO U176 ( .Z(n82) );
  GTECH_ONE U177 ( .Z(n81) );
  GTECH_NAND2 U178 ( .A(n15), .B(n195), .Z(seven_segment0_N9) );
  GTECH_AND2 U179 ( .A(ten_count[0]), .B(n195), .Z(seven_segment0_N8) );
  GTECH_AND2 U180 ( .A(n163), .B(n195), .Z(seven_segment0_N6) );
  GTECH_AND2 U181 ( .A(unit_count[3]), .B(n195), .Z(seven_segment0_N22) );
  GTECH_AND2 U182 ( .A(unit_count[2]), .B(n195), .Z(seven_segment0_N20) );
  GTECH_AND2 U183 ( .A(unit_count[1]), .B(n195), .Z(seven_segment0_N18) );
  GTECH_AND2 U184 ( .A(unit_count[0]), .B(n195), .Z(seven_segment0_N16) );
  GTECH_AND2 U185 ( .A(ten_count[3]), .B(n195), .Z(seven_segment0_N14) );
  GTECH_AND2 U186 ( .A(ten_count[2]), .B(n195), .Z(seven_segment0_N12) );
  GTECH_AND2 U187 ( .A(ten_count[1]), .B(n195), .Z(seven_segment0_N10) );
  GTECH_NAND2 U188 ( .A(n196), .B(n197), .Z(segments[6]) );
  GTECH_NAND3 U189 ( .A(n197), .B(n198), .C(n199), .Z(segments[3]) );
  GTECH_NOT U190 ( .A(segments[4]), .Z(n198) );
  GTECH_OAI21 U191 ( .A(n200), .B(n201), .C(n202), .Z(segments[4]) );
  GTECH_NAND2 U192 ( .A(n203), .B(n204), .Z(segments[2]) );
  GTECH_NOT U193 ( .A(segments[5]), .Z(n204) );
  GTECH_NAND2 U194 ( .A(n196), .B(n202), .Z(segments[5]) );
  GTECH_AND2 U195 ( .A(n205), .B(n206), .Z(n196) );
  GTECH_NAND3 U196 ( .A(n207), .B(n208), .C(n209), .Z(n206) );
  GTECH_NAND3 U197 ( .A(n210), .B(n197), .C(n203), .Z(segments[1]) );
  GTECH_NOT U198 ( .A(n211), .Z(n203) );
  GTECH_NAND2 U199 ( .A(n212), .B(n213), .Z(n211) );
  GTECH_NAND3 U200 ( .A(n214), .B(n207), .C(n209), .Z(n210) );
  GTECH_NAND4 U201 ( .A(n205), .B(n212), .C(n197), .D(n202), .Z(segments[0])
         );
  GTECH_NAND2 U202 ( .A(n215), .B(n209), .Z(n202) );
  GTECH_NOT U203 ( .A(n200), .Z(n209) );
  GTECH_NOT U204 ( .A(n213), .Z(n215) );
  GTECH_NAND2 U205 ( .A(n216), .B(n217), .Z(n197) );
  GTECH_NAND2 U206 ( .A(n200), .B(n216), .Z(n212) );
  GTECH_NOT U207 ( .A(n201), .Z(n216) );
  GTECH_NAND2 U208 ( .A(n218), .B(n207), .Z(n201) );
  GTECH_NOT U209 ( .A(n219), .Z(n205) );
  GTECH_OAI21 U210 ( .A(n207), .B(n213), .C(n199), .Z(n219) );
  GTECH_NAND4 U211 ( .A(n200), .B(n208), .C(n214), .D(n207), .Z(n199) );
  GTECH_MUX2 U212 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n163), .Z(n200) );
  GTECH_NAND2 U213 ( .A(n217), .B(n214), .Z(n213) );
  GTECH_NOT U214 ( .A(n218), .Z(n214) );
  GTECH_MUX2 U215 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n163), .Z(n218) );
  GTECH_NOT U216 ( .A(n208), .Z(n217) );
  GTECH_MUX2 U217 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n163), .Z(n208) );
  GTECH_NOT U218 ( .A(n220), .Z(n207) );
  GTECH_MUX2 U219 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n163), .Z(n220) );
  GTECH_AO21 U220 ( .A(period[0]), .B(n221), .C(reset), .Z(N9) );
  GTECH_AND2 U221 ( .A(period[11]), .B(n221), .Z(N21) );
  GTECH_NAND2 U222 ( .A(n195), .B(n222), .Z(N20) );
  GTECH_AO21 U223 ( .A(period[10]), .B(n221), .C(reset), .Z(N19) );
  GTECH_AND2 U224 ( .A(period[9]), .B(n221), .Z(N18) );
  GTECH_AND2 U225 ( .A(period[8]), .B(n221), .Z(N17) );
  GTECH_AND2 U226 ( .A(N170), .B(n223), .Z(N168) );
  GTECH_NAND2 U227 ( .A(n224), .B(n225), .Z(N167) );
  GTECH_AND2 U228 ( .A(N170), .B(n226), .Z(N166) );
  GTECH_AND2 U229 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U230 ( .A(N170), .B(n227), .Z(N162) );
  GTECH_NOT U231 ( .A(n228), .Z(N170) );
  GTECH_NAND2 U232 ( .A(n229), .B(n195), .Z(n228) );
  GTECH_NOT U233 ( .A(n225), .Z(n229) );
  GTECH_OAI22 U234 ( .A(n230), .B(n231), .C(n232), .D(n233), .Z(N160) );
  GTECH_MUX2 U235 ( .A(n230), .B(n234), .S(ten_count[2]), .Z(n233) );
  GTECH_NAND2 U236 ( .A(n235), .B(n230), .Z(n234) );
  GTECH_NOT U237 ( .A(ten_count[3]), .Z(n230) );
  GTECH_AO21 U238 ( .A(period[7]), .B(n221), .C(reset), .Z(N16) );
  GTECH_OAI21 U239 ( .A(n236), .B(n237), .C(n238), .Z(N159) );
  GTECH_MUX2 U240 ( .A(n239), .B(n240), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U241 ( .A(n231), .Z(n240) );
  GTECH_NAND2 U242 ( .A(N152), .B(n241), .Z(n231) );
  GTECH_AND2 U243 ( .A(N152), .B(n235), .Z(n239) );
  GTECH_NOT U244 ( .A(n241), .Z(n235) );
  GTECH_NAND2 U245 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n241) );
  GTECH_MUX2 U246 ( .A(n242), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U247 ( .A(N152), .B(ten_count[0]), .Z(n242) );
  GTECH_NOT U248 ( .A(n243), .Z(N154) );
  GTECH_NAND2 U249 ( .A(N152), .B(n244), .Z(n243) );
  GTECH_NOT U250 ( .A(ten_count[0]), .Z(n244) );
  GTECH_NAND2 U251 ( .A(n245), .B(n167), .Z(N151) );
  GTECH_OA21 U252 ( .A(n14), .B(n246), .C(n224), .Z(n245) );
  GTECH_NOT U253 ( .A(n247), .Z(n224) );
  GTECH_OAI21 U254 ( .A(n248), .B(n236), .C(n195), .Z(n247) );
  GTECH_AND2 U255 ( .A(period[6]), .B(n221), .Z(N15) );
  GTECH_OAI21 U256 ( .A(n232), .B(n246), .C(n249), .Z(N148) );
  GTECH_MUX2 U257 ( .A(n250), .B(n251), .S(n181), .Z(n249) );
  GTECH_OR3 U258 ( .A(n182), .B(n252), .C(n253), .Z(n251) );
  GTECH_AND_NOT U259 ( .A(n254), .B(n255), .Z(n250) );
  GTECH_MUX2 U260 ( .A(n232), .B(n252), .S(n182), .Z(n254) );
  GTECH_NAND3 U261 ( .A(n256), .B(n225), .C(n238), .Z(N147) );
  GTECH_AND2 U262 ( .A(n195), .B(n257), .Z(n238) );
  GTECH_NAND3 U263 ( .A(n248), .B(n167), .C(n246), .Z(n257) );
  GTECH_NAND4 U264 ( .A(n182), .B(n181), .C(n168), .D(n258), .Z(n246) );
  GTECH_NAND2 U265 ( .A(n14), .B(n259), .Z(n225) );
  GTECH_NOT U266 ( .A(n167), .Z(n259) );
  GTECH_NAND3 U267 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n256) );
  GTECH_MUX2 U268 ( .A(n255), .B(n260), .S(n182), .Z(N146) );
  GTECH_OAI21 U269 ( .A(n253), .B(n252), .C(n261), .Z(n260) );
  GTECH_OAI21 U270 ( .A(n262), .B(n252), .C(n263), .Z(n255) );
  GTECH_AO21 U271 ( .A(n258), .B(n168), .C(n232), .Z(n263) );
  GTECH_NOT U272 ( .A(n253), .Z(n262) );
  GTECH_NAND3 U273 ( .A(n264), .B(n223), .C(n265), .Z(n253) );
  GTECH_NOT U274 ( .A(n168), .Z(n264) );
  GTECH_NAND2 U275 ( .A(n266), .B(n261), .Z(N144) );
  GTECH_NAND3 U276 ( .A(N152), .B(n258), .C(n168), .Z(n261) );
  GTECH_MUX2 U277 ( .A(n267), .B(n268), .S(n168), .Z(n266) );
  GTECH_NAND3 U278 ( .A(n265), .B(n223), .C(N150), .Z(n268) );
  GTECH_OA21 U279 ( .A(n232), .B(n258), .C(n269), .Z(n267) );
  GTECH_OAI21 U280 ( .A(n22), .B(n270), .C(N150), .Z(n269) );
  GTECH_NAND2 U281 ( .A(n271), .B(n223), .Z(n258) );
  GTECH_NOT U282 ( .A(n22), .Z(n223) );
  GTECH_OAI21 U283 ( .A(n252), .B(n272), .C(n273), .Z(N142) );
  GTECH_MUX2 U284 ( .A(n274), .B(n275), .S(n22), .Z(n273) );
  GTECH_NAND2 U285 ( .A(N152), .B(n271), .Z(n275) );
  GTECH_XOR2 U286 ( .A(n22), .B(n265), .Z(n272) );
  GTECH_NOT U287 ( .A(n270), .Z(n265) );
  GTECH_NAND3 U288 ( .A(n227), .B(n226), .C(sub_85_carry_2_), .Z(n270) );
  GTECH_NOT U289 ( .A(n20), .Z(n226) );
  GTECH_NAND2 U290 ( .A(n276), .B(n274), .Z(N140) );
  GTECH_NAND2 U291 ( .A(n277), .B(N152), .Z(n274) );
  GTECH_NOT U292 ( .A(n232), .Z(N152) );
  GTECH_NOT U293 ( .A(n271), .Z(n277) );
  GTECH_NAND2 U294 ( .A(n20), .B(n278), .Z(n271) );
  GTECH_NOT U295 ( .A(sub_85_carry_2_), .Z(n278) );
  GTECH_MUX2 U296 ( .A(n279), .B(n280), .S(n20), .Z(n276) );
  GTECH_NAND3 U297 ( .A(sub_85_carry_2_), .B(n227), .C(N150), .Z(n280) );
  GTECH_NOT U298 ( .A(n16), .Z(n227) );
  GTECH_AND2 U299 ( .A(n281), .B(n282), .Z(n279) );
  GTECH_MUX2 U300 ( .A(n252), .B(n232), .S(sub_85_carry_2_), .Z(n281) );
  GTECH_AO21 U301 ( .A(period[5]), .B(n221), .C(reset), .Z(N14) );
  GTECH_MUX2 U302 ( .A(n283), .B(n284), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U303 ( .A(n282), .Z(n284) );
  GTECH_OAI21 U304 ( .A(n16), .B(n252), .C(n232), .Z(n283) );
  GTECH_OAI21 U305 ( .A(n16), .B(n232), .C(n282), .Z(N136) );
  GTECH_NAND2 U306 ( .A(n16), .B(N150), .Z(n282) );
  GTECH_NOT U307 ( .A(n252), .Z(N150) );
  GTECH_NAND2 U308 ( .A(n285), .B(n195), .Z(n252) );
  GTECH_NOT U309 ( .A(n237), .Z(n285) );
  GTECH_NAND2 U310 ( .A(n167), .B(n286), .Z(n232) );
  GTECH_NOT U311 ( .A(N169), .Z(n286) );
  GTECH_NAND2 U312 ( .A(n195), .B(n248), .Z(N169) );
  GTECH_NOT U313 ( .A(n14), .Z(n248) );
  GTECH_AND2 U314 ( .A(n287), .B(n288), .Z(N134) );
  GTECH_OAI21 U315 ( .A(n180), .B(n289), .C(n169), .Z(n288) );
  GTECH_NAND2 U316 ( .A(n195), .B(n237), .Z(N133) );
  GTECH_NAND2 U317 ( .A(n167), .B(n14), .Z(n237) );
  GTECH_AND2 U318 ( .A(n290), .B(n287), .Z(N132) );
  GTECH_XOR2 U319 ( .A(n289), .B(n180), .Z(n290) );
  GTECH_NAND2 U320 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_NOT U321 ( .A(n293), .Z(n291) );
  GTECH_AND2 U322 ( .A(n294), .B(n287), .Z(N130) );
  GTECH_XOR2 U323 ( .A(n293), .B(n170), .Z(n294) );
  GTECH_NAND2 U324 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_NOT U325 ( .A(n171), .Z(n296) );
  GTECH_NOT U326 ( .A(n297), .Z(n295) );
  GTECH_AND2 U327 ( .A(period[4]), .B(n221), .Z(N13) );
  GTECH_AND2 U328 ( .A(n298), .B(n287), .Z(N128) );
  GTECH_XOR2 U329 ( .A(n297), .B(n171), .Z(n298) );
  GTECH_NAND2 U330 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U331 ( .A(n301), .Z(n299) );
  GTECH_AND2 U332 ( .A(n302), .B(n287), .Z(N126) );
  GTECH_XOR2 U333 ( .A(n301), .B(n172), .Z(n302) );
  GTECH_NAND2 U334 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U335 ( .A(n173), .Z(n304) );
  GTECH_NOT U336 ( .A(n305), .Z(n303) );
  GTECH_AND2 U337 ( .A(n306), .B(n287), .Z(N124) );
  GTECH_XOR2 U338 ( .A(n305), .B(n173), .Z(n306) );
  GTECH_NAND2 U339 ( .A(n307), .B(n308), .Z(n305) );
  GTECH_NOT U340 ( .A(n174), .Z(n308) );
  GTECH_NOT U341 ( .A(n309), .Z(n307) );
  GTECH_AND2 U342 ( .A(n310), .B(n287), .Z(N122) );
  GTECH_XOR2 U343 ( .A(n309), .B(n174), .Z(n310) );
  GTECH_NAND2 U344 ( .A(n311), .B(n312), .Z(n309) );
  GTECH_NOT U345 ( .A(n175), .Z(n312) );
  GTECH_NOT U346 ( .A(n313), .Z(n311) );
  GTECH_AND2 U347 ( .A(n314), .B(n287), .Z(N120) );
  GTECH_XOR2 U348 ( .A(n313), .B(n175), .Z(n314) );
  GTECH_NAND2 U349 ( .A(n315), .B(n316), .Z(n313) );
  GTECH_NOT U350 ( .A(n317), .Z(n315) );
  GTECH_AO21 U351 ( .A(period[3]), .B(n221), .C(reset), .Z(N12) );
  GTECH_AND2 U352 ( .A(n318), .B(n287), .Z(N118) );
  GTECH_XOR2 U353 ( .A(n317), .B(n176), .Z(n318) );
  GTECH_NAND3 U354 ( .A(n319), .B(n320), .C(n321), .Z(n317) );
  GTECH_NOT U355 ( .A(n177), .Z(n321) );
  GTECH_OAI22 U356 ( .A(n177), .B(n322), .C(n323), .D(n324), .Z(N116) );
  GTECH_MUX2 U357 ( .A(n319), .B(n325), .S(n177), .Z(n324) );
  GTECH_NAND2 U358 ( .A(n319), .B(n320), .Z(n325) );
  GTECH_MUX2 U359 ( .A(N112), .B(n326), .S(n178), .Z(N114) );
  GTECH_AND2 U360 ( .A(n287), .B(n320), .Z(n326) );
  GTECH_NOT U361 ( .A(n179), .Z(n320) );
  GTECH_NOT U362 ( .A(n322), .Z(N112) );
  GTECH_NAND2 U363 ( .A(n287), .B(n179), .Z(n322) );
  GTECH_NOT U364 ( .A(n323), .Z(n287) );
  GTECH_NAND2 U365 ( .A(n195), .B(n236), .Z(n323) );
  GTECH_NOT U366 ( .A(n327), .Z(n236) );
  GTECH_AOI222 U367 ( .A(n328), .B(n329), .C(update_period[11]), .D(n169), .E(
        n330), .F(n331), .Z(n327) );
  GTECH_OAI2N2 U368 ( .A(n332), .B(n333), .C(n334), .D(n335), .Z(n330) );
  GTECH_OAI21 U369 ( .A(n336), .B(n292), .C(n337), .Z(n335) );
  GTECH_NAND3 U370 ( .A(n338), .B(update_period[8]), .C(n171), .Z(n337) );
  GTECH_AND3 U371 ( .A(n338), .B(n334), .C(n331), .Z(n329) );
  GTECH_NAND2 U372 ( .A(n339), .B(n340), .Z(n331) );
  GTECH_NOT U373 ( .A(n169), .Z(n340) );
  GTECH_NOT U374 ( .A(update_period[11]), .Z(n339) );
  GTECH_NAND2 U375 ( .A(n333), .B(n332), .Z(n334) );
  GTECH_NOT U376 ( .A(n180), .Z(n332) );
  GTECH_NOT U377 ( .A(update_period[10]), .Z(n333) );
  GTECH_NAND2 U378 ( .A(n292), .B(n336), .Z(n338) );
  GTECH_NOT U379 ( .A(update_period[9]), .Z(n336) );
  GTECH_NOT U380 ( .A(n170), .Z(n292) );
  GTECH_OA22 U381 ( .A(n171), .B(update_period[8]), .C(n341), .D(n342), .Z(
        n328) );
  GTECH_OAI21 U382 ( .A(n300), .B(n343), .C(n344), .Z(n342) );
  GTECH_NAND3 U383 ( .A(n345), .B(update_period[6]), .C(n173), .Z(n344) );
  GTECH_OAI2N2 U384 ( .A(n346), .B(n347), .C(n348), .D(n349), .Z(n341) );
  GTECH_ADD_ABC U385 ( .A(n350), .B(n174), .C(update_period[5]), .COUT(n349)
         );
  GTECH_AND2 U386 ( .A(update_period[4]), .B(n175), .Z(n350) );
  GTECH_OAI21 U387 ( .A(update_period[4]), .B(n175), .C(n348), .Z(n347) );
  GTECH_NOT U388 ( .A(n351), .Z(n348) );
  GTECH_OAI21 U389 ( .A(update_period[6]), .B(n173), .C(n345), .Z(n351) );
  GTECH_NAND2 U390 ( .A(n343), .B(n300), .Z(n345) );
  GTECH_NOT U391 ( .A(n172), .Z(n300) );
  GTECH_NOT U392 ( .A(update_period[7]), .Z(n343) );
  GTECH_OAI22 U393 ( .A(update_period[5]), .B(n174), .C(n352), .D(n353), .Z(
        n346) );
  GTECH_OAI21 U394 ( .A(n316), .B(n354), .C(n355), .Z(n353) );
  GTECH_NAND3 U395 ( .A(n356), .B(update_period[2]), .C(n177), .Z(n355) );
  GTECH_AND3 U396 ( .A(n357), .B(n358), .C(n356), .Z(n352) );
  GTECH_NAND2 U397 ( .A(n354), .B(n316), .Z(n356) );
  GTECH_NOT U398 ( .A(n176), .Z(n316) );
  GTECH_NOT U399 ( .A(update_period[3]), .Z(n354) );
  GTECH_OAI21 U400 ( .A(n359), .B(n319), .C(n184), .Z(n358) );
  GTECH_NOT U401 ( .A(n178), .Z(n319) );
  GTECH_OA22 U402 ( .A(n177), .B(update_period[2]), .C(n360), .D(n178), .Z(
        n357) );
  GTECH_NOT U403 ( .A(n359), .Z(n360) );
  GTECH_NAND2 U404 ( .A(update_period[0]), .B(n179), .Z(n359) );
  GTECH_AO21 U405 ( .A(period[2]), .B(n221), .C(reset), .Z(N11) );
  GTECH_AO21 U406 ( .A(period[1]), .B(n221), .C(reset), .Z(N10) );
  GTECH_NOT U407 ( .A(n222), .Z(n221) );
  GTECH_NAND2 U408 ( .A(period_load), .B(n195), .Z(n222) );
  GTECH_NOT U409 ( .A(reset), .Z(n195) );
endmodule

