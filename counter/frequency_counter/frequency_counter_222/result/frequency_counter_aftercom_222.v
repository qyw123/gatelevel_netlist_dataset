
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
         n23, n27, n28, n30, n31, n32, n34, n84, n162, sub_85_carry_2_, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n181, n192, n193, n194, n195, n196, n197, n198,
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
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n84), .K(n84), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n84), .K(n84), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n84), .K(n84), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n84), .K(n84), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n84), .K(n84), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n84), .K(n84), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n84), .K(n84), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n84), .K(n84), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n84), .K(n84), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n84), .K(n84), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n84), .K(n84), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n181) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n84), .K(n84), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n84), .K(n84), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n179) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n84), .K(n84), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n178) );
  GTECH_FJK1S state_reg_0_ ( .J(n84), .K(n84), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n84), .K(n84), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n84), .K(n84), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n177) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n84), .K(n84), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n176) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n84), .K(n84), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n84), .K(n84), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n84), .K(n84), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n84), .K(n84), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n84), .K(n84), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n84), .K(n84), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n84), .K(n84), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n84), .K(n84), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n84), .K(n84), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n84), .K(n84), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n166) );
  GTECH_FJK1S update_digits_reg ( .J(n84), .K(n84), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n16) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n84), .K(n84), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n165) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n84), .K(n84), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n17) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n84), .K(n84), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n84), .K(n84), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n84), .K(n84), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n84), .K(n84), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n21) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n84), .K(n84), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n84), .K(n84), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n23) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n84), .K(n84), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n84), .K(n84), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n84), .K(n84), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n84), .K(n84), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n84), .K(n84), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n84), .K(n84), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n84), .K(n84), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n28) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n84), .K(n84), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n84), .K(n84), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n84), .K(n84), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n84), .K(n84), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n32) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n84), .K(n84), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n84), .K(n84), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n34) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n162) );
  GTECH_ZERO U173 ( .Z(n84) );
  GTECH_NAND2 U174 ( .A(n16), .B(n192), .Z(seven_segment0_N9) );
  GTECH_AND2 U175 ( .A(ten_count[0]), .B(n192), .Z(seven_segment0_N8) );
  GTECH_AND2 U176 ( .A(n162), .B(n192), .Z(seven_segment0_N6) );
  GTECH_AND2 U177 ( .A(unit_count[3]), .B(n192), .Z(seven_segment0_N22) );
  GTECH_AND2 U178 ( .A(unit_count[2]), .B(n192), .Z(seven_segment0_N20) );
  GTECH_AND2 U179 ( .A(unit_count[1]), .B(n192), .Z(seven_segment0_N18) );
  GTECH_AND2 U180 ( .A(unit_count[0]), .B(n192), .Z(seven_segment0_N16) );
  GTECH_AND2 U181 ( .A(ten_count[3]), .B(n192), .Z(seven_segment0_N14) );
  GTECH_AND2 U182 ( .A(ten_count[2]), .B(n192), .Z(seven_segment0_N12) );
  GTECH_AND2 U183 ( .A(ten_count[1]), .B(n192), .Z(seven_segment0_N10) );
  GTECH_NAND2 U184 ( .A(n193), .B(n194), .Z(segments[6]) );
  GTECH_NAND2 U185 ( .A(n193), .B(n195), .Z(segments[5]) );
  GTECH_NAND3 U186 ( .A(n196), .B(n197), .C(n194), .Z(segments[3]) );
  GTECH_NOT U187 ( .A(segments[4]), .Z(n197) );
  GTECH_OAI21 U188 ( .A(n198), .B(n199), .C(n195), .Z(segments[4]) );
  GTECH_NAND2 U189 ( .A(n200), .B(n193), .Z(segments[2]) );
  GTECH_AND2 U190 ( .A(n201), .B(n202), .Z(n193) );
  GTECH_NAND3 U191 ( .A(n203), .B(n204), .C(n205), .Z(n202) );
  GTECH_NAND3 U192 ( .A(n206), .B(n194), .C(n200), .Z(segments[1]) );
  GTECH_NOT U193 ( .A(n207), .Z(n200) );
  GTECH_NAND2 U194 ( .A(n208), .B(n209), .Z(n207) );
  GTECH_NAND3 U195 ( .A(n205), .B(n210), .C(n204), .Z(n206) );
  GTECH_NAND4 U196 ( .A(n201), .B(n208), .C(n195), .D(n194), .Z(segments[0])
         );
  GTECH_NAND2 U197 ( .A(n211), .B(n212), .Z(n194) );
  GTECH_NAND2 U198 ( .A(n204), .B(n213), .Z(n195) );
  GTECH_NOT U199 ( .A(n209), .Z(n213) );
  GTECH_NAND2 U200 ( .A(n211), .B(n199), .Z(n208) );
  GTECH_NOT U201 ( .A(n198), .Z(n211) );
  GTECH_NAND2 U202 ( .A(n205), .B(n214), .Z(n198) );
  GTECH_NOT U203 ( .A(n210), .Z(n214) );
  GTECH_NOT U204 ( .A(n215), .Z(n201) );
  GTECH_OAI21 U205 ( .A(n205), .B(n209), .C(n196), .Z(n215) );
  GTECH_NAND4 U206 ( .A(n210), .B(n203), .C(n205), .D(n199), .Z(n196) );
  GTECH_NOT U207 ( .A(n204), .Z(n199) );
  GTECH_MUX2 U208 ( .A(n31), .B(n27), .S(n162), .Z(n204) );
  GTECH_NAND2 U209 ( .A(n210), .B(n212), .Z(n209) );
  GTECH_NOT U210 ( .A(n203), .Z(n212) );
  GTECH_MUX2 U211 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n162), .Z(n203) );
  GTECH_MUX2 U212 ( .A(n32), .B(n28), .S(n162), .Z(n210) );
  GTECH_MUX2 U213 ( .A(n34), .B(n30), .S(n162), .Z(n205) );
  GTECH_NOT U214 ( .A(n216), .Z(N9) );
  GTECH_AOI21 U215 ( .A(period[0]), .B(n217), .C(reset), .Z(n216) );
  GTECH_AND2 U216 ( .A(period[11]), .B(n217), .Z(N21) );
  GTECH_NAND2 U217 ( .A(n192), .B(n218), .Z(N20) );
  GTECH_NOT U218 ( .A(n219), .Z(N19) );
  GTECH_AOI21 U219 ( .A(period[10]), .B(n217), .C(reset), .Z(n219) );
  GTECH_AND2 U220 ( .A(period[9]), .B(n217), .Z(N18) );
  GTECH_AND2 U221 ( .A(period[8]), .B(n217), .Z(N17) );
  GTECH_AND2 U222 ( .A(N170), .B(n220), .Z(N168) );
  GTECH_NAND2 U223 ( .A(n221), .B(n222), .Z(N167) );
  GTECH_AND2 U224 ( .A(N170), .B(n223), .Z(N166) );
  GTECH_AND2 U225 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U226 ( .A(N170), .B(n224), .Z(N162) );
  GTECH_NOT U227 ( .A(n225), .Z(N170) );
  GTECH_NAND2 U228 ( .A(n226), .B(n192), .Z(n225) );
  GTECH_NOT U229 ( .A(n222), .Z(n226) );
  GTECH_OAI22 U230 ( .A(n227), .B(n228), .C(n229), .D(n230), .Z(N160) );
  GTECH_MUX2 U231 ( .A(n227), .B(n231), .S(ten_count[2]), .Z(n230) );
  GTECH_NAND2 U232 ( .A(n232), .B(n227), .Z(n231) );
  GTECH_NOT U233 ( .A(ten_count[3]), .Z(n227) );
  GTECH_NOT U234 ( .A(n233), .Z(N16) );
  GTECH_AOI21 U235 ( .A(period[7]), .B(n217), .C(reset), .Z(n233) );
  GTECH_OAI21 U236 ( .A(n234), .B(n235), .C(n236), .Z(N159) );
  GTECH_MUX2 U237 ( .A(n237), .B(n238), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U238 ( .A(n228), .Z(n238) );
  GTECH_NAND2 U239 ( .A(N152), .B(n239), .Z(n228) );
  GTECH_AND2 U240 ( .A(N152), .B(n232), .Z(n237) );
  GTECH_NOT U241 ( .A(n239), .Z(n232) );
  GTECH_NAND2 U242 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n239) );
  GTECH_MUX2 U243 ( .A(n240), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U244 ( .A(N152), .B(ten_count[0]), .Z(n240) );
  GTECH_NOT U245 ( .A(n241), .Z(N154) );
  GTECH_NAND2 U246 ( .A(N152), .B(n242), .Z(n241) );
  GTECH_NOT U247 ( .A(ten_count[0]), .Z(n242) );
  GTECH_NAND2 U248 ( .A(n243), .B(n15), .Z(N151) );
  GTECH_OA21 U249 ( .A(n14), .B(n244), .C(n221), .Z(n243) );
  GTECH_NOT U250 ( .A(n245), .Z(n221) );
  GTECH_OAI21 U251 ( .A(n246), .B(n234), .C(n192), .Z(n245) );
  GTECH_AND2 U252 ( .A(period[6]), .B(n217), .Z(N15) );
  GTECH_OAI21 U253 ( .A(n229), .B(n244), .C(n247), .Z(N148) );
  GTECH_MUX2 U254 ( .A(n248), .B(n249), .S(n178), .Z(n247) );
  GTECH_OR3 U255 ( .A(n179), .B(n250), .C(n251), .Z(n249) );
  GTECH_AND_NOT U256 ( .A(n252), .B(n253), .Z(n248) );
  GTECH_MUX2 U257 ( .A(n229), .B(n250), .S(n179), .Z(n252) );
  GTECH_NAND3 U258 ( .A(n254), .B(n222), .C(n236), .Z(N147) );
  GTECH_AND2 U259 ( .A(n192), .B(n255), .Z(n236) );
  GTECH_NAND3 U260 ( .A(n246), .B(n15), .C(n244), .Z(n255) );
  GTECH_NAND4 U261 ( .A(n179), .B(n178), .C(n165), .D(n256), .Z(n244) );
  GTECH_NAND2 U262 ( .A(n14), .B(n257), .Z(n222) );
  GTECH_NOT U263 ( .A(n15), .Z(n257) );
  GTECH_NAND3 U264 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n254) );
  GTECH_MUX2 U265 ( .A(n253), .B(n258), .S(n179), .Z(N146) );
  GTECH_OAI21 U266 ( .A(n251), .B(n250), .C(n259), .Z(n258) );
  GTECH_OAI22 U267 ( .A(n260), .B(n229), .C(n261), .D(n250), .Z(n253) );
  GTECH_NOT U268 ( .A(n251), .Z(n261) );
  GTECH_NAND3 U269 ( .A(n262), .B(n220), .C(n263), .Z(n251) );
  GTECH_NOT U270 ( .A(n165), .Z(n262) );
  GTECH_AND2 U271 ( .A(n256), .B(n165), .Z(n260) );
  GTECH_NAND2 U272 ( .A(n264), .B(n259), .Z(N144) );
  GTECH_NAND3 U273 ( .A(N152), .B(n256), .C(n165), .Z(n259) );
  GTECH_MUX2 U274 ( .A(n265), .B(n266), .S(n165), .Z(n264) );
  GTECH_NAND3 U275 ( .A(n263), .B(n220), .C(N150), .Z(n266) );
  GTECH_OA21 U276 ( .A(n229), .B(n256), .C(n267), .Z(n265) );
  GTECH_OAI21 U277 ( .A(n23), .B(n268), .C(N150), .Z(n267) );
  GTECH_NAND2 U278 ( .A(n269), .B(n220), .Z(n256) );
  GTECH_NOT U279 ( .A(n23), .Z(n220) );
  GTECH_OAI21 U280 ( .A(n250), .B(n270), .C(n271), .Z(N142) );
  GTECH_MUX2 U281 ( .A(n272), .B(n273), .S(n23), .Z(n271) );
  GTECH_NAND2 U282 ( .A(N152), .B(n269), .Z(n273) );
  GTECH_XOR2 U283 ( .A(n23), .B(n263), .Z(n270) );
  GTECH_NOT U284 ( .A(n268), .Z(n263) );
  GTECH_NAND3 U285 ( .A(n224), .B(n223), .C(sub_85_carry_2_), .Z(n268) );
  GTECH_NOT U286 ( .A(n21), .Z(n223) );
  GTECH_NAND2 U287 ( .A(n274), .B(n272), .Z(N140) );
  GTECH_NAND2 U288 ( .A(n275), .B(N152), .Z(n272) );
  GTECH_NOT U289 ( .A(n229), .Z(N152) );
  GTECH_NOT U290 ( .A(n269), .Z(n275) );
  GTECH_NAND2 U291 ( .A(n21), .B(n276), .Z(n269) );
  GTECH_NOT U292 ( .A(sub_85_carry_2_), .Z(n276) );
  GTECH_MUX2 U293 ( .A(n277), .B(n278), .S(n21), .Z(n274) );
  GTECH_NAND3 U294 ( .A(sub_85_carry_2_), .B(n224), .C(N150), .Z(n278) );
  GTECH_NOT U295 ( .A(n17), .Z(n224) );
  GTECH_AND2 U296 ( .A(n279), .B(n280), .Z(n277) );
  GTECH_MUX2 U297 ( .A(n250), .B(n229), .S(sub_85_carry_2_), .Z(n279) );
  GTECH_NOT U298 ( .A(n281), .Z(N14) );
  GTECH_AOI21 U299 ( .A(period[5]), .B(n217), .C(reset), .Z(n281) );
  GTECH_MUX2 U300 ( .A(n282), .B(n283), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U301 ( .A(n280), .Z(n283) );
  GTECH_OAI21 U302 ( .A(n17), .B(n250), .C(n229), .Z(n282) );
  GTECH_OAI21 U303 ( .A(n17), .B(n229), .C(n280), .Z(N136) );
  GTECH_NAND2 U304 ( .A(n17), .B(N150), .Z(n280) );
  GTECH_NOT U305 ( .A(n250), .Z(N150) );
  GTECH_NAND2 U306 ( .A(n284), .B(n192), .Z(n250) );
  GTECH_NOT U307 ( .A(n235), .Z(n284) );
  GTECH_NAND2 U308 ( .A(n15), .B(n285), .Z(n229) );
  GTECH_NOT U309 ( .A(N169), .Z(n285) );
  GTECH_NAND2 U310 ( .A(n192), .B(n246), .Z(N169) );
  GTECH_NOT U311 ( .A(n14), .Z(n246) );
  GTECH_AND2 U312 ( .A(n286), .B(n287), .Z(N134) );
  GTECH_OAI21 U313 ( .A(n177), .B(n288), .C(n166), .Z(n287) );
  GTECH_NAND2 U314 ( .A(n192), .B(n235), .Z(N133) );
  GTECH_NAND2 U315 ( .A(n15), .B(n14), .Z(n235) );
  GTECH_AND2 U316 ( .A(n289), .B(n286), .Z(N132) );
  GTECH_XOR2 U317 ( .A(n288), .B(n177), .Z(n289) );
  GTECH_NAND2 U318 ( .A(n290), .B(n291), .Z(n288) );
  GTECH_NOT U319 ( .A(n167), .Z(n291) );
  GTECH_NOT U320 ( .A(n292), .Z(n290) );
  GTECH_AND2 U321 ( .A(n293), .B(n286), .Z(N130) );
  GTECH_XOR2 U322 ( .A(n292), .B(n167), .Z(n293) );
  GTECH_NAND2 U323 ( .A(n294), .B(n295), .Z(n292) );
  GTECH_NOT U324 ( .A(n168), .Z(n295) );
  GTECH_NOT U325 ( .A(n296), .Z(n294) );
  GTECH_AND2 U326 ( .A(period[4]), .B(n217), .Z(N13) );
  GTECH_AND2 U327 ( .A(n297), .B(n286), .Z(N128) );
  GTECH_XOR2 U328 ( .A(n296), .B(n168), .Z(n297) );
  GTECH_NAND2 U329 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_NOT U330 ( .A(n300), .Z(n298) );
  GTECH_AND2 U331 ( .A(n301), .B(n286), .Z(N126) );
  GTECH_XOR2 U332 ( .A(n300), .B(n169), .Z(n301) );
  GTECH_NAND2 U333 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_NOT U334 ( .A(n170), .Z(n303) );
  GTECH_NOT U335 ( .A(n304), .Z(n302) );
  GTECH_AND2 U336 ( .A(n305), .B(n286), .Z(N124) );
  GTECH_XOR2 U337 ( .A(n304), .B(n170), .Z(n305) );
  GTECH_NAND2 U338 ( .A(n306), .B(n307), .Z(n304) );
  GTECH_NOT U339 ( .A(n171), .Z(n307) );
  GTECH_NOT U340 ( .A(n308), .Z(n306) );
  GTECH_AND2 U341 ( .A(n309), .B(n286), .Z(N122) );
  GTECH_XOR2 U342 ( .A(n308), .B(n171), .Z(n309) );
  GTECH_NAND2 U343 ( .A(n310), .B(n311), .Z(n308) );
  GTECH_NOT U344 ( .A(n172), .Z(n311) );
  GTECH_NOT U345 ( .A(n312), .Z(n310) );
  GTECH_AND2 U346 ( .A(n313), .B(n286), .Z(N120) );
  GTECH_XOR2 U347 ( .A(n312), .B(n172), .Z(n313) );
  GTECH_NAND2 U348 ( .A(n314), .B(n315), .Z(n312) );
  GTECH_NOT U349 ( .A(n316), .Z(n314) );
  GTECH_NOT U350 ( .A(n317), .Z(N12) );
  GTECH_AOI21 U351 ( .A(period[3]), .B(n217), .C(reset), .Z(n317) );
  GTECH_AND2 U352 ( .A(n318), .B(n286), .Z(N118) );
  GTECH_XOR2 U353 ( .A(n316), .B(n173), .Z(n318) );
  GTECH_NAND3 U354 ( .A(n319), .B(n320), .C(n321), .Z(n316) );
  GTECH_NOT U355 ( .A(n174), .Z(n321) );
  GTECH_OAI22 U356 ( .A(n174), .B(n322), .C(n323), .D(n324), .Z(N116) );
  GTECH_MUX2 U357 ( .A(n319), .B(n325), .S(n174), .Z(n324) );
  GTECH_NAND2 U358 ( .A(n319), .B(n320), .Z(n325) );
  GTECH_MUX2 U359 ( .A(N112), .B(n326), .S(n175), .Z(N114) );
  GTECH_AND2 U360 ( .A(n286), .B(n320), .Z(n326) );
  GTECH_NOT U361 ( .A(n176), .Z(n320) );
  GTECH_NOT U362 ( .A(n322), .Z(N112) );
  GTECH_NAND2 U363 ( .A(n286), .B(n176), .Z(n322) );
  GTECH_NOT U364 ( .A(n323), .Z(n286) );
  GTECH_NAND2 U365 ( .A(n234), .B(n192), .Z(n323) );
  GTECH_NOT U366 ( .A(n327), .Z(n234) );
  GTECH_AOI222 U367 ( .A(n328), .B(n329), .C(update_period[11]), .D(n166), .E(
        n330), .F(n331), .Z(n327) );
  GTECH_OAI2N2 U368 ( .A(n332), .B(n333), .C(n334), .D(n335), .Z(n330) );
  GTECH_AO22 U369 ( .A(update_period[8]), .B(n336), .C(n167), .D(
        update_period[9]), .Z(n335) );
  GTECH_OA21 U370 ( .A(n167), .B(update_period[9]), .C(n168), .Z(n336) );
  GTECH_OA21 U371 ( .A(n337), .B(n338), .C(n339), .Z(n329) );
  GTECH_AND2 U372 ( .A(n334), .B(n331), .Z(n339) );
  GTECH_NAND2 U373 ( .A(n340), .B(n341), .Z(n331) );
  GTECH_NOT U374 ( .A(update_period[11]), .Z(n341) );
  GTECH_NOT U375 ( .A(n166), .Z(n340) );
  GTECH_NAND2 U376 ( .A(n333), .B(n332), .Z(n334) );
  GTECH_NOT U377 ( .A(n177), .Z(n332) );
  GTECH_NOT U378 ( .A(update_period[10]), .Z(n333) );
  GTECH_OAI21 U379 ( .A(n299), .B(n342), .C(n343), .Z(n338) );
  GTECH_NAND3 U380 ( .A(n344), .B(update_period[6]), .C(n170), .Z(n343) );
  GTECH_OAI2N2 U381 ( .A(n345), .B(n346), .C(n347), .D(n348), .Z(n337) );
  GTECH_ADD_ABC U382 ( .A(n349), .B(n171), .C(update_period[5]), .COUT(n348)
         );
  GTECH_AND2 U383 ( .A(update_period[4]), .B(n172), .Z(n349) );
  GTECH_OAI21 U384 ( .A(update_period[4]), .B(n172), .C(n347), .Z(n346) );
  GTECH_NOT U385 ( .A(n350), .Z(n347) );
  GTECH_OAI21 U386 ( .A(update_period[6]), .B(n170), .C(n344), .Z(n350) );
  GTECH_NAND2 U387 ( .A(n342), .B(n299), .Z(n344) );
  GTECH_NOT U388 ( .A(n169), .Z(n299) );
  GTECH_NOT U389 ( .A(update_period[7]), .Z(n342) );
  GTECH_OAI22 U390 ( .A(update_period[5]), .B(n171), .C(n351), .D(n352), .Z(
        n345) );
  GTECH_OAI21 U391 ( .A(n315), .B(n353), .C(n354), .Z(n352) );
  GTECH_NAND3 U392 ( .A(n355), .B(update_period[2]), .C(n174), .Z(n354) );
  GTECH_AND4 U393 ( .A(n356), .B(n357), .C(n358), .D(n355), .Z(n351) );
  GTECH_NAND2 U394 ( .A(n353), .B(n315), .Z(n355) );
  GTECH_NOT U395 ( .A(n173), .Z(n315) );
  GTECH_NOT U396 ( .A(update_period[3]), .Z(n353) );
  GTECH_OAI21 U397 ( .A(n319), .B(n359), .C(n181), .Z(n358) );
  GTECH_NOT U398 ( .A(n175), .Z(n319) );
  GTECH_OR_NOT U399 ( .A(n175), .B(n359), .Z(n357) );
  GTECH_NAND2 U400 ( .A(update_period[0]), .B(n176), .Z(n359) );
  GTECH_OR2 U401 ( .A(update_period[2]), .B(n174), .Z(n356) );
  GTECH_OA22 U402 ( .A(n168), .B(update_period[8]), .C(n167), .D(
        update_period[9]), .Z(n328) );
  GTECH_NOT U403 ( .A(n360), .Z(N11) );
  GTECH_AOI21 U404 ( .A(period[2]), .B(n217), .C(reset), .Z(n360) );
  GTECH_NOT U405 ( .A(n361), .Z(N10) );
  GTECH_AOI21 U406 ( .A(period[1]), .B(n217), .C(reset), .Z(n361) );
  GTECH_NOT U407 ( .A(n218), .Z(n217) );
  GTECH_NAND2 U408 ( .A(period_load), .B(n192), .Z(n218) );
  GTECH_NOT U409 ( .A(reset), .Z(n192) );
endmodule

