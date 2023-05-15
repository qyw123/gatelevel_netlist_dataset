
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
         n26, n28, n30, n32, n76, n154, n158, sub_85_carry_2_, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
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
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n76), .K(n76), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n76), .K(n76), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n76), .K(n76), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n76), .K(n76), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n76), .K(n76), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n76), .K(n76), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n76), .K(n76), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n76), .K(n76), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n76), .K(n76), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n76), .K(n76), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n76), .K(n76), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n76), .K(n76), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n76), .K(n76), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n172) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n76), .K(n76), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n171) );
  GTECH_FJK1S state_reg_0_ ( .J(n76), .K(n76), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n76), .K(n76), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n158) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n76), .K(n76), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n76), .K(n76), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n76), .K(n76), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n76), .K(n76), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n76), .K(n76), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n76), .K(n76), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n76), .K(n76), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n76), .K(n76), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n76), .K(n76), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n76), .K(n76), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n161) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n76), .K(n76), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n160) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n76), .K(n76), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n159) );
  GTECH_FJK1S update_digits_reg ( .J(n76), .K(n76), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n76), .K(n76), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n185) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n76), .K(n76), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n76), .K(n76), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n76), .K(n76), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n76), .K(n76), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n76), .K(n76), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n76), .K(n76), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n76), .K(n76), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n76), .K(n76), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n76), .K(n76), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n76), .K(n76), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n76), .K(n76), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n76), .K(n76), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n154) );
  GTECH_ZERO U167 ( .Z(n76) );
  GTECH_NAND2 U168 ( .A(n15), .B(n186), .Z(seven_segment0_N9) );
  GTECH_AND2 U169 ( .A(ten_count[0]), .B(n186), .Z(seven_segment0_N8) );
  GTECH_AND2 U170 ( .A(n154), .B(n186), .Z(seven_segment0_N6) );
  GTECH_AND2 U171 ( .A(unit_count[3]), .B(n186), .Z(seven_segment0_N22) );
  GTECH_AND2 U172 ( .A(unit_count[2]), .B(n186), .Z(seven_segment0_N20) );
  GTECH_AND2 U173 ( .A(unit_count[1]), .B(n186), .Z(seven_segment0_N18) );
  GTECH_AND2 U174 ( .A(unit_count[0]), .B(n186), .Z(seven_segment0_N16) );
  GTECH_AND2 U175 ( .A(ten_count[3]), .B(n186), .Z(seven_segment0_N14) );
  GTECH_AND2 U176 ( .A(ten_count[2]), .B(n186), .Z(seven_segment0_N12) );
  GTECH_AND2 U177 ( .A(ten_count[1]), .B(n186), .Z(seven_segment0_N10) );
  GTECH_NAND4 U178 ( .A(n187), .B(n188), .C(n189), .D(n190), .Z(segments[6])
         );
  GTECH_NAND3 U179 ( .A(n190), .B(n191), .C(n192), .Z(segments[5]) );
  GTECH_OR_NOT U180 ( .A(n188), .B(n193), .Z(n191) );
  GTECH_OAI21 U181 ( .A(n194), .B(n195), .C(n196), .Z(segments[3]) );
  GTECH_AND_NOT U182 ( .A(n189), .B(segments[4]), .Z(n196) );
  GTECH_NAND2 U183 ( .A(n197), .B(n188), .Z(segments[4]) );
  GTECH_NAND2 U184 ( .A(n198), .B(n195), .Z(n188) );
  GTECH_NAND2 U185 ( .A(n199), .B(n200), .Z(segments[2]) );
  GTECH_AOI21 U186 ( .A(n198), .B(n193), .C(n201), .Z(n199) );
  GTECH_NAND2 U187 ( .A(n200), .B(n189), .Z(segments[1]) );
  GTECH_AND3 U188 ( .A(n202), .B(n190), .C(n203), .Z(n200) );
  GTECH_OR_NOT U189 ( .A(n204), .B(n205), .Z(n203) );
  GTECH_NAND2 U190 ( .A(n206), .B(n195), .Z(n190) );
  GTECH_NOT U191 ( .A(n194), .Z(n206) );
  GTECH_NAND3 U192 ( .A(n189), .B(n207), .C(n192), .Z(segments[0]) );
  GTECH_NOT U193 ( .A(n201), .Z(n192) );
  GTECH_NAND2 U194 ( .A(n187), .B(n197), .Z(n201) );
  GTECH_NAND2 U195 ( .A(n208), .B(n195), .Z(n197) );
  GTECH_NOT U196 ( .A(n202), .Z(n208) );
  GTECH_NOT U197 ( .A(n209), .Z(n187) );
  GTECH_OAI22 U198 ( .A(n194), .B(n195), .C(n210), .D(n202), .Z(n209) );
  GTECH_NAND2 U199 ( .A(n211), .B(n212), .Z(n202) );
  GTECH_NOT U200 ( .A(n205), .Z(n195) );
  GTECH_NAND3 U201 ( .A(n211), .B(n193), .C(n210), .Z(n194) );
  GTECH_NAND2 U202 ( .A(n205), .B(n198), .Z(n207) );
  GTECH_MUX2 U203 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n154), .Z(n205) );
  GTECH_NAND2 U204 ( .A(n198), .B(n212), .Z(n189) );
  GTECH_NOT U205 ( .A(n193), .Z(n212) );
  GTECH_MUX2 U206 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n154), .Z(n193) );
  GTECH_NOT U207 ( .A(n204), .Z(n198) );
  GTECH_NAND2 U208 ( .A(n210), .B(n213), .Z(n204) );
  GTECH_NOT U209 ( .A(n211), .Z(n213) );
  GTECH_MUX2 U210 ( .A(n30), .B(n26), .S(n154), .Z(n211) );
  GTECH_MUX2 U211 ( .A(n32), .B(n28), .S(n154), .Z(n210) );
  GTECH_AO21 U212 ( .A(period[0]), .B(n214), .C(reset), .Z(N9) );
  GTECH_AND2 U213 ( .A(period[11]), .B(n214), .Z(N21) );
  GTECH_NAND2 U214 ( .A(n186), .B(n215), .Z(N20) );
  GTECH_AO21 U215 ( .A(period[10]), .B(n214), .C(reset), .Z(N19) );
  GTECH_AND2 U216 ( .A(period[9]), .B(n214), .Z(N18) );
  GTECH_AND2 U217 ( .A(period[8]), .B(n214), .Z(N17) );
  GTECH_AND2 U218 ( .A(N170), .B(n216), .Z(N168) );
  GTECH_NAND2 U219 ( .A(n217), .B(n218), .Z(N167) );
  GTECH_NOT U220 ( .A(n219), .Z(n217) );
  GTECH_AND2 U221 ( .A(N170), .B(n220), .Z(N166) );
  GTECH_AND2 U222 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U223 ( .A(N170), .B(n221), .Z(N162) );
  GTECH_NOT U224 ( .A(n222), .Z(N170) );
  GTECH_NAND2 U225 ( .A(n223), .B(n186), .Z(n222) );
  GTECH_NOT U226 ( .A(n218), .Z(n223) );
  GTECH_MUX2 U227 ( .A(n224), .B(n225), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U228 ( .A(ten_count[2]), .B(n226), .C(n227), .Z(n225) );
  GTECH_NOT U229 ( .A(n228), .Z(n227) );
  GTECH_AND2 U230 ( .A(n229), .B(ten_count[2]), .Z(n224) );
  GTECH_AO21 U231 ( .A(period[7]), .B(n214), .C(reset), .Z(N16) );
  GTECH_OAI21 U232 ( .A(n230), .B(n231), .C(n232), .Z(N159) );
  GTECH_MUX2 U233 ( .A(n229), .B(n228), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U234 ( .A(ten_count[1]), .B(n226), .C(n233), .Z(n228) );
  GTECH_NOT U235 ( .A(n234), .Z(n229) );
  GTECH_NAND3 U236 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n234) );
  GTECH_MUX2 U237 ( .A(n235), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U238 ( .A(N152), .B(ten_count[0]), .Z(n235) );
  GTECH_NOT U239 ( .A(n233), .Z(N154) );
  GTECH_NAND2 U240 ( .A(N152), .B(n236), .Z(n233) );
  GTECH_NOT U241 ( .A(ten_count[0]), .Z(n236) );
  GTECH_NAND2 U242 ( .A(n237), .B(n158), .Z(N151) );
  GTECH_AOI21 U243 ( .A(n238), .B(n239), .C(n219), .Z(n237) );
  GTECH_OAI21 U244 ( .A(n239), .B(n230), .C(n186), .Z(n219) );
  GTECH_NOT U245 ( .A(n240), .Z(n238) );
  GTECH_AND2 U246 ( .A(period[6]), .B(n214), .Z(N15) );
  GTECH_OAI21 U247 ( .A(n226), .B(n240), .C(n241), .Z(N148) );
  GTECH_MUX2 U248 ( .A(n242), .B(n243), .S(n171), .Z(n241) );
  GTECH_OR3 U249 ( .A(n172), .B(n244), .C(n245), .Z(n243) );
  GTECH_AND_NOT U250 ( .A(n246), .B(n247), .Z(n242) );
  GTECH_MUX2 U251 ( .A(n226), .B(n244), .S(n172), .Z(n246) );
  GTECH_NAND3 U252 ( .A(n248), .B(n218), .C(n232), .Z(N147) );
  GTECH_AND2 U253 ( .A(n186), .B(n249), .Z(n232) );
  GTECH_NAND3 U254 ( .A(n239), .B(n158), .C(n240), .Z(n249) );
  GTECH_NAND4 U255 ( .A(n185), .B(n172), .C(n171), .D(n250), .Z(n240) );
  GTECH_NAND2 U256 ( .A(n14), .B(n251), .Z(n218) );
  GTECH_NOT U257 ( .A(n158), .Z(n251) );
  GTECH_NAND3 U258 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n248) );
  GTECH_MUX2 U259 ( .A(n247), .B(n252), .S(n172), .Z(N146) );
  GTECH_OAI21 U260 ( .A(n245), .B(n244), .C(n253), .Z(n252) );
  GTECH_OAI21 U261 ( .A(n254), .B(n244), .C(n255), .Z(n247) );
  GTECH_AO21 U262 ( .A(n250), .B(n185), .C(n226), .Z(n255) );
  GTECH_NOT U263 ( .A(n245), .Z(n254) );
  GTECH_NAND3 U264 ( .A(n216), .B(n256), .C(n257), .Z(n245) );
  GTECH_NOT U265 ( .A(n185), .Z(n256) );
  GTECH_NAND2 U266 ( .A(n258), .B(n253), .Z(N144) );
  GTECH_NAND3 U267 ( .A(N152), .B(n250), .C(n185), .Z(n253) );
  GTECH_MUX2 U268 ( .A(n259), .B(n260), .S(n185), .Z(n258) );
  GTECH_NAND3 U269 ( .A(n257), .B(n216), .C(N150), .Z(n260) );
  GTECH_OA22 U270 ( .A(n261), .B(n244), .C(n226), .D(n250), .Z(n259) );
  GTECH_NAND2 U271 ( .A(n262), .B(n216), .Z(n250) );
  GTECH_AND2 U272 ( .A(n257), .B(n216), .Z(n261) );
  GTECH_NOT U273 ( .A(n22), .Z(n216) );
  GTECH_OAI21 U274 ( .A(n244), .B(n263), .C(n264), .Z(N142) );
  GTECH_MUX2 U275 ( .A(n265), .B(n266), .S(n22), .Z(n264) );
  GTECH_NAND2 U276 ( .A(N152), .B(n262), .Z(n266) );
  GTECH_XOR2 U277 ( .A(n22), .B(n257), .Z(n263) );
  GTECH_NOT U278 ( .A(n267), .Z(n257) );
  GTECH_NAND3 U279 ( .A(n221), .B(n220), .C(sub_85_carry_2_), .Z(n267) );
  GTECH_NOT U280 ( .A(n20), .Z(n220) );
  GTECH_NAND2 U281 ( .A(n268), .B(n265), .Z(N140) );
  GTECH_NAND2 U282 ( .A(n269), .B(N152), .Z(n265) );
  GTECH_NOT U283 ( .A(n226), .Z(N152) );
  GTECH_NOT U284 ( .A(n262), .Z(n269) );
  GTECH_NAND2 U285 ( .A(n20), .B(n270), .Z(n262) );
  GTECH_NOT U286 ( .A(sub_85_carry_2_), .Z(n270) );
  GTECH_MUX2 U287 ( .A(n271), .B(n272), .S(n20), .Z(n268) );
  GTECH_NAND3 U288 ( .A(sub_85_carry_2_), .B(n221), .C(N150), .Z(n272) );
  GTECH_NOT U289 ( .A(n16), .Z(n221) );
  GTECH_AND2 U290 ( .A(n273), .B(n274), .Z(n271) );
  GTECH_MUX2 U291 ( .A(n244), .B(n226), .S(sub_85_carry_2_), .Z(n273) );
  GTECH_AO21 U292 ( .A(period[5]), .B(n214), .C(reset), .Z(N14) );
  GTECH_MUX2 U293 ( .A(n275), .B(n276), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U294 ( .A(n274), .Z(n276) );
  GTECH_OAI21 U295 ( .A(n16), .B(n244), .C(n226), .Z(n275) );
  GTECH_OAI21 U296 ( .A(n16), .B(n226), .C(n274), .Z(N136) );
  GTECH_NAND2 U297 ( .A(n16), .B(N150), .Z(n274) );
  GTECH_NOT U298 ( .A(n244), .Z(N150) );
  GTECH_NAND2 U299 ( .A(n277), .B(n186), .Z(n244) );
  GTECH_NOT U300 ( .A(n231), .Z(n277) );
  GTECH_NAND2 U301 ( .A(n158), .B(n278), .Z(n226) );
  GTECH_NOT U302 ( .A(N169), .Z(n278) );
  GTECH_NAND2 U303 ( .A(n186), .B(n239), .Z(N169) );
  GTECH_NOT U304 ( .A(n14), .Z(n239) );
  GTECH_AND2 U305 ( .A(n279), .B(n280), .Z(N134) );
  GTECH_OAI21 U306 ( .A(n170), .B(n281), .C(n159), .Z(n280) );
  GTECH_NAND2 U307 ( .A(n186), .B(n231), .Z(N133) );
  GTECH_NAND2 U308 ( .A(n158), .B(n14), .Z(n231) );
  GTECH_AND2 U309 ( .A(n282), .B(n279), .Z(N132) );
  GTECH_XOR2 U310 ( .A(n281), .B(n170), .Z(n282) );
  GTECH_NAND2 U311 ( .A(n283), .B(n284), .Z(n281) );
  GTECH_NOT U312 ( .A(n285), .Z(n283) );
  GTECH_AND2 U313 ( .A(n286), .B(n279), .Z(N130) );
  GTECH_XOR2 U314 ( .A(n285), .B(n160), .Z(n286) );
  GTECH_NAND2 U315 ( .A(n287), .B(n288), .Z(n285) );
  GTECH_NOT U316 ( .A(n161), .Z(n288) );
  GTECH_NOT U317 ( .A(n289), .Z(n287) );
  GTECH_AND2 U318 ( .A(period[4]), .B(n214), .Z(N13) );
  GTECH_AND2 U319 ( .A(n290), .B(n279), .Z(N128) );
  GTECH_XOR2 U320 ( .A(n289), .B(n161), .Z(n290) );
  GTECH_NAND2 U321 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_NOT U322 ( .A(n162), .Z(n292) );
  GTECH_NOT U323 ( .A(n293), .Z(n291) );
  GTECH_AND2 U324 ( .A(n294), .B(n279), .Z(N126) );
  GTECH_XOR2 U325 ( .A(n293), .B(n162), .Z(n294) );
  GTECH_NAND2 U326 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_NOT U327 ( .A(n163), .Z(n296) );
  GTECH_NOT U328 ( .A(n297), .Z(n295) );
  GTECH_AND2 U329 ( .A(n298), .B(n279), .Z(N124) );
  GTECH_XOR2 U330 ( .A(n297), .B(n163), .Z(n298) );
  GTECH_NAND2 U331 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U332 ( .A(n164), .Z(n300) );
  GTECH_NOT U333 ( .A(n301), .Z(n299) );
  GTECH_AND2 U334 ( .A(n302), .B(n279), .Z(N122) );
  GTECH_XOR2 U335 ( .A(n301), .B(n164), .Z(n302) );
  GTECH_NAND2 U336 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U337 ( .A(n165), .Z(n304) );
  GTECH_NOT U338 ( .A(n305), .Z(n303) );
  GTECH_AND2 U339 ( .A(n306), .B(n279), .Z(N120) );
  GTECH_XOR2 U340 ( .A(n305), .B(n165), .Z(n306) );
  GTECH_NAND2 U341 ( .A(n307), .B(n308), .Z(n305) );
  GTECH_NOT U342 ( .A(n166), .Z(n308) );
  GTECH_NOT U343 ( .A(n309), .Z(n307) );
  GTECH_AO21 U344 ( .A(period[3]), .B(n214), .C(reset), .Z(N12) );
  GTECH_AND2 U345 ( .A(n310), .B(n279), .Z(N118) );
  GTECH_XOR2 U346 ( .A(n309), .B(n166), .Z(n310) );
  GTECH_NAND3 U347 ( .A(n311), .B(n312), .C(n313), .Z(n309) );
  GTECH_NOT U348 ( .A(n167), .Z(n313) );
  GTECH_OAI22 U349 ( .A(n167), .B(n314), .C(n315), .D(n316), .Z(N116) );
  GTECH_MUX2 U350 ( .A(n311), .B(n317), .S(n167), .Z(n316) );
  GTECH_NAND2 U351 ( .A(n311), .B(n312), .Z(n317) );
  GTECH_NOT U352 ( .A(n168), .Z(n311) );
  GTECH_MUX2 U353 ( .A(N112), .B(n318), .S(n168), .Z(N114) );
  GTECH_AND2 U354 ( .A(n279), .B(n312), .Z(n318) );
  GTECH_NOT U355 ( .A(n169), .Z(n312) );
  GTECH_NOT U356 ( .A(n314), .Z(N112) );
  GTECH_NAND2 U357 ( .A(n279), .B(n169), .Z(n314) );
  GTECH_NOT U358 ( .A(n315), .Z(n279) );
  GTECH_NAND2 U359 ( .A(n230), .B(n186), .Z(n315) );
  GTECH_NOT U360 ( .A(n319), .Z(n230) );
  GTECH_AOI222 U361 ( .A(n320), .B(n321), .C(update_period[11]), .D(n159), .E(
        n322), .F(n323), .Z(n319) );
  GTECH_OAI2N2 U362 ( .A(n324), .B(n325), .C(n326), .D(n327), .Z(n322) );
  GTECH_OAI21 U363 ( .A(n328), .B(n284), .C(n329), .Z(n327) );
  GTECH_NAND3 U364 ( .A(n161), .B(n330), .C(update_period[8]), .Z(n329) );
  GTECH_AND3 U365 ( .A(n330), .B(n326), .C(n323), .Z(n321) );
  GTECH_NAND2 U366 ( .A(n331), .B(n332), .Z(n323) );
  GTECH_NOT U367 ( .A(n159), .Z(n332) );
  GTECH_NOT U368 ( .A(update_period[11]), .Z(n331) );
  GTECH_NAND2 U369 ( .A(n325), .B(n324), .Z(n326) );
  GTECH_NOT U370 ( .A(n170), .Z(n324) );
  GTECH_NOT U371 ( .A(update_period[10]), .Z(n325) );
  GTECH_NAND2 U372 ( .A(n284), .B(n328), .Z(n330) );
  GTECH_NOT U373 ( .A(update_period[9]), .Z(n328) );
  GTECH_NOT U374 ( .A(n160), .Z(n284) );
  GTECH_OA22 U375 ( .A(n161), .B(update_period[8]), .C(n333), .D(n334), .Z(
        n320) );
  GTECH_OAI2N2 U376 ( .A(n335), .B(n336), .C(n337), .D(n338), .Z(n334) );
  GTECH_ADD_ABC U377 ( .A(n339), .B(n164), .C(update_period[5]), .COUT(n338)
         );
  GTECH_AND2 U378 ( .A(update_period[4]), .B(n165), .Z(n339) );
  GTECH_NOT U379 ( .A(update_period[6]), .Z(n336) );
  GTECH_OAI21 U380 ( .A(update_period[7]), .B(n162), .C(n163), .Z(n335) );
  GTECH_OAI2N2 U381 ( .A(n340), .B(n341), .C(update_period[7]), .D(n162), .Z(
        n333) );
  GTECH_OAI21 U382 ( .A(update_period[4]), .B(n165), .C(n337), .Z(n341) );
  GTECH_NOT U383 ( .A(n342), .Z(n337) );
  GTECH_OAI22 U384 ( .A(update_period[6]), .B(n163), .C(update_period[7]), .D(
        n162), .Z(n342) );
  GTECH_OAI21 U385 ( .A(update_period[5]), .B(n164), .C(n343), .Z(n340) );
  GTECH_AO21 U386 ( .A(n344), .B(n345), .C(n346), .Z(n343) );
  GTECH_ADD_ABC U387 ( .A(n347), .B(n166), .C(update_period[3]), .COUT(n346)
         );
  GTECH_AND2 U388 ( .A(update_period[2]), .B(n167), .Z(n347) );
  GTECH_ADD_ABC U389 ( .A(update_period[1]), .B(n348), .C(n168), .COUT(n345)
         );
  GTECH_AND2 U390 ( .A(update_period[0]), .B(n169), .Z(n348) );
  GTECH_OA22 U391 ( .A(n167), .B(update_period[2]), .C(n166), .D(
        update_period[3]), .Z(n344) );
  GTECH_AO21 U392 ( .A(period[2]), .B(n214), .C(reset), .Z(N11) );
  GTECH_AO21 U393 ( .A(period[1]), .B(n214), .C(reset), .Z(N10) );
  GTECH_NOT U394 ( .A(n215), .Z(n214) );
  GTECH_NAND2 U395 ( .A(period_load), .B(n186), .Z(n215) );
  GTECH_NOT U396 ( .A(reset), .Z(n186) );
endmodule

