
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
         n27, n28, n31, n32, n76, n77, n158, n162, sub_85_carry_2_, n163, n164,
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
         n352, n353, n354, n355;
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
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
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
  GTECH_OA21 U192 ( .A(n203), .B(n198), .C(n204), .Z(n202) );
  GTECH_NAND3 U193 ( .A(n205), .B(n203), .C(n197), .Z(n204) );
  GTECH_NAND3 U194 ( .A(n206), .B(n192), .C(n199), .Z(segments[1]) );
  GTECH_NOT U195 ( .A(n207), .Z(n199) );
  GTECH_OAI21 U196 ( .A(n208), .B(n197), .C(n198), .Z(n207) );
  GTECH_NAND3 U197 ( .A(n197), .B(n209), .C(n203), .Z(n206) );
  GTECH_NAND3 U198 ( .A(n194), .B(n192), .C(n210), .Z(segments[0]) );
  GTECH_OA22 U199 ( .A(n211), .B(n198), .C(n208), .D(n197), .Z(n210) );
  GTECH_NAND2 U200 ( .A(n212), .B(n209), .Z(n198) );
  GTECH_NAND2 U201 ( .A(n195), .B(n212), .Z(n192) );
  GTECH_NOT U202 ( .A(n205), .Z(n212) );
  GTECH_NOT U203 ( .A(n208), .Z(n195) );
  GTECH_NAND2 U204 ( .A(n213), .B(n203), .Z(n208) );
  GTECH_NOT U205 ( .A(n209), .Z(n213) );
  GTECH_NAND3 U206 ( .A(n205), .B(n209), .C(n211), .Z(n194) );
  GTECH_NOT U207 ( .A(n214), .Z(n211) );
  GTECH_NAND2 U208 ( .A(n201), .B(n203), .Z(n214) );
  GTECH_NOT U209 ( .A(n215), .Z(n203) );
  GTECH_OAI22 U210 ( .A(n216), .B(n28), .C(n158), .D(n32), .Z(n215) );
  GTECH_NOT U211 ( .A(n197), .Z(n201) );
  GTECH_OAI22 U212 ( .A(seven_segment0_ten_count_reg[0]), .B(n158), .C(
        seven_segment0_unit_count_reg[0]), .D(n216), .Z(n197) );
  GTECH_OAI22 U213 ( .A(seven_segment0_ten_count_reg[1]), .B(n158), .C(
        seven_segment0_unit_count_reg[1]), .D(n216), .Z(n209) );
  GTECH_OAI22 U214 ( .A(n216), .B(n27), .C(n158), .D(n31), .Z(n205) );
  GTECH_NOT U215 ( .A(n158), .Z(n216) );
  GTECH_AO21 U216 ( .A(period[0]), .B(n217), .C(reset), .Z(N9) );
  GTECH_AND2 U217 ( .A(period[11]), .B(n217), .Z(N21) );
  GTECH_NAND2 U218 ( .A(n190), .B(n218), .Z(N20) );
  GTECH_AO21 U219 ( .A(period[10]), .B(n217), .C(reset), .Z(N19) );
  GTECH_AND2 U220 ( .A(period[9]), .B(n217), .Z(N18) );
  GTECH_AND2 U221 ( .A(period[8]), .B(n217), .Z(N17) );
  GTECH_AND2 U222 ( .A(N170), .B(n219), .Z(N168) );
  GTECH_NAND2 U223 ( .A(n220), .B(n221), .Z(N167) );
  GTECH_AND2 U224 ( .A(N170), .B(n222), .Z(N166) );
  GTECH_AND2 U225 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U226 ( .A(N170), .B(n223), .Z(N162) );
  GTECH_NOT U227 ( .A(n224), .Z(N170) );
  GTECH_NAND2 U228 ( .A(n225), .B(n190), .Z(n224) );
  GTECH_NOT U229 ( .A(n221), .Z(n225) );
  GTECH_OAI22 U230 ( .A(n226), .B(n227), .C(n228), .D(n229), .Z(N160) );
  GTECH_OA21 U231 ( .A(n230), .B(ten_count[2]), .C(n231), .Z(n228) );
  GTECH_NAND2 U232 ( .A(ten_count[2]), .B(n229), .Z(n227) );
  GTECH_NOT U233 ( .A(ten_count[3]), .Z(n229) );
  GTECH_AO21 U234 ( .A(period[7]), .B(n217), .C(reset), .Z(N16) );
  GTECH_OAI21 U235 ( .A(n232), .B(n233), .C(n234), .Z(N159) );
  GTECH_OAI22 U236 ( .A(n231), .B(n235), .C(ten_count[2]), .D(n226), .Z(N158)
         );
  GTECH_NAND3 U237 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n226) );
  GTECH_NOT U238 ( .A(ten_count[2]), .Z(n235) );
  GTECH_NOT U239 ( .A(n236), .Z(n231) );
  GTECH_OAI21 U240 ( .A(ten_count[1]), .B(n230), .C(n237), .Z(n236) );
  GTECH_OAI21 U241 ( .A(n238), .B(n237), .C(n239), .Z(N156) );
  GTECH_NAND3 U242 ( .A(N152), .B(ten_count[0]), .C(n238), .Z(n239) );
  GTECH_NOT U243 ( .A(ten_count[1]), .Z(n238) );
  GTECH_NOT U244 ( .A(n237), .Z(N154) );
  GTECH_NAND2 U245 ( .A(N152), .B(n240), .Z(n237) );
  GTECH_NOT U246 ( .A(ten_count[0]), .Z(n240) );
  GTECH_NAND2 U247 ( .A(n241), .B(n162), .Z(N151) );
  GTECH_OA21 U248 ( .A(n14), .B(n242), .C(n220), .Z(n241) );
  GTECH_NOT U249 ( .A(n243), .Z(n220) );
  GTECH_OAI21 U250 ( .A(n244), .B(n232), .C(n190), .Z(n243) );
  GTECH_AND2 U251 ( .A(period[6]), .B(n217), .Z(N15) );
  GTECH_OAI21 U252 ( .A(n230), .B(n242), .C(n245), .Z(N148) );
  GTECH_AND2 U253 ( .A(n246), .B(n247), .Z(n245) );
  GTECH_NAND4 U254 ( .A(n248), .B(N150), .C(n249), .D(n175), .Z(n247) );
  GTECH_AO21 U255 ( .A(n250), .B(n251), .C(n175), .Z(n246) );
  GTECH_OA22 U256 ( .A(n252), .B(n248), .C(n230), .D(n176), .Z(n250) );
  GTECH_NAND3 U257 ( .A(n253), .B(n221), .C(n234), .Z(N147) );
  GTECH_AND2 U258 ( .A(n190), .B(n254), .Z(n234) );
  GTECH_NAND3 U259 ( .A(n244), .B(n162), .C(n242), .Z(n254) );
  GTECH_NAND4 U260 ( .A(n189), .B(n176), .C(n175), .D(n255), .Z(n242) );
  GTECH_NAND2 U261 ( .A(n14), .B(n256), .Z(n221) );
  GTECH_NOT U262 ( .A(n162), .Z(n256) );
  GTECH_NAND3 U263 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n253) );
  GTECH_OAI22 U264 ( .A(n257), .B(n248), .C(n176), .D(n251), .Z(N146) );
  GTECH_OA21 U265 ( .A(n249), .B(n252), .C(n258), .Z(n251) );
  GTECH_AO21 U266 ( .A(n255), .B(n189), .C(n230), .Z(n258) );
  GTECH_NOT U267 ( .A(n259), .Z(n249) );
  GTECH_NOT U268 ( .A(n176), .Z(n248) );
  GTECH_OA21 U269 ( .A(n259), .B(n252), .C(n260), .Z(n257) );
  GTECH_NAND3 U270 ( .A(n219), .B(n261), .C(n262), .Z(n259) );
  GTECH_NOT U271 ( .A(n189), .Z(n261) );
  GTECH_NAND2 U272 ( .A(n263), .B(n260), .Z(N144) );
  GTECH_NAND3 U273 ( .A(N152), .B(n255), .C(n189), .Z(n260) );
  GTECH_OA21 U274 ( .A(n189), .B(n264), .C(n265), .Z(n263) );
  GTECH_NAND4 U275 ( .A(n262), .B(n219), .C(N150), .D(n189), .Z(n265) );
  GTECH_NOT U276 ( .A(n266), .Z(n262) );
  GTECH_OA21 U277 ( .A(n230), .B(n255), .C(n267), .Z(n264) );
  GTECH_OAI21 U278 ( .A(n22), .B(n266), .C(N150), .Z(n267) );
  GTECH_NAND2 U279 ( .A(n268), .B(n219), .Z(n255) );
  GTECH_NOT U280 ( .A(n22), .Z(n219) );
  GTECH_OAI21 U281 ( .A(n252), .B(n269), .C(n270), .Z(N142) );
  GTECH_OA21 U282 ( .A(n22), .B(n271), .C(n272), .Z(n270) );
  GTECH_NAND3 U283 ( .A(N152), .B(n268), .C(n22), .Z(n272) );
  GTECH_XNOR2 U284 ( .A(n266), .B(n22), .Z(n269) );
  GTECH_NAND3 U285 ( .A(n223), .B(n222), .C(sub_85_carry_2_), .Z(n266) );
  GTECH_NOT U286 ( .A(n20), .Z(n222) );
  GTECH_NAND3 U287 ( .A(n271), .B(n273), .C(n274), .Z(N140) );
  GTECH_NAND4 U288 ( .A(sub_85_carry_2_), .B(n223), .C(N150), .D(n20), .Z(n274) );
  GTECH_NOT U289 ( .A(n16), .Z(n223) );
  GTECH_AO21 U290 ( .A(n275), .B(n276), .C(n20), .Z(n273) );
  GTECH_OA22 U291 ( .A(sub_85_carry_2_), .B(n252), .C(n277), .D(n230), .Z(n276) );
  GTECH_NAND2 U292 ( .A(n278), .B(N152), .Z(n271) );
  GTECH_NOT U293 ( .A(n230), .Z(N152) );
  GTECH_NOT U294 ( .A(n268), .Z(n278) );
  GTECH_NAND2 U295 ( .A(n20), .B(n277), .Z(n268) );
  GTECH_AO21 U296 ( .A(period[5]), .B(n217), .C(reset), .Z(N14) );
  GTECH_OAI22 U297 ( .A(sub_85_carry_2_), .B(n279), .C(n277), .D(n275), .Z(
        N138) );
  GTECH_NOT U298 ( .A(sub_85_carry_2_), .Z(n277) );
  GTECH_OA21 U299 ( .A(n16), .B(n252), .C(n230), .Z(n279) );
  GTECH_OAI21 U300 ( .A(n16), .B(n230), .C(n275), .Z(N136) );
  GTECH_NAND2 U301 ( .A(n16), .B(N150), .Z(n275) );
  GTECH_NOT U302 ( .A(n252), .Z(N150) );
  GTECH_NAND2 U303 ( .A(n280), .B(n190), .Z(n252) );
  GTECH_NOT U304 ( .A(n233), .Z(n280) );
  GTECH_NAND2 U305 ( .A(n162), .B(n281), .Z(n230) );
  GTECH_NOT U306 ( .A(N169), .Z(n281) );
  GTECH_NAND2 U307 ( .A(n190), .B(n244), .Z(N169) );
  GTECH_NOT U308 ( .A(n14), .Z(n244) );
  GTECH_AND2 U309 ( .A(n282), .B(n283), .Z(N134) );
  GTECH_OAI21 U310 ( .A(n174), .B(n284), .C(n163), .Z(n283) );
  GTECH_NAND2 U311 ( .A(n190), .B(n233), .Z(N133) );
  GTECH_NAND2 U312 ( .A(n162), .B(n14), .Z(n233) );
  GTECH_AND2 U313 ( .A(n285), .B(n282), .Z(N132) );
  GTECH_XOR2 U314 ( .A(n284), .B(n174), .Z(n285) );
  GTECH_NAND2 U315 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_NOT U316 ( .A(n288), .Z(n286) );
  GTECH_AND2 U317 ( .A(n289), .B(n282), .Z(N130) );
  GTECH_XOR2 U318 ( .A(n288), .B(n164), .Z(n289) );
  GTECH_NAND2 U319 ( .A(n290), .B(n291), .Z(n288) );
  GTECH_NOT U320 ( .A(n165), .Z(n291) );
  GTECH_NOT U321 ( .A(n292), .Z(n290) );
  GTECH_AND2 U322 ( .A(period[4]), .B(n217), .Z(N13) );
  GTECH_AND2 U323 ( .A(n293), .B(n282), .Z(N128) );
  GTECH_XOR2 U324 ( .A(n292), .B(n165), .Z(n293) );
  GTECH_NAND2 U325 ( .A(n294), .B(n295), .Z(n292) );
  GTECH_NOT U326 ( .A(n296), .Z(n294) );
  GTECH_AND2 U327 ( .A(n297), .B(n282), .Z(N126) );
  GTECH_XOR2 U328 ( .A(n296), .B(n166), .Z(n297) );
  GTECH_NAND2 U329 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_NOT U330 ( .A(n167), .Z(n299) );
  GTECH_NOT U331 ( .A(n300), .Z(n298) );
  GTECH_AND2 U332 ( .A(n301), .B(n282), .Z(N124) );
  GTECH_XOR2 U333 ( .A(n300), .B(n167), .Z(n301) );
  GTECH_NAND2 U334 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_NOT U335 ( .A(n168), .Z(n303) );
  GTECH_NOT U336 ( .A(n304), .Z(n302) );
  GTECH_AND2 U337 ( .A(n305), .B(n282), .Z(N122) );
  GTECH_XOR2 U338 ( .A(n304), .B(n168), .Z(n305) );
  GTECH_NAND2 U339 ( .A(n306), .B(n307), .Z(n304) );
  GTECH_NOT U340 ( .A(n169), .Z(n307) );
  GTECH_NOT U341 ( .A(n308), .Z(n306) );
  GTECH_AND2 U342 ( .A(n309), .B(n282), .Z(N120) );
  GTECH_XOR2 U343 ( .A(n308), .B(n169), .Z(n309) );
  GTECH_NAND2 U344 ( .A(n310), .B(n311), .Z(n308) );
  GTECH_NOT U345 ( .A(n312), .Z(n310) );
  GTECH_AO21 U346 ( .A(period[3]), .B(n217), .C(reset), .Z(N12) );
  GTECH_AND2 U347 ( .A(n313), .B(n282), .Z(N118) );
  GTECH_XOR2 U348 ( .A(n312), .B(n170), .Z(n313) );
  GTECH_NAND3 U349 ( .A(n314), .B(n315), .C(n316), .Z(n312) );
  GTECH_NOT U350 ( .A(n171), .Z(n316) );
  GTECH_OAI22 U351 ( .A(n171), .B(n317), .C(n318), .D(n319), .Z(N116) );
  GTECH_OAI21 U352 ( .A(n172), .B(n171), .C(n320), .Z(n319) );
  GTECH_OAI21 U353 ( .A(n173), .B(n172), .C(n171), .Z(n320) );
  GTECH_OAI21 U354 ( .A(n172), .B(n317), .C(n321), .Z(N114) );
  GTECH_NAND3 U355 ( .A(n282), .B(n315), .C(n172), .Z(n321) );
  GTECH_NOT U356 ( .A(n173), .Z(n315) );
  GTECH_NOT U357 ( .A(n317), .Z(N112) );
  GTECH_NAND2 U358 ( .A(n282), .B(n173), .Z(n317) );
  GTECH_NOT U359 ( .A(n318), .Z(n282) );
  GTECH_NAND2 U360 ( .A(n232), .B(n190), .Z(n318) );
  GTECH_NOT U361 ( .A(n322), .Z(n232) );
  GTECH_AOI222 U362 ( .A(n323), .B(n324), .C(update_period[11]), .D(n163), .E(
        n325), .F(n326), .Z(n322) );
  GTECH_OAI2N2 U363 ( .A(n327), .B(n328), .C(n329), .D(n330), .Z(n325) );
  GTECH_OAI21 U364 ( .A(n331), .B(n287), .C(n332), .Z(n330) );
  GTECH_NAND3 U365 ( .A(n333), .B(update_period[8]), .C(n165), .Z(n332) );
  GTECH_AND3 U366 ( .A(n333), .B(n329), .C(n326), .Z(n324) );
  GTECH_NAND2 U367 ( .A(n334), .B(n335), .Z(n326) );
  GTECH_NOT U368 ( .A(n163), .Z(n335) );
  GTECH_NOT U369 ( .A(update_period[11]), .Z(n334) );
  GTECH_NAND2 U370 ( .A(n328), .B(n327), .Z(n329) );
  GTECH_NOT U371 ( .A(n174), .Z(n327) );
  GTECH_NOT U372 ( .A(update_period[10]), .Z(n328) );
  GTECH_NAND2 U373 ( .A(n287), .B(n331), .Z(n333) );
  GTECH_NOT U374 ( .A(update_period[9]), .Z(n331) );
  GTECH_NOT U375 ( .A(n164), .Z(n287) );
  GTECH_OA22 U376 ( .A(n165), .B(update_period[8]), .C(n336), .D(n337), .Z(
        n323) );
  GTECH_OAI21 U377 ( .A(n295), .B(n338), .C(n339), .Z(n337) );
  GTECH_NAND3 U378 ( .A(n340), .B(update_period[6]), .C(n167), .Z(n339) );
  GTECH_OAI2N2 U379 ( .A(n341), .B(n342), .C(n343), .D(n344), .Z(n336) );
  GTECH_ADD_ABC U380 ( .A(n345), .B(n168), .C(update_period[5]), .COUT(n344)
         );
  GTECH_AND2 U381 ( .A(update_period[4]), .B(n169), .Z(n345) );
  GTECH_OAI21 U382 ( .A(update_period[4]), .B(n169), .C(n343), .Z(n342) );
  GTECH_NOT U383 ( .A(n346), .Z(n343) );
  GTECH_OAI21 U384 ( .A(update_period[6]), .B(n167), .C(n340), .Z(n346) );
  GTECH_NAND2 U385 ( .A(n338), .B(n295), .Z(n340) );
  GTECH_NOT U386 ( .A(n166), .Z(n295) );
  GTECH_NOT U387 ( .A(update_period[7]), .Z(n338) );
  GTECH_OAI22 U388 ( .A(update_period[5]), .B(n168), .C(n347), .D(n348), .Z(
        n341) );
  GTECH_OAI21 U389 ( .A(n311), .B(n349), .C(n350), .Z(n348) );
  GTECH_NAND3 U390 ( .A(n351), .B(update_period[2]), .C(n171), .Z(n350) );
  GTECH_AND3 U391 ( .A(n352), .B(n353), .C(n351), .Z(n347) );
  GTECH_NAND2 U392 ( .A(n349), .B(n311), .Z(n351) );
  GTECH_NOT U393 ( .A(n170), .Z(n311) );
  GTECH_NOT U394 ( .A(update_period[3]), .Z(n349) );
  GTECH_OAI21 U395 ( .A(n354), .B(n314), .C(n178), .Z(n353) );
  GTECH_NOT U396 ( .A(n172), .Z(n314) );
  GTECH_OA21 U397 ( .A(n171), .B(update_period[2]), .C(n355), .Z(n352) );
  GTECH_OR_NOT U398 ( .A(n172), .B(n354), .Z(n355) );
  GTECH_NAND2 U399 ( .A(update_period[0]), .B(n173), .Z(n354) );
  GTECH_AO21 U400 ( .A(period[2]), .B(n217), .C(reset), .Z(N11) );
  GTECH_AO21 U401 ( .A(period[1]), .B(n217), .C(reset), .Z(N10) );
  GTECH_NOT U402 ( .A(n218), .Z(n217) );
  GTECH_NAND2 U403 ( .A(period_load), .B(n190), .Z(n218) );
  GTECH_NOT U404 ( .A(reset), .Z(n190) );
endmodule

