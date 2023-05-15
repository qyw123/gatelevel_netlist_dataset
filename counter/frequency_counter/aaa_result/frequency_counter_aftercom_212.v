
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
         n23, n25, n26, n28, n29, n30, n32, n75, n153, sub_85_carry_2_, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347;
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
        clk), .Q(update_period[0]), .QN(n171) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n75), .K(n75), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n170) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n75), .K(n75), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n169) );
  GTECH_FJK1S state_reg_0_ ( .J(n75), .K(n75), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n75), .K(n75), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n75), .K(n75), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n75), .K(n75), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n75), .K(n75), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n75), .K(n75), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n75), .K(n75), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n75), .K(n75), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n75), .K(n75), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n75), .K(n75), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n161) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n75), .K(n75), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n160) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n75), .K(n75), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n159) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n75), .K(n75), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n158) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n75), .K(n75), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n184) );
  GTECH_FJK1S update_digits_reg ( .J(n75), .K(n75), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n16) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n75), .K(n75), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n183) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n75), .K(n75), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n17) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n75), .K(n75), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n75), .K(n75), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n75), .K(n75), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n75), .K(n75), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n21) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n75), .K(n75), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n75), .K(n75), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n23) );
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
        seven_segment0_unit_count_reg[0]), .QN(n25) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n29) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n153) );
  GTECH_ZERO U166 ( .Z(n75) );
  GTECH_NAND2 U167 ( .A(n16), .B(n185), .Z(seven_segment0_N9) );
  GTECH_AND2 U168 ( .A(ten_count[0]), .B(n185), .Z(seven_segment0_N8) );
  GTECH_AND2 U169 ( .A(n153), .B(n185), .Z(seven_segment0_N6) );
  GTECH_AND2 U170 ( .A(unit_count[3]), .B(n185), .Z(seven_segment0_N22) );
  GTECH_AND2 U171 ( .A(unit_count[2]), .B(n185), .Z(seven_segment0_N20) );
  GTECH_AND2 U172 ( .A(unit_count[1]), .B(n185), .Z(seven_segment0_N18) );
  GTECH_AND2 U173 ( .A(unit_count[0]), .B(n185), .Z(seven_segment0_N16) );
  GTECH_AND2 U174 ( .A(ten_count[3]), .B(n185), .Z(seven_segment0_N14) );
  GTECH_AND2 U175 ( .A(ten_count[2]), .B(n185), .Z(seven_segment0_N12) );
  GTECH_AND2 U176 ( .A(ten_count[1]), .B(n185), .Z(seven_segment0_N10) );
  GTECH_NAND2 U177 ( .A(n186), .B(n187), .Z(segments[6]) );
  GTECH_NAND2 U178 ( .A(n186), .B(n188), .Z(segments[5]) );
  GTECH_NAND3 U179 ( .A(n189), .B(n190), .C(n187), .Z(segments[3]) );
  GTECH_NOT U180 ( .A(segments[4]), .Z(n190) );
  GTECH_OAI21 U181 ( .A(n191), .B(n192), .C(n188), .Z(segments[4]) );
  GTECH_NAND2 U182 ( .A(n193), .B(n186), .Z(segments[2]) );
  GTECH_AND2 U183 ( .A(n194), .B(n195), .Z(n186) );
  GTECH_NAND3 U184 ( .A(n196), .B(n197), .C(n198), .Z(n195) );
  GTECH_NAND3 U185 ( .A(n199), .B(n187), .C(n193), .Z(segments[1]) );
  GTECH_NOT U186 ( .A(n200), .Z(n193) );
  GTECH_NAND2 U187 ( .A(n201), .B(n202), .Z(n200) );
  GTECH_NAND3 U188 ( .A(n198), .B(n203), .C(n197), .Z(n199) );
  GTECH_NAND4 U189 ( .A(n194), .B(n201), .C(n188), .D(n187), .Z(segments[0])
         );
  GTECH_NAND2 U190 ( .A(n204), .B(n205), .Z(n187) );
  GTECH_NAND2 U191 ( .A(n197), .B(n206), .Z(n188) );
  GTECH_NOT U192 ( .A(n202), .Z(n206) );
  GTECH_NAND2 U193 ( .A(n204), .B(n192), .Z(n201) );
  GTECH_NOT U194 ( .A(n191), .Z(n204) );
  GTECH_NAND2 U195 ( .A(n198), .B(n207), .Z(n191) );
  GTECH_NOT U196 ( .A(n203), .Z(n207) );
  GTECH_NOT U197 ( .A(n208), .Z(n194) );
  GTECH_OAI21 U198 ( .A(n198), .B(n202), .C(n189), .Z(n208) );
  GTECH_NAND4 U199 ( .A(n203), .B(n196), .C(n198), .D(n192), .Z(n189) );
  GTECH_NOT U200 ( .A(n197), .Z(n192) );
  GTECH_MUX2 U201 ( .A(n29), .B(n25), .S(n153), .Z(n197) );
  GTECH_NAND2 U202 ( .A(n203), .B(n205), .Z(n202) );
  GTECH_NOT U203 ( .A(n196), .Z(n205) );
  GTECH_MUX2 U204 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n153), .Z(n196) );
  GTECH_MUX2 U205 ( .A(n30), .B(n26), .S(n153), .Z(n203) );
  GTECH_MUX2 U206 ( .A(n32), .B(n28), .S(n153), .Z(n198) );
  GTECH_AO21 U207 ( .A(period[0]), .B(n209), .C(reset), .Z(N9) );
  GTECH_AND2 U208 ( .A(period[11]), .B(n209), .Z(N21) );
  GTECH_NAND2 U209 ( .A(n185), .B(n210), .Z(N20) );
  GTECH_AO21 U210 ( .A(period[10]), .B(n209), .C(reset), .Z(N19) );
  GTECH_AND2 U211 ( .A(period[9]), .B(n209), .Z(N18) );
  GTECH_AND2 U212 ( .A(period[8]), .B(n209), .Z(N17) );
  GTECH_AND2 U213 ( .A(N170), .B(n211), .Z(N168) );
  GTECH_NAND2 U214 ( .A(n212), .B(n213), .Z(N167) );
  GTECH_AND2 U215 ( .A(N170), .B(n214), .Z(N166) );
  GTECH_AND2 U216 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U217 ( .A(N170), .B(n215), .Z(N162) );
  GTECH_NOT U218 ( .A(n216), .Z(N170) );
  GTECH_NAND2 U219 ( .A(n217), .B(n185), .Z(n216) );
  GTECH_NOT U220 ( .A(n213), .Z(n217) );
  GTECH_OAI2N2 U221 ( .A(n218), .B(n219), .C(n220), .D(ten_count[3]), .Z(N160)
         );
  GTECH_MUX2 U222 ( .A(n221), .B(n222), .S(ten_count[2]), .Z(n219) );
  GTECH_NAND2 U223 ( .A(n223), .B(n221), .Z(n222) );
  GTECH_NOT U224 ( .A(ten_count[3]), .Z(n221) );
  GTECH_AO21 U225 ( .A(period[7]), .B(n209), .C(reset), .Z(N16) );
  GTECH_OAI21 U226 ( .A(n224), .B(n225), .C(n226), .Z(N159) );
  GTECH_MUX2 U227 ( .A(n227), .B(n220), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U228 ( .A(n228), .Z(n220) );
  GTECH_NAND2 U229 ( .A(N152), .B(n229), .Z(n228) );
  GTECH_AND2 U230 ( .A(N152), .B(n223), .Z(n227) );
  GTECH_NOT U231 ( .A(n229), .Z(n223) );
  GTECH_NAND2 U232 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n229) );
  GTECH_MUX2 U233 ( .A(n230), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U234 ( .A(N152), .B(ten_count[0]), .Z(n230) );
  GTECH_NOT U235 ( .A(n231), .Z(N154) );
  GTECH_NAND2 U236 ( .A(N152), .B(n232), .Z(n231) );
  GTECH_NOT U237 ( .A(ten_count[0]), .Z(n232) );
  GTECH_NAND2 U238 ( .A(n233), .B(n15), .Z(N151) );
  GTECH_OA21 U239 ( .A(n14), .B(n234), .C(n212), .Z(n233) );
  GTECH_NOT U240 ( .A(n235), .Z(n212) );
  GTECH_OAI21 U241 ( .A(n236), .B(n224), .C(n185), .Z(n235) );
  GTECH_AND2 U242 ( .A(period[6]), .B(n209), .Z(N15) );
  GTECH_OAI21 U243 ( .A(n218), .B(n234), .C(n237), .Z(N148) );
  GTECH_MUX2 U244 ( .A(n238), .B(n239), .S(n169), .Z(n237) );
  GTECH_OR3 U245 ( .A(n170), .B(n240), .C(n241), .Z(n239) );
  GTECH_AND_NOT U246 ( .A(n242), .B(n243), .Z(n238) );
  GTECH_MUX2 U247 ( .A(n218), .B(n240), .S(n170), .Z(n242) );
  GTECH_NAND3 U248 ( .A(n244), .B(n213), .C(n226), .Z(N147) );
  GTECH_AND2 U249 ( .A(n185), .B(n245), .Z(n226) );
  GTECH_NAND3 U250 ( .A(n236), .B(n15), .C(n234), .Z(n245) );
  GTECH_NAND4 U251 ( .A(n183), .B(n170), .C(n169), .D(n246), .Z(n234) );
  GTECH_NAND2 U252 ( .A(n14), .B(n247), .Z(n213) );
  GTECH_NOT U253 ( .A(n15), .Z(n247) );
  GTECH_NAND3 U254 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n244) );
  GTECH_MUX2 U255 ( .A(n243), .B(n248), .S(n170), .Z(N146) );
  GTECH_OAI21 U256 ( .A(n241), .B(n240), .C(n249), .Z(n248) );
  GTECH_OAI21 U257 ( .A(n250), .B(n240), .C(n251), .Z(n243) );
  GTECH_AO21 U258 ( .A(n246), .B(n183), .C(n218), .Z(n251) );
  GTECH_NOT U259 ( .A(n241), .Z(n250) );
  GTECH_NAND3 U260 ( .A(n211), .B(n252), .C(n253), .Z(n241) );
  GTECH_NOT U261 ( .A(n183), .Z(n252) );
  GTECH_NAND2 U262 ( .A(n254), .B(n249), .Z(N144) );
  GTECH_NAND3 U263 ( .A(N152), .B(n246), .C(n183), .Z(n249) );
  GTECH_MUX2 U264 ( .A(n255), .B(n256), .S(n183), .Z(n254) );
  GTECH_NAND3 U265 ( .A(n253), .B(n211), .C(N150), .Z(n256) );
  GTECH_OA21 U266 ( .A(n218), .B(n246), .C(n257), .Z(n255) );
  GTECH_OAI21 U267 ( .A(n23), .B(n258), .C(N150), .Z(n257) );
  GTECH_NAND2 U268 ( .A(n259), .B(n211), .Z(n246) );
  GTECH_NOT U269 ( .A(n23), .Z(n211) );
  GTECH_OAI21 U270 ( .A(n240), .B(n260), .C(n261), .Z(N142) );
  GTECH_MUX2 U271 ( .A(n262), .B(n263), .S(n23), .Z(n261) );
  GTECH_NAND2 U272 ( .A(N152), .B(n259), .Z(n263) );
  GTECH_XOR2 U273 ( .A(n23), .B(n253), .Z(n260) );
  GTECH_NOT U274 ( .A(n258), .Z(n253) );
  GTECH_NAND3 U275 ( .A(n215), .B(n214), .C(sub_85_carry_2_), .Z(n258) );
  GTECH_NOT U276 ( .A(n21), .Z(n214) );
  GTECH_NAND2 U277 ( .A(n264), .B(n262), .Z(N140) );
  GTECH_NAND2 U278 ( .A(n265), .B(N152), .Z(n262) );
  GTECH_NOT U279 ( .A(n218), .Z(N152) );
  GTECH_NOT U280 ( .A(n259), .Z(n265) );
  GTECH_NAND2 U281 ( .A(n21), .B(n266), .Z(n259) );
  GTECH_NOT U282 ( .A(sub_85_carry_2_), .Z(n266) );
  GTECH_MUX2 U283 ( .A(n267), .B(n268), .S(n21), .Z(n264) );
  GTECH_NAND3 U284 ( .A(sub_85_carry_2_), .B(n215), .C(N150), .Z(n268) );
  GTECH_NOT U285 ( .A(n17), .Z(n215) );
  GTECH_AND2 U286 ( .A(n269), .B(n270), .Z(n267) );
  GTECH_MUX2 U287 ( .A(n240), .B(n218), .S(sub_85_carry_2_), .Z(n269) );
  GTECH_AO21 U288 ( .A(period[5]), .B(n209), .C(reset), .Z(N14) );
  GTECH_MUX2 U289 ( .A(n271), .B(n272), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U290 ( .A(n270), .Z(n272) );
  GTECH_OAI21 U291 ( .A(n17), .B(n240), .C(n218), .Z(n271) );
  GTECH_OAI21 U292 ( .A(n17), .B(n218), .C(n270), .Z(N136) );
  GTECH_NAND2 U293 ( .A(n17), .B(N150), .Z(n270) );
  GTECH_NOT U294 ( .A(n240), .Z(N150) );
  GTECH_NAND2 U295 ( .A(n273), .B(n185), .Z(n240) );
  GTECH_NOT U296 ( .A(n225), .Z(n273) );
  GTECH_NAND2 U297 ( .A(n15), .B(n274), .Z(n218) );
  GTECH_NOT U298 ( .A(N169), .Z(n274) );
  GTECH_NAND2 U299 ( .A(n185), .B(n236), .Z(N169) );
  GTECH_NOT U300 ( .A(n14), .Z(n236) );
  GTECH_AND2 U301 ( .A(n275), .B(n276), .Z(N134) );
  GTECH_OAI21 U302 ( .A(n168), .B(n277), .C(n184), .Z(n276) );
  GTECH_NAND2 U303 ( .A(n185), .B(n225), .Z(N133) );
  GTECH_NAND2 U304 ( .A(n15), .B(n14), .Z(n225) );
  GTECH_AND2 U305 ( .A(n278), .B(n275), .Z(N132) );
  GTECH_XOR2 U306 ( .A(n277), .B(n168), .Z(n278) );
  GTECH_NAND2 U307 ( .A(n279), .B(n280), .Z(n277) );
  GTECH_NOT U308 ( .A(n158), .Z(n280) );
  GTECH_NOT U309 ( .A(n281), .Z(n279) );
  GTECH_AND2 U310 ( .A(n282), .B(n275), .Z(N130) );
  GTECH_XOR2 U311 ( .A(n281), .B(n158), .Z(n282) );
  GTECH_NAND2 U312 ( .A(n283), .B(n284), .Z(n281) );
  GTECH_NOT U313 ( .A(n159), .Z(n284) );
  GTECH_NOT U314 ( .A(n285), .Z(n283) );
  GTECH_AND2 U315 ( .A(period[4]), .B(n209), .Z(N13) );
  GTECH_AND2 U316 ( .A(n286), .B(n275), .Z(N128) );
  GTECH_XOR2 U317 ( .A(n285), .B(n159), .Z(n286) );
  GTECH_NAND2 U318 ( .A(n287), .B(n288), .Z(n285) );
  GTECH_NOT U319 ( .A(n289), .Z(n287) );
  GTECH_AND2 U320 ( .A(n290), .B(n275), .Z(N126) );
  GTECH_XOR2 U321 ( .A(n289), .B(n160), .Z(n290) );
  GTECH_NAND2 U322 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_NOT U323 ( .A(n293), .Z(n291) );
  GTECH_AND2 U324 ( .A(n294), .B(n275), .Z(N124) );
  GTECH_XOR2 U325 ( .A(n293), .B(n161), .Z(n294) );
  GTECH_NAND2 U326 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_NOT U327 ( .A(n297), .Z(n295) );
  GTECH_AND2 U328 ( .A(n298), .B(n275), .Z(N122) );
  GTECH_XOR2 U329 ( .A(n297), .B(n162), .Z(n298) );
  GTECH_NAND2 U330 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U331 ( .A(n163), .Z(n300) );
  GTECH_NOT U332 ( .A(n301), .Z(n299) );
  GTECH_AND2 U333 ( .A(n302), .B(n275), .Z(N120) );
  GTECH_XOR2 U334 ( .A(n301), .B(n163), .Z(n302) );
  GTECH_NAND2 U335 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U336 ( .A(n305), .Z(n303) );
  GTECH_AO21 U337 ( .A(period[3]), .B(n209), .C(reset), .Z(N12) );
  GTECH_AND2 U338 ( .A(n306), .B(n275), .Z(N118) );
  GTECH_XOR2 U339 ( .A(n305), .B(n164), .Z(n306) );
  GTECH_NAND3 U340 ( .A(n307), .B(n308), .C(n309), .Z(n305) );
  GTECH_OAI2N2 U341 ( .A(n310), .B(n311), .C(N112), .D(n309), .Z(N116) );
  GTECH_NOT U342 ( .A(n165), .Z(n309) );
  GTECH_MUX2 U343 ( .A(n307), .B(n312), .S(n165), .Z(n311) );
  GTECH_NAND2 U344 ( .A(n307), .B(n308), .Z(n312) );
  GTECH_NOT U345 ( .A(n166), .Z(n307) );
  GTECH_MUX2 U346 ( .A(N112), .B(n313), .S(n166), .Z(N114) );
  GTECH_AND2 U347 ( .A(n275), .B(n308), .Z(n313) );
  GTECH_NOT U348 ( .A(n314), .Z(N112) );
  GTECH_NAND2 U349 ( .A(n275), .B(n167), .Z(n314) );
  GTECH_NOT U350 ( .A(n310), .Z(n275) );
  GTECH_NAND2 U351 ( .A(n224), .B(n185), .Z(n310) );
  GTECH_NOT U352 ( .A(n315), .Z(n224) );
  GTECH_AOI222 U353 ( .A(update_period[11]), .B(n184), .C(n316), .D(n317), .E(
        n318), .F(n319), .Z(n315) );
  GTECH_OAI2N2 U354 ( .A(n320), .B(n321), .C(update_period[10]), .D(n168), .Z(
        n318) );
  GTECH_AOI22 U355 ( .A(n158), .B(update_period[9]), .C(update_period[8]), .D(
        n322), .Z(n321) );
  GTECH_OA21 U356 ( .A(n158), .B(update_period[9]), .C(n159), .Z(n322) );
  GTECH_NOT U357 ( .A(n323), .Z(n320) );
  GTECH_AND2 U358 ( .A(n324), .B(n319), .Z(n317) );
  GTECH_NAND2 U359 ( .A(n325), .B(n326), .Z(n319) );
  GTECH_NOT U360 ( .A(update_period[11]), .Z(n326) );
  GTECH_NOT U361 ( .A(n184), .Z(n325) );
  GTECH_AND_NOT U362 ( .A(n323), .B(n327), .Z(n324) );
  GTECH_AOI222 U363 ( .A(n328), .B(n329), .C(n330), .D(n331), .E(n332), .F(
        n333), .Z(n327) );
  GTECH_OAI2N2 U364 ( .A(n292), .B(n334), .C(update_period[7]), .D(n160), .Z(
        n333) );
  GTECH_OR_NOT U365 ( .A(update_period[7]), .B(n288), .Z(n332) );
  GTECH_NOT U366 ( .A(n160), .Z(n288) );
  GTECH_OAI21 U367 ( .A(n296), .B(n335), .C(n336), .Z(n331) );
  GTECH_NAND3 U368 ( .A(n337), .B(update_period[4]), .C(n163), .Z(n336) );
  GTECH_AND_NOT U369 ( .A(n337), .B(n338), .Z(n329) );
  GTECH_AOI222 U370 ( .A(n339), .B(n340), .C(update_period[3]), .D(n164), .E(
        n341), .F(n165), .Z(n338) );
  GTECH_AND2 U371 ( .A(n340), .B(update_period[2]), .Z(n341) );
  GTECH_NAND2 U372 ( .A(n342), .B(n304), .Z(n340) );
  GTECH_NOT U373 ( .A(n164), .Z(n304) );
  GTECH_NOT U374 ( .A(update_period[3]), .Z(n342) );
  GTECH_AND2 U375 ( .A(n343), .B(n344), .Z(n339) );
  GTECH_OA22 U376 ( .A(update_period[1]), .B(n166), .C(update_period[2]), .D(
        n165), .Z(n344) );
  GTECH_OAI2N2 U377 ( .A(n171), .B(n308), .C(n166), .D(update_period[1]), .Z(
        n343) );
  GTECH_NOT U378 ( .A(n167), .Z(n308) );
  GTECH_NAND2 U379 ( .A(n335), .B(n296), .Z(n337) );
  GTECH_NOT U380 ( .A(n162), .Z(n296) );
  GTECH_NOT U381 ( .A(update_period[5]), .Z(n335) );
  GTECH_OA21 U382 ( .A(n163), .B(update_period[4]), .C(n330), .Z(n328) );
  GTECH_NOT U383 ( .A(n345), .Z(n330) );
  GTECH_OAI2N2 U384 ( .A(update_period[7]), .B(n160), .C(n292), .D(n334), .Z(
        n345) );
  GTECH_NOT U385 ( .A(update_period[6]), .Z(n334) );
  GTECH_NOT U386 ( .A(n161), .Z(n292) );
  GTECH_NAND2 U387 ( .A(n346), .B(n347), .Z(n323) );
  GTECH_NOT U388 ( .A(n168), .Z(n347) );
  GTECH_NOT U389 ( .A(update_period[10]), .Z(n346) );
  GTECH_OA22 U390 ( .A(n159), .B(update_period[8]), .C(n158), .D(
        update_period[9]), .Z(n316) );
  GTECH_AO21 U391 ( .A(period[2]), .B(n209), .C(reset), .Z(N11) );
  GTECH_AO21 U392 ( .A(period[1]), .B(n209), .C(reset), .Z(N10) );
  GTECH_NOT U393 ( .A(n210), .Z(n209) );
  GTECH_NAND2 U394 ( .A(period_load), .B(n185), .Z(n210) );
  GTECH_NOT U395 ( .A(reset), .Z(n185) );
endmodule

