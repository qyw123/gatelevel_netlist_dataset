
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
         seven_segment0_N8, seven_segment0_N6, n13, n14, n15, n16, n17, n21,
         n23, n27, n28, n32, n80, n81, n163, sub_85_carry_2_, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n181, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n81), .K(n81), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n81), .K(n81), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n81), .K(n81), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n81), .K(n81), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n81), .K(n81), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n81), .K(n81), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n81), .K(n81), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n81), .K(n81), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n81), .K(n81), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n81), .K(n81), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n81), .K(n81), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n181) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n81), .K(n81), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD2 edge_detect0_q0_reg ( .D(signal), .CP(clk), .CD(n80), .Q(
        edge_detect0_q0) );
  GTECH_FD2 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .CD(n80), .Q(
        edge_detect0_q1) );
  GTECH_FD2 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .CD(n80), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n81), .K(n81), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n179) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n81), .K(n81), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n178) );
  GTECH_FJK1S state_reg_0_ ( .J(n81), .K(n81), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n81), .K(n81), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n81), .K(n81), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n177) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n81), .K(n81), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n176) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n81), .K(n81), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n81), .K(n81), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n81), .K(n81), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n81), .K(n81), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n81), .K(n81), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n81), .K(n81), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n81), .K(n81), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n81), .K(n81), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n81), .K(n81), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n81), .K(n81), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n166) );
  GTECH_FJK1S update_digits_reg ( .J(n81), .K(n81), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n16) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n81), .K(n81), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n165) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n81), .K(n81), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n17) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n81), .K(n81), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n81), .K(n81), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n81), .K(n81), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n81), .K(n81), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n21) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n81), .K(n81), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n81), .K(n81), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n23) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n81), .K(n81), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n81), .K(n81), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n81), .K(n81), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n81), .K(n81), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n81), .K(n81), .TI(N160), .TE(N159), .CP(
        clk), .Q(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n28) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n32) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD2 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .CD(
        n80), .Q(digit), .QN(n163) );
  GTECH_ZERO U172 ( .Z(n81) );
  GTECH_ONE U173 ( .Z(n80) );
  GTECH_NAND2 U174 ( .A(n16), .B(n192), .Z(seven_segment0_N9) );
  GTECH_AND2 U175 ( .A(ten_count[0]), .B(n192), .Z(seven_segment0_N8) );
  GTECH_AND2 U176 ( .A(n163), .B(n192), .Z(seven_segment0_N6) );
  GTECH_AND2 U177 ( .A(unit_count[3]), .B(n192), .Z(seven_segment0_N22) );
  GTECH_AND2 U178 ( .A(unit_count[2]), .B(n192), .Z(seven_segment0_N20) );
  GTECH_AND2 U179 ( .A(unit_count[1]), .B(n192), .Z(seven_segment0_N18) );
  GTECH_AND2 U180 ( .A(unit_count[0]), .B(n192), .Z(seven_segment0_N16) );
  GTECH_AND2 U181 ( .A(n27), .B(n192), .Z(seven_segment0_N14) );
  GTECH_AND2 U182 ( .A(ten_count[2]), .B(n192), .Z(seven_segment0_N12) );
  GTECH_AND2 U183 ( .A(ten_count[1]), .B(n192), .Z(seven_segment0_N10) );
  GTECH_NAND3 U184 ( .A(n193), .B(n194), .C(n195), .Z(segments[6]) );
  GTECH_OAI21 U185 ( .A(n196), .B(n197), .C(n198), .Z(n193) );
  GTECH_NOT U186 ( .A(n199), .Z(n198) );
  GTECH_OAI21 U187 ( .A(n200), .B(n199), .C(n201), .Z(segments[3]) );
  GTECH_AND2 U188 ( .A(n202), .B(n203), .Z(n201) );
  GTECH_NOT U189 ( .A(segments[4]), .Z(n203) );
  GTECH_OAI21 U190 ( .A(n204), .B(n199), .C(n205), .Z(segments[4]) );
  GTECH_OAI21 U191 ( .A(n196), .B(n199), .C(n206), .Z(segments[2]) );
  GTECH_AND2 U192 ( .A(n207), .B(n208), .Z(n206) );
  GTECH_NOT U193 ( .A(segments[5]), .Z(n208) );
  GTECH_NAND3 U194 ( .A(n205), .B(n194), .C(n209), .Z(segments[5]) );
  GTECH_OA21 U195 ( .A(n210), .B(n199), .C(n195), .Z(n209) );
  GTECH_OAI21 U196 ( .A(n211), .B(n199), .C(n212), .Z(segments[1]) );
  GTECH_AND2 U197 ( .A(n207), .B(n194), .Z(n212) );
  GTECH_NAND3 U198 ( .A(n213), .B(n214), .C(n211), .Z(n194) );
  GTECH_NAND2 U199 ( .A(n215), .B(n195), .Z(segments[0]) );
  GTECH_NOT U200 ( .A(n216), .Z(n195) );
  GTECH_OAI21 U201 ( .A(n213), .B(n207), .C(n202), .Z(n216) );
  GTECH_NAND4 U202 ( .A(n200), .B(n204), .C(n213), .D(n214), .Z(n202) );
  GTECH_NOT U203 ( .A(n196), .Z(n204) );
  GTECH_OA21 U204 ( .A(n211), .B(n199), .C(n205), .Z(n215) );
  GTECH_NAND2 U205 ( .A(n217), .B(n196), .Z(n205) );
  GTECH_NOT U206 ( .A(n207), .Z(n217) );
  GTECH_NAND2 U207 ( .A(n214), .B(n197), .Z(n207) );
  GTECH_NOT U208 ( .A(n200), .Z(n197) );
  GTECH_NOT U209 ( .A(n218), .Z(n214) );
  GTECH_NAND2 U210 ( .A(n218), .B(n213), .Z(n199) );
  GTECH_NOT U211 ( .A(n219), .Z(n213) );
  GTECH_MUX2 U212 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n163), .Z(n219) );
  GTECH_MUX2 U213 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n163), .Z(n218) );
  GTECH_NOT U214 ( .A(n210), .Z(n211) );
  GTECH_NAND2 U215 ( .A(n200), .B(n196), .Z(n210) );
  GTECH_MUX2 U216 ( .A(n32), .B(n28), .S(n163), .Z(n196) );
  GTECH_MUX2 U217 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n163), .Z(n200) );
  GTECH_AO21 U218 ( .A(period[0]), .B(n220), .C(reset), .Z(N9) );
  GTECH_AND2 U219 ( .A(period[11]), .B(n220), .Z(N21) );
  GTECH_NAND2 U220 ( .A(n192), .B(n221), .Z(N20) );
  GTECH_AO21 U221 ( .A(period[10]), .B(n220), .C(reset), .Z(N19) );
  GTECH_AND2 U222 ( .A(period[9]), .B(n220), .Z(N18) );
  GTECH_AND2 U223 ( .A(period[8]), .B(n220), .Z(N17) );
  GTECH_AND2 U224 ( .A(N170), .B(n222), .Z(N168) );
  GTECH_NAND2 U225 ( .A(n223), .B(n224), .Z(N167) );
  GTECH_AND2 U226 ( .A(N170), .B(n225), .Z(N166) );
  GTECH_AND2 U227 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U228 ( .A(N170), .B(n226), .Z(N162) );
  GTECH_NOT U229 ( .A(n227), .Z(N170) );
  GTECH_NAND2 U230 ( .A(n228), .B(n192), .Z(n227) );
  GTECH_NOT U231 ( .A(n224), .Z(n228) );
  GTECH_OAI22 U232 ( .A(n229), .B(n230), .C(n231), .D(n232), .Z(N160) );
  GTECH_MUX2 U233 ( .A(n229), .B(n233), .S(ten_count[2]), .Z(n232) );
  GTECH_NAND2 U234 ( .A(n234), .B(n229), .Z(n233) );
  GTECH_NOT U235 ( .A(n27), .Z(n229) );
  GTECH_AO21 U236 ( .A(period[7]), .B(n220), .C(reset), .Z(N16) );
  GTECH_OAI21 U237 ( .A(n235), .B(n236), .C(n237), .Z(N159) );
  GTECH_MUX2 U238 ( .A(n238), .B(n239), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U239 ( .A(n230), .Z(n239) );
  GTECH_NAND2 U240 ( .A(N152), .B(n240), .Z(n230) );
  GTECH_AND2 U241 ( .A(N152), .B(n234), .Z(n238) );
  GTECH_NOT U242 ( .A(n240), .Z(n234) );
  GTECH_NAND2 U243 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n240) );
  GTECH_MUX2 U244 ( .A(n241), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U245 ( .A(N152), .B(ten_count[0]), .Z(n241) );
  GTECH_NOT U246 ( .A(n242), .Z(N154) );
  GTECH_NAND2 U247 ( .A(N152), .B(n243), .Z(n242) );
  GTECH_NOT U248 ( .A(ten_count[0]), .Z(n243) );
  GTECH_NAND2 U249 ( .A(n244), .B(n15), .Z(N151) );
  GTECH_OA21 U250 ( .A(n14), .B(n245), .C(n223), .Z(n244) );
  GTECH_NOT U251 ( .A(n246), .Z(n223) );
  GTECH_OAI21 U252 ( .A(n247), .B(n235), .C(n192), .Z(n246) );
  GTECH_AND2 U253 ( .A(period[6]), .B(n220), .Z(N15) );
  GTECH_OAI21 U254 ( .A(n231), .B(n245), .C(n248), .Z(N148) );
  GTECH_NOT U255 ( .A(n249), .Z(n248) );
  GTECH_MUX2 U256 ( .A(n250), .B(n251), .S(n178), .Z(n249) );
  GTECH_NOR3 U257 ( .A(n252), .B(n179), .C(n253), .Z(n251) );
  GTECH_OR_NOT U258 ( .A(n254), .B(n255), .Z(n250) );
  GTECH_MUX2 U259 ( .A(n231), .B(n253), .S(n179), .Z(n255) );
  GTECH_NAND3 U260 ( .A(n256), .B(n224), .C(n237), .Z(N147) );
  GTECH_AND2 U261 ( .A(n192), .B(n257), .Z(n237) );
  GTECH_NAND3 U262 ( .A(n247), .B(n15), .C(n245), .Z(n257) );
  GTECH_NAND4 U263 ( .A(n179), .B(n178), .C(n165), .D(n258), .Z(n245) );
  GTECH_NAND2 U264 ( .A(n14), .B(n259), .Z(n224) );
  GTECH_NOT U265 ( .A(n15), .Z(n259) );
  GTECH_NAND3 U266 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n256) );
  GTECH_MUX2 U267 ( .A(n254), .B(n260), .S(n179), .Z(N146) );
  GTECH_OAI21 U268 ( .A(n252), .B(n253), .C(n261), .Z(n260) );
  GTECH_OAI21 U269 ( .A(n262), .B(n253), .C(n263), .Z(n254) );
  GTECH_AO21 U270 ( .A(n258), .B(n165), .C(n231), .Z(n263) );
  GTECH_NOT U271 ( .A(n252), .Z(n262) );
  GTECH_NAND3 U272 ( .A(n264), .B(n222), .C(n265), .Z(n252) );
  GTECH_NOT U273 ( .A(n165), .Z(n264) );
  GTECH_NAND2 U274 ( .A(n266), .B(n261), .Z(N144) );
  GTECH_NAND3 U275 ( .A(N152), .B(n258), .C(n165), .Z(n261) );
  GTECH_MUX2 U276 ( .A(n267), .B(n268), .S(n165), .Z(n266) );
  GTECH_NAND3 U277 ( .A(n265), .B(n222), .C(N150), .Z(n268) );
  GTECH_OA21 U278 ( .A(n231), .B(n258), .C(n269), .Z(n267) );
  GTECH_OAI21 U279 ( .A(n23), .B(n270), .C(N150), .Z(n269) );
  GTECH_NAND2 U280 ( .A(n271), .B(n222), .Z(n258) );
  GTECH_NOT U281 ( .A(n23), .Z(n222) );
  GTECH_OAI21 U282 ( .A(n253), .B(n272), .C(n273), .Z(N142) );
  GTECH_MUX2 U283 ( .A(n274), .B(n275), .S(n23), .Z(n273) );
  GTECH_NAND2 U284 ( .A(N152), .B(n271), .Z(n275) );
  GTECH_XOR2 U285 ( .A(n23), .B(n265), .Z(n272) );
  GTECH_NOT U286 ( .A(n270), .Z(n265) );
  GTECH_NAND3 U287 ( .A(n226), .B(n225), .C(sub_85_carry_2_), .Z(n270) );
  GTECH_NOT U288 ( .A(n21), .Z(n225) );
  GTECH_NAND2 U289 ( .A(n276), .B(n274), .Z(N140) );
  GTECH_NAND2 U290 ( .A(n277), .B(N152), .Z(n274) );
  GTECH_NOT U291 ( .A(n231), .Z(N152) );
  GTECH_NOT U292 ( .A(n271), .Z(n277) );
  GTECH_NAND2 U293 ( .A(n21), .B(n278), .Z(n271) );
  GTECH_NOT U294 ( .A(sub_85_carry_2_), .Z(n278) );
  GTECH_MUX2 U295 ( .A(n279), .B(n280), .S(n21), .Z(n276) );
  GTECH_NAND3 U296 ( .A(sub_85_carry_2_), .B(n226), .C(N150), .Z(n280) );
  GTECH_NOT U297 ( .A(n17), .Z(n226) );
  GTECH_AND2 U298 ( .A(n281), .B(n282), .Z(n279) );
  GTECH_MUX2 U299 ( .A(n253), .B(n231), .S(sub_85_carry_2_), .Z(n281) );
  GTECH_AO21 U300 ( .A(period[5]), .B(n220), .C(reset), .Z(N14) );
  GTECH_MUX2 U301 ( .A(n283), .B(n284), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U302 ( .A(n282), .Z(n284) );
  GTECH_OAI21 U303 ( .A(n17), .B(n253), .C(n231), .Z(n283) );
  GTECH_OAI21 U304 ( .A(n17), .B(n231), .C(n282), .Z(N136) );
  GTECH_NAND2 U305 ( .A(n17), .B(N150), .Z(n282) );
  GTECH_NOT U306 ( .A(n253), .Z(N150) );
  GTECH_NAND2 U307 ( .A(n285), .B(n192), .Z(n253) );
  GTECH_NOT U308 ( .A(n236), .Z(n285) );
  GTECH_NAND2 U309 ( .A(n15), .B(n286), .Z(n231) );
  GTECH_NOT U310 ( .A(N169), .Z(n286) );
  GTECH_NAND2 U311 ( .A(n192), .B(n247), .Z(N169) );
  GTECH_NOT U312 ( .A(n14), .Z(n247) );
  GTECH_AND2 U313 ( .A(n287), .B(n288), .Z(N134) );
  GTECH_OAI21 U314 ( .A(n177), .B(n289), .C(n166), .Z(n288) );
  GTECH_NAND2 U315 ( .A(n192), .B(n236), .Z(N133) );
  GTECH_NAND2 U316 ( .A(n15), .B(n14), .Z(n236) );
  GTECH_AND2 U317 ( .A(n290), .B(n287), .Z(N132) );
  GTECH_XOR2 U318 ( .A(n289), .B(n177), .Z(n290) );
  GTECH_NAND2 U319 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_NOT U320 ( .A(n293), .Z(n291) );
  GTECH_AND2 U321 ( .A(n294), .B(n287), .Z(N130) );
  GTECH_XOR2 U322 ( .A(n293), .B(n167), .Z(n294) );
  GTECH_NAND2 U323 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_NOT U324 ( .A(n168), .Z(n296) );
  GTECH_NOT U325 ( .A(n297), .Z(n295) );
  GTECH_AND2 U326 ( .A(period[4]), .B(n220), .Z(N13) );
  GTECH_AND2 U327 ( .A(n298), .B(n287), .Z(N128) );
  GTECH_XOR2 U328 ( .A(n297), .B(n168), .Z(n298) );
  GTECH_NAND2 U329 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U330 ( .A(n301), .Z(n299) );
  GTECH_AND2 U331 ( .A(n302), .B(n287), .Z(N126) );
  GTECH_XOR2 U332 ( .A(n301), .B(n169), .Z(n302) );
  GTECH_NAND2 U333 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U334 ( .A(n170), .Z(n304) );
  GTECH_NOT U335 ( .A(n305), .Z(n303) );
  GTECH_AND2 U336 ( .A(n306), .B(n287), .Z(N124) );
  GTECH_XOR2 U337 ( .A(n305), .B(n170), .Z(n306) );
  GTECH_NAND2 U338 ( .A(n307), .B(n308), .Z(n305) );
  GTECH_NOT U339 ( .A(n171), .Z(n308) );
  GTECH_NOT U340 ( .A(n309), .Z(n307) );
  GTECH_AND2 U341 ( .A(n310), .B(n287), .Z(N122) );
  GTECH_XOR2 U342 ( .A(n309), .B(n171), .Z(n310) );
  GTECH_NAND2 U343 ( .A(n311), .B(n312), .Z(n309) );
  GTECH_NOT U344 ( .A(n172), .Z(n312) );
  GTECH_NOT U345 ( .A(n313), .Z(n311) );
  GTECH_AND2 U346 ( .A(n314), .B(n287), .Z(N120) );
  GTECH_XOR2 U347 ( .A(n313), .B(n172), .Z(n314) );
  GTECH_NAND2 U348 ( .A(n315), .B(n316), .Z(n313) );
  GTECH_NOT U349 ( .A(n317), .Z(n315) );
  GTECH_AO21 U350 ( .A(period[3]), .B(n220), .C(reset), .Z(N12) );
  GTECH_AND2 U351 ( .A(n318), .B(n287), .Z(N118) );
  GTECH_XOR2 U352 ( .A(n317), .B(n173), .Z(n318) );
  GTECH_NAND3 U353 ( .A(n319), .B(n320), .C(n321), .Z(n317) );
  GTECH_NOT U354 ( .A(n174), .Z(n321) );
  GTECH_OAI22 U355 ( .A(n174), .B(n322), .C(n323), .D(n324), .Z(N116) );
  GTECH_MUX2 U356 ( .A(n319), .B(n325), .S(n174), .Z(n324) );
  GTECH_NAND2 U357 ( .A(n319), .B(n320), .Z(n325) );
  GTECH_MUX2 U358 ( .A(N112), .B(n326), .S(n175), .Z(N114) );
  GTECH_AND2 U359 ( .A(n287), .B(n320), .Z(n326) );
  GTECH_NOT U360 ( .A(n176), .Z(n320) );
  GTECH_NOT U361 ( .A(n322), .Z(N112) );
  GTECH_NAND2 U362 ( .A(n287), .B(n176), .Z(n322) );
  GTECH_NOT U363 ( .A(n323), .Z(n287) );
  GTECH_NAND2 U364 ( .A(n235), .B(n192), .Z(n323) );
  GTECH_NOT U365 ( .A(n327), .Z(n235) );
  GTECH_AOI222 U366 ( .A(n328), .B(n329), .C(update_period[11]), .D(n166), .E(
        n330), .F(n331), .Z(n327) );
  GTECH_OAI2N2 U367 ( .A(n332), .B(n333), .C(n334), .D(n335), .Z(n330) );
  GTECH_OAI21 U368 ( .A(n336), .B(n292), .C(n337), .Z(n335) );
  GTECH_NAND3 U369 ( .A(n338), .B(update_period[8]), .C(n168), .Z(n337) );
  GTECH_AND3 U370 ( .A(n338), .B(n334), .C(n331), .Z(n329) );
  GTECH_NAND2 U371 ( .A(n339), .B(n340), .Z(n331) );
  GTECH_NOT U372 ( .A(n166), .Z(n340) );
  GTECH_NOT U373 ( .A(update_period[11]), .Z(n339) );
  GTECH_NAND2 U374 ( .A(n333), .B(n332), .Z(n334) );
  GTECH_NOT U375 ( .A(n177), .Z(n332) );
  GTECH_NOT U376 ( .A(update_period[10]), .Z(n333) );
  GTECH_NAND2 U377 ( .A(n292), .B(n336), .Z(n338) );
  GTECH_NOT U378 ( .A(update_period[9]), .Z(n336) );
  GTECH_NOT U379 ( .A(n167), .Z(n292) );
  GTECH_OA22 U380 ( .A(n168), .B(update_period[8]), .C(n341), .D(n342), .Z(
        n328) );
  GTECH_OAI21 U381 ( .A(n300), .B(n343), .C(n344), .Z(n342) );
  GTECH_NAND3 U382 ( .A(n345), .B(update_period[6]), .C(n170), .Z(n344) );
  GTECH_OAI2N2 U383 ( .A(n346), .B(n347), .C(n348), .D(n349), .Z(n341) );
  GTECH_ADD_ABC U384 ( .A(n350), .B(n171), .C(update_period[5]), .COUT(n349)
         );
  GTECH_AND2 U385 ( .A(update_period[4]), .B(n172), .Z(n350) );
  GTECH_OAI21 U386 ( .A(update_period[4]), .B(n172), .C(n348), .Z(n347) );
  GTECH_NOT U387 ( .A(n351), .Z(n348) );
  GTECH_OAI21 U388 ( .A(update_period[6]), .B(n170), .C(n345), .Z(n351) );
  GTECH_NAND2 U389 ( .A(n343), .B(n300), .Z(n345) );
  GTECH_NOT U390 ( .A(n169), .Z(n300) );
  GTECH_NOT U391 ( .A(update_period[7]), .Z(n343) );
  GTECH_OAI22 U392 ( .A(update_period[5]), .B(n171), .C(n352), .D(n353), .Z(
        n346) );
  GTECH_OAI21 U393 ( .A(n316), .B(n354), .C(n355), .Z(n353) );
  GTECH_NAND3 U394 ( .A(n356), .B(update_period[2]), .C(n174), .Z(n355) );
  GTECH_AND3 U395 ( .A(n357), .B(n358), .C(n356), .Z(n352) );
  GTECH_NAND2 U396 ( .A(n354), .B(n316), .Z(n356) );
  GTECH_NOT U397 ( .A(n173), .Z(n316) );
  GTECH_NOT U398 ( .A(update_period[3]), .Z(n354) );
  GTECH_OAI21 U399 ( .A(n359), .B(n319), .C(n181), .Z(n358) );
  GTECH_NOT U400 ( .A(n175), .Z(n319) );
  GTECH_OA21 U401 ( .A(n174), .B(update_period[2]), .C(n360), .Z(n357) );
  GTECH_OR_NOT U402 ( .A(n175), .B(n359), .Z(n360) );
  GTECH_NAND2 U403 ( .A(update_period[0]), .B(n176), .Z(n359) );
  GTECH_AO21 U404 ( .A(period[2]), .B(n220), .C(reset), .Z(N11) );
  GTECH_AO21 U405 ( .A(period[1]), .B(n220), .C(reset), .Z(N10) );
  GTECH_NOT U406 ( .A(n221), .Z(n220) );
  GTECH_NAND2 U407 ( .A(period_load), .B(n192), .Z(n221) );
  GTECH_NOT U408 ( .A(reset), .Z(n192) );
endmodule

