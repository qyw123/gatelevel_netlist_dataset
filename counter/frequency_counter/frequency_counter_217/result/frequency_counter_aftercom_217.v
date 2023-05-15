
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
         n26, n27, n28, n30, n31, n32, n34, n84, n164, n165, sub_85_carry_2_,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n193, n194, n195, n196, n197, n198,
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
         n353, n354, n355, n356, n357;
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
        .CP(clk), .Q(update_period[1]) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n84), .K(n84), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]), .QN(n181) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n84), .K(n84), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n180) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n84), .K(n84), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n179) );
  GTECH_FJK1S state_reg_0_ ( .J(n84), .K(n84), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n84), .K(n84), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n84), .K(n84), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n178) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n84), .K(n84), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n177) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n84), .K(n84), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n176) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n84), .K(n84), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n84), .K(n84), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n84), .K(n84), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n84), .K(n84), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n84), .K(n84), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n84), .K(n84), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n84), .K(n84), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n84), .K(n84), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n84), .K(n84), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n167) );
  GTECH_FJK1S update_digits_reg ( .J(n84), .K(n84), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n84), .K(n84), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n166) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n84), .K(n84), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n84), .K(n84), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n84), .K(n84), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n84), .K(n84), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n84), .K(n84), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n84), .K(n84), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n84), .K(n84), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n84), .K(n84), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n84), .K(n84), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n84), .K(n84), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n84), .K(n84), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n84), .K(n84), .TI(N160), .TE(N159), .CP(
        clk), .Q(n26) );
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
        digit), .QN(n164) );
  GTECH_ZERO U173 ( .Z(n84) );
  GTECH_NAND2 U174 ( .A(n15), .B(n193), .Z(seven_segment0_N9) );
  GTECH_AND2 U175 ( .A(ten_count[0]), .B(n193), .Z(seven_segment0_N8) );
  GTECH_AND2 U176 ( .A(n164), .B(n193), .Z(seven_segment0_N6) );
  GTECH_AND2 U177 ( .A(unit_count[3]), .B(n193), .Z(seven_segment0_N22) );
  GTECH_AND2 U178 ( .A(unit_count[2]), .B(n193), .Z(seven_segment0_N20) );
  GTECH_AND2 U179 ( .A(unit_count[1]), .B(n193), .Z(seven_segment0_N18) );
  GTECH_AND2 U180 ( .A(unit_count[0]), .B(n193), .Z(seven_segment0_N16) );
  GTECH_AND2 U181 ( .A(n26), .B(n193), .Z(seven_segment0_N14) );
  GTECH_AND2 U182 ( .A(ten_count[2]), .B(n193), .Z(seven_segment0_N12) );
  GTECH_AND2 U183 ( .A(ten_count[1]), .B(n193), .Z(seven_segment0_N10) );
  GTECH_NAND2 U184 ( .A(n194), .B(n195), .Z(segments[6]) );
  GTECH_NOT U185 ( .A(n196), .Z(segments[4]) );
  GTECH_NAND3 U186 ( .A(n195), .B(n196), .C(n197), .Z(segments[3]) );
  GTECH_OAI21 U187 ( .A(n198), .B(n199), .C(n200), .Z(n196) );
  GTECH_NOT U188 ( .A(n201), .Z(n199) );
  GTECH_NAND2 U189 ( .A(n202), .B(n203), .Z(segments[2]) );
  GTECH_NOT U190 ( .A(segments[5]), .Z(n203) );
  GTECH_OAI21 U191 ( .A(n201), .B(n204), .C(n194), .Z(segments[5]) );
  GTECH_AND2 U192 ( .A(n205), .B(n197), .Z(n194) );
  GTECH_MUX2 U193 ( .A(n201), .B(n206), .S(n207), .Z(n205) );
  GTECH_NAND2 U194 ( .A(n200), .B(n208), .Z(n206) );
  GTECH_NAND3 U195 ( .A(n209), .B(n195), .C(n202), .Z(segments[1]) );
  GTECH_NOT U196 ( .A(n210), .Z(n202) );
  GTECH_OAI21 U197 ( .A(n200), .B(n211), .C(n201), .Z(n210) );
  GTECH_NAND3 U198 ( .A(n207), .B(n212), .C(n200), .Z(n209) );
  GTECH_NAND3 U199 ( .A(n197), .B(n195), .C(n213), .Z(segments[0]) );
  GTECH_OA22 U200 ( .A(n214), .B(n201), .C(n200), .D(n211), .Z(n213) );
  GTECH_NAND2 U201 ( .A(n212), .B(n215), .Z(n201) );
  GTECH_NAND2 U202 ( .A(n198), .B(n215), .Z(n195) );
  GTECH_NOT U203 ( .A(n208), .Z(n215) );
  GTECH_NOT U204 ( .A(n211), .Z(n198) );
  GTECH_NAND2 U205 ( .A(n207), .B(n216), .Z(n211) );
  GTECH_NOT U206 ( .A(n212), .Z(n216) );
  GTECH_NAND3 U207 ( .A(n212), .B(n208), .C(n214), .Z(n197) );
  GTECH_NOT U208 ( .A(n217), .Z(n214) );
  GTECH_NAND2 U209 ( .A(n207), .B(n204), .Z(n217) );
  GTECH_NOT U210 ( .A(n200), .Z(n204) );
  GTECH_MUX2 U211 ( .A(n31), .B(n27), .S(n164), .Z(n200) );
  GTECH_MUX2 U212 ( .A(n34), .B(n30), .S(n164), .Z(n207) );
  GTECH_MUX2 U213 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n164), .Z(n208) );
  GTECH_MUX2 U214 ( .A(n32), .B(n28), .S(n164), .Z(n212) );
  GTECH_NOT U215 ( .A(n218), .Z(N9) );
  GTECH_AOI21 U216 ( .A(period[0]), .B(n219), .C(reset), .Z(n218) );
  GTECH_AND2 U217 ( .A(period[11]), .B(n219), .Z(N21) );
  GTECH_NAND2 U218 ( .A(n193), .B(n220), .Z(N20) );
  GTECH_NOT U219 ( .A(n221), .Z(N19) );
  GTECH_AOI21 U220 ( .A(period[10]), .B(n219), .C(reset), .Z(n221) );
  GTECH_AND2 U221 ( .A(period[9]), .B(n219), .Z(N18) );
  GTECH_AND2 U222 ( .A(period[8]), .B(n219), .Z(N17) );
  GTECH_AND2 U223 ( .A(N170), .B(n222), .Z(N168) );
  GTECH_NAND2 U224 ( .A(n223), .B(n224), .Z(N167) );
  GTECH_AND2 U225 ( .A(N170), .B(n225), .Z(N166) );
  GTECH_AND2 U226 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U227 ( .A(N170), .B(n226), .Z(N162) );
  GTECH_NOT U228 ( .A(n227), .Z(N170) );
  GTECH_NAND2 U229 ( .A(n228), .B(n193), .Z(n227) );
  GTECH_NOT U230 ( .A(n224), .Z(n228) );
  GTECH_OAI2N2 U231 ( .A(n229), .B(n230), .C(n231), .D(n26), .Z(N160) );
  GTECH_MUX2 U232 ( .A(n232), .B(n233), .S(ten_count[2]), .Z(n230) );
  GTECH_NAND2 U233 ( .A(n234), .B(n232), .Z(n233) );
  GTECH_NOT U234 ( .A(n26), .Z(n232) );
  GTECH_NOT U235 ( .A(n235), .Z(N16) );
  GTECH_AOI21 U236 ( .A(period[7]), .B(n219), .C(reset), .Z(n235) );
  GTECH_OAI21 U237 ( .A(n236), .B(n237), .C(n238), .Z(N159) );
  GTECH_MUX2 U238 ( .A(n239), .B(n231), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U239 ( .A(n240), .Z(n231) );
  GTECH_NAND2 U240 ( .A(N152), .B(n241), .Z(n240) );
  GTECH_AND2 U241 ( .A(N152), .B(n234), .Z(n239) );
  GTECH_NOT U242 ( .A(n241), .Z(n234) );
  GTECH_NAND2 U243 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n241) );
  GTECH_MUX2 U244 ( .A(n242), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U245 ( .A(N152), .B(ten_count[0]), .Z(n242) );
  GTECH_NOT U246 ( .A(n243), .Z(N154) );
  GTECH_NAND2 U247 ( .A(N152), .B(n244), .Z(n243) );
  GTECH_NOT U248 ( .A(ten_count[0]), .Z(n244) );
  GTECH_NAND2 U249 ( .A(n245), .B(n165), .Z(N151) );
  GTECH_OA21 U250 ( .A(n14), .B(n246), .C(n223), .Z(n245) );
  GTECH_NOT U251 ( .A(n247), .Z(n223) );
  GTECH_OAI21 U252 ( .A(n248), .B(n236), .C(n193), .Z(n247) );
  GTECH_AND2 U253 ( .A(period[6]), .B(n219), .Z(N15) );
  GTECH_OAI21 U254 ( .A(n229), .B(n246), .C(n249), .Z(N148) );
  GTECH_MUX2 U255 ( .A(n250), .B(n251), .S(n179), .Z(n249) );
  GTECH_OR3 U256 ( .A(n180), .B(n252), .C(n253), .Z(n251) );
  GTECH_AND_NOT U257 ( .A(n254), .B(n255), .Z(n250) );
  GTECH_MUX2 U258 ( .A(n229), .B(n252), .S(n180), .Z(n254) );
  GTECH_NAND3 U259 ( .A(n256), .B(n224), .C(n238), .Z(N147) );
  GTECH_AND2 U260 ( .A(n193), .B(n257), .Z(n238) );
  GTECH_NAND3 U261 ( .A(n248), .B(n165), .C(n246), .Z(n257) );
  GTECH_NAND4 U262 ( .A(n180), .B(n179), .C(n166), .D(n258), .Z(n246) );
  GTECH_NAND2 U263 ( .A(n14), .B(n259), .Z(n224) );
  GTECH_NOT U264 ( .A(n165), .Z(n259) );
  GTECH_NAND3 U265 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n256) );
  GTECH_MUX2 U266 ( .A(n255), .B(n260), .S(n180), .Z(N146) );
  GTECH_OAI21 U267 ( .A(n253), .B(n252), .C(n261), .Z(n260) );
  GTECH_OAI2N2 U268 ( .A(n262), .B(n252), .C(N152), .D(n263), .Z(n255) );
  GTECH_NAND2 U269 ( .A(n258), .B(n166), .Z(n263) );
  GTECH_NOT U270 ( .A(n253), .Z(n262) );
  GTECH_NAND3 U271 ( .A(n264), .B(n222), .C(n265), .Z(n253) );
  GTECH_NOT U272 ( .A(n166), .Z(n264) );
  GTECH_NAND2 U273 ( .A(n266), .B(n261), .Z(N144) );
  GTECH_NAND3 U274 ( .A(N152), .B(n258), .C(n166), .Z(n261) );
  GTECH_MUX2 U275 ( .A(n267), .B(n268), .S(n166), .Z(n266) );
  GTECH_NAND3 U276 ( .A(n265), .B(n222), .C(N150), .Z(n268) );
  GTECH_OA21 U277 ( .A(n229), .B(n258), .C(n269), .Z(n267) );
  GTECH_OAI21 U278 ( .A(n22), .B(n270), .C(N150), .Z(n269) );
  GTECH_NAND2 U279 ( .A(n271), .B(n222), .Z(n258) );
  GTECH_NOT U280 ( .A(n22), .Z(n222) );
  GTECH_OAI21 U281 ( .A(n252), .B(n272), .C(n273), .Z(N142) );
  GTECH_MUX2 U282 ( .A(n274), .B(n275), .S(n22), .Z(n273) );
  GTECH_NAND2 U283 ( .A(N152), .B(n271), .Z(n275) );
  GTECH_XOR2 U284 ( .A(n22), .B(n265), .Z(n272) );
  GTECH_NOT U285 ( .A(n270), .Z(n265) );
  GTECH_NAND3 U286 ( .A(n226), .B(n225), .C(sub_85_carry_2_), .Z(n270) );
  GTECH_NOT U287 ( .A(n20), .Z(n225) );
  GTECH_NAND2 U288 ( .A(n276), .B(n274), .Z(N140) );
  GTECH_NAND2 U289 ( .A(n277), .B(N152), .Z(n274) );
  GTECH_NOT U290 ( .A(n229), .Z(N152) );
  GTECH_NOT U291 ( .A(n271), .Z(n277) );
  GTECH_NAND2 U292 ( .A(n20), .B(n278), .Z(n271) );
  GTECH_NOT U293 ( .A(sub_85_carry_2_), .Z(n278) );
  GTECH_MUX2 U294 ( .A(n279), .B(n280), .S(n20), .Z(n276) );
  GTECH_NAND3 U295 ( .A(sub_85_carry_2_), .B(n226), .C(N150), .Z(n280) );
  GTECH_NOT U296 ( .A(n16), .Z(n226) );
  GTECH_AND2 U297 ( .A(n281), .B(n282), .Z(n279) );
  GTECH_MUX2 U298 ( .A(n252), .B(n229), .S(sub_85_carry_2_), .Z(n281) );
  GTECH_NOT U299 ( .A(n283), .Z(N14) );
  GTECH_AOI21 U300 ( .A(period[5]), .B(n219), .C(reset), .Z(n283) );
  GTECH_MUX2 U301 ( .A(n284), .B(n285), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U302 ( .A(n282), .Z(n285) );
  GTECH_OAI21 U303 ( .A(n16), .B(n252), .C(n229), .Z(n284) );
  GTECH_OAI21 U304 ( .A(n16), .B(n229), .C(n282), .Z(N136) );
  GTECH_NAND2 U305 ( .A(n16), .B(N150), .Z(n282) );
  GTECH_NOT U306 ( .A(n252), .Z(N150) );
  GTECH_NAND2 U307 ( .A(n286), .B(n193), .Z(n252) );
  GTECH_NOT U308 ( .A(n237), .Z(n286) );
  GTECH_NAND2 U309 ( .A(n165), .B(n287), .Z(n229) );
  GTECH_NOT U310 ( .A(N169), .Z(n287) );
  GTECH_NAND2 U311 ( .A(n193), .B(n248), .Z(N169) );
  GTECH_NOT U312 ( .A(n14), .Z(n248) );
  GTECH_AND2 U313 ( .A(n288), .B(n289), .Z(N134) );
  GTECH_OAI21 U314 ( .A(n178), .B(n290), .C(n167), .Z(n289) );
  GTECH_NAND2 U315 ( .A(n193), .B(n237), .Z(N133) );
  GTECH_NAND2 U316 ( .A(n165), .B(n14), .Z(n237) );
  GTECH_AND2 U317 ( .A(n291), .B(n288), .Z(N132) );
  GTECH_XOR2 U318 ( .A(n290), .B(n178), .Z(n291) );
  GTECH_NAND2 U319 ( .A(n292), .B(n293), .Z(n290) );
  GTECH_NOT U320 ( .A(n168), .Z(n293) );
  GTECH_NOT U321 ( .A(n294), .Z(n292) );
  GTECH_AND2 U322 ( .A(n295), .B(n288), .Z(N130) );
  GTECH_XOR2 U323 ( .A(n294), .B(n168), .Z(n295) );
  GTECH_NAND2 U324 ( .A(n296), .B(n297), .Z(n294) );
  GTECH_NOT U325 ( .A(n169), .Z(n297) );
  GTECH_NOT U326 ( .A(n298), .Z(n296) );
  GTECH_AND2 U327 ( .A(period[4]), .B(n219), .Z(N13) );
  GTECH_AND2 U328 ( .A(n299), .B(n288), .Z(N128) );
  GTECH_XOR2 U329 ( .A(n298), .B(n169), .Z(n299) );
  GTECH_NAND2 U330 ( .A(n300), .B(n301), .Z(n298) );
  GTECH_NOT U331 ( .A(n302), .Z(n300) );
  GTECH_AND2 U332 ( .A(n303), .B(n288), .Z(N126) );
  GTECH_XOR2 U333 ( .A(n302), .B(n170), .Z(n303) );
  GTECH_NAND2 U334 ( .A(n304), .B(n305), .Z(n302) );
  GTECH_NOT U335 ( .A(n171), .Z(n305) );
  GTECH_NOT U336 ( .A(n306), .Z(n304) );
  GTECH_AND2 U337 ( .A(n307), .B(n288), .Z(N124) );
  GTECH_XOR2 U338 ( .A(n306), .B(n171), .Z(n307) );
  GTECH_NAND2 U339 ( .A(n308), .B(n309), .Z(n306) );
  GTECH_NOT U340 ( .A(n172), .Z(n309) );
  GTECH_NOT U341 ( .A(n310), .Z(n308) );
  GTECH_AND2 U342 ( .A(n311), .B(n288), .Z(N122) );
  GTECH_XOR2 U343 ( .A(n310), .B(n172), .Z(n311) );
  GTECH_NAND2 U344 ( .A(n312), .B(n313), .Z(n310) );
  GTECH_NOT U345 ( .A(n173), .Z(n313) );
  GTECH_NOT U346 ( .A(n314), .Z(n312) );
  GTECH_AND2 U347 ( .A(n315), .B(n288), .Z(N120) );
  GTECH_XOR2 U348 ( .A(n314), .B(n173), .Z(n315) );
  GTECH_NAND2 U349 ( .A(n316), .B(n317), .Z(n314) );
  GTECH_NOT U350 ( .A(n318), .Z(n316) );
  GTECH_NOT U351 ( .A(n319), .Z(N12) );
  GTECH_AOI21 U352 ( .A(period[3]), .B(n219), .C(reset), .Z(n319) );
  GTECH_AND2 U353 ( .A(n320), .B(n288), .Z(N118) );
  GTECH_XOR2 U354 ( .A(n318), .B(n174), .Z(n320) );
  GTECH_NAND3 U355 ( .A(n321), .B(n322), .C(n323), .Z(n318) );
  GTECH_OAI2N2 U356 ( .A(n324), .B(n325), .C(N112), .D(n323), .Z(N116) );
  GTECH_NOT U357 ( .A(n175), .Z(n323) );
  GTECH_MUX2 U358 ( .A(n321), .B(n326), .S(n175), .Z(n325) );
  GTECH_NAND2 U359 ( .A(n321), .B(n322), .Z(n326) );
  GTECH_NOT U360 ( .A(n176), .Z(n321) );
  GTECH_MUX2 U361 ( .A(N112), .B(n327), .S(n176), .Z(N114) );
  GTECH_AND2 U362 ( .A(n288), .B(n322), .Z(n327) );
  GTECH_NOT U363 ( .A(n328), .Z(N112) );
  GTECH_NAND2 U364 ( .A(n288), .B(n177), .Z(n328) );
  GTECH_NOT U365 ( .A(n324), .Z(n288) );
  GTECH_NAND2 U366 ( .A(n236), .B(n193), .Z(n324) );
  GTECH_NAND2 U367 ( .A(n329), .B(n330), .Z(n236) );
  GTECH_OR3 U368 ( .A(n331), .B(n332), .C(n333), .Z(n330) );
  GTECH_OAI2N2 U369 ( .A(update_period[9]), .B(n168), .C(n334), .D(n335), .Z(
        n333) );
  GTECH_OA21 U370 ( .A(n301), .B(n336), .C(n337), .Z(n335) );
  GTECH_NAND3 U371 ( .A(n338), .B(update_period[6]), .C(n171), .Z(n337) );
  GTECH_OA21 U372 ( .A(n339), .B(n340), .C(n341), .Z(n334) );
  GTECH_OR3 U373 ( .A(n340), .B(n342), .C(n343), .Z(n341) );
  GTECH_OAI2N2 U374 ( .A(n172), .B(update_period[5]), .C(n344), .D(n345), .Z(
        n343) );
  GTECH_OA21 U375 ( .A(n317), .B(n346), .C(n347), .Z(n345) );
  GTECH_NAND3 U376 ( .A(n348), .B(update_period[2]), .C(n175), .Z(n347) );
  GTECH_NAND3 U377 ( .A(n349), .B(n350), .C(n348), .Z(n344) );
  GTECH_NAND2 U378 ( .A(n346), .B(n317), .Z(n348) );
  GTECH_NOT U379 ( .A(n174), .Z(n317) );
  GTECH_NOT U380 ( .A(update_period[3]), .Z(n346) );
  GTECH_OAI2N2 U381 ( .A(n322), .B(n181), .C(update_period[1]), .D(n176), .Z(
        n350) );
  GTECH_NOT U382 ( .A(n177), .Z(n322) );
  GTECH_OA22 U383 ( .A(n176), .B(update_period[1]), .C(n175), .D(
        update_period[2]), .Z(n349) );
  GTECH_NOR2 U384 ( .A(n173), .B(update_period[4]), .Z(n342) );
  GTECH_OAI21 U385 ( .A(update_period[6]), .B(n171), .C(n338), .Z(n340) );
  GTECH_NAND2 U386 ( .A(n336), .B(n301), .Z(n338) );
  GTECH_NOT U387 ( .A(n170), .Z(n301) );
  GTECH_NOT U388 ( .A(update_period[7]), .Z(n336) );
  GTECH_AOI22 U389 ( .A(n172), .B(update_period[5]), .C(update_period[4]), .D(
        n351), .Z(n339) );
  GTECH_OA21 U390 ( .A(update_period[5]), .B(n172), .C(n173), .Z(n351) );
  GTECH_NOR2 U391 ( .A(update_period[8]), .B(n169), .Z(n331) );
  GTECH_AOI2N2 U392 ( .A(n167), .B(update_period[11]), .C(n332), .D(n352), .Z(
        n329) );
  GTECH_AOI222 U393 ( .A(update_period[9]), .B(n168), .C(n353), .D(
        update_period[8]), .E(update_period[10]), .F(n178), .Z(n352) );
  GTECH_OA21 U394 ( .A(n168), .B(update_period[9]), .C(n169), .Z(n353) );
  GTECH_OAI2N2 U395 ( .A(update_period[11]), .B(n167), .C(n354), .D(n355), .Z(
        n332) );
  GTECH_NOT U396 ( .A(update_period[10]), .Z(n355) );
  GTECH_NOT U397 ( .A(n178), .Z(n354) );
  GTECH_NOT U398 ( .A(n356), .Z(N11) );
  GTECH_AOI21 U399 ( .A(period[2]), .B(n219), .C(reset), .Z(n356) );
  GTECH_NOT U400 ( .A(n357), .Z(N10) );
  GTECH_AOI21 U401 ( .A(period[1]), .B(n219), .C(reset), .Z(n357) );
  GTECH_NOT U402 ( .A(n220), .Z(n219) );
  GTECH_NAND2 U403 ( .A(period_load), .B(n193), .Z(n220) );
  GTECH_NOT U404 ( .A(reset), .Z(n193) );
endmodule

