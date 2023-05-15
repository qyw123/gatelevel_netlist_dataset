
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
         n23, n27, n28, n32, n80, n159, sub_85_carry_2_, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n177, n188, n189, n190, n191, n192, n193, n194, n195, n196,
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
         n351, n352, n353, n354, n355, n356;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n80), .K(n80), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n80), .K(n80), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n80), .K(n80), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n80), .K(n80), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n80), .K(n80), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n80), .K(n80), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n80), .K(n80), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n80), .K(n80), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n80), .K(n80), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n80), .K(n80), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n80), .K(n80), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n177) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n80), .K(n80), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n80), .K(n80), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n175) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n80), .K(n80), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n174) );
  GTECH_FJK1S state_reg_0_ ( .J(n80), .K(n80), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n80), .K(n80), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n80), .K(n80), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n80), .K(n80), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n80), .K(n80), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n80), .K(n80), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n80), .K(n80), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n80), .K(n80), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n80), .K(n80), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n80), .K(n80), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n80), .K(n80), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n80), .K(n80), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n80), .K(n80), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n80), .K(n80), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n162) );
  GTECH_FJK1S update_digits_reg ( .J(n80), .K(n80), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n16) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n80), .K(n80), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n161) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n80), .K(n80), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n17) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n80), .K(n80), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n80), .K(n80), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n80), .K(n80), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n80), .K(n80), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n21) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n80), .K(n80), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n80), .K(n80), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n23) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n80), .K(n80), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n80), .K(n80), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n80), .K(n80), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n80), .K(n80), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n80), .K(n80), .TI(N160), .TE(N159), .CP(
        clk), .Q(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n28) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n32) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n159) );
  GTECH_ZERO U168 ( .Z(n80) );
  GTECH_NAND2 U169 ( .A(n16), .B(n188), .Z(seven_segment0_N9) );
  GTECH_AND2 U170 ( .A(ten_count[0]), .B(n188), .Z(seven_segment0_N8) );
  GTECH_AND2 U171 ( .A(n159), .B(n188), .Z(seven_segment0_N6) );
  GTECH_AND2 U172 ( .A(unit_count[3]), .B(n188), .Z(seven_segment0_N22) );
  GTECH_AND2 U173 ( .A(unit_count[2]), .B(n188), .Z(seven_segment0_N20) );
  GTECH_AND2 U174 ( .A(unit_count[1]), .B(n188), .Z(seven_segment0_N18) );
  GTECH_AND2 U175 ( .A(unit_count[0]), .B(n188), .Z(seven_segment0_N16) );
  GTECH_AND2 U176 ( .A(n27), .B(n188), .Z(seven_segment0_N14) );
  GTECH_AND2 U177 ( .A(ten_count[2]), .B(n188), .Z(seven_segment0_N12) );
  GTECH_AND2 U178 ( .A(ten_count[1]), .B(n188), .Z(seven_segment0_N10) );
  GTECH_NAND3 U179 ( .A(n189), .B(n190), .C(n191), .Z(segments[6]) );
  GTECH_OAI21 U180 ( .A(n192), .B(n193), .C(n194), .Z(n189) );
  GTECH_NOT U181 ( .A(n195), .Z(n194) );
  GTECH_OAI21 U182 ( .A(n196), .B(n195), .C(n197), .Z(segments[3]) );
  GTECH_AND2 U183 ( .A(n198), .B(n199), .Z(n197) );
  GTECH_NOT U184 ( .A(segments[4]), .Z(n199) );
  GTECH_OAI21 U185 ( .A(n200), .B(n195), .C(n201), .Z(segments[4]) );
  GTECH_OAI21 U186 ( .A(n192), .B(n195), .C(n202), .Z(segments[2]) );
  GTECH_AND2 U187 ( .A(n203), .B(n204), .Z(n202) );
  GTECH_NOT U188 ( .A(segments[5]), .Z(n204) );
  GTECH_NAND3 U189 ( .A(n201), .B(n190), .C(n205), .Z(segments[5]) );
  GTECH_OA21 U190 ( .A(n206), .B(n195), .C(n191), .Z(n205) );
  GTECH_OAI21 U191 ( .A(n207), .B(n195), .C(n208), .Z(segments[1]) );
  GTECH_AND2 U192 ( .A(n203), .B(n190), .Z(n208) );
  GTECH_NAND3 U193 ( .A(n209), .B(n210), .C(n207), .Z(n190) );
  GTECH_NAND2 U194 ( .A(n211), .B(n191), .Z(segments[0]) );
  GTECH_NOT U195 ( .A(n212), .Z(n191) );
  GTECH_OAI21 U196 ( .A(n209), .B(n203), .C(n198), .Z(n212) );
  GTECH_NAND4 U197 ( .A(n196), .B(n200), .C(n209), .D(n210), .Z(n198) );
  GTECH_NOT U198 ( .A(n192), .Z(n200) );
  GTECH_OA21 U199 ( .A(n207), .B(n195), .C(n201), .Z(n211) );
  GTECH_NAND2 U200 ( .A(n213), .B(n192), .Z(n201) );
  GTECH_NOT U201 ( .A(n203), .Z(n213) );
  GTECH_NAND2 U202 ( .A(n210), .B(n193), .Z(n203) );
  GTECH_NOT U203 ( .A(n196), .Z(n193) );
  GTECH_NOT U204 ( .A(n214), .Z(n210) );
  GTECH_NAND2 U205 ( .A(n214), .B(n209), .Z(n195) );
  GTECH_NOT U206 ( .A(n215), .Z(n209) );
  GTECH_MUX2 U207 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n159), .Z(n215) );
  GTECH_MUX2 U208 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n159), .Z(n214) );
  GTECH_NOT U209 ( .A(n206), .Z(n207) );
  GTECH_NAND2 U210 ( .A(n196), .B(n192), .Z(n206) );
  GTECH_MUX2 U211 ( .A(n32), .B(n28), .S(n159), .Z(n192) );
  GTECH_MUX2 U212 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n159), .Z(n196) );
  GTECH_AO21 U213 ( .A(period[0]), .B(n216), .C(reset), .Z(N9) );
  GTECH_AND2 U214 ( .A(period[11]), .B(n216), .Z(N21) );
  GTECH_NAND2 U215 ( .A(n188), .B(n217), .Z(N20) );
  GTECH_AO21 U216 ( .A(period[10]), .B(n216), .C(reset), .Z(N19) );
  GTECH_AND2 U217 ( .A(period[9]), .B(n216), .Z(N18) );
  GTECH_AND2 U218 ( .A(period[8]), .B(n216), .Z(N17) );
  GTECH_AND2 U219 ( .A(N170), .B(n218), .Z(N168) );
  GTECH_NAND2 U220 ( .A(n219), .B(n220), .Z(N167) );
  GTECH_AND2 U221 ( .A(N170), .B(n221), .Z(N166) );
  GTECH_AND2 U222 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U223 ( .A(N170), .B(n222), .Z(N162) );
  GTECH_NOT U224 ( .A(n223), .Z(N170) );
  GTECH_NAND2 U225 ( .A(n224), .B(n188), .Z(n223) );
  GTECH_NOT U226 ( .A(n220), .Z(n224) );
  GTECH_OAI22 U227 ( .A(n225), .B(n226), .C(n227), .D(n228), .Z(N160) );
  GTECH_MUX2 U228 ( .A(n225), .B(n229), .S(ten_count[2]), .Z(n228) );
  GTECH_NAND2 U229 ( .A(n230), .B(n225), .Z(n229) );
  GTECH_NOT U230 ( .A(n27), .Z(n225) );
  GTECH_AO21 U231 ( .A(period[7]), .B(n216), .C(reset), .Z(N16) );
  GTECH_OAI21 U232 ( .A(n231), .B(n232), .C(n233), .Z(N159) );
  GTECH_MUX2 U233 ( .A(n234), .B(n235), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U234 ( .A(n226), .Z(n235) );
  GTECH_NAND2 U235 ( .A(N152), .B(n236), .Z(n226) );
  GTECH_AND2 U236 ( .A(N152), .B(n230), .Z(n234) );
  GTECH_NOT U237 ( .A(n236), .Z(n230) );
  GTECH_NAND2 U238 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n236) );
  GTECH_MUX2 U239 ( .A(n237), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U240 ( .A(N152), .B(ten_count[0]), .Z(n237) );
  GTECH_NOT U241 ( .A(n238), .Z(N154) );
  GTECH_NAND2 U242 ( .A(N152), .B(n239), .Z(n238) );
  GTECH_NOT U243 ( .A(ten_count[0]), .Z(n239) );
  GTECH_NAND2 U244 ( .A(n240), .B(n15), .Z(N151) );
  GTECH_OA21 U245 ( .A(n14), .B(n241), .C(n219), .Z(n240) );
  GTECH_NOT U246 ( .A(n242), .Z(n219) );
  GTECH_OAI21 U247 ( .A(n243), .B(n231), .C(n188), .Z(n242) );
  GTECH_AND2 U248 ( .A(period[6]), .B(n216), .Z(N15) );
  GTECH_OAI21 U249 ( .A(n227), .B(n241), .C(n244), .Z(N148) );
  GTECH_NOT U250 ( .A(n245), .Z(n244) );
  GTECH_MUX2 U251 ( .A(n246), .B(n247), .S(n174), .Z(n245) );
  GTECH_NOR3 U252 ( .A(n248), .B(n175), .C(n249), .Z(n247) );
  GTECH_OR_NOT U253 ( .A(n250), .B(n251), .Z(n246) );
  GTECH_MUX2 U254 ( .A(n227), .B(n249), .S(n175), .Z(n251) );
  GTECH_NAND3 U255 ( .A(n252), .B(n220), .C(n233), .Z(N147) );
  GTECH_AND2 U256 ( .A(n188), .B(n253), .Z(n233) );
  GTECH_NAND3 U257 ( .A(n243), .B(n15), .C(n241), .Z(n253) );
  GTECH_NAND4 U258 ( .A(n175), .B(n174), .C(n161), .D(n254), .Z(n241) );
  GTECH_NAND2 U259 ( .A(n14), .B(n255), .Z(n220) );
  GTECH_NOT U260 ( .A(n15), .Z(n255) );
  GTECH_NAND3 U261 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n252) );
  GTECH_MUX2 U262 ( .A(n250), .B(n256), .S(n175), .Z(N146) );
  GTECH_OAI21 U263 ( .A(n248), .B(n249), .C(n257), .Z(n256) );
  GTECH_OAI21 U264 ( .A(n258), .B(n249), .C(n259), .Z(n250) );
  GTECH_AO21 U265 ( .A(n254), .B(n161), .C(n227), .Z(n259) );
  GTECH_NOT U266 ( .A(n248), .Z(n258) );
  GTECH_NAND3 U267 ( .A(n260), .B(n218), .C(n261), .Z(n248) );
  GTECH_NOT U268 ( .A(n161), .Z(n260) );
  GTECH_NAND2 U269 ( .A(n262), .B(n257), .Z(N144) );
  GTECH_NAND3 U270 ( .A(N152), .B(n254), .C(n161), .Z(n257) );
  GTECH_MUX2 U271 ( .A(n263), .B(n264), .S(n161), .Z(n262) );
  GTECH_NAND3 U272 ( .A(n261), .B(n218), .C(N150), .Z(n264) );
  GTECH_OA21 U273 ( .A(n227), .B(n254), .C(n265), .Z(n263) );
  GTECH_OAI21 U274 ( .A(n23), .B(n266), .C(N150), .Z(n265) );
  GTECH_NAND2 U275 ( .A(n267), .B(n218), .Z(n254) );
  GTECH_NOT U276 ( .A(n23), .Z(n218) );
  GTECH_OAI21 U277 ( .A(n249), .B(n268), .C(n269), .Z(N142) );
  GTECH_MUX2 U278 ( .A(n270), .B(n271), .S(n23), .Z(n269) );
  GTECH_NAND2 U279 ( .A(N152), .B(n267), .Z(n271) );
  GTECH_XOR2 U280 ( .A(n23), .B(n261), .Z(n268) );
  GTECH_NOT U281 ( .A(n266), .Z(n261) );
  GTECH_NAND3 U282 ( .A(n222), .B(n221), .C(sub_85_carry_2_), .Z(n266) );
  GTECH_NOT U283 ( .A(n21), .Z(n221) );
  GTECH_NAND2 U284 ( .A(n272), .B(n270), .Z(N140) );
  GTECH_NAND2 U285 ( .A(n273), .B(N152), .Z(n270) );
  GTECH_NOT U286 ( .A(n227), .Z(N152) );
  GTECH_NOT U287 ( .A(n267), .Z(n273) );
  GTECH_NAND2 U288 ( .A(n21), .B(n274), .Z(n267) );
  GTECH_NOT U289 ( .A(sub_85_carry_2_), .Z(n274) );
  GTECH_MUX2 U290 ( .A(n275), .B(n276), .S(n21), .Z(n272) );
  GTECH_NAND3 U291 ( .A(sub_85_carry_2_), .B(n222), .C(N150), .Z(n276) );
  GTECH_NOT U292 ( .A(n17), .Z(n222) );
  GTECH_AND2 U293 ( .A(n277), .B(n278), .Z(n275) );
  GTECH_MUX2 U294 ( .A(n249), .B(n227), .S(sub_85_carry_2_), .Z(n277) );
  GTECH_AO21 U295 ( .A(period[5]), .B(n216), .C(reset), .Z(N14) );
  GTECH_MUX2 U296 ( .A(n279), .B(n280), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U297 ( .A(n278), .Z(n280) );
  GTECH_OAI21 U298 ( .A(n17), .B(n249), .C(n227), .Z(n279) );
  GTECH_OAI21 U299 ( .A(n17), .B(n227), .C(n278), .Z(N136) );
  GTECH_NAND2 U300 ( .A(n17), .B(N150), .Z(n278) );
  GTECH_NOT U301 ( .A(n249), .Z(N150) );
  GTECH_NAND2 U302 ( .A(n281), .B(n188), .Z(n249) );
  GTECH_NOT U303 ( .A(n232), .Z(n281) );
  GTECH_NAND2 U304 ( .A(n15), .B(n282), .Z(n227) );
  GTECH_NOT U305 ( .A(N169), .Z(n282) );
  GTECH_NAND2 U306 ( .A(n188), .B(n243), .Z(N169) );
  GTECH_NOT U307 ( .A(n14), .Z(n243) );
  GTECH_AND2 U308 ( .A(n283), .B(n284), .Z(N134) );
  GTECH_OAI21 U309 ( .A(n173), .B(n285), .C(n162), .Z(n284) );
  GTECH_NAND2 U310 ( .A(n188), .B(n232), .Z(N133) );
  GTECH_NAND2 U311 ( .A(n15), .B(n14), .Z(n232) );
  GTECH_AND2 U312 ( .A(n286), .B(n283), .Z(N132) );
  GTECH_XOR2 U313 ( .A(n285), .B(n173), .Z(n286) );
  GTECH_NAND2 U314 ( .A(n287), .B(n288), .Z(n285) );
  GTECH_NOT U315 ( .A(n289), .Z(n287) );
  GTECH_AND2 U316 ( .A(n290), .B(n283), .Z(N130) );
  GTECH_XOR2 U317 ( .A(n289), .B(n163), .Z(n290) );
  GTECH_NAND2 U318 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_NOT U319 ( .A(n164), .Z(n292) );
  GTECH_NOT U320 ( .A(n293), .Z(n291) );
  GTECH_AND2 U321 ( .A(period[4]), .B(n216), .Z(N13) );
  GTECH_AND2 U322 ( .A(n294), .B(n283), .Z(N128) );
  GTECH_XOR2 U323 ( .A(n293), .B(n164), .Z(n294) );
  GTECH_NAND2 U324 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_NOT U325 ( .A(n297), .Z(n295) );
  GTECH_AND2 U326 ( .A(n298), .B(n283), .Z(N126) );
  GTECH_XOR2 U327 ( .A(n297), .B(n165), .Z(n298) );
  GTECH_NAND2 U328 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U329 ( .A(n166), .Z(n300) );
  GTECH_NOT U330 ( .A(n301), .Z(n299) );
  GTECH_AND2 U331 ( .A(n302), .B(n283), .Z(N124) );
  GTECH_XOR2 U332 ( .A(n301), .B(n166), .Z(n302) );
  GTECH_NAND2 U333 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U334 ( .A(n167), .Z(n304) );
  GTECH_NOT U335 ( .A(n305), .Z(n303) );
  GTECH_AND2 U336 ( .A(n306), .B(n283), .Z(N122) );
  GTECH_XOR2 U337 ( .A(n305), .B(n167), .Z(n306) );
  GTECH_NAND2 U338 ( .A(n307), .B(n308), .Z(n305) );
  GTECH_NOT U339 ( .A(n168), .Z(n308) );
  GTECH_NOT U340 ( .A(n309), .Z(n307) );
  GTECH_AND2 U341 ( .A(n310), .B(n283), .Z(N120) );
  GTECH_XOR2 U342 ( .A(n309), .B(n168), .Z(n310) );
  GTECH_NAND2 U343 ( .A(n311), .B(n312), .Z(n309) );
  GTECH_NOT U344 ( .A(n313), .Z(n311) );
  GTECH_AO21 U345 ( .A(period[3]), .B(n216), .C(reset), .Z(N12) );
  GTECH_AND2 U346 ( .A(n314), .B(n283), .Z(N118) );
  GTECH_XOR2 U347 ( .A(n313), .B(n169), .Z(n314) );
  GTECH_NAND3 U348 ( .A(n315), .B(n316), .C(n317), .Z(n313) );
  GTECH_NOT U349 ( .A(n170), .Z(n317) );
  GTECH_OAI22 U350 ( .A(n170), .B(n318), .C(n319), .D(n320), .Z(N116) );
  GTECH_MUX2 U351 ( .A(n315), .B(n321), .S(n170), .Z(n320) );
  GTECH_NAND2 U352 ( .A(n315), .B(n316), .Z(n321) );
  GTECH_MUX2 U353 ( .A(N112), .B(n322), .S(n171), .Z(N114) );
  GTECH_AND2 U354 ( .A(n283), .B(n316), .Z(n322) );
  GTECH_NOT U355 ( .A(n172), .Z(n316) );
  GTECH_NOT U356 ( .A(n318), .Z(N112) );
  GTECH_NAND2 U357 ( .A(n283), .B(n172), .Z(n318) );
  GTECH_NOT U358 ( .A(n319), .Z(n283) );
  GTECH_NAND2 U359 ( .A(n231), .B(n188), .Z(n319) );
  GTECH_NOT U360 ( .A(n323), .Z(n231) );
  GTECH_AOI222 U361 ( .A(n324), .B(n325), .C(update_period[11]), .D(n162), .E(
        n326), .F(n327), .Z(n323) );
  GTECH_OAI2N2 U362 ( .A(n328), .B(n329), .C(n330), .D(n331), .Z(n326) );
  GTECH_OAI21 U363 ( .A(n332), .B(n288), .C(n333), .Z(n331) );
  GTECH_NAND3 U364 ( .A(n334), .B(update_period[8]), .C(n164), .Z(n333) );
  GTECH_AND3 U365 ( .A(n334), .B(n330), .C(n327), .Z(n325) );
  GTECH_NAND2 U366 ( .A(n335), .B(n336), .Z(n327) );
  GTECH_NOT U367 ( .A(n162), .Z(n336) );
  GTECH_NOT U368 ( .A(update_period[11]), .Z(n335) );
  GTECH_NAND2 U369 ( .A(n329), .B(n328), .Z(n330) );
  GTECH_NOT U370 ( .A(n173), .Z(n328) );
  GTECH_NOT U371 ( .A(update_period[10]), .Z(n329) );
  GTECH_NAND2 U372 ( .A(n288), .B(n332), .Z(n334) );
  GTECH_NOT U373 ( .A(update_period[9]), .Z(n332) );
  GTECH_NOT U374 ( .A(n163), .Z(n288) );
  GTECH_OA22 U375 ( .A(n164), .B(update_period[8]), .C(n337), .D(n338), .Z(
        n324) );
  GTECH_OAI21 U376 ( .A(n296), .B(n339), .C(n340), .Z(n338) );
  GTECH_NAND3 U377 ( .A(n341), .B(update_period[6]), .C(n166), .Z(n340) );
  GTECH_OAI2N2 U378 ( .A(n342), .B(n343), .C(n344), .D(n345), .Z(n337) );
  GTECH_ADD_ABC U379 ( .A(n346), .B(n167), .C(update_period[5]), .COUT(n345)
         );
  GTECH_AND2 U380 ( .A(update_period[4]), .B(n168), .Z(n346) );
  GTECH_OAI21 U381 ( .A(update_period[4]), .B(n168), .C(n344), .Z(n343) );
  GTECH_NOT U382 ( .A(n347), .Z(n344) );
  GTECH_OAI21 U383 ( .A(update_period[6]), .B(n166), .C(n341), .Z(n347) );
  GTECH_NAND2 U384 ( .A(n339), .B(n296), .Z(n341) );
  GTECH_NOT U385 ( .A(n165), .Z(n296) );
  GTECH_NOT U386 ( .A(update_period[7]), .Z(n339) );
  GTECH_OAI22 U387 ( .A(update_period[5]), .B(n167), .C(n348), .D(n349), .Z(
        n342) );
  GTECH_OAI21 U388 ( .A(n312), .B(n350), .C(n351), .Z(n349) );
  GTECH_NAND3 U389 ( .A(n352), .B(update_period[2]), .C(n170), .Z(n351) );
  GTECH_AND3 U390 ( .A(n353), .B(n354), .C(n352), .Z(n348) );
  GTECH_NAND2 U391 ( .A(n350), .B(n312), .Z(n352) );
  GTECH_NOT U392 ( .A(n169), .Z(n312) );
  GTECH_NOT U393 ( .A(update_period[3]), .Z(n350) );
  GTECH_OAI21 U394 ( .A(n355), .B(n315), .C(n177), .Z(n354) );
  GTECH_NOT U395 ( .A(n171), .Z(n315) );
  GTECH_OA21 U396 ( .A(n170), .B(update_period[2]), .C(n356), .Z(n353) );
  GTECH_OR_NOT U397 ( .A(n171), .B(n355), .Z(n356) );
  GTECH_NAND2 U398 ( .A(update_period[0]), .B(n172), .Z(n355) );
  GTECH_AO21 U399 ( .A(period[2]), .B(n216), .C(reset), .Z(N11) );
  GTECH_AO21 U400 ( .A(period[1]), .B(n216), .C(reset), .Z(N10) );
  GTECH_NOT U401 ( .A(n217), .Z(n216) );
  GTECH_NAND2 U402 ( .A(period_load), .B(n188), .Z(n217) );
  GTECH_NOT U403 ( .A(reset), .Z(n188) );
endmodule

