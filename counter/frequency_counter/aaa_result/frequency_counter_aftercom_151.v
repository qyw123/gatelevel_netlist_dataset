
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
         n26, n27, n30, n31, n76, n77, n158, n162, sub_85_carry_2_, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n178, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353;
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
        .CP(clk), .Q(update_period[1]), .QN(n178) );
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
  GTECH_FJK1S update_digits_reg ( .J(n77), .K(n77), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
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
        seven_segment0_unit_count_reg[2]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
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
  GTECH_NAND2 U183 ( .A(n191), .B(n192), .Z(segments[6]) );
  GTECH_NOT U184 ( .A(n193), .Z(segments[4]) );
  GTECH_NAND3 U185 ( .A(n192), .B(n193), .C(n194), .Z(segments[3]) );
  GTECH_OAI21 U186 ( .A(n195), .B(n196), .C(n197), .Z(n193) );
  GTECH_NOT U187 ( .A(n198), .Z(n196) );
  GTECH_NAND2 U188 ( .A(n199), .B(n200), .Z(segments[2]) );
  GTECH_NOT U189 ( .A(segments[5]), .Z(n200) );
  GTECH_OAI21 U190 ( .A(n201), .B(n198), .C(n191), .Z(segments[5]) );
  GTECH_AND2 U191 ( .A(n202), .B(n194), .Z(n191) );
  GTECH_MUX2 U192 ( .A(n198), .B(n203), .S(n204), .Z(n202) );
  GTECH_NAND2 U193 ( .A(n197), .B(n205), .Z(n203) );
  GTECH_NAND3 U194 ( .A(n206), .B(n192), .C(n199), .Z(segments[1]) );
  GTECH_NOT U195 ( .A(n207), .Z(n199) );
  GTECH_OAI21 U196 ( .A(n208), .B(n197), .C(n198), .Z(n207) );
  GTECH_NAND3 U197 ( .A(n197), .B(n204), .C(n209), .Z(n206) );
  GTECH_NOT U198 ( .A(n201), .Z(n197) );
  GTECH_NAND3 U199 ( .A(n194), .B(n192), .C(n210), .Z(segments[0]) );
  GTECH_AOI2N2 U200 ( .A(n201), .B(n195), .C(n211), .D(n198), .Z(n210) );
  GTECH_NAND2 U201 ( .A(n209), .B(n212), .Z(n198) );
  GTECH_NAND2 U202 ( .A(n195), .B(n212), .Z(n192) );
  GTECH_NOT U203 ( .A(n208), .Z(n195) );
  GTECH_NAND2 U204 ( .A(n213), .B(n204), .Z(n208) );
  GTECH_NOT U205 ( .A(n209), .Z(n213) );
  GTECH_NAND3 U206 ( .A(n209), .B(n205), .C(n211), .Z(n194) );
  GTECH_NOT U207 ( .A(n214), .Z(n211) );
  GTECH_NAND2 U208 ( .A(n201), .B(n204), .Z(n214) );
  GTECH_NOT U209 ( .A(n215), .Z(n204) );
  GTECH_MUX2 U210 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n158), .Z(n215) );
  GTECH_MUX2 U211 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n158), .Z(n201) );
  GTECH_NOT U212 ( .A(n212), .Z(n205) );
  GTECH_MUX2 U213 ( .A(n31), .B(n27), .S(n158), .Z(n212) );
  GTECH_MUX2 U214 ( .A(n30), .B(n26), .S(n158), .Z(n209) );
  GTECH_AO21 U215 ( .A(period[0]), .B(n216), .C(reset), .Z(N9) );
  GTECH_AND2 U216 ( .A(period[11]), .B(n216), .Z(N21) );
  GTECH_NAND2 U217 ( .A(n190), .B(n217), .Z(N20) );
  GTECH_AO21 U218 ( .A(period[10]), .B(n216), .C(reset), .Z(N19) );
  GTECH_AND2 U219 ( .A(period[9]), .B(n216), .Z(N18) );
  GTECH_AND2 U220 ( .A(period[8]), .B(n216), .Z(N17) );
  GTECH_AND2 U221 ( .A(N170), .B(n218), .Z(N168) );
  GTECH_NAND2 U222 ( .A(n219), .B(n220), .Z(N167) );
  GTECH_AND2 U223 ( .A(N170), .B(n221), .Z(N166) );
  GTECH_AND2 U224 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U225 ( .A(N170), .B(n222), .Z(N162) );
  GTECH_NOT U226 ( .A(n223), .Z(N170) );
  GTECH_NAND2 U227 ( .A(n224), .B(n190), .Z(n223) );
  GTECH_NOT U228 ( .A(n220), .Z(n224) );
  GTECH_MUX2 U229 ( .A(n225), .B(n226), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U230 ( .A(ten_count[2]), .B(n227), .C(n228), .Z(n226) );
  GTECH_NOT U231 ( .A(n229), .Z(n228) );
  GTECH_AND2 U232 ( .A(n230), .B(ten_count[2]), .Z(n225) );
  GTECH_AO21 U233 ( .A(period[7]), .B(n216), .C(reset), .Z(N16) );
  GTECH_OAI21 U234 ( .A(n231), .B(n232), .C(n233), .Z(N159) );
  GTECH_MUX2 U235 ( .A(n230), .B(n229), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U236 ( .A(ten_count[1]), .B(n227), .C(n234), .Z(n229) );
  GTECH_NOT U237 ( .A(n235), .Z(n230) );
  GTECH_NAND3 U238 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n235) );
  GTECH_MUX2 U239 ( .A(n236), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U240 ( .A(N152), .B(ten_count[0]), .Z(n236) );
  GTECH_NOT U241 ( .A(n234), .Z(N154) );
  GTECH_NAND2 U242 ( .A(N152), .B(n237), .Z(n234) );
  GTECH_NOT U243 ( .A(ten_count[0]), .Z(n237) );
  GTECH_NAND2 U244 ( .A(n238), .B(n162), .Z(N151) );
  GTECH_OA21 U245 ( .A(n14), .B(n239), .C(n219), .Z(n238) );
  GTECH_NOT U246 ( .A(n240), .Z(n219) );
  GTECH_OAI21 U247 ( .A(n241), .B(n231), .C(n190), .Z(n240) );
  GTECH_AND2 U248 ( .A(period[6]), .B(n216), .Z(N15) );
  GTECH_OAI21 U249 ( .A(n227), .B(n239), .C(n242), .Z(N148) );
  GTECH_MUX2 U250 ( .A(n243), .B(n244), .S(n175), .Z(n242) );
  GTECH_OR3 U251 ( .A(n176), .B(n245), .C(n246), .Z(n244) );
  GTECH_AND_NOT U252 ( .A(n247), .B(n248), .Z(n243) );
  GTECH_MUX2 U253 ( .A(n227), .B(n245), .S(n176), .Z(n247) );
  GTECH_NAND3 U254 ( .A(n249), .B(n220), .C(n233), .Z(N147) );
  GTECH_AND2 U255 ( .A(n190), .B(n250), .Z(n233) );
  GTECH_NAND3 U256 ( .A(n241), .B(n162), .C(n239), .Z(n250) );
  GTECH_NAND4 U257 ( .A(n189), .B(n176), .C(n175), .D(n251), .Z(n239) );
  GTECH_NAND2 U258 ( .A(n14), .B(n252), .Z(n220) );
  GTECH_NOT U259 ( .A(n162), .Z(n252) );
  GTECH_NAND3 U260 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n249) );
  GTECH_MUX2 U261 ( .A(n248), .B(n253), .S(n176), .Z(N146) );
  GTECH_OAI21 U262 ( .A(n246), .B(n245), .C(n254), .Z(n253) );
  GTECH_OAI21 U263 ( .A(n255), .B(n245), .C(n256), .Z(n248) );
  GTECH_AO21 U264 ( .A(n251), .B(n189), .C(n227), .Z(n256) );
  GTECH_NOT U265 ( .A(n246), .Z(n255) );
  GTECH_NAND3 U266 ( .A(n218), .B(n257), .C(n258), .Z(n246) );
  GTECH_NOT U267 ( .A(n189), .Z(n257) );
  GTECH_NAND2 U268 ( .A(n259), .B(n254), .Z(N144) );
  GTECH_NAND3 U269 ( .A(N152), .B(n251), .C(n189), .Z(n254) );
  GTECH_MUX2 U270 ( .A(n260), .B(n261), .S(n189), .Z(n259) );
  GTECH_NAND3 U271 ( .A(n258), .B(n218), .C(N150), .Z(n261) );
  GTECH_OA21 U272 ( .A(n227), .B(n251), .C(n262), .Z(n260) );
  GTECH_OAI21 U273 ( .A(n22), .B(n263), .C(N150), .Z(n262) );
  GTECH_NAND2 U274 ( .A(n264), .B(n218), .Z(n251) );
  GTECH_NOT U275 ( .A(n22), .Z(n218) );
  GTECH_OAI21 U276 ( .A(n245), .B(n265), .C(n266), .Z(N142) );
  GTECH_MUX2 U277 ( .A(n267), .B(n268), .S(n22), .Z(n266) );
  GTECH_NAND2 U278 ( .A(N152), .B(n264), .Z(n268) );
  GTECH_XOR2 U279 ( .A(n22), .B(n258), .Z(n265) );
  GTECH_NOT U280 ( .A(n263), .Z(n258) );
  GTECH_NAND3 U281 ( .A(n222), .B(n221), .C(sub_85_carry_2_), .Z(n263) );
  GTECH_NOT U282 ( .A(n20), .Z(n221) );
  GTECH_NAND2 U283 ( .A(n269), .B(n267), .Z(N140) );
  GTECH_NAND2 U284 ( .A(n270), .B(N152), .Z(n267) );
  GTECH_NOT U285 ( .A(n227), .Z(N152) );
  GTECH_NOT U286 ( .A(n264), .Z(n270) );
  GTECH_NAND2 U287 ( .A(n20), .B(n271), .Z(n264) );
  GTECH_NOT U288 ( .A(sub_85_carry_2_), .Z(n271) );
  GTECH_MUX2 U289 ( .A(n272), .B(n273), .S(n20), .Z(n269) );
  GTECH_NAND3 U290 ( .A(sub_85_carry_2_), .B(n222), .C(N150), .Z(n273) );
  GTECH_NOT U291 ( .A(n16), .Z(n222) );
  GTECH_AND2 U292 ( .A(n274), .B(n275), .Z(n272) );
  GTECH_MUX2 U293 ( .A(n245), .B(n227), .S(sub_85_carry_2_), .Z(n274) );
  GTECH_AO21 U294 ( .A(period[5]), .B(n216), .C(reset), .Z(N14) );
  GTECH_MUX2 U295 ( .A(n276), .B(n277), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U296 ( .A(n275), .Z(n277) );
  GTECH_OAI21 U297 ( .A(n16), .B(n245), .C(n227), .Z(n276) );
  GTECH_OAI21 U298 ( .A(n16), .B(n227), .C(n275), .Z(N136) );
  GTECH_NAND2 U299 ( .A(n16), .B(N150), .Z(n275) );
  GTECH_NOT U300 ( .A(n245), .Z(N150) );
  GTECH_NAND2 U301 ( .A(n278), .B(n190), .Z(n245) );
  GTECH_NOT U302 ( .A(n232), .Z(n278) );
  GTECH_NAND2 U303 ( .A(n162), .B(n279), .Z(n227) );
  GTECH_NOT U304 ( .A(N169), .Z(n279) );
  GTECH_NAND2 U305 ( .A(n190), .B(n241), .Z(N169) );
  GTECH_NOT U306 ( .A(n14), .Z(n241) );
  GTECH_AND2 U307 ( .A(n280), .B(n281), .Z(N134) );
  GTECH_OAI21 U308 ( .A(n174), .B(n282), .C(n163), .Z(n281) );
  GTECH_NAND2 U309 ( .A(n190), .B(n232), .Z(N133) );
  GTECH_NAND2 U310 ( .A(n162), .B(n14), .Z(n232) );
  GTECH_AND2 U311 ( .A(n283), .B(n280), .Z(N132) );
  GTECH_XOR2 U312 ( .A(n282), .B(n174), .Z(n283) );
  GTECH_NAND2 U313 ( .A(n284), .B(n285), .Z(n282) );
  GTECH_NOT U314 ( .A(n286), .Z(n284) );
  GTECH_AND2 U315 ( .A(n287), .B(n280), .Z(N130) );
  GTECH_XOR2 U316 ( .A(n286), .B(n164), .Z(n287) );
  GTECH_NAND2 U317 ( .A(n288), .B(n289), .Z(n286) );
  GTECH_NOT U318 ( .A(n165), .Z(n289) );
  GTECH_NOT U319 ( .A(n290), .Z(n288) );
  GTECH_AND2 U320 ( .A(period[4]), .B(n216), .Z(N13) );
  GTECH_AND2 U321 ( .A(n291), .B(n280), .Z(N128) );
  GTECH_XOR2 U322 ( .A(n290), .B(n165), .Z(n291) );
  GTECH_NAND2 U323 ( .A(n292), .B(n293), .Z(n290) );
  GTECH_NOT U324 ( .A(n294), .Z(n292) );
  GTECH_AND2 U325 ( .A(n295), .B(n280), .Z(N126) );
  GTECH_XOR2 U326 ( .A(n294), .B(n166), .Z(n295) );
  GTECH_NAND2 U327 ( .A(n296), .B(n297), .Z(n294) );
  GTECH_NOT U328 ( .A(n167), .Z(n297) );
  GTECH_NOT U329 ( .A(n298), .Z(n296) );
  GTECH_AND2 U330 ( .A(n299), .B(n280), .Z(N124) );
  GTECH_XOR2 U331 ( .A(n298), .B(n167), .Z(n299) );
  GTECH_NAND2 U332 ( .A(n300), .B(n301), .Z(n298) );
  GTECH_NOT U333 ( .A(n168), .Z(n301) );
  GTECH_NOT U334 ( .A(n302), .Z(n300) );
  GTECH_AND2 U335 ( .A(n303), .B(n280), .Z(N122) );
  GTECH_XOR2 U336 ( .A(n302), .B(n168), .Z(n303) );
  GTECH_NAND2 U337 ( .A(n304), .B(n305), .Z(n302) );
  GTECH_NOT U338 ( .A(n169), .Z(n305) );
  GTECH_NOT U339 ( .A(n306), .Z(n304) );
  GTECH_AND2 U340 ( .A(n307), .B(n280), .Z(N120) );
  GTECH_XOR2 U341 ( .A(n306), .B(n169), .Z(n307) );
  GTECH_NAND2 U342 ( .A(n308), .B(n309), .Z(n306) );
  GTECH_NOT U343 ( .A(n310), .Z(n308) );
  GTECH_AO21 U344 ( .A(period[3]), .B(n216), .C(reset), .Z(N12) );
  GTECH_AND2 U345 ( .A(n311), .B(n280), .Z(N118) );
  GTECH_XOR2 U346 ( .A(n310), .B(n170), .Z(n311) );
  GTECH_NAND3 U347 ( .A(n312), .B(n313), .C(n314), .Z(n310) );
  GTECH_NOT U348 ( .A(n171), .Z(n314) );
  GTECH_OAI22 U349 ( .A(n171), .B(n315), .C(n316), .D(n317), .Z(N116) );
  GTECH_MUX2 U350 ( .A(n312), .B(n318), .S(n171), .Z(n317) );
  GTECH_NAND2 U351 ( .A(n312), .B(n313), .Z(n318) );
  GTECH_MUX2 U352 ( .A(N112), .B(n319), .S(n172), .Z(N114) );
  GTECH_AND2 U353 ( .A(n280), .B(n313), .Z(n319) );
  GTECH_NOT U354 ( .A(n173), .Z(n313) );
  GTECH_NOT U355 ( .A(n315), .Z(N112) );
  GTECH_NAND2 U356 ( .A(n280), .B(n173), .Z(n315) );
  GTECH_NOT U357 ( .A(n316), .Z(n280) );
  GTECH_NAND2 U358 ( .A(n231), .B(n190), .Z(n316) );
  GTECH_NOT U359 ( .A(n320), .Z(n231) );
  GTECH_AOI222 U360 ( .A(n321), .B(n322), .C(update_period[11]), .D(n163), .E(
        n323), .F(n324), .Z(n320) );
  GTECH_AND_NOT U361 ( .A(n325), .B(n326), .Z(n323) );
  GTECH_AOI222 U362 ( .A(update_period[10]), .B(n174), .C(update_period[9]), 
        .D(n164), .E(n327), .F(update_period[8]), .Z(n326) );
  GTECH_AND2 U363 ( .A(n165), .B(n328), .Z(n327) );
  GTECH_AND3 U364 ( .A(n328), .B(n324), .C(n325), .Z(n322) );
  GTECH_NAND2 U365 ( .A(n329), .B(n330), .Z(n325) );
  GTECH_NOT U366 ( .A(n174), .Z(n330) );
  GTECH_NOT U367 ( .A(update_period[10]), .Z(n329) );
  GTECH_NAND2 U368 ( .A(n331), .B(n332), .Z(n324) );
  GTECH_NOT U369 ( .A(n163), .Z(n332) );
  GTECH_NOT U370 ( .A(update_period[11]), .Z(n331) );
  GTECH_NAND2 U371 ( .A(n285), .B(n333), .Z(n328) );
  GTECH_NOT U372 ( .A(update_period[9]), .Z(n333) );
  GTECH_NOT U373 ( .A(n164), .Z(n285) );
  GTECH_AOI2N2 U374 ( .A(n334), .B(n335), .C(update_period[8]), .D(n165), .Z(
        n321) );
  GTECH_AOI2N2 U375 ( .A(n336), .B(n337), .C(n338), .D(n339), .Z(n335) );
  GTECH_OAI21 U376 ( .A(update_period[4]), .B(n169), .C(n336), .Z(n339) );
  GTECH_OAI22 U377 ( .A(update_period[5]), .B(n168), .C(n340), .D(n341), .Z(
        n338) );
  GTECH_OAI21 U378 ( .A(n309), .B(n342), .C(n343), .Z(n341) );
  GTECH_NAND3 U379 ( .A(n344), .B(update_period[2]), .C(n171), .Z(n343) );
  GTECH_AND3 U380 ( .A(n345), .B(n346), .C(n344), .Z(n340) );
  GTECH_NAND2 U381 ( .A(n342), .B(n309), .Z(n344) );
  GTECH_NOT U382 ( .A(n170), .Z(n309) );
  GTECH_NOT U383 ( .A(update_period[3]), .Z(n342) );
  GTECH_OAI21 U384 ( .A(n347), .B(n312), .C(n178), .Z(n346) );
  GTECH_NOT U385 ( .A(n172), .Z(n312) );
  GTECH_OA21 U386 ( .A(update_period[2]), .B(n171), .C(n348), .Z(n345) );
  GTECH_OR_NOT U387 ( .A(n172), .B(n347), .Z(n348) );
  GTECH_NAND2 U388 ( .A(update_period[0]), .B(n173), .Z(n347) );
  GTECH_ADD_ABC U389 ( .A(n349), .B(n168), .C(update_period[5]), .COUT(n337)
         );
  GTECH_AND2 U390 ( .A(update_period[4]), .B(n169), .Z(n349) );
  GTECH_NOT U391 ( .A(n350), .Z(n336) );
  GTECH_OAI21 U392 ( .A(update_period[6]), .B(n167), .C(n351), .Z(n350) );
  GTECH_OA21 U393 ( .A(n293), .B(n352), .C(n353), .Z(n334) );
  GTECH_NAND3 U394 ( .A(n351), .B(update_period[6]), .C(n167), .Z(n353) );
  GTECH_NAND2 U395 ( .A(n352), .B(n293), .Z(n351) );
  GTECH_NOT U396 ( .A(update_period[7]), .Z(n352) );
  GTECH_NOT U397 ( .A(n166), .Z(n293) );
  GTECH_AO21 U398 ( .A(period[2]), .B(n216), .C(reset), .Z(N11) );
  GTECH_AO21 U399 ( .A(period[1]), .B(n216), .C(reset), .Z(N10) );
  GTECH_NOT U400 ( .A(n217), .Z(n216) );
  GTECH_NAND2 U401 ( .A(period_load), .B(n190), .Z(n217) );
  GTECH_NOT U402 ( .A(reset), .Z(n190) );
endmodule

