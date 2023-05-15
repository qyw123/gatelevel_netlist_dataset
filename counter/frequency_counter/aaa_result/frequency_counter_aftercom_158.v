
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
         n24, n28, n75, n156, n158, sub_85_carry_2_, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
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
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n75), .K(n75), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n75), .K(n75), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n75), .K(n75), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n75), .K(n75), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n75), .K(n75), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n75), .K(n75), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n75), .K(n75), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n75), .K(n75), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n75), .K(n75), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n75), .K(n75), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n75), .K(n75), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n75), .K(n75), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n75), .K(n75), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n171) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n75), .K(n75), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n170) );
  GTECH_FJK1S state_reg_0_ ( .J(n75), .K(n75), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n75), .K(n75), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n158) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n75), .K(n75), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n75), .K(n75), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n75), .K(n75), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n75), .K(n75), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n75), .K(n75), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n75), .K(n75), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n75), .K(n75), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n75), .K(n75), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n75), .K(n75), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n161) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n75), .K(n75), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n160) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n75), .K(n75), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n159) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n75), .K(n75), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n185) );
  GTECH_FJK1S update_digits_reg ( .J(n75), .K(n75), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n75), .K(n75), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n184) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n75), .K(n75), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n75), .K(n75), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n75), .K(n75), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n75), .K(n75), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n75), .K(n75), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n75), .K(n75), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n75), .K(n75), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n75), .K(n75), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n75), .K(n75), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n75), .K(n75), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n75), .K(n75), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n75), .K(n75), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n24) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n28) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n156) );
  GTECH_ZERO U167 ( .Z(n75) );
  GTECH_NAND2 U168 ( .A(n15), .B(n186), .Z(seven_segment0_N9) );
  GTECH_AND2 U169 ( .A(ten_count[0]), .B(n186), .Z(seven_segment0_N8) );
  GTECH_AND2 U170 ( .A(n156), .B(n186), .Z(seven_segment0_N6) );
  GTECH_AND2 U171 ( .A(unit_count[3]), .B(n186), .Z(seven_segment0_N22) );
  GTECH_AND2 U172 ( .A(unit_count[2]), .B(n186), .Z(seven_segment0_N20) );
  GTECH_AND2 U173 ( .A(unit_count[1]), .B(n186), .Z(seven_segment0_N18) );
  GTECH_AND2 U174 ( .A(unit_count[0]), .B(n186), .Z(seven_segment0_N16) );
  GTECH_AND2 U175 ( .A(ten_count[3]), .B(n186), .Z(seven_segment0_N14) );
  GTECH_AND2 U176 ( .A(ten_count[2]), .B(n186), .Z(seven_segment0_N12) );
  GTECH_AND2 U177 ( .A(ten_count[1]), .B(n186), .Z(seven_segment0_N10) );
  GTECH_NAND2 U178 ( .A(n187), .B(n188), .Z(segments[6]) );
  GTECH_NAND3 U179 ( .A(n188), .B(n189), .C(n190), .Z(segments[3]) );
  GTECH_NOT U180 ( .A(segments[4]), .Z(n189) );
  GTECH_AO21 U181 ( .A(n191), .B(n192), .C(n193), .Z(segments[4]) );
  GTECH_NOT U182 ( .A(n194), .Z(n193) );
  GTECH_NAND2 U183 ( .A(n195), .B(n196), .Z(segments[2]) );
  GTECH_NOT U184 ( .A(segments[5]), .Z(n196) );
  GTECH_NAND2 U185 ( .A(n187), .B(n194), .Z(segments[5]) );
  GTECH_AND2 U186 ( .A(n197), .B(n198), .Z(n187) );
  GTECH_NAND3 U187 ( .A(n199), .B(n191), .C(n200), .Z(n198) );
  GTECH_NOT U188 ( .A(n201), .Z(n195) );
  GTECH_AO21 U189 ( .A(n199), .B(n202), .C(n201), .Z(segments[1]) );
  GTECH_AO21 U190 ( .A(n203), .B(n204), .C(n205), .Z(n201) );
  GTECH_NOT U191 ( .A(n206), .Z(n205) );
  GTECH_AO21 U192 ( .A(n191), .B(n204), .C(n203), .Z(n202) );
  GTECH_NAND4 U193 ( .A(n197), .B(n194), .C(n206), .D(n188), .Z(segments[0])
         );
  GTECH_NAND2 U194 ( .A(n192), .B(n203), .Z(n188) );
  GTECH_NAND2 U195 ( .A(n192), .B(n207), .Z(n206) );
  GTECH_NOT U196 ( .A(n208), .Z(n192) );
  GTECH_NAND2 U197 ( .A(n209), .B(n199), .Z(n208) );
  GTECH_NAND3 U198 ( .A(n203), .B(n204), .C(n191), .Z(n194) );
  GTECH_AND2 U199 ( .A(n190), .B(n210), .Z(n197) );
  GTECH_NAND3 U200 ( .A(n204), .B(n211), .C(n203), .Z(n210) );
  GTECH_NOT U201 ( .A(n200), .Z(n203) );
  GTECH_NAND4 U202 ( .A(n200), .B(n207), .C(n199), .D(n204), .Z(n190) );
  GTECH_NOT U203 ( .A(n209), .Z(n204) );
  GTECH_MUX2 U204 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n156), .Z(n209) );
  GTECH_NOT U205 ( .A(n211), .Z(n199) );
  GTECH_MUX2 U206 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n156), .Z(n211) );
  GTECH_NOT U207 ( .A(n191), .Z(n207) );
  GTECH_MUX2 U208 ( .A(n28), .B(n24), .S(n156), .Z(n191) );
  GTECH_MUX2 U209 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n156), .Z(n200) );
  GTECH_AO21 U210 ( .A(period[0]), .B(n212), .C(reset), .Z(N9) );
  GTECH_AND2 U211 ( .A(period[11]), .B(n212), .Z(N21) );
  GTECH_NAND2 U212 ( .A(n186), .B(n213), .Z(N20) );
  GTECH_AO21 U213 ( .A(period[10]), .B(n212), .C(reset), .Z(N19) );
  GTECH_AND2 U214 ( .A(period[9]), .B(n212), .Z(N18) );
  GTECH_AND2 U215 ( .A(period[8]), .B(n212), .Z(N17) );
  GTECH_AND2 U216 ( .A(N170), .B(n214), .Z(N168) );
  GTECH_NAND2 U217 ( .A(n215), .B(n216), .Z(N167) );
  GTECH_AND2 U218 ( .A(N170), .B(n217), .Z(N166) );
  GTECH_AND2 U219 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U220 ( .A(N170), .B(n218), .Z(N162) );
  GTECH_NOT U221 ( .A(n219), .Z(N170) );
  GTECH_NAND2 U222 ( .A(n220), .B(n186), .Z(n219) );
  GTECH_NOT U223 ( .A(n216), .Z(n220) );
  GTECH_MUX2 U224 ( .A(n221), .B(n222), .S(ten_count[3]), .Z(N160) );
  GTECH_AO21 U225 ( .A(N152), .B(n223), .C(n224), .Z(n222) );
  GTECH_NOT U226 ( .A(ten_count[2]), .Z(n223) );
  GTECH_AND2 U227 ( .A(n225), .B(ten_count[2]), .Z(n221) );
  GTECH_AO21 U228 ( .A(period[7]), .B(n212), .C(reset), .Z(N16) );
  GTECH_AO21 U229 ( .A(n226), .B(n227), .C(n228), .Z(N159) );
  GTECH_MUX2 U230 ( .A(n225), .B(n224), .S(ten_count[2]), .Z(N158) );
  GTECH_AO21 U231 ( .A(N152), .B(n229), .C(N154), .Z(n224) );
  GTECH_NOT U232 ( .A(ten_count[1]), .Z(n229) );
  GTECH_NOT U233 ( .A(n230), .Z(n225) );
  GTECH_NAND3 U234 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n230) );
  GTECH_MUX2 U235 ( .A(n231), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U236 ( .A(N152), .B(ten_count[0]), .Z(n231) );
  GTECH_NOT U237 ( .A(n232), .Z(N154) );
  GTECH_NAND2 U238 ( .A(N152), .B(n233), .Z(n232) );
  GTECH_NOT U239 ( .A(ten_count[0]), .Z(n233) );
  GTECH_NAND2 U240 ( .A(n234), .B(n158), .Z(N151) );
  GTECH_OA21 U241 ( .A(n14), .B(n235), .C(n215), .Z(n234) );
  GTECH_NOT U242 ( .A(n236), .Z(n215) );
  GTECH_AO21 U243 ( .A(n227), .B(n14), .C(reset), .Z(n236) );
  GTECH_NOT U244 ( .A(n237), .Z(n227) );
  GTECH_AND2 U245 ( .A(period[6]), .B(n212), .Z(N15) );
  GTECH_OR_NOT U246 ( .A(n238), .B(n239), .Z(N148) );
  GTECH_OR_NOT U247 ( .A(n235), .B(N152), .Z(n239) );
  GTECH_MUX2 U248 ( .A(n240), .B(n241), .S(n170), .Z(n238) );
  GTECH_NOR3 U249 ( .A(n242), .B(n171), .C(n243), .Z(n241) );
  GTECH_OR_NOT U250 ( .A(n244), .B(n245), .Z(n240) );
  GTECH_MUX2 U251 ( .A(n246), .B(n243), .S(n171), .Z(n245) );
  GTECH_NAND3 U252 ( .A(n247), .B(n216), .C(n248), .Z(N147) );
  GTECH_NOT U253 ( .A(n228), .Z(n248) );
  GTECH_NAND2 U254 ( .A(n186), .B(n249), .Z(n228) );
  GTECH_NAND3 U255 ( .A(n235), .B(n250), .C(n158), .Z(n249) );
  GTECH_NAND4 U256 ( .A(n184), .B(n171), .C(n170), .D(n251), .Z(n235) );
  GTECH_NAND2 U257 ( .A(n14), .B(n252), .Z(n216) );
  GTECH_NOT U258 ( .A(n158), .Z(n252) );
  GTECH_NAND3 U259 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n247) );
  GTECH_MUX2 U260 ( .A(n244), .B(n253), .S(n171), .Z(N146) );
  GTECH_AO21 U261 ( .A(N150), .B(n254), .C(n255), .Z(n253) );
  GTECH_NOT U262 ( .A(n256), .Z(n255) );
  GTECH_OAI22 U263 ( .A(n254), .B(n243), .C(n257), .D(n246), .Z(n244) );
  GTECH_AND2 U264 ( .A(n184), .B(n251), .Z(n257) );
  GTECH_NOT U265 ( .A(n242), .Z(n254) );
  GTECH_NAND3 U266 ( .A(n214), .B(n258), .C(n259), .Z(n242) );
  GTECH_NOT U267 ( .A(n184), .Z(n258) );
  GTECH_NAND2 U268 ( .A(n260), .B(n256), .Z(N144) );
  GTECH_NAND3 U269 ( .A(N152), .B(n251), .C(n184), .Z(n256) );
  GTECH_MUX2 U270 ( .A(n261), .B(n262), .S(n184), .Z(n260) );
  GTECH_NAND3 U271 ( .A(n259), .B(n214), .C(N150), .Z(n262) );
  GTECH_OA21 U272 ( .A(n246), .B(n251), .C(n263), .Z(n261) );
  GTECH_AO21 U273 ( .A(n259), .B(n214), .C(n243), .Z(n263) );
  GTECH_NOT U274 ( .A(n264), .Z(n259) );
  GTECH_NAND2 U275 ( .A(n265), .B(n214), .Z(n251) );
  GTECH_NOT U276 ( .A(n22), .Z(n214) );
  GTECH_AO21 U277 ( .A(n266), .B(N150), .C(n267), .Z(N142) );
  GTECH_MUX2 U278 ( .A(n268), .B(n269), .S(n22), .Z(n267) );
  GTECH_AND2 U279 ( .A(N152), .B(n265), .Z(n269) );
  GTECH_NOT U280 ( .A(n270), .Z(n268) );
  GTECH_XOR2 U281 ( .A(n264), .B(n22), .Z(n266) );
  GTECH_NAND3 U282 ( .A(n218), .B(n217), .C(sub_85_carry_2_), .Z(n264) );
  GTECH_NOT U283 ( .A(n20), .Z(n217) );
  GTECH_NAND2 U284 ( .A(n271), .B(n270), .Z(N140) );
  GTECH_NAND2 U285 ( .A(n272), .B(N152), .Z(n270) );
  GTECH_NOT U286 ( .A(n265), .Z(n272) );
  GTECH_NAND2 U287 ( .A(n20), .B(n273), .Z(n265) );
  GTECH_NOT U288 ( .A(sub_85_carry_2_), .Z(n273) );
  GTECH_MUX2 U289 ( .A(n274), .B(n275), .S(n20), .Z(n271) );
  GTECH_NAND3 U290 ( .A(sub_85_carry_2_), .B(n218), .C(N150), .Z(n275) );
  GTECH_AND2 U291 ( .A(n276), .B(n277), .Z(n274) );
  GTECH_MUX2 U292 ( .A(n243), .B(n246), .S(sub_85_carry_2_), .Z(n276) );
  GTECH_AO21 U293 ( .A(period[5]), .B(n212), .C(reset), .Z(N14) );
  GTECH_MUX2 U294 ( .A(n278), .B(n279), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_AO21 U295 ( .A(N150), .B(n218), .C(N152), .Z(n278) );
  GTECH_AO21 U296 ( .A(N152), .B(n218), .C(n279), .Z(N136) );
  GTECH_NOT U297 ( .A(n277), .Z(n279) );
  GTECH_NAND2 U298 ( .A(n16), .B(N150), .Z(n277) );
  GTECH_NOT U299 ( .A(n243), .Z(N150) );
  GTECH_NAND2 U300 ( .A(n226), .B(n186), .Z(n243) );
  GTECH_NOT U301 ( .A(n280), .Z(n226) );
  GTECH_NOT U302 ( .A(n16), .Z(n218) );
  GTECH_NOT U303 ( .A(n246), .Z(N152) );
  GTECH_NAND2 U304 ( .A(n158), .B(n281), .Z(n246) );
  GTECH_NOT U305 ( .A(N169), .Z(n281) );
  GTECH_NAND2 U306 ( .A(n186), .B(n250), .Z(N169) );
  GTECH_NOT U307 ( .A(n14), .Z(n250) );
  GTECH_AND_NOT U308 ( .A(n282), .B(n283), .Z(N134) );
  GTECH_OA21 U309 ( .A(n284), .B(n169), .C(n185), .Z(n283) );
  GTECH_NAND2 U310 ( .A(n186), .B(n280), .Z(N133) );
  GTECH_NAND2 U311 ( .A(n158), .B(n14), .Z(n280) );
  GTECH_AND2 U312 ( .A(n285), .B(n282), .Z(N132) );
  GTECH_XOR2 U313 ( .A(n284), .B(n169), .Z(n285) );
  GTECH_NAND2 U314 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_NOT U315 ( .A(n288), .Z(n286) );
  GTECH_AND2 U316 ( .A(n289), .B(n282), .Z(N130) );
  GTECH_XOR2 U317 ( .A(n288), .B(n159), .Z(n289) );
  GTECH_NAND2 U318 ( .A(n290), .B(n291), .Z(n288) );
  GTECH_NOT U319 ( .A(n160), .Z(n291) );
  GTECH_NOT U320 ( .A(n292), .Z(n290) );
  GTECH_AND2 U321 ( .A(period[4]), .B(n212), .Z(N13) );
  GTECH_AND2 U322 ( .A(n293), .B(n282), .Z(N128) );
  GTECH_XOR2 U323 ( .A(n292), .B(n160), .Z(n293) );
  GTECH_NAND2 U324 ( .A(n294), .B(n295), .Z(n292) );
  GTECH_NOT U325 ( .A(n296), .Z(n294) );
  GTECH_AND2 U326 ( .A(n297), .B(n282), .Z(N126) );
  GTECH_XOR2 U327 ( .A(n296), .B(n161), .Z(n297) );
  GTECH_NAND2 U328 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_NOT U329 ( .A(n162), .Z(n299) );
  GTECH_NOT U330 ( .A(n300), .Z(n298) );
  GTECH_AND2 U331 ( .A(n301), .B(n282), .Z(N124) );
  GTECH_XOR2 U332 ( .A(n300), .B(n162), .Z(n301) );
  GTECH_NAND2 U333 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_NOT U334 ( .A(n304), .Z(n302) );
  GTECH_AND2 U335 ( .A(n305), .B(n282), .Z(N122) );
  GTECH_XOR2 U336 ( .A(n304), .B(n163), .Z(n305) );
  GTECH_NAND2 U337 ( .A(n306), .B(n307), .Z(n304) );
  GTECH_NOT U338 ( .A(n164), .Z(n307) );
  GTECH_NOT U339 ( .A(n308), .Z(n306) );
  GTECH_AND2 U340 ( .A(n309), .B(n282), .Z(N120) );
  GTECH_XOR2 U341 ( .A(n308), .B(n164), .Z(n309) );
  GTECH_NAND2 U342 ( .A(n310), .B(n311), .Z(n308) );
  GTECH_NOT U343 ( .A(n312), .Z(n310) );
  GTECH_AO21 U344 ( .A(period[3]), .B(n212), .C(reset), .Z(N12) );
  GTECH_AND2 U345 ( .A(n313), .B(n282), .Z(N118) );
  GTECH_XOR2 U346 ( .A(n312), .B(n165), .Z(n313) );
  GTECH_NAND3 U347 ( .A(n314), .B(n315), .C(n316), .Z(n312) );
  GTECH_NOT U348 ( .A(n166), .Z(n316) );
  GTECH_OAI22 U349 ( .A(n166), .B(n317), .C(n318), .D(n319), .Z(N116) );
  GTECH_MUX2 U350 ( .A(n314), .B(n320), .S(n166), .Z(n319) );
  GTECH_NAND2 U351 ( .A(n314), .B(n315), .Z(n320) );
  GTECH_NOT U352 ( .A(n167), .Z(n314) );
  GTECH_MUX2 U353 ( .A(N112), .B(n321), .S(n167), .Z(N114) );
  GTECH_AND2 U354 ( .A(n282), .B(n315), .Z(n321) );
  GTECH_NOT U355 ( .A(n168), .Z(n315) );
  GTECH_NOT U356 ( .A(n317), .Z(N112) );
  GTECH_NAND2 U357 ( .A(n282), .B(n168), .Z(n317) );
  GTECH_NOT U358 ( .A(n318), .Z(n282) );
  GTECH_NAND2 U359 ( .A(n237), .B(n186), .Z(n318) );
  GTECH_NAND2 U360 ( .A(n322), .B(n323), .Z(n237) );
  GTECH_OR4 U361 ( .A(n324), .B(n325), .C(n326), .D(n327), .Z(n323) );
  GTECH_AOI222 U362 ( .A(update_period[7]), .B(n161), .C(n328), .D(
        update_period[6]), .E(n329), .F(n330), .Z(n327) );
  GTECH_NOT U363 ( .A(n331), .Z(n330) );
  GTECH_AOI222 U364 ( .A(update_period[5]), .B(n163), .C(n332), .D(
        update_period[4]), .E(n333), .F(n334), .Z(n331) );
  GTECH_OA21 U365 ( .A(n164), .B(update_period[4]), .C(n335), .Z(n334) );
  GTECH_OA21 U366 ( .A(n336), .B(n337), .C(n338), .Z(n333) );
  GTECH_AO21 U367 ( .A(update_period[1]), .B(n167), .C(n339), .Z(n338) );
  GTECH_AO21 U368 ( .A(n340), .B(update_period[0]), .C(n336), .Z(n339) );
  GTECH_OA21 U369 ( .A(update_period[1]), .B(n167), .C(n168), .Z(n340) );
  GTECH_OA22 U370 ( .A(n166), .B(update_period[2]), .C(n165), .D(
        update_period[3]), .Z(n337) );
  GTECH_OA21 U371 ( .A(update_period[3]), .B(n165), .C(n341), .Z(n336) );
  GTECH_OAI2N2 U372 ( .A(n342), .B(n311), .C(n166), .D(update_period[2]), .Z(
        n341) );
  GTECH_NOT U373 ( .A(n165), .Z(n311) );
  GTECH_NOT U374 ( .A(update_period[3]), .Z(n342) );
  GTECH_AND2 U375 ( .A(n164), .B(n335), .Z(n332) );
  GTECH_NAND2 U376 ( .A(n343), .B(n303), .Z(n335) );
  GTECH_NOT U377 ( .A(n163), .Z(n303) );
  GTECH_NOT U378 ( .A(update_period[5]), .Z(n343) );
  GTECH_OA21 U379 ( .A(update_period[6]), .B(n162), .C(n344), .Z(n329) );
  GTECH_AND2 U380 ( .A(n162), .B(n344), .Z(n328) );
  GTECH_NAND2 U381 ( .A(n345), .B(n295), .Z(n344) );
  GTECH_NOT U382 ( .A(n161), .Z(n295) );
  GTECH_NOT U383 ( .A(update_period[7]), .Z(n345) );
  GTECH_NOT U384 ( .A(n346), .Z(n326) );
  GTECH_NOR2 U385 ( .A(n160), .B(update_period[8]), .Z(n325) );
  GTECH_AOI2N2 U386 ( .A(n185), .B(update_period[11]), .C(n324), .D(n347), .Z(
        n322) );
  GTECH_AOI222 U387 ( .A(update_period[10]), .B(n169), .C(update_period[9]), 
        .D(n159), .E(n348), .F(update_period[8]), .Z(n347) );
  GTECH_AND2 U388 ( .A(n160), .B(n346), .Z(n348) );
  GTECH_NAND2 U389 ( .A(n349), .B(n287), .Z(n346) );
  GTECH_NOT U390 ( .A(n159), .Z(n287) );
  GTECH_NOT U391 ( .A(update_period[9]), .Z(n349) );
  GTECH_OAI22 U392 ( .A(update_period[11]), .B(n185), .C(update_period[10]), 
        .D(n169), .Z(n324) );
  GTECH_AO21 U393 ( .A(period[2]), .B(n212), .C(reset), .Z(N11) );
  GTECH_AO21 U394 ( .A(period[1]), .B(n212), .C(reset), .Z(N10) );
  GTECH_NOT U395 ( .A(n213), .Z(n212) );
  GTECH_NAND2 U396 ( .A(period_load), .B(n186), .Z(n213) );
  GTECH_NOT U397 ( .A(reset), .Z(n186) );
endmodule

