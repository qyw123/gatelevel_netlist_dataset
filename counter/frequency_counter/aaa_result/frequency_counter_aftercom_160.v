
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
         n25, n27, n29, n31, n73, n151, n155, sub_85_carry_2_, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n73), .K(n73), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n73), .K(n73), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n73), .K(n73), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n73), .K(n73), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n73), .K(n73), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n73), .K(n73), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n73), .K(n73), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n73), .K(n73), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n73), .K(n73), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n73), .K(n73), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n73), .K(n73), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n73), .K(n73), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]), .QN(n168) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n73), .K(n73), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n167) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n73), .K(n73), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n166) );
  GTECH_FJK1S state_reg_0_ ( .J(n73), .K(n73), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n73), .K(n73), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n155) );
  GTECH_FJK1S update_digits_reg ( .J(n73), .K(n73), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n73), .K(n73), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n73), .K(n73), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n73), .K(n73), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n73), .K(n73), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n73), .K(n73), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n161) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n73), .K(n73), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n160) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n73), .K(n73), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n159) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n73), .K(n73), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n158) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n73), .K(n73), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n157) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n73), .K(n73), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n156) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n73), .K(n73), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n182) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n73), .K(n73), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n181) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n73), .K(n73), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n180) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n73), .K(n73), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n73), .K(n73), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n73), .K(n73), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n73), .K(n73), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n73), .K(n73), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n73), .K(n73), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n73), .K(n73), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n73), .K(n73), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n73), .K(n73), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n73), .K(n73), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n73), .K(n73), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n73), .K(n73), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n73), .K(n73), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n25) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n73), .K(n73), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n73), .K(n73), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n73), .K(n73), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n73), .K(n73), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n29) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n73), .K(n73), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n73), .K(n73), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n73), .K(n73), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n151) );
  GTECH_ZERO U164 ( .Z(n73) );
  GTECH_NAND2 U165 ( .A(n15), .B(n183), .Z(seven_segment0_N9) );
  GTECH_AND2 U166 ( .A(ten_count[0]), .B(n183), .Z(seven_segment0_N8) );
  GTECH_AND2 U167 ( .A(n151), .B(n183), .Z(seven_segment0_N6) );
  GTECH_AND2 U168 ( .A(unit_count[3]), .B(n183), .Z(seven_segment0_N22) );
  GTECH_AND2 U169 ( .A(unit_count[2]), .B(n183), .Z(seven_segment0_N20) );
  GTECH_AND2 U170 ( .A(unit_count[1]), .B(n183), .Z(seven_segment0_N18) );
  GTECH_AND2 U171 ( .A(unit_count[0]), .B(n183), .Z(seven_segment0_N16) );
  GTECH_AND2 U172 ( .A(ten_count[3]), .B(n183), .Z(seven_segment0_N14) );
  GTECH_AND2 U173 ( .A(ten_count[2]), .B(n183), .Z(seven_segment0_N12) );
  GTECH_AND2 U174 ( .A(ten_count[1]), .B(n183), .Z(seven_segment0_N10) );
  GTECH_NAND2 U175 ( .A(n184), .B(n185), .Z(segments[6]) );
  GTECH_NOT U176 ( .A(n186), .Z(segments[4]) );
  GTECH_NAND3 U177 ( .A(n185), .B(n186), .C(n187), .Z(segments[3]) );
  GTECH_OAI21 U178 ( .A(n188), .B(n189), .C(n190), .Z(n186) );
  GTECH_NOT U179 ( .A(n191), .Z(n189) );
  GTECH_NAND2 U180 ( .A(n192), .B(n193), .Z(segments[2]) );
  GTECH_NOT U181 ( .A(segments[5]), .Z(n193) );
  GTECH_OAI21 U182 ( .A(n194), .B(n191), .C(n184), .Z(segments[5]) );
  GTECH_AND2 U183 ( .A(n195), .B(n187), .Z(n184) );
  GTECH_MUX2 U184 ( .A(n191), .B(n196), .S(n197), .Z(n195) );
  GTECH_NAND2 U185 ( .A(n198), .B(n190), .Z(n196) );
  GTECH_NAND3 U186 ( .A(n199), .B(n185), .C(n192), .Z(segments[1]) );
  GTECH_NOT U187 ( .A(n200), .Z(n192) );
  GTECH_OAI21 U188 ( .A(n190), .B(n201), .C(n191), .Z(n200) );
  GTECH_NAND3 U189 ( .A(n197), .B(n202), .C(n190), .Z(n199) );
  GTECH_NAND3 U190 ( .A(n187), .B(n185), .C(n203), .Z(segments[0]) );
  GTECH_OA22 U191 ( .A(n204), .B(n191), .C(n190), .D(n201), .Z(n203) );
  GTECH_NAND2 U192 ( .A(n205), .B(n202), .Z(n191) );
  GTECH_NAND2 U193 ( .A(n188), .B(n205), .Z(n185) );
  GTECH_NOT U194 ( .A(n201), .Z(n188) );
  GTECH_NAND2 U195 ( .A(n206), .B(n197), .Z(n201) );
  GTECH_NAND3 U196 ( .A(n198), .B(n202), .C(n204), .Z(n187) );
  GTECH_NOT U197 ( .A(n207), .Z(n204) );
  GTECH_NAND2 U198 ( .A(n194), .B(n197), .Z(n207) );
  GTECH_NOT U199 ( .A(n208), .Z(n197) );
  GTECH_MUX2 U200 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n151), .Z(n208) );
  GTECH_NOT U201 ( .A(n190), .Z(n194) );
  GTECH_MUX2 U202 ( .A(n29), .B(n25), .S(n151), .Z(n190) );
  GTECH_NOT U203 ( .A(n206), .Z(n202) );
  GTECH_MUX2 U204 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n151), .Z(n206) );
  GTECH_NOT U205 ( .A(n205), .Z(n198) );
  GTECH_MUX2 U206 ( .A(n31), .B(n27), .S(n151), .Z(n205) );
  GTECH_AO21 U207 ( .A(period[0]), .B(n209), .C(reset), .Z(N9) );
  GTECH_AND2 U208 ( .A(period[11]), .B(n209), .Z(N21) );
  GTECH_NAND2 U209 ( .A(n183), .B(n210), .Z(N20) );
  GTECH_AO21 U210 ( .A(period[10]), .B(n209), .C(reset), .Z(N19) );
  GTECH_AND2 U211 ( .A(period[9]), .B(n209), .Z(N18) );
  GTECH_AND2 U212 ( .A(period[8]), .B(n209), .Z(N17) );
  GTECH_AND2 U213 ( .A(N170), .B(n211), .Z(N168) );
  GTECH_NAND2 U214 ( .A(n212), .B(n213), .Z(N167) );
  GTECH_AND2 U215 ( .A(N170), .B(n214), .Z(N166) );
  GTECH_AND2 U216 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U217 ( .A(N170), .B(n215), .Z(N162) );
  GTECH_NOT U218 ( .A(n216), .Z(N170) );
  GTECH_NAND2 U219 ( .A(n217), .B(n183), .Z(n216) );
  GTECH_NOT U220 ( .A(n213), .Z(n217) );
  GTECH_MUX2 U221 ( .A(n218), .B(n219), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U222 ( .A(ten_count[2]), .B(n220), .C(n221), .Z(n219) );
  GTECH_NOT U223 ( .A(n222), .Z(n221) );
  GTECH_AND2 U224 ( .A(n223), .B(ten_count[2]), .Z(n218) );
  GTECH_AO21 U225 ( .A(period[7]), .B(n209), .C(reset), .Z(N16) );
  GTECH_OAI21 U226 ( .A(n224), .B(n225), .C(n226), .Z(N159) );
  GTECH_MUX2 U227 ( .A(n223), .B(n222), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U228 ( .A(ten_count[1]), .B(n220), .C(n227), .Z(n222) );
  GTECH_NOT U229 ( .A(n228), .Z(n223) );
  GTECH_NAND3 U230 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n228) );
  GTECH_MUX2 U231 ( .A(n229), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U232 ( .A(N152), .B(ten_count[0]), .Z(n229) );
  GTECH_NOT U233 ( .A(n227), .Z(N154) );
  GTECH_NAND2 U234 ( .A(N152), .B(n230), .Z(n227) );
  GTECH_NOT U235 ( .A(ten_count[0]), .Z(n230) );
  GTECH_NAND2 U236 ( .A(n231), .B(n155), .Z(N151) );
  GTECH_OA21 U237 ( .A(n14), .B(n232), .C(n212), .Z(n231) );
  GTECH_NOT U238 ( .A(n233), .Z(n212) );
  GTECH_OAI21 U239 ( .A(n234), .B(n224), .C(n183), .Z(n233) );
  GTECH_AND2 U240 ( .A(period[6]), .B(n209), .Z(N15) );
  GTECH_OAI21 U241 ( .A(n220), .B(n232), .C(n235), .Z(N148) );
  GTECH_NOT U242 ( .A(n236), .Z(n235) );
  GTECH_MUX2 U243 ( .A(n237), .B(n238), .S(n166), .Z(n236) );
  GTECH_NOR3 U244 ( .A(n239), .B(n167), .C(n240), .Z(n238) );
  GTECH_OR_NOT U245 ( .A(n241), .B(n242), .Z(n237) );
  GTECH_MUX2 U246 ( .A(n220), .B(n240), .S(n167), .Z(n242) );
  GTECH_NAND3 U247 ( .A(n243), .B(n213), .C(n226), .Z(N147) );
  GTECH_AND2 U248 ( .A(n183), .B(n244), .Z(n226) );
  GTECH_NAND3 U249 ( .A(n234), .B(n155), .C(n232), .Z(n244) );
  GTECH_NAND4 U250 ( .A(n180), .B(n167), .C(n166), .D(n245), .Z(n232) );
  GTECH_NAND2 U251 ( .A(n14), .B(n246), .Z(n213) );
  GTECH_NOT U252 ( .A(n155), .Z(n246) );
  GTECH_NAND3 U253 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n243) );
  GTECH_MUX2 U254 ( .A(n241), .B(n247), .S(n167), .Z(N146) );
  GTECH_OAI21 U255 ( .A(n239), .B(n240), .C(n248), .Z(n247) );
  GTECH_OAI21 U256 ( .A(n249), .B(n240), .C(n250), .Z(n241) );
  GTECH_AO21 U257 ( .A(n245), .B(n180), .C(n220), .Z(n250) );
  GTECH_NOT U258 ( .A(n239), .Z(n249) );
  GTECH_NAND3 U259 ( .A(n211), .B(n251), .C(n252), .Z(n239) );
  GTECH_NOT U260 ( .A(n180), .Z(n251) );
  GTECH_NAND2 U261 ( .A(n253), .B(n248), .Z(N144) );
  GTECH_NAND3 U262 ( .A(N152), .B(n245), .C(n180), .Z(n248) );
  GTECH_MUX2 U263 ( .A(n254), .B(n255), .S(n180), .Z(n253) );
  GTECH_NAND3 U264 ( .A(n252), .B(n211), .C(N150), .Z(n255) );
  GTECH_OA21 U265 ( .A(n220), .B(n245), .C(n256), .Z(n254) );
  GTECH_OAI21 U266 ( .A(n22), .B(n257), .C(N150), .Z(n256) );
  GTECH_NAND2 U267 ( .A(n258), .B(n211), .Z(n245) );
  GTECH_NOT U268 ( .A(n22), .Z(n211) );
  GTECH_OAI21 U269 ( .A(n240), .B(n259), .C(n260), .Z(N142) );
  GTECH_MUX2 U270 ( .A(n261), .B(n262), .S(n22), .Z(n260) );
  GTECH_NAND2 U271 ( .A(N152), .B(n258), .Z(n262) );
  GTECH_XOR2 U272 ( .A(n22), .B(n252), .Z(n259) );
  GTECH_NOT U273 ( .A(n257), .Z(n252) );
  GTECH_NAND3 U274 ( .A(n215), .B(n214), .C(sub_85_carry_2_), .Z(n257) );
  GTECH_NOT U275 ( .A(n20), .Z(n214) );
  GTECH_NAND2 U276 ( .A(n263), .B(n261), .Z(N140) );
  GTECH_NAND2 U277 ( .A(n264), .B(N152), .Z(n261) );
  GTECH_NOT U278 ( .A(n220), .Z(N152) );
  GTECH_NOT U279 ( .A(n258), .Z(n264) );
  GTECH_NAND2 U280 ( .A(n20), .B(n265), .Z(n258) );
  GTECH_NOT U281 ( .A(sub_85_carry_2_), .Z(n265) );
  GTECH_MUX2 U282 ( .A(n266), .B(n267), .S(n20), .Z(n263) );
  GTECH_NAND3 U283 ( .A(sub_85_carry_2_), .B(n215), .C(N150), .Z(n267) );
  GTECH_NOT U284 ( .A(n16), .Z(n215) );
  GTECH_AND2 U285 ( .A(n268), .B(n269), .Z(n266) );
  GTECH_MUX2 U286 ( .A(n240), .B(n220), .S(sub_85_carry_2_), .Z(n268) );
  GTECH_AO21 U287 ( .A(period[5]), .B(n209), .C(reset), .Z(N14) );
  GTECH_MUX2 U288 ( .A(n270), .B(n271), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U289 ( .A(n269), .Z(n271) );
  GTECH_OAI21 U290 ( .A(n16), .B(n240), .C(n220), .Z(n270) );
  GTECH_OAI21 U291 ( .A(n16), .B(n220), .C(n269), .Z(N136) );
  GTECH_NAND2 U292 ( .A(n16), .B(N150), .Z(n269) );
  GTECH_NOT U293 ( .A(n240), .Z(N150) );
  GTECH_NAND2 U294 ( .A(n272), .B(n183), .Z(n240) );
  GTECH_NOT U295 ( .A(n225), .Z(n272) );
  GTECH_NAND2 U296 ( .A(n155), .B(n273), .Z(n220) );
  GTECH_NOT U297 ( .A(N169), .Z(n273) );
  GTECH_NAND2 U298 ( .A(n183), .B(n234), .Z(N169) );
  GTECH_NOT U299 ( .A(n14), .Z(n234) );
  GTECH_AND2 U300 ( .A(n274), .B(n275), .Z(N134) );
  GTECH_OAI21 U301 ( .A(n165), .B(n276), .C(n181), .Z(n275) );
  GTECH_NAND2 U302 ( .A(n183), .B(n225), .Z(N133) );
  GTECH_NAND2 U303 ( .A(n155), .B(n14), .Z(n225) );
  GTECH_AND2 U304 ( .A(n277), .B(n274), .Z(N132) );
  GTECH_XOR2 U305 ( .A(n276), .B(n165), .Z(n277) );
  GTECH_NAND2 U306 ( .A(n278), .B(n279), .Z(n276) );
  GTECH_NOT U307 ( .A(n280), .Z(n278) );
  GTECH_AND2 U308 ( .A(n281), .B(n274), .Z(N130) );
  GTECH_XOR2 U309 ( .A(n280), .B(n182), .Z(n281) );
  GTECH_NAND2 U310 ( .A(n282), .B(n283), .Z(n280) );
  GTECH_NOT U311 ( .A(n284), .Z(n282) );
  GTECH_AND2 U312 ( .A(period[4]), .B(n209), .Z(N13) );
  GTECH_AND2 U313 ( .A(n285), .B(n274), .Z(N128) );
  GTECH_XOR2 U314 ( .A(n284), .B(n156), .Z(n285) );
  GTECH_NAND2 U315 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_NOT U316 ( .A(n288), .Z(n286) );
  GTECH_AND2 U317 ( .A(n289), .B(n274), .Z(N126) );
  GTECH_XOR2 U318 ( .A(n288), .B(n157), .Z(n289) );
  GTECH_NAND2 U319 ( .A(n290), .B(n291), .Z(n288) );
  GTECH_NOT U320 ( .A(n292), .Z(n290) );
  GTECH_AND2 U321 ( .A(n293), .B(n274), .Z(N124) );
  GTECH_XOR2 U322 ( .A(n292), .B(n158), .Z(n293) );
  GTECH_NAND2 U323 ( .A(n294), .B(n295), .Z(n292) );
  GTECH_NOT U324 ( .A(n296), .Z(n294) );
  GTECH_AND2 U325 ( .A(n297), .B(n274), .Z(N122) );
  GTECH_XOR2 U326 ( .A(n296), .B(n159), .Z(n297) );
  GTECH_NAND2 U327 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_NOT U328 ( .A(n160), .Z(n299) );
  GTECH_NOT U329 ( .A(n300), .Z(n298) );
  GTECH_AND2 U330 ( .A(n301), .B(n274), .Z(N120) );
  GTECH_XOR2 U331 ( .A(n300), .B(n160), .Z(n301) );
  GTECH_NAND2 U332 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_NOT U333 ( .A(n304), .Z(n302) );
  GTECH_AO21 U334 ( .A(period[3]), .B(n209), .C(reset), .Z(N12) );
  GTECH_AND2 U335 ( .A(n305), .B(n274), .Z(N118) );
  GTECH_XOR2 U336 ( .A(n304), .B(n161), .Z(n305) );
  GTECH_NAND3 U337 ( .A(n306), .B(n307), .C(n308), .Z(n304) );
  GTECH_OAI2N2 U338 ( .A(n309), .B(n310), .C(N112), .D(n308), .Z(N116) );
  GTECH_NOT U339 ( .A(n162), .Z(n308) );
  GTECH_MUX2 U340 ( .A(n306), .B(n311), .S(n162), .Z(n310) );
  GTECH_NAND2 U341 ( .A(n306), .B(n307), .Z(n311) );
  GTECH_NOT U342 ( .A(n163), .Z(n306) );
  GTECH_MUX2 U343 ( .A(N112), .B(n312), .S(n163), .Z(N114) );
  GTECH_AND2 U344 ( .A(n274), .B(n307), .Z(n312) );
  GTECH_NOT U345 ( .A(n313), .Z(N112) );
  GTECH_NAND2 U346 ( .A(n274), .B(n164), .Z(n313) );
  GTECH_NOT U347 ( .A(n309), .Z(n274) );
  GTECH_NAND2 U348 ( .A(n224), .B(n183), .Z(n309) );
  GTECH_AO21 U349 ( .A(n314), .B(n315), .C(n316), .Z(n224) );
  GTECH_ADD_ABC U350 ( .A(update_period[11]), .B(n181), .C(n317), .COUT(n316)
         );
  GTECH_ADD_ABC U351 ( .A(update_period[10]), .B(n165), .C(n318), .COUT(n317)
         );
  GTECH_OAI2N2 U352 ( .A(n279), .B(n319), .C(n320), .D(update_period[8]), .Z(
        n318) );
  GTECH_OA21 U353 ( .A(update_period[9]), .B(n182), .C(n156), .Z(n320) );
  GTECH_NOT U354 ( .A(update_period[9]), .Z(n319) );
  GTECH_NOT U355 ( .A(n182), .Z(n279) );
  GTECH_AOI222 U356 ( .A(n321), .B(n322), .C(n323), .D(n324), .E(n283), .F(
        n325), .Z(n315) );
  GTECH_NOT U357 ( .A(update_period[8]), .Z(n325) );
  GTECH_NOT U358 ( .A(n156), .Z(n283) );
  GTECH_OA22 U359 ( .A(n326), .B(n327), .C(n287), .D(n328), .Z(n324) );
  GTECH_NOT U360 ( .A(update_period[7]), .Z(n328) );
  GTECH_NOT U361 ( .A(n157), .Z(n287) );
  GTECH_OAI21 U362 ( .A(update_period[7]), .B(n157), .C(n158), .Z(n327) );
  GTECH_OA22 U363 ( .A(n329), .B(n330), .C(n331), .D(n332), .Z(n323) );
  GTECH_OAI21 U364 ( .A(update_period[4]), .B(n160), .C(n333), .Z(n332) );
  GTECH_NOT U365 ( .A(n330), .Z(n333) );
  GTECH_OAI2N2 U366 ( .A(n334), .B(n335), .C(n295), .D(n336), .Z(n331) );
  GTECH_OAI21 U367 ( .A(n303), .B(n337), .C(n338), .Z(n335) );
  GTECH_NAND3 U368 ( .A(n162), .B(n339), .C(update_period[2]), .Z(n338) );
  GTECH_AND3 U369 ( .A(n340), .B(n339), .C(n341), .Z(n334) );
  GTECH_OA22 U370 ( .A(update_period[2]), .B(n162), .C(update_period[1]), .D(
        n163), .Z(n341) );
  GTECH_NAND2 U371 ( .A(n337), .B(n303), .Z(n339) );
  GTECH_NOT U372 ( .A(n161), .Z(n303) );
  GTECH_NOT U373 ( .A(update_period[3]), .Z(n337) );
  GTECH_OAI2N2 U374 ( .A(n307), .B(n168), .C(update_period[1]), .D(n163), .Z(
        n340) );
  GTECH_NOT U375 ( .A(n164), .Z(n307) );
  GTECH_OAI2N2 U376 ( .A(update_period[7]), .B(n157), .C(n291), .D(n326), .Z(
        n330) );
  GTECH_NOT U377 ( .A(update_period[6]), .Z(n326) );
  GTECH_NOT U378 ( .A(n158), .Z(n291) );
  GTECH_OA22 U379 ( .A(n342), .B(n343), .C(n295), .D(n336), .Z(n329) );
  GTECH_NOT U380 ( .A(update_period[5]), .Z(n336) );
  GTECH_NOT U381 ( .A(n159), .Z(n295) );
  GTECH_OAI21 U382 ( .A(update_period[5]), .B(n159), .C(n160), .Z(n343) );
  GTECH_NOT U383 ( .A(update_period[4]), .Z(n342) );
  GTECH_NOT U384 ( .A(update_period[10]), .Z(n322) );
  GTECH_NOT U385 ( .A(n165), .Z(n321) );
  GTECH_OA22 U386 ( .A(update_period[11]), .B(n181), .C(update_period[9]), .D(
        n182), .Z(n314) );
  GTECH_AO21 U387 ( .A(period[2]), .B(n209), .C(reset), .Z(N11) );
  GTECH_AO21 U388 ( .A(period[1]), .B(n209), .C(reset), .Z(N10) );
  GTECH_NOT U389 ( .A(n210), .Z(n209) );
  GTECH_NAND2 U390 ( .A(period_load), .B(n183), .Z(n210) );
  GTECH_NOT U391 ( .A(reset), .Z(n183) );
endmodule

