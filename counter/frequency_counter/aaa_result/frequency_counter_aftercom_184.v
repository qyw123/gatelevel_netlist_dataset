
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
         n25, n27, n29, n31, n75, n76, n157, n161, sub_85_carry_2_, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n176, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
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
         n351, n352;
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
        .CP(clk), .Q(update_period[1]), .QN(n176) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n76), .K(n76), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD2 edge_detect0_q0_reg ( .D(signal), .CP(clk), .CD(n75), .Q(
        edge_detect0_q0) );
  GTECH_FD2 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .CD(n75), .Q(
        edge_detect0_q1) );
  GTECH_FD2 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .CD(n75), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n76), .K(n76), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n174) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n76), .K(n76), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n173) );
  GTECH_FJK1S state_reg_0_ ( .J(n76), .K(n76), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n76), .K(n76), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n161) );
  GTECH_FJK1S update_digits_reg ( .J(n76), .K(n76), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n76), .K(n76), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n76), .K(n76), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n76), .K(n76), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n76), .K(n76), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n76), .K(n76), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n76), .K(n76), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n76), .K(n76), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n76), .K(n76), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n76), .K(n76), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n76), .K(n76), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n76), .K(n76), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n76), .K(n76), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n188) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n76), .K(n76), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n187) );
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
        seven_segment0_unit_count_reg[0]), .QN(n25) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n29) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD2 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .CD(
        n75), .Q(digit), .QN(n157) );
  GTECH_ZERO U170 ( .Z(n76) );
  GTECH_ONE U171 ( .Z(n75) );
  GTECH_NAND2 U172 ( .A(n15), .B(n189), .Z(seven_segment0_N9) );
  GTECH_AND2 U173 ( .A(ten_count[0]), .B(n189), .Z(seven_segment0_N8) );
  GTECH_AND2 U174 ( .A(n157), .B(n189), .Z(seven_segment0_N6) );
  GTECH_AND2 U175 ( .A(unit_count[3]), .B(n189), .Z(seven_segment0_N22) );
  GTECH_AND2 U176 ( .A(unit_count[2]), .B(n189), .Z(seven_segment0_N20) );
  GTECH_AND2 U177 ( .A(unit_count[1]), .B(n189), .Z(seven_segment0_N18) );
  GTECH_AND2 U178 ( .A(unit_count[0]), .B(n189), .Z(seven_segment0_N16) );
  GTECH_AND2 U179 ( .A(ten_count[3]), .B(n189), .Z(seven_segment0_N14) );
  GTECH_AND2 U180 ( .A(ten_count[2]), .B(n189), .Z(seven_segment0_N12) );
  GTECH_AND2 U181 ( .A(ten_count[1]), .B(n189), .Z(seven_segment0_N10) );
  GTECH_NAND2 U182 ( .A(n190), .B(n191), .Z(segments[6]) );
  GTECH_NOT U183 ( .A(n192), .Z(segments[4]) );
  GTECH_NAND3 U184 ( .A(n191), .B(n192), .C(n193), .Z(segments[3]) );
  GTECH_OAI21 U185 ( .A(n194), .B(n195), .C(n196), .Z(n192) );
  GTECH_NOT U186 ( .A(n197), .Z(n195) );
  GTECH_NAND2 U187 ( .A(n198), .B(n199), .Z(segments[2]) );
  GTECH_NOT U188 ( .A(segments[5]), .Z(n199) );
  GTECH_OAI21 U189 ( .A(n200), .B(n197), .C(n190), .Z(segments[5]) );
  GTECH_AND2 U190 ( .A(n201), .B(n193), .Z(n190) );
  GTECH_MUX2 U191 ( .A(n197), .B(n202), .S(n203), .Z(n201) );
  GTECH_NAND2 U192 ( .A(n204), .B(n196), .Z(n202) );
  GTECH_NAND3 U193 ( .A(n205), .B(n191), .C(n198), .Z(segments[1]) );
  GTECH_NOT U194 ( .A(n206), .Z(n198) );
  GTECH_OAI21 U195 ( .A(n196), .B(n207), .C(n197), .Z(n206) );
  GTECH_NAND3 U196 ( .A(n203), .B(n208), .C(n196), .Z(n205) );
  GTECH_NAND3 U197 ( .A(n193), .B(n191), .C(n209), .Z(segments[0]) );
  GTECH_OA22 U198 ( .A(n210), .B(n197), .C(n196), .D(n207), .Z(n209) );
  GTECH_NAND2 U199 ( .A(n211), .B(n208), .Z(n197) );
  GTECH_NAND2 U200 ( .A(n194), .B(n211), .Z(n191) );
  GTECH_NOT U201 ( .A(n207), .Z(n194) );
  GTECH_NAND2 U202 ( .A(n212), .B(n203), .Z(n207) );
  GTECH_NAND3 U203 ( .A(n204), .B(n208), .C(n210), .Z(n193) );
  GTECH_NOT U204 ( .A(n213), .Z(n210) );
  GTECH_NAND2 U205 ( .A(n200), .B(n203), .Z(n213) );
  GTECH_NOT U206 ( .A(n214), .Z(n203) );
  GTECH_MUX2 U207 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n157), .Z(n214) );
  GTECH_NOT U208 ( .A(n196), .Z(n200) );
  GTECH_MUX2 U209 ( .A(n29), .B(n25), .S(n157), .Z(n196) );
  GTECH_NOT U210 ( .A(n212), .Z(n208) );
  GTECH_MUX2 U211 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n157), .Z(n212) );
  GTECH_NOT U212 ( .A(n211), .Z(n204) );
  GTECH_MUX2 U213 ( .A(n31), .B(n27), .S(n157), .Z(n211) );
  GTECH_AO21 U214 ( .A(period[0]), .B(n215), .C(reset), .Z(N9) );
  GTECH_AND2 U215 ( .A(period[11]), .B(n215), .Z(N21) );
  GTECH_NAND2 U216 ( .A(n189), .B(n216), .Z(N20) );
  GTECH_AO21 U217 ( .A(period[10]), .B(n215), .C(reset), .Z(N19) );
  GTECH_AND2 U218 ( .A(period[9]), .B(n215), .Z(N18) );
  GTECH_AND2 U219 ( .A(period[8]), .B(n215), .Z(N17) );
  GTECH_AND2 U220 ( .A(N170), .B(n217), .Z(N168) );
  GTECH_NAND2 U221 ( .A(n218), .B(n219), .Z(N167) );
  GTECH_AND2 U222 ( .A(N170), .B(n220), .Z(N166) );
  GTECH_AND2 U223 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U224 ( .A(N170), .B(n221), .Z(N162) );
  GTECH_NOT U225 ( .A(n222), .Z(N170) );
  GTECH_NAND2 U226 ( .A(n223), .B(n189), .Z(n222) );
  GTECH_NOT U227 ( .A(n219), .Z(n223) );
  GTECH_MUX2 U228 ( .A(n224), .B(n225), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U229 ( .A(ten_count[2]), .B(n226), .C(n227), .Z(n225) );
  GTECH_NOT U230 ( .A(n228), .Z(n227) );
  GTECH_AND2 U231 ( .A(n229), .B(ten_count[2]), .Z(n224) );
  GTECH_AO21 U232 ( .A(period[7]), .B(n215), .C(reset), .Z(N16) );
  GTECH_OAI21 U233 ( .A(n230), .B(n231), .C(n232), .Z(N159) );
  GTECH_MUX2 U234 ( .A(n229), .B(n228), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U235 ( .A(ten_count[1]), .B(n226), .C(n233), .Z(n228) );
  GTECH_NOT U236 ( .A(n234), .Z(n229) );
  GTECH_NAND3 U237 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n234) );
  GTECH_MUX2 U238 ( .A(n235), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U239 ( .A(N152), .B(ten_count[0]), .Z(n235) );
  GTECH_NOT U240 ( .A(n233), .Z(N154) );
  GTECH_NAND2 U241 ( .A(N152), .B(n236), .Z(n233) );
  GTECH_NOT U242 ( .A(ten_count[0]), .Z(n236) );
  GTECH_NAND2 U243 ( .A(n237), .B(n161), .Z(N151) );
  GTECH_OA21 U244 ( .A(n14), .B(n238), .C(n218), .Z(n237) );
  GTECH_NOT U245 ( .A(n239), .Z(n218) );
  GTECH_OAI21 U246 ( .A(n240), .B(n230), .C(n189), .Z(n239) );
  GTECH_AND2 U247 ( .A(period[6]), .B(n215), .Z(N15) );
  GTECH_OAI21 U248 ( .A(n226), .B(n238), .C(n241), .Z(N148) );
  GTECH_MUX2 U249 ( .A(n242), .B(n243), .S(n173), .Z(n241) );
  GTECH_OR3 U250 ( .A(n174), .B(n244), .C(n245), .Z(n243) );
  GTECH_AND_NOT U251 ( .A(n246), .B(n247), .Z(n242) );
  GTECH_MUX2 U252 ( .A(n226), .B(n244), .S(n174), .Z(n246) );
  GTECH_NAND3 U253 ( .A(n248), .B(n219), .C(n232), .Z(N147) );
  GTECH_AND2 U254 ( .A(n189), .B(n249), .Z(n232) );
  GTECH_NAND3 U255 ( .A(n240), .B(n161), .C(n238), .Z(n249) );
  GTECH_NAND4 U256 ( .A(n187), .B(n174), .C(n173), .D(n250), .Z(n238) );
  GTECH_NAND2 U257 ( .A(n14), .B(n251), .Z(n219) );
  GTECH_NOT U258 ( .A(n161), .Z(n251) );
  GTECH_NAND3 U259 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n248) );
  GTECH_MUX2 U260 ( .A(n247), .B(n252), .S(n174), .Z(N146) );
  GTECH_OAI21 U261 ( .A(n245), .B(n244), .C(n253), .Z(n252) );
  GTECH_OAI21 U262 ( .A(n254), .B(n244), .C(n255), .Z(n247) );
  GTECH_AO21 U263 ( .A(n250), .B(n187), .C(n226), .Z(n255) );
  GTECH_NOT U264 ( .A(n245), .Z(n254) );
  GTECH_NAND3 U265 ( .A(n217), .B(n256), .C(n257), .Z(n245) );
  GTECH_NOT U266 ( .A(n187), .Z(n256) );
  GTECH_NAND2 U267 ( .A(n258), .B(n253), .Z(N144) );
  GTECH_NAND3 U268 ( .A(N152), .B(n250), .C(n187), .Z(n253) );
  GTECH_MUX2 U269 ( .A(n259), .B(n260), .S(n187), .Z(n258) );
  GTECH_NAND3 U270 ( .A(n257), .B(n217), .C(N150), .Z(n260) );
  GTECH_OA21 U271 ( .A(n226), .B(n250), .C(n261), .Z(n259) );
  GTECH_OAI21 U272 ( .A(n22), .B(n262), .C(N150), .Z(n261) );
  GTECH_NAND2 U273 ( .A(n263), .B(n217), .Z(n250) );
  GTECH_NOT U274 ( .A(n22), .Z(n217) );
  GTECH_OAI21 U275 ( .A(n244), .B(n264), .C(n265), .Z(N142) );
  GTECH_MUX2 U276 ( .A(n266), .B(n267), .S(n22), .Z(n265) );
  GTECH_NAND2 U277 ( .A(N152), .B(n263), .Z(n267) );
  GTECH_XOR2 U278 ( .A(n22), .B(n257), .Z(n264) );
  GTECH_NOT U279 ( .A(n262), .Z(n257) );
  GTECH_NAND3 U280 ( .A(n221), .B(n220), .C(sub_85_carry_2_), .Z(n262) );
  GTECH_NOT U281 ( .A(n20), .Z(n220) );
  GTECH_NAND2 U282 ( .A(n268), .B(n266), .Z(N140) );
  GTECH_NAND2 U283 ( .A(n269), .B(N152), .Z(n266) );
  GTECH_NOT U284 ( .A(n226), .Z(N152) );
  GTECH_NOT U285 ( .A(n263), .Z(n269) );
  GTECH_NAND2 U286 ( .A(n20), .B(n270), .Z(n263) );
  GTECH_NOT U287 ( .A(sub_85_carry_2_), .Z(n270) );
  GTECH_MUX2 U288 ( .A(n271), .B(n272), .S(n20), .Z(n268) );
  GTECH_NAND3 U289 ( .A(sub_85_carry_2_), .B(n221), .C(N150), .Z(n272) );
  GTECH_NOT U290 ( .A(n16), .Z(n221) );
  GTECH_AND2 U291 ( .A(n273), .B(n274), .Z(n271) );
  GTECH_MUX2 U292 ( .A(n244), .B(n226), .S(sub_85_carry_2_), .Z(n273) );
  GTECH_AO21 U293 ( .A(period[5]), .B(n215), .C(reset), .Z(N14) );
  GTECH_MUX2 U294 ( .A(n275), .B(n276), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U295 ( .A(n274), .Z(n276) );
  GTECH_OAI21 U296 ( .A(n16), .B(n244), .C(n226), .Z(n275) );
  GTECH_OAI21 U297 ( .A(n16), .B(n226), .C(n274), .Z(N136) );
  GTECH_NAND2 U298 ( .A(n16), .B(N150), .Z(n274) );
  GTECH_NOT U299 ( .A(n244), .Z(N150) );
  GTECH_NAND2 U300 ( .A(n277), .B(n189), .Z(n244) );
  GTECH_NOT U301 ( .A(n231), .Z(n277) );
  GTECH_NAND2 U302 ( .A(n161), .B(n278), .Z(n226) );
  GTECH_NOT U303 ( .A(N169), .Z(n278) );
  GTECH_NAND2 U304 ( .A(n189), .B(n240), .Z(N169) );
  GTECH_NOT U305 ( .A(n14), .Z(n240) );
  GTECH_AND2 U306 ( .A(n279), .B(n280), .Z(N134) );
  GTECH_OAI21 U307 ( .A(n172), .B(n281), .C(n188), .Z(n280) );
  GTECH_NAND2 U308 ( .A(n189), .B(n231), .Z(N133) );
  GTECH_NAND2 U309 ( .A(n161), .B(n14), .Z(n231) );
  GTECH_AND2 U310 ( .A(n282), .B(n279), .Z(N132) );
  GTECH_XOR2 U311 ( .A(n281), .B(n172), .Z(n282) );
  GTECH_NAND2 U312 ( .A(n283), .B(n284), .Z(n281) );
  GTECH_NOT U313 ( .A(n285), .Z(n283) );
  GTECH_AND2 U314 ( .A(n286), .B(n279), .Z(N130) );
  GTECH_XOR2 U315 ( .A(n285), .B(n162), .Z(n286) );
  GTECH_NAND2 U316 ( .A(n287), .B(n288), .Z(n285) );
  GTECH_NOT U317 ( .A(n163), .Z(n288) );
  GTECH_NOT U318 ( .A(n289), .Z(n287) );
  GTECH_AND2 U319 ( .A(period[4]), .B(n215), .Z(N13) );
  GTECH_AND2 U320 ( .A(n290), .B(n279), .Z(N128) );
  GTECH_XOR2 U321 ( .A(n289), .B(n163), .Z(n290) );
  GTECH_NAND2 U322 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_NOT U323 ( .A(n293), .Z(n291) );
  GTECH_AND2 U324 ( .A(n294), .B(n279), .Z(N126) );
  GTECH_XOR2 U325 ( .A(n293), .B(n164), .Z(n294) );
  GTECH_NAND2 U326 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_NOT U327 ( .A(n165), .Z(n296) );
  GTECH_NOT U328 ( .A(n297), .Z(n295) );
  GTECH_AND2 U329 ( .A(n298), .B(n279), .Z(N124) );
  GTECH_XOR2 U330 ( .A(n297), .B(n165), .Z(n298) );
  GTECH_NAND2 U331 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U332 ( .A(n166), .Z(n300) );
  GTECH_NOT U333 ( .A(n301), .Z(n299) );
  GTECH_AND2 U334 ( .A(n302), .B(n279), .Z(N122) );
  GTECH_XOR2 U335 ( .A(n301), .B(n166), .Z(n302) );
  GTECH_NAND2 U336 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U337 ( .A(n167), .Z(n304) );
  GTECH_NOT U338 ( .A(n305), .Z(n303) );
  GTECH_AND2 U339 ( .A(n306), .B(n279), .Z(N120) );
  GTECH_XOR2 U340 ( .A(n305), .B(n167), .Z(n306) );
  GTECH_NAND2 U341 ( .A(n307), .B(n308), .Z(n305) );
  GTECH_NOT U342 ( .A(n309), .Z(n307) );
  GTECH_AO21 U343 ( .A(period[3]), .B(n215), .C(reset), .Z(N12) );
  GTECH_AND2 U344 ( .A(n310), .B(n279), .Z(N118) );
  GTECH_XOR2 U345 ( .A(n309), .B(n168), .Z(n310) );
  GTECH_NAND3 U346 ( .A(n311), .B(n312), .C(n313), .Z(n309) );
  GTECH_NOT U347 ( .A(n169), .Z(n313) );
  GTECH_OAI22 U348 ( .A(n169), .B(n314), .C(n315), .D(n316), .Z(N116) );
  GTECH_MUX2 U349 ( .A(n311), .B(n317), .S(n169), .Z(n316) );
  GTECH_NAND2 U350 ( .A(n311), .B(n312), .Z(n317) );
  GTECH_MUX2 U351 ( .A(N112), .B(n318), .S(n170), .Z(N114) );
  GTECH_AND2 U352 ( .A(n279), .B(n312), .Z(n318) );
  GTECH_NOT U353 ( .A(n171), .Z(n312) );
  GTECH_NOT U354 ( .A(n314), .Z(N112) );
  GTECH_NAND2 U355 ( .A(n279), .B(n171), .Z(n314) );
  GTECH_NOT U356 ( .A(n315), .Z(n279) );
  GTECH_NAND2 U357 ( .A(n230), .B(n189), .Z(n315) );
  GTECH_NOT U358 ( .A(n319), .Z(n230) );
  GTECH_AOI222 U359 ( .A(n320), .B(n321), .C(update_period[11]), .D(n188), .E(
        n322), .F(n323), .Z(n319) );
  GTECH_AO22 U360 ( .A(update_period[10]), .B(n172), .C(n324), .D(n325), .Z(
        n322) );
  GTECH_OAI21 U361 ( .A(n326), .B(n284), .C(n327), .Z(n325) );
  GTECH_NAND3 U362 ( .A(n328), .B(update_period[8]), .C(n163), .Z(n327) );
  GTECH_AND3 U363 ( .A(n328), .B(n324), .C(n323), .Z(n321) );
  GTECH_NAND2 U364 ( .A(n329), .B(n330), .Z(n323) );
  GTECH_NOT U365 ( .A(n188), .Z(n330) );
  GTECH_NOT U366 ( .A(update_period[11]), .Z(n329) );
  GTECH_NAND2 U367 ( .A(n331), .B(n332), .Z(n324) );
  GTECH_NOT U368 ( .A(n172), .Z(n332) );
  GTECH_NOT U369 ( .A(update_period[10]), .Z(n331) );
  GTECH_NAND2 U370 ( .A(n284), .B(n326), .Z(n328) );
  GTECH_NOT U371 ( .A(update_period[9]), .Z(n326) );
  GTECH_NOT U372 ( .A(n162), .Z(n284) );
  GTECH_OA22 U373 ( .A(n163), .B(update_period[8]), .C(n333), .D(n334), .Z(
        n320) );
  GTECH_OAI21 U374 ( .A(n292), .B(n335), .C(n336), .Z(n334) );
  GTECH_NAND3 U375 ( .A(n337), .B(update_period[6]), .C(n165), .Z(n336) );
  GTECH_AO22 U376 ( .A(n338), .B(n339), .C(n340), .D(n341), .Z(n333) );
  GTECH_ADD_ABC U377 ( .A(n342), .B(n166), .C(update_period[5]), .COUT(n341)
         );
  GTECH_AND2 U378 ( .A(update_period[4]), .B(n167), .Z(n342) );
  GTECH_OA22 U379 ( .A(n166), .B(update_period[5]), .C(n343), .D(n344), .Z(
        n339) );
  GTECH_AND3 U380 ( .A(n345), .B(n346), .C(n347), .Z(n344) );
  GTECH_OAI21 U381 ( .A(n348), .B(n311), .C(n176), .Z(n346) );
  GTECH_NOT U382 ( .A(n170), .Z(n311) );
  GTECH_OA21 U383 ( .A(n169), .B(update_period[2]), .C(n349), .Z(n345) );
  GTECH_OR_NOT U384 ( .A(n170), .B(n348), .Z(n349) );
  GTECH_NAND2 U385 ( .A(update_period[0]), .B(n171), .Z(n348) );
  GTECH_OAI21 U386 ( .A(n308), .B(n350), .C(n351), .Z(n343) );
  GTECH_NAND3 U387 ( .A(n347), .B(update_period[2]), .C(n169), .Z(n351) );
  GTECH_NAND2 U388 ( .A(n350), .B(n308), .Z(n347) );
  GTECH_NOT U389 ( .A(update_period[3]), .Z(n350) );
  GTECH_NOT U390 ( .A(n168), .Z(n308) );
  GTECH_OA21 U391 ( .A(n167), .B(update_period[4]), .C(n340), .Z(n338) );
  GTECH_NOT U392 ( .A(n352), .Z(n340) );
  GTECH_OAI21 U393 ( .A(update_period[6]), .B(n165), .C(n337), .Z(n352) );
  GTECH_NAND2 U394 ( .A(n335), .B(n292), .Z(n337) );
  GTECH_NOT U395 ( .A(n164), .Z(n292) );
  GTECH_NOT U396 ( .A(update_period[7]), .Z(n335) );
  GTECH_AO21 U397 ( .A(period[2]), .B(n215), .C(reset), .Z(N11) );
  GTECH_AO21 U398 ( .A(period[1]), .B(n215), .C(reset), .Z(N10) );
  GTECH_NOT U399 ( .A(n216), .Z(n215) );
  GTECH_NAND2 U400 ( .A(period_load), .B(n189), .Z(n216) );
  GTECH_NOT U401 ( .A(reset), .Z(n189) );
endmodule

