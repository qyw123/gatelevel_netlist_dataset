
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
         n23, n26, n30, n78, n157, sub_85_carry_2_, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
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
         n341, n342, n343, n344, n345, n346, n347, n348, n349;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n78), .K(n78), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n78), .K(n78), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n78), .K(n78), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n78), .K(n78), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n78), .K(n78), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n78), .K(n78), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n78), .K(n78), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n78), .K(n78), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n78), .K(n78), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n78), .K(n78), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n78), .K(n78), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n78), .K(n78), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n78), .K(n78), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n173) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n78), .K(n78), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n172) );
  GTECH_FJK1S state_reg_0_ ( .J(n78), .K(n78), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n78), .K(n78), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n78), .K(n78), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n78), .K(n78), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n78), .K(n78), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n78), .K(n78), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n78), .K(n78), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n78), .K(n78), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n78), .K(n78), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n78), .K(n78), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n78), .K(n78), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n78), .K(n78), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n78), .K(n78), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n161) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n78), .K(n78), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n160) );
  GTECH_FJK1S update_digits_reg ( .J(n78), .K(n78), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n16) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n78), .K(n78), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n186) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n78), .K(n78), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n17) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n78), .K(n78), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n78), .K(n78), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n78), .K(n78), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n78), .K(n78), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n21) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n78), .K(n78), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n78), .K(n78), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n23) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n78), .K(n78), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n78), .K(n78), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n78), .K(n78), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n78), .K(n78), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n78), .K(n78), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n78), .K(n78), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n157) );
  GTECH_ZERO U168 ( .Z(n78) );
  GTECH_NAND2 U169 ( .A(n16), .B(n187), .Z(seven_segment0_N9) );
  GTECH_AND_NOT U170 ( .A(ten_count[0]), .B(reset), .Z(seven_segment0_N8) );
  GTECH_AND_NOT U171 ( .A(n157), .B(reset), .Z(seven_segment0_N6) );
  GTECH_AND_NOT U172 ( .A(unit_count[3]), .B(reset), .Z(seven_segment0_N22) );
  GTECH_AND_NOT U173 ( .A(unit_count[2]), .B(reset), .Z(seven_segment0_N20) );
  GTECH_AND_NOT U174 ( .A(unit_count[1]), .B(reset), .Z(seven_segment0_N18) );
  GTECH_AND_NOT U175 ( .A(unit_count[0]), .B(reset), .Z(seven_segment0_N16) );
  GTECH_AND_NOT U176 ( .A(ten_count[3]), .B(reset), .Z(seven_segment0_N14) );
  GTECH_AND_NOT U177 ( .A(ten_count[2]), .B(reset), .Z(seven_segment0_N12) );
  GTECH_AND_NOT U178 ( .A(ten_count[1]), .B(reset), .Z(seven_segment0_N10) );
  GTECH_NAND3 U179 ( .A(n188), .B(n189), .C(n190), .Z(segments[6]) );
  GTECH_OAI21 U180 ( .A(n191), .B(n192), .C(n193), .Z(segments[3]) );
  GTECH_AND_NOT U181 ( .A(n194), .B(segments[4]), .Z(n193) );
  GTECH_NAND3 U182 ( .A(n188), .B(n195), .C(n196), .Z(segments[4]) );
  GTECH_NAND3 U183 ( .A(n192), .B(n197), .C(n198), .Z(segments[2]) );
  GTECH_NOT U184 ( .A(segments[5]), .Z(n197) );
  GTECH_NAND4 U185 ( .A(n199), .B(n196), .C(n188), .D(n189), .Z(segments[5])
         );
  GTECH_NAND3 U186 ( .A(n191), .B(n200), .C(n201), .Z(n188) );
  GTECH_NOT U187 ( .A(n202), .Z(n199) );
  GTECH_NAND4 U188 ( .A(n189), .B(n198), .C(n192), .D(n195), .Z(segments[1])
         );
  GTECH_NAND2 U189 ( .A(n203), .B(n200), .Z(n189) );
  GTECH_NAND3 U190 ( .A(n196), .B(n192), .C(n190), .Z(segments[0]) );
  GTECH_AND_NOT U191 ( .A(n204), .B(n202), .Z(n190) );
  GTECH_OAI21 U192 ( .A(n205), .B(n198), .C(n194), .Z(n202) );
  GTECH_NAND2 U193 ( .A(n203), .B(n206), .Z(n194) );
  GTECH_NOT U194 ( .A(n207), .Z(n203) );
  GTECH_NAND3 U195 ( .A(n205), .B(n208), .C(n191), .Z(n207) );
  GTECH_OA21 U196 ( .A(n192), .B(n191), .C(n195), .Z(n204) );
  GTECH_NAND3 U197 ( .A(n200), .B(n209), .C(n201), .Z(n195) );
  GTECH_NAND2 U198 ( .A(n201), .B(n206), .Z(n192) );
  GTECH_NOT U199 ( .A(n200), .Z(n206) );
  GTECH_NOT U200 ( .A(n210), .Z(n201) );
  GTECH_NAND2 U201 ( .A(n211), .B(n205), .Z(n210) );
  GTECH_NOT U202 ( .A(n212), .Z(n205) );
  GTECH_MUX2 U203 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n157), .Z(n212) );
  GTECH_NAND2 U204 ( .A(n213), .B(n200), .Z(n196) );
  GTECH_MUX2 U205 ( .A(n30), .B(n26), .S(n157), .Z(n200) );
  GTECH_NOT U206 ( .A(n198), .Z(n213) );
  GTECH_NAND2 U207 ( .A(n209), .B(n208), .Z(n198) );
  GTECH_NOT U208 ( .A(n211), .Z(n208) );
  GTECH_MUX2 U209 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n157), .Z(n211) );
  GTECH_NOT U210 ( .A(n191), .Z(n209) );
  GTECH_MUX2 U211 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n157), .Z(n191) );
  GTECH_AO21 U212 ( .A(period[0]), .B(n214), .C(reset), .Z(N9) );
  GTECH_AND_NOT U213 ( .A(period[11]), .B(n215), .Z(N21) );
  GTECH_NAND2 U214 ( .A(n187), .B(n215), .Z(N20) );
  GTECH_AO21 U215 ( .A(period[10]), .B(n214), .C(reset), .Z(N19) );
  GTECH_AND_NOT U216 ( .A(period[9]), .B(n215), .Z(N18) );
  GTECH_AND_NOT U217 ( .A(period[8]), .B(n215), .Z(N17) );
  GTECH_AND_NOT U218 ( .A(N170), .B(n23), .Z(N168) );
  GTECH_NAND2 U219 ( .A(n216), .B(n217), .Z(N167) );
  GTECH_AND_NOT U220 ( .A(N170), .B(n21), .Z(N166) );
  GTECH_AND_NOT U221 ( .A(sub_85_carry_2_), .B(n218), .Z(N164) );
  GTECH_AND_NOT U222 ( .A(N170), .B(n17), .Z(N162) );
  GTECH_NOT U223 ( .A(n218), .Z(N170) );
  GTECH_NAND2 U224 ( .A(n219), .B(n187), .Z(n218) );
  GTECH_NOT U225 ( .A(n217), .Z(n219) );
  GTECH_OAI22 U226 ( .A(n220), .B(n221), .C(n222), .D(n223), .Z(N160) );
  GTECH_MUX2 U227 ( .A(n220), .B(n224), .S(ten_count[2]), .Z(n223) );
  GTECH_OR_NOT U228 ( .A(n225), .B(n220), .Z(n224) );
  GTECH_NOT U229 ( .A(ten_count[3]), .Z(n220) );
  GTECH_AO21 U230 ( .A(period[7]), .B(n214), .C(reset), .Z(N16) );
  GTECH_OAI21 U231 ( .A(n226), .B(n227), .C(n228), .Z(N159) );
  GTECH_MUX2 U232 ( .A(n229), .B(n230), .S(ten_count[2]), .Z(N158) );
  GTECH_AND_NOT U233 ( .A(N152), .B(n225), .Z(n229) );
  GTECH_OA21 U234 ( .A(ten_count[0]), .B(ten_count[1]), .C(n230), .Z(N156) );
  GTECH_NOT U235 ( .A(n221), .Z(n230) );
  GTECH_NAND2 U236 ( .A(N152), .B(n225), .Z(n221) );
  GTECH_NAND2 U237 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n225) );
  GTECH_AND_NOT U238 ( .A(N152), .B(ten_count[0]), .Z(N154) );
  GTECH_NAND2 U239 ( .A(n231), .B(n15), .Z(N151) );
  GTECH_OA21 U240 ( .A(n14), .B(n232), .C(n216), .Z(n231) );
  GTECH_NOT U241 ( .A(n233), .Z(n216) );
  GTECH_OAI21 U242 ( .A(n234), .B(n226), .C(n187), .Z(n233) );
  GTECH_AND_NOT U243 ( .A(period[6]), .B(n215), .Z(N15) );
  GTECH_OAI21 U244 ( .A(n222), .B(n232), .C(n235), .Z(N148) );
  GTECH_MUX2 U245 ( .A(n236), .B(n237), .S(n172), .Z(n235) );
  GTECH_OR3 U246 ( .A(n173), .B(n238), .C(n239), .Z(n237) );
  GTECH_AND_NOT U247 ( .A(n240), .B(n241), .Z(n236) );
  GTECH_MUX2 U248 ( .A(n222), .B(n238), .S(n173), .Z(n240) );
  GTECH_NAND3 U249 ( .A(n242), .B(n217), .C(n228), .Z(N147) );
  GTECH_AND_NOT U250 ( .A(n243), .B(reset), .Z(n228) );
  GTECH_NAND3 U251 ( .A(n234), .B(n15), .C(n232), .Z(n243) );
  GTECH_NAND4 U252 ( .A(n186), .B(n173), .C(n172), .D(n244), .Z(n232) );
  GTECH_NAND2 U253 ( .A(n14), .B(n245), .Z(n217) );
  GTECH_NOT U254 ( .A(n15), .Z(n245) );
  GTECH_NAND3 U255 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n242) );
  GTECH_MUX2 U256 ( .A(n241), .B(n246), .S(n173), .Z(N146) );
  GTECH_OAI21 U257 ( .A(n239), .B(n238), .C(n247), .Z(n246) );
  GTECH_OAI21 U258 ( .A(n248), .B(n238), .C(n249), .Z(n241) );
  GTECH_AO21 U259 ( .A(n244), .B(n186), .C(n222), .Z(n249) );
  GTECH_NOT U260 ( .A(n239), .Z(n248) );
  GTECH_NAND3 U261 ( .A(n250), .B(n251), .C(n252), .Z(n239) );
  GTECH_NOT U262 ( .A(n186), .Z(n251) );
  GTECH_NAND2 U263 ( .A(n253), .B(n247), .Z(N144) );
  GTECH_NAND3 U264 ( .A(N152), .B(n244), .C(n186), .Z(n247) );
  GTECH_MUX2 U265 ( .A(n254), .B(n255), .S(n186), .Z(n253) );
  GTECH_NAND3 U266 ( .A(n252), .B(n250), .C(N150), .Z(n255) );
  GTECH_OA21 U267 ( .A(n222), .B(n244), .C(n256), .Z(n254) );
  GTECH_OAI21 U268 ( .A(n23), .B(n257), .C(N150), .Z(n256) );
  GTECH_NAND2 U269 ( .A(n258), .B(n250), .Z(n244) );
  GTECH_NOT U270 ( .A(n23), .Z(n250) );
  GTECH_OAI21 U271 ( .A(n238), .B(n259), .C(n260), .Z(N142) );
  GTECH_MUX2 U272 ( .A(n261), .B(n262), .S(n23), .Z(n260) );
  GTECH_NAND2 U273 ( .A(N152), .B(n258), .Z(n262) );
  GTECH_XOR2 U274 ( .A(n23), .B(n252), .Z(n259) );
  GTECH_NOT U275 ( .A(n257), .Z(n252) );
  GTECH_NAND3 U276 ( .A(n263), .B(n264), .C(sub_85_carry_2_), .Z(n257) );
  GTECH_NOT U277 ( .A(n21), .Z(n264) );
  GTECH_NAND2 U278 ( .A(n265), .B(n261), .Z(N140) );
  GTECH_NAND2 U279 ( .A(n266), .B(N152), .Z(n261) );
  GTECH_NOT U280 ( .A(n222), .Z(N152) );
  GTECH_NOT U281 ( .A(n258), .Z(n266) );
  GTECH_NAND2 U282 ( .A(n21), .B(n267), .Z(n258) );
  GTECH_NOT U283 ( .A(sub_85_carry_2_), .Z(n267) );
  GTECH_MUX2 U284 ( .A(n268), .B(n269), .S(n21), .Z(n265) );
  GTECH_NAND3 U285 ( .A(sub_85_carry_2_), .B(n263), .C(N150), .Z(n269) );
  GTECH_NOT U286 ( .A(n17), .Z(n263) );
  GTECH_AND_NOT U287 ( .A(n270), .B(n271), .Z(n268) );
  GTECH_MUX2 U288 ( .A(n238), .B(n222), .S(sub_85_carry_2_), .Z(n270) );
  GTECH_AO21 U289 ( .A(period[5]), .B(n214), .C(reset), .Z(N14) );
  GTECH_MUX2 U290 ( .A(n272), .B(n271), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U291 ( .A(n273), .Z(n271) );
  GTECH_OAI21 U292 ( .A(n17), .B(n238), .C(n222), .Z(n272) );
  GTECH_OAI21 U293 ( .A(n17), .B(n222), .C(n273), .Z(N136) );
  GTECH_NAND2 U294 ( .A(n17), .B(N150), .Z(n273) );
  GTECH_NOT U295 ( .A(n238), .Z(N150) );
  GTECH_NAND2 U296 ( .A(n274), .B(n187), .Z(n238) );
  GTECH_NOT U297 ( .A(n227), .Z(n274) );
  GTECH_NAND2 U298 ( .A(n15), .B(n275), .Z(n222) );
  GTECH_NOT U299 ( .A(N169), .Z(n275) );
  GTECH_NAND2 U300 ( .A(n187), .B(n234), .Z(N169) );
  GTECH_NOT U301 ( .A(n14), .Z(n234) );
  GTECH_OA21 U302 ( .A(n276), .B(n277), .C(n278), .Z(N134) );
  GTECH_NOR2 U303 ( .A(n279), .B(n171), .Z(n277) );
  GTECH_NAND2 U304 ( .A(n187), .B(n227), .Z(N133) );
  GTECH_NAND2 U305 ( .A(n15), .B(n14), .Z(n227) );
  GTECH_AND_NOT U306 ( .A(n280), .B(n281), .Z(N132) );
  GTECH_XOR2 U307 ( .A(n279), .B(n171), .Z(n280) );
  GTECH_NAND2 U308 ( .A(n282), .B(n283), .Z(n279) );
  GTECH_NOT U309 ( .A(n161), .Z(n283) );
  GTECH_NOT U310 ( .A(n284), .Z(n282) );
  GTECH_AND_NOT U311 ( .A(n285), .B(n281), .Z(N130) );
  GTECH_XOR2 U312 ( .A(n284), .B(n161), .Z(n285) );
  GTECH_NAND2 U313 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_NOT U314 ( .A(n162), .Z(n287) );
  GTECH_NOT U315 ( .A(n288), .Z(n286) );
  GTECH_AND_NOT U316 ( .A(period[4]), .B(n215), .Z(N13) );
  GTECH_AND_NOT U317 ( .A(n289), .B(n281), .Z(N128) );
  GTECH_XOR2 U318 ( .A(n288), .B(n162), .Z(n289) );
  GTECH_NAND2 U319 ( .A(n290), .B(n291), .Z(n288) );
  GTECH_NOT U320 ( .A(n292), .Z(n290) );
  GTECH_AND_NOT U321 ( .A(n293), .B(n281), .Z(N126) );
  GTECH_XOR2 U322 ( .A(n292), .B(n163), .Z(n293) );
  GTECH_NAND2 U323 ( .A(n294), .B(n295), .Z(n292) );
  GTECH_NOT U324 ( .A(n164), .Z(n295) );
  GTECH_NOT U325 ( .A(n296), .Z(n294) );
  GTECH_AND_NOT U326 ( .A(n297), .B(n281), .Z(N124) );
  GTECH_XOR2 U327 ( .A(n296), .B(n164), .Z(n297) );
  GTECH_NAND2 U328 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_NOT U329 ( .A(n300), .Z(n298) );
  GTECH_AND_NOT U330 ( .A(n301), .B(n281), .Z(N122) );
  GTECH_XOR2 U331 ( .A(n300), .B(n165), .Z(n301) );
  GTECH_NAND2 U332 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_NOT U333 ( .A(n166), .Z(n303) );
  GTECH_NOT U334 ( .A(n304), .Z(n302) );
  GTECH_AND_NOT U335 ( .A(n305), .B(n281), .Z(N120) );
  GTECH_XOR2 U336 ( .A(n304), .B(n166), .Z(n305) );
  GTECH_NAND2 U337 ( .A(n306), .B(n307), .Z(n304) );
  GTECH_NOT U338 ( .A(n308), .Z(n306) );
  GTECH_AO21 U339 ( .A(period[3]), .B(n214), .C(reset), .Z(N12) );
  GTECH_AND_NOT U340 ( .A(n309), .B(n281), .Z(N118) );
  GTECH_XOR2 U341 ( .A(n308), .B(n167), .Z(n309) );
  GTECH_NAND3 U342 ( .A(n310), .B(n311), .C(n312), .Z(n308) );
  GTECH_NOT U343 ( .A(n168), .Z(n312) );
  GTECH_OAI22 U344 ( .A(n168), .B(n313), .C(n281), .D(n314), .Z(N116) );
  GTECH_MUX2 U345 ( .A(n310), .B(n315), .S(n168), .Z(n314) );
  GTECH_NAND2 U346 ( .A(n310), .B(n311), .Z(n315) );
  GTECH_NOT U347 ( .A(n169), .Z(n310) );
  GTECH_MUX2 U348 ( .A(N112), .B(n316), .S(n169), .Z(N114) );
  GTECH_AND_NOT U349 ( .A(n278), .B(n170), .Z(n316) );
  GTECH_NOT U350 ( .A(n313), .Z(N112) );
  GTECH_NAND2 U351 ( .A(n278), .B(n170), .Z(n313) );
  GTECH_NOT U352 ( .A(n281), .Z(n278) );
  GTECH_NAND2 U353 ( .A(n226), .B(n187), .Z(n281) );
  GTECH_NAND2 U354 ( .A(n317), .B(n318), .Z(n226) );
  GTECH_NAND4 U355 ( .A(n319), .B(n320), .C(n321), .D(n322), .Z(n318) );
  GTECH_OA22 U356 ( .A(n162), .B(update_period[8]), .C(n161), .D(
        update_period[9]), .Z(n322) );
  GTECH_AO21 U357 ( .A(update_period[7]), .B(n163), .C(n323), .Z(n320) );
  GTECH_OAI2N2 U358 ( .A(n324), .B(n325), .C(n326), .D(n327), .Z(n323) );
  GTECH_AO22 U359 ( .A(update_period[6]), .B(n328), .C(n329), .D(n164), .Z(
        n326) );
  GTECH_OR2 U360 ( .A(n164), .B(n329), .Z(n328) );
  GTECH_OAI21 U361 ( .A(n299), .B(n330), .C(n331), .Z(n329) );
  GTECH_NAND3 U362 ( .A(n166), .B(n332), .C(update_period[4]), .Z(n331) );
  GTECH_OAI21 U363 ( .A(n164), .B(update_period[6]), .C(n333), .Z(n325) );
  GTECH_OA22 U364 ( .A(n334), .B(n335), .C(n166), .D(update_period[4]), .Z(
        n333) );
  GTECH_ADD_ABC U365 ( .A(update_period[1]), .B(n336), .C(n169), .COUT(n335)
         );
  GTECH_AND_NOT U366 ( .A(update_period[0]), .B(n311), .Z(n336) );
  GTECH_NOT U367 ( .A(n170), .Z(n311) );
  GTECH_NAND3 U368 ( .A(n332), .B(n327), .C(n337), .Z(n324) );
  GTECH_OR_NOT U369 ( .A(n334), .B(n338), .Z(n337) );
  GTECH_OAI21 U370 ( .A(n168), .B(update_period[2]), .C(n339), .Z(n338) );
  GTECH_OAI21 U371 ( .A(n307), .B(n340), .C(n341), .Z(n334) );
  GTECH_NAND3 U372 ( .A(n168), .B(n339), .C(update_period[2]), .Z(n341) );
  GTECH_NAND2 U373 ( .A(n340), .B(n307), .Z(n339) );
  GTECH_NOT U374 ( .A(update_period[3]), .Z(n340) );
  GTECH_NOT U375 ( .A(n167), .Z(n307) );
  GTECH_NAND2 U376 ( .A(n291), .B(n342), .Z(n327) );
  GTECH_NOT U377 ( .A(update_period[7]), .Z(n342) );
  GTECH_NOT U378 ( .A(n163), .Z(n291) );
  GTECH_NAND2 U379 ( .A(n330), .B(n299), .Z(n332) );
  GTECH_NOT U380 ( .A(n165), .Z(n299) );
  GTECH_NOT U381 ( .A(update_period[5]), .Z(n330) );
  GTECH_AOI22 U382 ( .A(update_period[11]), .B(n160), .C(n343), .D(n321), .Z(
        n317) );
  GTECH_NAND2 U383 ( .A(n276), .B(n344), .Z(n321) );
  GTECH_NOT U384 ( .A(update_period[11]), .Z(n344) );
  GTECH_NOT U385 ( .A(n160), .Z(n276) );
  GTECH_OAI22 U386 ( .A(n345), .B(n346), .C(n347), .D(n348), .Z(n343) );
  GTECH_AOI22 U387 ( .A(n161), .B(update_period[9]), .C(update_period[8]), .D(
        n349), .Z(n348) );
  GTECH_OA21 U388 ( .A(n161), .B(update_period[9]), .C(n162), .Z(n349) );
  GTECH_NOT U389 ( .A(n319), .Z(n347) );
  GTECH_NAND2 U390 ( .A(n346), .B(n345), .Z(n319) );
  GTECH_NOT U391 ( .A(update_period[10]), .Z(n346) );
  GTECH_NOT U392 ( .A(n171), .Z(n345) );
  GTECH_AO21 U393 ( .A(period[2]), .B(n214), .C(reset), .Z(N11) );
  GTECH_AO21 U394 ( .A(period[1]), .B(n214), .C(reset), .Z(N10) );
  GTECH_NOT U395 ( .A(n215), .Z(n214) );
  GTECH_NAND2 U396 ( .A(period_load), .B(n187), .Z(n215) );
  GTECH_NOT U397 ( .A(reset), .Z(n187) );
endmodule

