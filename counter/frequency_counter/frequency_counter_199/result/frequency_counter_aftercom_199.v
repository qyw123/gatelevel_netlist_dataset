
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
         n23, n28, n29, n32, n33, n75, n153, sub_85_carry_2_, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345;
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
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n169) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n75), .K(n75), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n168) );
  GTECH_FJK1S state_reg_0_ ( .J(n75), .K(n75), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n75), .K(n75), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n75), .K(n75), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n75), .K(n75), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n75), .K(n75), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n75), .K(n75), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n75), .K(n75), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n75), .K(n75), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n75), .K(n75), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n161) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n75), .K(n75), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n160) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n75), .K(n75), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n159) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n75), .K(n75), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n158) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n75), .K(n75), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n157) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n75), .K(n75), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n183) );
  GTECH_FJK1S update_digits_reg ( .J(n75), .K(n75), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n16) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n75), .K(n75), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n182) );
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
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n28) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n29) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n32) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n33) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n153) );
  GTECH_ZERO U165 ( .Z(n75) );
  GTECH_NAND2 U166 ( .A(n16), .B(n184), .Z(seven_segment0_N9) );
  GTECH_AND2 U167 ( .A(ten_count[0]), .B(n184), .Z(seven_segment0_N8) );
  GTECH_AND2 U168 ( .A(n153), .B(n184), .Z(seven_segment0_N6) );
  GTECH_AND2 U169 ( .A(unit_count[3]), .B(n184), .Z(seven_segment0_N22) );
  GTECH_AND2 U170 ( .A(unit_count[2]), .B(n184), .Z(seven_segment0_N20) );
  GTECH_AND2 U171 ( .A(unit_count[1]), .B(n184), .Z(seven_segment0_N18) );
  GTECH_AND2 U172 ( .A(unit_count[0]), .B(n184), .Z(seven_segment0_N16) );
  GTECH_AND2 U173 ( .A(ten_count[3]), .B(n184), .Z(seven_segment0_N14) );
  GTECH_AND2 U174 ( .A(ten_count[2]), .B(n184), .Z(seven_segment0_N12) );
  GTECH_AND2 U175 ( .A(ten_count[1]), .B(n184), .Z(seven_segment0_N10) );
  GTECH_NAND2 U176 ( .A(n185), .B(n186), .Z(segments[6]) );
  GTECH_NOT U177 ( .A(n187), .Z(n185) );
  GTECH_NAND3 U178 ( .A(n186), .B(n188), .C(n189), .Z(segments[3]) );
  GTECH_NOT U179 ( .A(segments[4]), .Z(n188) );
  GTECH_OAI22 U180 ( .A(n190), .B(n191), .C(n192), .D(n193), .Z(segments[4])
         );
  GTECH_NAND3 U181 ( .A(n191), .B(n194), .C(n195), .Z(segments[2]) );
  GTECH_NOT U182 ( .A(segments[5]), .Z(n194) );
  GTECH_AO21 U183 ( .A(n196), .B(n197), .C(n187), .Z(segments[5]) );
  GTECH_NOT U184 ( .A(n198), .Z(n187) );
  GTECH_OA21 U185 ( .A(n199), .B(n191), .C(n200), .Z(n198) );
  GTECH_OA21 U186 ( .A(n193), .B(n201), .C(n189), .Z(n200) );
  GTECH_NOT U187 ( .A(n191), .Z(n196) );
  GTECH_NAND3 U188 ( .A(n186), .B(n191), .C(n202), .Z(segments[1]) );
  GTECH_OA21 U189 ( .A(n203), .B(n193), .C(n195), .Z(n202) );
  GTECH_NAND2 U190 ( .A(n199), .B(n197), .Z(n193) );
  GTECH_NOT U191 ( .A(n190), .Z(n197) );
  GTECH_NAND3 U192 ( .A(n195), .B(n186), .C(n204), .Z(segments[0]) );
  GTECH_OA21 U193 ( .A(n205), .B(n191), .C(n189), .Z(n204) );
  GTECH_NAND3 U194 ( .A(n192), .B(n206), .C(n205), .Z(n189) );
  GTECH_NOT U195 ( .A(n201), .Z(n206) );
  GTECH_NAND2 U196 ( .A(n201), .B(n192), .Z(n191) );
  GTECH_NOT U197 ( .A(n203), .Z(n192) );
  GTECH_NAND3 U198 ( .A(n199), .B(n203), .C(n201), .Z(n186) );
  GTECH_MUX2 U199 ( .A(n32), .B(n28), .S(n153), .Z(n201) );
  GTECH_NAND2 U200 ( .A(n205), .B(n203), .Z(n195) );
  GTECH_MUX2 U201 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n153), .Z(n203) );
  GTECH_NOT U202 ( .A(n207), .Z(n205) );
  GTECH_NAND2 U203 ( .A(n190), .B(n199), .Z(n207) );
  GTECH_MUX2 U204 ( .A(n33), .B(n29), .S(n153), .Z(n199) );
  GTECH_MUX2 U205 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n153), .Z(n190) );
  GTECH_AO21 U206 ( .A(period[0]), .B(n208), .C(reset), .Z(N9) );
  GTECH_AND2 U207 ( .A(period[11]), .B(n208), .Z(N21) );
  GTECH_NAND2 U208 ( .A(n184), .B(n209), .Z(N20) );
  GTECH_AO21 U209 ( .A(period[10]), .B(n208), .C(reset), .Z(N19) );
  GTECH_AND2 U210 ( .A(period[9]), .B(n208), .Z(N18) );
  GTECH_AND2 U211 ( .A(period[8]), .B(n208), .Z(N17) );
  GTECH_AND2 U212 ( .A(N170), .B(n210), .Z(N168) );
  GTECH_NAND2 U213 ( .A(n211), .B(n212), .Z(N167) );
  GTECH_AND2 U214 ( .A(N170), .B(n213), .Z(N166) );
  GTECH_AND2 U215 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U216 ( .A(N170), .B(n214), .Z(N162) );
  GTECH_NOT U217 ( .A(n215), .Z(N170) );
  GTECH_NAND2 U218 ( .A(n216), .B(n184), .Z(n215) );
  GTECH_NOT U219 ( .A(n212), .Z(n216) );
  GTECH_MUX2 U220 ( .A(n217), .B(n218), .S(ten_count[3]), .Z(N160) );
  GTECH_AO21 U221 ( .A(N152), .B(n219), .C(n220), .Z(n218) );
  GTECH_NOT U222 ( .A(ten_count[2]), .Z(n219) );
  GTECH_AND2 U223 ( .A(n221), .B(ten_count[2]), .Z(n217) );
  GTECH_AO21 U224 ( .A(period[7]), .B(n208), .C(reset), .Z(N16) );
  GTECH_AO21 U225 ( .A(n222), .B(n223), .C(n224), .Z(N159) );
  GTECH_MUX2 U226 ( .A(n221), .B(n220), .S(ten_count[2]), .Z(N158) );
  GTECH_AO21 U227 ( .A(N152), .B(n225), .C(N154), .Z(n220) );
  GTECH_NOT U228 ( .A(ten_count[1]), .Z(n225) );
  GTECH_NOT U229 ( .A(n226), .Z(n221) );
  GTECH_NAND3 U230 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n226) );
  GTECH_MUX2 U231 ( .A(n227), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U232 ( .A(N152), .B(ten_count[0]), .Z(n227) );
  GTECH_NOT U233 ( .A(n228), .Z(N154) );
  GTECH_NAND2 U234 ( .A(N152), .B(n229), .Z(n228) );
  GTECH_NOT U235 ( .A(ten_count[0]), .Z(n229) );
  GTECH_NAND2 U236 ( .A(n230), .B(n15), .Z(N151) );
  GTECH_OA21 U237 ( .A(n14), .B(n231), .C(n211), .Z(n230) );
  GTECH_NOT U238 ( .A(n232), .Z(n211) );
  GTECH_AO21 U239 ( .A(n223), .B(n14), .C(reset), .Z(n232) );
  GTECH_NOT U240 ( .A(n233), .Z(n223) );
  GTECH_AND2 U241 ( .A(period[6]), .B(n208), .Z(N15) );
  GTECH_NOT U242 ( .A(n234), .Z(N148) );
  GTECH_OA21 U243 ( .A(n231), .B(n235), .C(n236), .Z(n234) );
  GTECH_MUX2 U244 ( .A(n237), .B(n238), .S(n168), .Z(n236) );
  GTECH_OR3 U245 ( .A(n239), .B(n169), .C(n240), .Z(n238) );
  GTECH_AND_NOT U246 ( .A(n241), .B(n242), .Z(n237) );
  GTECH_MUX2 U247 ( .A(n235), .B(n239), .S(n169), .Z(n241) );
  GTECH_NAND3 U248 ( .A(n243), .B(n212), .C(n244), .Z(N147) );
  GTECH_NOT U249 ( .A(n224), .Z(n244) );
  GTECH_NAND2 U250 ( .A(n184), .B(n245), .Z(n224) );
  GTECH_NAND3 U251 ( .A(n231), .B(n246), .C(n15), .Z(n245) );
  GTECH_NAND4 U252 ( .A(n182), .B(n169), .C(n168), .D(n247), .Z(n231) );
  GTECH_NAND2 U253 ( .A(n14), .B(n248), .Z(n212) );
  GTECH_NOT U254 ( .A(n15), .Z(n248) );
  GTECH_NAND3 U255 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n243) );
  GTECH_MUX2 U256 ( .A(n242), .B(n249), .S(n169), .Z(N146) );
  GTECH_AO21 U257 ( .A(N150), .B(n250), .C(n251), .Z(n249) );
  GTECH_NOT U258 ( .A(n252), .Z(n251) );
  GTECH_OAI22 U259 ( .A(n250), .B(n239), .C(n253), .D(n235), .Z(n242) );
  GTECH_AND2 U260 ( .A(n182), .B(n247), .Z(n253) );
  GTECH_NOT U261 ( .A(n240), .Z(n250) );
  GTECH_NAND3 U262 ( .A(n210), .B(n254), .C(n255), .Z(n240) );
  GTECH_NOT U263 ( .A(n182), .Z(n254) );
  GTECH_NAND2 U264 ( .A(n256), .B(n252), .Z(N144) );
  GTECH_NAND3 U265 ( .A(N152), .B(n247), .C(n182), .Z(n252) );
  GTECH_MUX2 U266 ( .A(n257), .B(n258), .S(n182), .Z(n256) );
  GTECH_NAND3 U267 ( .A(n255), .B(n210), .C(N150), .Z(n258) );
  GTECH_OA21 U268 ( .A(n235), .B(n247), .C(n259), .Z(n257) );
  GTECH_AO21 U269 ( .A(n255), .B(n210), .C(n239), .Z(n259) );
  GTECH_NOT U270 ( .A(n260), .Z(n255) );
  GTECH_NAND2 U271 ( .A(n261), .B(n210), .Z(n247) );
  GTECH_NOT U272 ( .A(n23), .Z(n210) );
  GTECH_AO21 U273 ( .A(n262), .B(N150), .C(n263), .Z(N142) );
  GTECH_MUX2 U274 ( .A(n264), .B(n265), .S(n23), .Z(n263) );
  GTECH_AND2 U275 ( .A(N152), .B(n261), .Z(n265) );
  GTECH_NOT U276 ( .A(n266), .Z(n264) );
  GTECH_XOR2 U277 ( .A(n260), .B(n23), .Z(n262) );
  GTECH_NAND3 U278 ( .A(n214), .B(n213), .C(sub_85_carry_2_), .Z(n260) );
  GTECH_NOT U279 ( .A(n21), .Z(n213) );
  GTECH_NAND2 U280 ( .A(n267), .B(n266), .Z(N140) );
  GTECH_NAND2 U281 ( .A(n268), .B(N152), .Z(n266) );
  GTECH_NOT U282 ( .A(n261), .Z(n268) );
  GTECH_NAND2 U283 ( .A(n21), .B(n269), .Z(n261) );
  GTECH_NOT U284 ( .A(sub_85_carry_2_), .Z(n269) );
  GTECH_MUX2 U285 ( .A(n270), .B(n271), .S(n21), .Z(n267) );
  GTECH_NAND3 U286 ( .A(sub_85_carry_2_), .B(n214), .C(N150), .Z(n271) );
  GTECH_AND2 U287 ( .A(n272), .B(n273), .Z(n270) );
  GTECH_MUX2 U288 ( .A(n239), .B(n235), .S(sub_85_carry_2_), .Z(n272) );
  GTECH_AO21 U289 ( .A(period[5]), .B(n208), .C(reset), .Z(N14) );
  GTECH_MUX2 U290 ( .A(n274), .B(n275), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_AO21 U291 ( .A(N150), .B(n214), .C(N152), .Z(n274) );
  GTECH_AO21 U292 ( .A(N152), .B(n214), .C(n275), .Z(N136) );
  GTECH_NOT U293 ( .A(n273), .Z(n275) );
  GTECH_NAND2 U294 ( .A(n17), .B(N150), .Z(n273) );
  GTECH_NOT U295 ( .A(n239), .Z(N150) );
  GTECH_NAND2 U296 ( .A(n222), .B(n184), .Z(n239) );
  GTECH_NOT U297 ( .A(n276), .Z(n222) );
  GTECH_NOT U298 ( .A(n17), .Z(n214) );
  GTECH_NOT U299 ( .A(n235), .Z(N152) );
  GTECH_NAND2 U300 ( .A(n15), .B(n277), .Z(n235) );
  GTECH_NOT U301 ( .A(N169), .Z(n277) );
  GTECH_NAND2 U302 ( .A(n184), .B(n246), .Z(N169) );
  GTECH_NOT U303 ( .A(n14), .Z(n246) );
  GTECH_AND_NOT U304 ( .A(n278), .B(n279), .Z(N134) );
  GTECH_OA21 U305 ( .A(n280), .B(n167), .C(n183), .Z(n279) );
  GTECH_NAND2 U306 ( .A(n184), .B(n276), .Z(N133) );
  GTECH_NAND2 U307 ( .A(n15), .B(n14), .Z(n276) );
  GTECH_AND2 U308 ( .A(n281), .B(n278), .Z(N132) );
  GTECH_XOR2 U309 ( .A(n280), .B(n167), .Z(n281) );
  GTECH_NAND2 U310 ( .A(n282), .B(n283), .Z(n280) );
  GTECH_NOT U311 ( .A(n284), .Z(n282) );
  GTECH_AND2 U312 ( .A(n285), .B(n278), .Z(N130) );
  GTECH_XOR2 U313 ( .A(n284), .B(n157), .Z(n285) );
  GTECH_NAND2 U314 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_NOT U315 ( .A(n158), .Z(n287) );
  GTECH_NOT U316 ( .A(n288), .Z(n286) );
  GTECH_AND2 U317 ( .A(period[4]), .B(n208), .Z(N13) );
  GTECH_AND2 U318 ( .A(n289), .B(n278), .Z(N128) );
  GTECH_XOR2 U319 ( .A(n288), .B(n158), .Z(n289) );
  GTECH_NAND2 U320 ( .A(n290), .B(n291), .Z(n288) );
  GTECH_NOT U321 ( .A(n292), .Z(n290) );
  GTECH_AND2 U322 ( .A(n293), .B(n278), .Z(N126) );
  GTECH_XOR2 U323 ( .A(n292), .B(n159), .Z(n293) );
  GTECH_NAND2 U324 ( .A(n294), .B(n295), .Z(n292) );
  GTECH_NOT U325 ( .A(n160), .Z(n295) );
  GTECH_NOT U326 ( .A(n296), .Z(n294) );
  GTECH_AND2 U327 ( .A(n297), .B(n278), .Z(N124) );
  GTECH_XOR2 U328 ( .A(n296), .B(n160), .Z(n297) );
  GTECH_NAND2 U329 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_NOT U330 ( .A(n300), .Z(n298) );
  GTECH_AND2 U331 ( .A(n301), .B(n278), .Z(N122) );
  GTECH_XOR2 U332 ( .A(n300), .B(n161), .Z(n301) );
  GTECH_NAND2 U333 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_NOT U334 ( .A(n162), .Z(n303) );
  GTECH_NOT U335 ( .A(n304), .Z(n302) );
  GTECH_AND2 U336 ( .A(n305), .B(n278), .Z(N120) );
  GTECH_XOR2 U337 ( .A(n304), .B(n162), .Z(n305) );
  GTECH_NAND2 U338 ( .A(n306), .B(n307), .Z(n304) );
  GTECH_NOT U339 ( .A(n308), .Z(n306) );
  GTECH_AO21 U340 ( .A(period[3]), .B(n208), .C(reset), .Z(N12) );
  GTECH_AND2 U341 ( .A(n309), .B(n278), .Z(N118) );
  GTECH_XOR2 U342 ( .A(n308), .B(n163), .Z(n309) );
  GTECH_NAND3 U343 ( .A(n310), .B(n311), .C(n312), .Z(n308) );
  GTECH_NOT U344 ( .A(n164), .Z(n312) );
  GTECH_OAI22 U345 ( .A(n164), .B(n313), .C(n314), .D(n315), .Z(N116) );
  GTECH_MUX2 U346 ( .A(n310), .B(n316), .S(n164), .Z(n315) );
  GTECH_NAND2 U347 ( .A(n310), .B(n311), .Z(n316) );
  GTECH_NOT U348 ( .A(n165), .Z(n310) );
  GTECH_MUX2 U349 ( .A(N112), .B(n317), .S(n165), .Z(N114) );
  GTECH_AND2 U350 ( .A(n278), .B(n311), .Z(n317) );
  GTECH_NOT U351 ( .A(n166), .Z(n311) );
  GTECH_NOT U352 ( .A(n313), .Z(N112) );
  GTECH_NAND2 U353 ( .A(n278), .B(n166), .Z(n313) );
  GTECH_NOT U354 ( .A(n314), .Z(n278) );
  GTECH_NAND2 U355 ( .A(n233), .B(n184), .Z(n314) );
  GTECH_NAND2 U356 ( .A(n318), .B(n319), .Z(n233) );
  GTECH_OR4 U357 ( .A(n320), .B(n321), .C(n322), .D(n323), .Z(n319) );
  GTECH_AOI222 U358 ( .A(update_period[7]), .B(n159), .C(n324), .D(
        update_period[6]), .E(n325), .F(n326), .Z(n323) );
  GTECH_NOT U359 ( .A(n327), .Z(n326) );
  GTECH_AOI222 U360 ( .A(update_period[5]), .B(n161), .C(n328), .D(
        update_period[4]), .E(n329), .F(n330), .Z(n327) );
  GTECH_OA21 U361 ( .A(n162), .B(update_period[4]), .C(n331), .Z(n330) );
  GTECH_OA21 U362 ( .A(n332), .B(n333), .C(n334), .Z(n329) );
  GTECH_AO21 U363 ( .A(update_period[1]), .B(n165), .C(n335), .Z(n334) );
  GTECH_AO21 U364 ( .A(n336), .B(update_period[0]), .C(n332), .Z(n335) );
  GTECH_OA21 U365 ( .A(update_period[1]), .B(n165), .C(n166), .Z(n336) );
  GTECH_OA22 U366 ( .A(n164), .B(update_period[2]), .C(n163), .D(
        update_period[3]), .Z(n333) );
  GTECH_OA21 U367 ( .A(update_period[3]), .B(n163), .C(n337), .Z(n332) );
  GTECH_OAI2N2 U368 ( .A(n338), .B(n307), .C(n164), .D(update_period[2]), .Z(
        n337) );
  GTECH_NOT U369 ( .A(n163), .Z(n307) );
  GTECH_NOT U370 ( .A(update_period[3]), .Z(n338) );
  GTECH_AND2 U371 ( .A(n162), .B(n331), .Z(n328) );
  GTECH_NAND2 U372 ( .A(n339), .B(n299), .Z(n331) );
  GTECH_NOT U373 ( .A(n161), .Z(n299) );
  GTECH_NOT U374 ( .A(update_period[5]), .Z(n339) );
  GTECH_OA21 U375 ( .A(update_period[6]), .B(n160), .C(n340), .Z(n325) );
  GTECH_AND2 U376 ( .A(n160), .B(n340), .Z(n324) );
  GTECH_NAND2 U377 ( .A(n341), .B(n291), .Z(n340) );
  GTECH_NOT U378 ( .A(n159), .Z(n291) );
  GTECH_NOT U379 ( .A(update_period[7]), .Z(n341) );
  GTECH_NOT U380 ( .A(n342), .Z(n322) );
  GTECH_NOR2 U381 ( .A(n158), .B(update_period[8]), .Z(n321) );
  GTECH_AOI2N2 U382 ( .A(n183), .B(update_period[11]), .C(n320), .D(n343), .Z(
        n318) );
  GTECH_AOI222 U383 ( .A(update_period[10]), .B(n167), .C(update_period[9]), 
        .D(n157), .E(n344), .F(update_period[8]), .Z(n343) );
  GTECH_AND2 U384 ( .A(n158), .B(n342), .Z(n344) );
  GTECH_NAND2 U385 ( .A(n345), .B(n283), .Z(n342) );
  GTECH_NOT U386 ( .A(n157), .Z(n283) );
  GTECH_NOT U387 ( .A(update_period[9]), .Z(n345) );
  GTECH_OAI22 U388 ( .A(update_period[11]), .B(n183), .C(update_period[10]), 
        .D(n167), .Z(n320) );
  GTECH_AO21 U389 ( .A(period[2]), .B(n208), .C(reset), .Z(N11) );
  GTECH_AO21 U390 ( .A(period[1]), .B(n208), .C(reset), .Z(N10) );
  GTECH_NOT U391 ( .A(n209), .Z(n208) );
  GTECH_NAND2 U392 ( .A(period_load), .B(n184), .Z(n209) );
  GTECH_NOT U393 ( .A(reset), .Z(n184) );
endmodule

