
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
         seven_segment0_N8, seven_segment0_N6, n12, n13, n14, n15, n16, n20,
         n22, n24, n26, n28, n30, n32, n76, n158, sub_85_carry_2_, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349;
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
        edge_detect0_q2), .QN(n12) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n76), .K(n76), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n173) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n76), .K(n76), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n172) );
  GTECH_FJK1S state_reg_0_ ( .J(n76), .K(n76), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n13) );
  GTECH_FJK1S state_reg_1_ ( .J(n76), .K(n76), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n14) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n76), .K(n76), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n76), .K(n76), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n76), .K(n76), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n76), .K(n76), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n76), .K(n76), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n76), .K(n76), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n76), .K(n76), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n76), .K(n76), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n76), .K(n76), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n76), .K(n76), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n76), .K(n76), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n161) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n76), .K(n76), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n160) );
  GTECH_FJK1S update_digits_reg ( .J(n76), .K(n76), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n76), .K(n76), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n186) );
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
        clk), .Q(n24) );
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
        digit), .QN(n158) );
  GTECH_ZERO U167 ( .Z(n76) );
  GTECH_NAND2 U168 ( .A(n15), .B(n187), .Z(seven_segment0_N9) );
  GTECH_AND2 U169 ( .A(ten_count[0]), .B(n187), .Z(seven_segment0_N8) );
  GTECH_AND2 U170 ( .A(n158), .B(n187), .Z(seven_segment0_N6) );
  GTECH_AND2 U171 ( .A(unit_count[3]), .B(n187), .Z(seven_segment0_N22) );
  GTECH_AND2 U172 ( .A(unit_count[2]), .B(n187), .Z(seven_segment0_N20) );
  GTECH_AND2 U173 ( .A(unit_count[1]), .B(n187), .Z(seven_segment0_N18) );
  GTECH_AND2 U174 ( .A(unit_count[0]), .B(n187), .Z(seven_segment0_N16) );
  GTECH_AND2 U175 ( .A(n24), .B(n187), .Z(seven_segment0_N14) );
  GTECH_AND2 U176 ( .A(ten_count[2]), .B(n187), .Z(seven_segment0_N12) );
  GTECH_AND2 U177 ( .A(ten_count[1]), .B(n187), .Z(seven_segment0_N10) );
  GTECH_NAND2 U178 ( .A(n188), .B(n189), .Z(segments[6]) );
  GTECH_OA21 U179 ( .A(n190), .B(n191), .C(n192), .Z(n188) );
  GTECH_NAND2 U180 ( .A(n189), .B(n193), .Z(segments[5]) );
  GTECH_NOT U181 ( .A(n194), .Z(segments[4]) );
  GTECH_NAND3 U182 ( .A(n192), .B(n194), .C(n195), .Z(segments[3]) );
  GTECH_AO21 U183 ( .A(n196), .B(n191), .C(n197), .Z(n194) );
  GTECH_NAND2 U184 ( .A(n198), .B(n189), .Z(segments[2]) );
  GTECH_AND2 U185 ( .A(n195), .B(n199), .Z(n189) );
  GTECH_NAND3 U186 ( .A(n200), .B(n201), .C(n190), .Z(n199) );
  GTECH_NAND3 U187 ( .A(n202), .B(n192), .C(n198), .Z(segments[1]) );
  GTECH_NOT U188 ( .A(n203), .Z(n198) );
  GTECH_AO21 U189 ( .A(n197), .B(n204), .C(n205), .Z(n203) );
  GTECH_NAND3 U190 ( .A(n190), .B(n200), .C(n206), .Z(n202) );
  GTECH_NAND3 U191 ( .A(n193), .B(n192), .C(n207), .Z(segments[0]) );
  GTECH_OA21 U192 ( .A(n196), .B(n200), .C(n195), .Z(n207) );
  GTECH_NAND3 U193 ( .A(n206), .B(n201), .C(n208), .Z(n195) );
  GTECH_NOT U194 ( .A(n209), .Z(n208) );
  GTECH_NOT U195 ( .A(n197), .Z(n200) );
  GTECH_NAND2 U196 ( .A(n204), .B(n210), .Z(n192) );
  GTECH_NOT U197 ( .A(n196), .Z(n204) );
  GTECH_NAND2 U198 ( .A(n190), .B(n211), .Z(n196) );
  GTECH_NOT U199 ( .A(n206), .Z(n211) );
  GTECH_NAND2 U200 ( .A(n205), .B(n209), .Z(n193) );
  GTECH_NAND2 U201 ( .A(n197), .B(n190), .Z(n209) );
  GTECH_MUX2 U202 ( .A(n32), .B(n28), .S(n158), .Z(n190) );
  GTECH_MUX2 U203 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n158), .Z(n197) );
  GTECH_NOT U204 ( .A(n191), .Z(n205) );
  GTECH_NAND2 U205 ( .A(n206), .B(n210), .Z(n191) );
  GTECH_NOT U206 ( .A(n201), .Z(n210) );
  GTECH_MUX2 U207 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n158), .Z(n201) );
  GTECH_MUX2 U208 ( .A(n30), .B(n26), .S(n158), .Z(n206) );
  GTECH_AO21 U209 ( .A(period[0]), .B(n212), .C(reset), .Z(N9) );
  GTECH_AND2 U210 ( .A(period[11]), .B(n212), .Z(N21) );
  GTECH_NAND2 U211 ( .A(n187), .B(n213), .Z(N20) );
  GTECH_AO21 U212 ( .A(period[10]), .B(n212), .C(reset), .Z(N19) );
  GTECH_AND2 U213 ( .A(period[9]), .B(n212), .Z(N18) );
  GTECH_AND2 U214 ( .A(period[8]), .B(n212), .Z(N17) );
  GTECH_AND2 U215 ( .A(N170), .B(n214), .Z(N168) );
  GTECH_NAND2 U216 ( .A(n215), .B(n216), .Z(N167) );
  GTECH_AND2 U217 ( .A(N170), .B(n217), .Z(N166) );
  GTECH_AND2 U218 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U219 ( .A(N170), .B(n218), .Z(N162) );
  GTECH_NOT U220 ( .A(n219), .Z(N170) );
  GTECH_NAND2 U221 ( .A(n220), .B(n187), .Z(n219) );
  GTECH_NOT U222 ( .A(n216), .Z(n220) );
  GTECH_MUX2 U223 ( .A(n221), .B(n222), .S(n24), .Z(N160) );
  GTECH_AO21 U224 ( .A(N152), .B(n223), .C(n224), .Z(n222) );
  GTECH_NOT U225 ( .A(ten_count[2]), .Z(n223) );
  GTECH_AND2 U226 ( .A(n225), .B(ten_count[2]), .Z(n221) );
  GTECH_AO21 U227 ( .A(period[7]), .B(n212), .C(reset), .Z(N16) );
  GTECH_AO21 U228 ( .A(n226), .B(n227), .C(n228), .Z(N159) );
  GTECH_MUX2 U229 ( .A(n225), .B(n224), .S(ten_count[2]), .Z(N158) );
  GTECH_AO21 U230 ( .A(N152), .B(n229), .C(N154), .Z(n224) );
  GTECH_NOT U231 ( .A(ten_count[1]), .Z(n229) );
  GTECH_NOT U232 ( .A(n230), .Z(n225) );
  GTECH_NAND3 U233 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n230) );
  GTECH_MUX2 U234 ( .A(n231), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U235 ( .A(N152), .B(ten_count[0]), .Z(n231) );
  GTECH_NOT U236 ( .A(n232), .Z(N154) );
  GTECH_NAND2 U237 ( .A(N152), .B(n233), .Z(n232) );
  GTECH_NOT U238 ( .A(ten_count[0]), .Z(n233) );
  GTECH_NAND2 U239 ( .A(n234), .B(n14), .Z(N151) );
  GTECH_OA21 U240 ( .A(n13), .B(n235), .C(n215), .Z(n234) );
  GTECH_NOT U241 ( .A(n236), .Z(n215) );
  GTECH_AO21 U242 ( .A(n227), .B(n13), .C(reset), .Z(n236) );
  GTECH_NOT U243 ( .A(n237), .Z(n227) );
  GTECH_AND2 U244 ( .A(period[6]), .B(n212), .Z(N15) );
  GTECH_OR_NOT U245 ( .A(n238), .B(n239), .Z(N148) );
  GTECH_OR_NOT U246 ( .A(n235), .B(N152), .Z(n239) );
  GTECH_MUX2 U247 ( .A(n240), .B(n241), .S(n172), .Z(n238) );
  GTECH_NOR3 U248 ( .A(n242), .B(n173), .C(n243), .Z(n241) );
  GTECH_OR_NOT U249 ( .A(n244), .B(n245), .Z(n240) );
  GTECH_MUX2 U250 ( .A(n246), .B(n243), .S(n173), .Z(n245) );
  GTECH_NAND3 U251 ( .A(n247), .B(n216), .C(n248), .Z(N147) );
  GTECH_NOT U252 ( .A(n228), .Z(n248) );
  GTECH_NAND2 U253 ( .A(n187), .B(n249), .Z(n228) );
  GTECH_NAND3 U254 ( .A(n235), .B(n250), .C(n14), .Z(n249) );
  GTECH_NAND4 U255 ( .A(n186), .B(n173), .C(n172), .D(n251), .Z(n235) );
  GTECH_NAND2 U256 ( .A(n13), .B(n252), .Z(n216) );
  GTECH_NOT U257 ( .A(n14), .Z(n252) );
  GTECH_NAND3 U258 ( .A(n13), .B(edge_detect0_q1), .C(n12), .Z(n247) );
  GTECH_MUX2 U259 ( .A(n244), .B(n253), .S(n173), .Z(N146) );
  GTECH_AO21 U260 ( .A(N150), .B(n254), .C(n255), .Z(n253) );
  GTECH_NOT U261 ( .A(n256), .Z(n255) );
  GTECH_OAI22 U262 ( .A(n254), .B(n243), .C(n257), .D(n246), .Z(n244) );
  GTECH_AND2 U263 ( .A(n186), .B(n251), .Z(n257) );
  GTECH_NOT U264 ( .A(n242), .Z(n254) );
  GTECH_NAND3 U265 ( .A(n214), .B(n258), .C(n259), .Z(n242) );
  GTECH_NOT U266 ( .A(n186), .Z(n258) );
  GTECH_NAND2 U267 ( .A(n260), .B(n256), .Z(N144) );
  GTECH_NAND3 U268 ( .A(N152), .B(n251), .C(n186), .Z(n256) );
  GTECH_MUX2 U269 ( .A(n261), .B(n262), .S(n186), .Z(n260) );
  GTECH_NAND3 U270 ( .A(n259), .B(n214), .C(N150), .Z(n262) );
  GTECH_OA21 U271 ( .A(n246), .B(n251), .C(n263), .Z(n261) );
  GTECH_AO21 U272 ( .A(n259), .B(n214), .C(n243), .Z(n263) );
  GTECH_NOT U273 ( .A(n264), .Z(n259) );
  GTECH_NAND2 U274 ( .A(n265), .B(n214), .Z(n251) );
  GTECH_NOT U275 ( .A(n22), .Z(n214) );
  GTECH_AO21 U276 ( .A(n266), .B(N150), .C(n267), .Z(N142) );
  GTECH_MUX2 U277 ( .A(n268), .B(n269), .S(n22), .Z(n267) );
  GTECH_AND2 U278 ( .A(N152), .B(n265), .Z(n269) );
  GTECH_NOT U279 ( .A(n270), .Z(n268) );
  GTECH_XOR2 U280 ( .A(n264), .B(n22), .Z(n266) );
  GTECH_NAND3 U281 ( .A(n218), .B(n217), .C(sub_85_carry_2_), .Z(n264) );
  GTECH_NOT U282 ( .A(n20), .Z(n217) );
  GTECH_NAND2 U283 ( .A(n271), .B(n270), .Z(N140) );
  GTECH_NAND2 U284 ( .A(n272), .B(N152), .Z(n270) );
  GTECH_NOT U285 ( .A(n265), .Z(n272) );
  GTECH_NAND2 U286 ( .A(n20), .B(n273), .Z(n265) );
  GTECH_NOT U287 ( .A(sub_85_carry_2_), .Z(n273) );
  GTECH_MUX2 U288 ( .A(n274), .B(n275), .S(n20), .Z(n271) );
  GTECH_NAND3 U289 ( .A(sub_85_carry_2_), .B(n218), .C(N150), .Z(n275) );
  GTECH_AND2 U290 ( .A(n276), .B(n277), .Z(n274) );
  GTECH_MUX2 U291 ( .A(n243), .B(n246), .S(sub_85_carry_2_), .Z(n276) );
  GTECH_AO21 U292 ( .A(period[5]), .B(n212), .C(reset), .Z(N14) );
  GTECH_MUX2 U293 ( .A(n278), .B(n279), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_AO21 U294 ( .A(N150), .B(n218), .C(N152), .Z(n278) );
  GTECH_AO21 U295 ( .A(N152), .B(n218), .C(n279), .Z(N136) );
  GTECH_NOT U296 ( .A(n277), .Z(n279) );
  GTECH_NAND2 U297 ( .A(n16), .B(N150), .Z(n277) );
  GTECH_NOT U298 ( .A(n243), .Z(N150) );
  GTECH_NAND2 U299 ( .A(n226), .B(n187), .Z(n243) );
  GTECH_NOT U300 ( .A(n280), .Z(n226) );
  GTECH_NOT U301 ( .A(n16), .Z(n218) );
  GTECH_NOT U302 ( .A(n246), .Z(N152) );
  GTECH_NAND2 U303 ( .A(n14), .B(n281), .Z(n246) );
  GTECH_NOT U304 ( .A(N169), .Z(n281) );
  GTECH_NAND2 U305 ( .A(n187), .B(n250), .Z(N169) );
  GTECH_NOT U306 ( .A(n13), .Z(n250) );
  GTECH_AOI21 U307 ( .A(n160), .B(n282), .C(n283), .Z(N134) );
  GTECH_OR2 U308 ( .A(n284), .B(n171), .Z(n282) );
  GTECH_NAND2 U309 ( .A(n187), .B(n280), .Z(N133) );
  GTECH_NAND2 U310 ( .A(n14), .B(n13), .Z(n280) );
  GTECH_AND2 U311 ( .A(n285), .B(n286), .Z(N132) );
  GTECH_XOR2 U312 ( .A(n284), .B(n171), .Z(n285) );
  GTECH_NAND2 U313 ( .A(n287), .B(n288), .Z(n284) );
  GTECH_NOT U314 ( .A(n289), .Z(n287) );
  GTECH_AND2 U315 ( .A(n290), .B(n286), .Z(N130) );
  GTECH_XOR2 U316 ( .A(n289), .B(n161), .Z(n290) );
  GTECH_NAND2 U317 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_NOT U318 ( .A(n162), .Z(n292) );
  GTECH_NOT U319 ( .A(n293), .Z(n291) );
  GTECH_AND2 U320 ( .A(period[4]), .B(n212), .Z(N13) );
  GTECH_AND2 U321 ( .A(n294), .B(n286), .Z(N128) );
  GTECH_XOR2 U322 ( .A(n293), .B(n162), .Z(n294) );
  GTECH_NAND2 U323 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_NOT U324 ( .A(n297), .Z(n295) );
  GTECH_AND2 U325 ( .A(n298), .B(n286), .Z(N126) );
  GTECH_XOR2 U326 ( .A(n297), .B(n163), .Z(n298) );
  GTECH_NAND2 U327 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U328 ( .A(n164), .Z(n300) );
  GTECH_NOT U329 ( .A(n301), .Z(n299) );
  GTECH_AND2 U330 ( .A(n302), .B(n286), .Z(N124) );
  GTECH_XOR2 U331 ( .A(n301), .B(n164), .Z(n302) );
  GTECH_NAND2 U332 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U333 ( .A(n305), .Z(n303) );
  GTECH_AND2 U334 ( .A(n306), .B(n286), .Z(N122) );
  GTECH_XOR2 U335 ( .A(n305), .B(n165), .Z(n306) );
  GTECH_NAND2 U336 ( .A(n307), .B(n308), .Z(n305) );
  GTECH_NOT U337 ( .A(n166), .Z(n308) );
  GTECH_NOT U338 ( .A(n309), .Z(n307) );
  GTECH_AND2 U339 ( .A(n310), .B(n286), .Z(N120) );
  GTECH_XOR2 U340 ( .A(n309), .B(n166), .Z(n310) );
  GTECH_NAND2 U341 ( .A(n311), .B(n312), .Z(n309) );
  GTECH_NOT U342 ( .A(n313), .Z(n311) );
  GTECH_AO21 U343 ( .A(period[3]), .B(n212), .C(reset), .Z(N12) );
  GTECH_AND2 U344 ( .A(n314), .B(n286), .Z(N118) );
  GTECH_XOR2 U345 ( .A(n313), .B(n167), .Z(n314) );
  GTECH_NAND3 U346 ( .A(n315), .B(n316), .C(n317), .Z(n313) );
  GTECH_NOT U347 ( .A(n168), .Z(n317) );
  GTECH_OAI22 U348 ( .A(n168), .B(n318), .C(n283), .D(n319), .Z(N116) );
  GTECH_MUX2 U349 ( .A(n315), .B(n320), .S(n168), .Z(n319) );
  GTECH_NAND2 U350 ( .A(n315), .B(n316), .Z(n320) );
  GTECH_NOT U351 ( .A(n169), .Z(n315) );
  GTECH_MUX2 U352 ( .A(N112), .B(n321), .S(n169), .Z(N114) );
  GTECH_AND2 U353 ( .A(n286), .B(n316), .Z(n321) );
  GTECH_NOT U354 ( .A(n170), .Z(n316) );
  GTECH_NOT U355 ( .A(n318), .Z(N112) );
  GTECH_NAND2 U356 ( .A(n286), .B(n170), .Z(n318) );
  GTECH_NOT U357 ( .A(n283), .Z(n286) );
  GTECH_NAND2 U358 ( .A(n237), .B(n187), .Z(n283) );
  GTECH_NAND2 U359 ( .A(n322), .B(n323), .Z(n237) );
  GTECH_OR4 U360 ( .A(n324), .B(n325), .C(n326), .D(n327), .Z(n323) );
  GTECH_AOI222 U361 ( .A(update_period[7]), .B(n163), .C(n328), .D(
        update_period[6]), .E(n329), .F(n330), .Z(n327) );
  GTECH_NOT U362 ( .A(n331), .Z(n330) );
  GTECH_AOI222 U363 ( .A(update_period[5]), .B(n165), .C(n332), .D(
        update_period[4]), .E(n333), .F(n334), .Z(n331) );
  GTECH_OA21 U364 ( .A(n166), .B(update_period[4]), .C(n335), .Z(n334) );
  GTECH_OA21 U365 ( .A(n336), .B(n337), .C(n338), .Z(n333) );
  GTECH_AO21 U366 ( .A(update_period[1]), .B(n169), .C(n339), .Z(n338) );
  GTECH_AO21 U367 ( .A(n340), .B(update_period[0]), .C(n336), .Z(n339) );
  GTECH_OA21 U368 ( .A(update_period[1]), .B(n169), .C(n170), .Z(n340) );
  GTECH_OA22 U369 ( .A(n168), .B(update_period[2]), .C(n167), .D(
        update_period[3]), .Z(n337) );
  GTECH_OA21 U370 ( .A(update_period[3]), .B(n167), .C(n341), .Z(n336) );
  GTECH_OAI2N2 U371 ( .A(n342), .B(n312), .C(n168), .D(update_period[2]), .Z(
        n341) );
  GTECH_NOT U372 ( .A(n167), .Z(n312) );
  GTECH_NOT U373 ( .A(update_period[3]), .Z(n342) );
  GTECH_AND2 U374 ( .A(n166), .B(n335), .Z(n332) );
  GTECH_NAND2 U375 ( .A(n343), .B(n304), .Z(n335) );
  GTECH_NOT U376 ( .A(n165), .Z(n304) );
  GTECH_NOT U377 ( .A(update_period[5]), .Z(n343) );
  GTECH_OA21 U378 ( .A(update_period[6]), .B(n164), .C(n344), .Z(n329) );
  GTECH_AND2 U379 ( .A(n164), .B(n344), .Z(n328) );
  GTECH_NAND2 U380 ( .A(n345), .B(n296), .Z(n344) );
  GTECH_NOT U381 ( .A(n163), .Z(n296) );
  GTECH_NOT U382 ( .A(update_period[7]), .Z(n345) );
  GTECH_NOT U383 ( .A(n346), .Z(n326) );
  GTECH_NOR2 U384 ( .A(n162), .B(update_period[8]), .Z(n325) );
  GTECH_AOI2N2 U385 ( .A(n160), .B(update_period[11]), .C(n324), .D(n347), .Z(
        n322) );
  GTECH_AOI222 U386 ( .A(update_period[10]), .B(n171), .C(update_period[9]), 
        .D(n161), .E(n348), .F(update_period[8]), .Z(n347) );
  GTECH_AND2 U387 ( .A(n162), .B(n346), .Z(n348) );
  GTECH_NAND2 U388 ( .A(n349), .B(n288), .Z(n346) );
  GTECH_NOT U389 ( .A(n161), .Z(n288) );
  GTECH_NOT U390 ( .A(update_period[9]), .Z(n349) );
  GTECH_OAI22 U391 ( .A(update_period[10]), .B(n171), .C(update_period[11]), 
        .D(n160), .Z(n324) );
  GTECH_AO21 U392 ( .A(period[2]), .B(n212), .C(reset), .Z(N11) );
  GTECH_AO21 U393 ( .A(period[1]), .B(n212), .C(reset), .Z(N10) );
  GTECH_NOT U394 ( .A(n213), .Z(n212) );
  GTECH_NAND2 U395 ( .A(period_load), .B(n187), .Z(n213) );
  GTECH_NOT U396 ( .A(reset), .Z(n187) );
endmodule

