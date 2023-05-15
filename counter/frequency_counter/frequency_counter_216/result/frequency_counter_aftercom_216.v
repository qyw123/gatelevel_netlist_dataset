
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
         n24, n27, n28, n31, n75, n157, n158, sub_85_carry_2_, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
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
         n337, n338, n339, n340, n341, n342, n343, n344;
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
        clk), .Q(update_period[0]), .QN(n172) );
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
        seven_segment0_unit_count_reg[3]), .QN(n27) );
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
        seven_segment0_ten_count_reg[3]), .QN(n31) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n157) );
  GTECH_ZERO U167 ( .Z(n75) );
  GTECH_NAND2 U168 ( .A(n15), .B(n186), .Z(seven_segment0_N9) );
  GTECH_AND2 U169 ( .A(ten_count[0]), .B(n186), .Z(seven_segment0_N8) );
  GTECH_AND2 U170 ( .A(n157), .B(n186), .Z(seven_segment0_N6) );
  GTECH_AND2 U171 ( .A(unit_count[3]), .B(n186), .Z(seven_segment0_N22) );
  GTECH_AND2 U172 ( .A(unit_count[2]), .B(n186), .Z(seven_segment0_N20) );
  GTECH_AND2 U173 ( .A(unit_count[1]), .B(n186), .Z(seven_segment0_N18) );
  GTECH_AND2 U174 ( .A(unit_count[0]), .B(n186), .Z(seven_segment0_N16) );
  GTECH_AND2 U175 ( .A(ten_count[3]), .B(n186), .Z(seven_segment0_N14) );
  GTECH_AND2 U176 ( .A(ten_count[2]), .B(n186), .Z(seven_segment0_N12) );
  GTECH_AND2 U177 ( .A(ten_count[1]), .B(n186), .Z(seven_segment0_N10) );
  GTECH_NAND2 U178 ( .A(n187), .B(n188), .Z(segments[6]) );
  GTECH_OR3 U179 ( .A(segments[4]), .B(n189), .C(n190), .Z(segments[3]) );
  GTECH_NOT U180 ( .A(n191), .Z(segments[4]) );
  GTECH_OAI21 U181 ( .A(n192), .B(n193), .C(n194), .Z(n191) );
  GTECH_NOT U182 ( .A(n195), .Z(n193) );
  GTECH_NAND2 U183 ( .A(n196), .B(n197), .Z(segments[2]) );
  GTECH_NOT U184 ( .A(segments[5]), .Z(n197) );
  GTECH_OAI21 U185 ( .A(n195), .B(n198), .C(n187), .Z(segments[5]) );
  GTECH_AND2 U186 ( .A(n199), .B(n200), .Z(n187) );
  GTECH_MUX2 U187 ( .A(n195), .B(n201), .S(n202), .Z(n199) );
  GTECH_NAND2 U188 ( .A(n194), .B(n203), .Z(n201) );
  GTECH_NOT U189 ( .A(n204), .Z(n196) );
  GTECH_OR3 U190 ( .A(n189), .B(n205), .C(n204), .Z(segments[1]) );
  GTECH_OAI21 U191 ( .A(n194), .B(n206), .C(n195), .Z(n204) );
  GTECH_AND3 U192 ( .A(n202), .B(n207), .C(n194), .Z(n205) );
  GTECH_OR3 U193 ( .A(n189), .B(n190), .C(n208), .Z(segments[0]) );
  GTECH_OAI2N2 U194 ( .A(n209), .B(n195), .C(n192), .D(n198), .Z(n208) );
  GTECH_NAND2 U195 ( .A(n210), .B(n207), .Z(n195) );
  GTECH_NOT U196 ( .A(n211), .Z(n207) );
  GTECH_NOT U197 ( .A(n212), .Z(n209) );
  GTECH_NOT U198 ( .A(n200), .Z(n190) );
  GTECH_OR3 U199 ( .A(n211), .B(n210), .C(n212), .Z(n200) );
  GTECH_NAND2 U200 ( .A(n202), .B(n198), .Z(n212) );
  GTECH_NOT U201 ( .A(n194), .Z(n198) );
  GTECH_MUX2 U202 ( .A(n28), .B(n24), .S(n157), .Z(n194) );
  GTECH_NOT U203 ( .A(n188), .Z(n189) );
  GTECH_NAND2 U204 ( .A(n192), .B(n210), .Z(n188) );
  GTECH_NOT U205 ( .A(n203), .Z(n210) );
  GTECH_MUX2 U206 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n157), .Z(n203) );
  GTECH_NOT U207 ( .A(n206), .Z(n192) );
  GTECH_NAND2 U208 ( .A(n211), .B(n202), .Z(n206) );
  GTECH_MUX2 U209 ( .A(n31), .B(n27), .S(n157), .Z(n202) );
  GTECH_MUX2 U210 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n157), .Z(n211) );
  GTECH_AO21 U211 ( .A(period[0]), .B(n213), .C(reset), .Z(N9) );
  GTECH_AND2 U212 ( .A(period[11]), .B(n213), .Z(N21) );
  GTECH_NAND2 U213 ( .A(n186), .B(n214), .Z(N20) );
  GTECH_AO21 U214 ( .A(period[10]), .B(n213), .C(reset), .Z(N19) );
  GTECH_AND2 U215 ( .A(period[9]), .B(n213), .Z(N18) );
  GTECH_AND2 U216 ( .A(period[8]), .B(n213), .Z(N17) );
  GTECH_AND2 U217 ( .A(N170), .B(n215), .Z(N168) );
  GTECH_NAND2 U218 ( .A(n216), .B(n217), .Z(N167) );
  GTECH_AND2 U219 ( .A(N170), .B(n218), .Z(N166) );
  GTECH_NOT U220 ( .A(n20), .Z(n218) );
  GTECH_AND2 U221 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U222 ( .A(N170), .B(n219), .Z(N162) );
  GTECH_NOT U223 ( .A(n16), .Z(n219) );
  GTECH_NOT U224 ( .A(n220), .Z(N170) );
  GTECH_NAND2 U225 ( .A(n221), .B(n186), .Z(n220) );
  GTECH_MUX2 U226 ( .A(n222), .B(n223), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U227 ( .A(ten_count[2]), .B(n224), .C(n225), .Z(n223) );
  GTECH_NOT U228 ( .A(n226), .Z(n225) );
  GTECH_AND2 U229 ( .A(n227), .B(ten_count[2]), .Z(n222) );
  GTECH_AO21 U230 ( .A(period[7]), .B(n213), .C(reset), .Z(N16) );
  GTECH_OAI21 U231 ( .A(n228), .B(n229), .C(n230), .Z(N159) );
  GTECH_NOT U232 ( .A(n231), .Z(n230) );
  GTECH_MUX2 U233 ( .A(n227), .B(n226), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U234 ( .A(ten_count[1]), .B(n224), .C(n232), .Z(n226) );
  GTECH_NOT U235 ( .A(n233), .Z(n227) );
  GTECH_OR3 U236 ( .A(n234), .B(n235), .C(n224), .Z(n233) );
  GTECH_NOT U237 ( .A(ten_count[1]), .Z(n235) );
  GTECH_MUX2 U238 ( .A(n236), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U239 ( .A(N152), .B(ten_count[0]), .Z(n236) );
  GTECH_NOT U240 ( .A(n232), .Z(N154) );
  GTECH_NAND2 U241 ( .A(N152), .B(n234), .Z(n232) );
  GTECH_NOT U242 ( .A(ten_count[0]), .Z(n234) );
  GTECH_NAND2 U243 ( .A(n237), .B(n158), .Z(N151) );
  GTECH_OA21 U244 ( .A(n14), .B(n238), .C(n216), .Z(n237) );
  GTECH_NOT U245 ( .A(n239), .Z(n216) );
  GTECH_OAI21 U246 ( .A(n240), .B(n228), .C(n186), .Z(n239) );
  GTECH_AND2 U247 ( .A(period[6]), .B(n213), .Z(N15) );
  GTECH_OAI21 U248 ( .A(n224), .B(n238), .C(n241), .Z(N148) );
  GTECH_MUX2 U249 ( .A(n242), .B(n243), .S(n170), .Z(n241) );
  GTECH_OR3 U250 ( .A(n244), .B(n245), .C(n171), .Z(n243) );
  GTECH_AND_NOT U251 ( .A(n246), .B(n247), .Z(n242) );
  GTECH_MUX2 U252 ( .A(n224), .B(n245), .S(n171), .Z(n246) );
  GTECH_OR3 U253 ( .A(n221), .B(n248), .C(n231), .Z(N147) );
  GTECH_OAI21 U254 ( .A(n14), .B(n249), .C(n186), .Z(n231) );
  GTECH_NAND2 U255 ( .A(n238), .B(n158), .Z(n249) );
  GTECH_NAND4 U256 ( .A(n184), .B(n171), .C(n170), .D(n250), .Z(n238) );
  GTECH_AND3 U257 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n248) );
  GTECH_NOT U258 ( .A(n217), .Z(n221) );
  GTECH_NAND2 U259 ( .A(n14), .B(n251), .Z(n217) );
  GTECH_NOT U260 ( .A(n158), .Z(n251) );
  GTECH_MUX2 U261 ( .A(n247), .B(n252), .S(n171), .Z(N146) );
  GTECH_OAI21 U262 ( .A(n244), .B(n245), .C(n253), .Z(n252) );
  GTECH_OAI21 U263 ( .A(n254), .B(n245), .C(n255), .Z(n247) );
  GTECH_OAI21 U264 ( .A(n256), .B(n257), .C(N152), .Z(n255) );
  GTECH_NOT U265 ( .A(n244), .Z(n254) );
  GTECH_OR3 U266 ( .A(n184), .B(n22), .C(n258), .Z(n244) );
  GTECH_NAND2 U267 ( .A(n259), .B(n253), .Z(N144) );
  GTECH_OR3 U268 ( .A(n256), .B(n224), .C(n257), .Z(n253) );
  GTECH_NOT U269 ( .A(n184), .Z(n257) );
  GTECH_NOT U270 ( .A(n250), .Z(n256) );
  GTECH_MUX2 U271 ( .A(n260), .B(n261), .S(n184), .Z(n259) );
  GTECH_OR3 U272 ( .A(n22), .B(n258), .C(n245), .Z(n261) );
  GTECH_OA21 U273 ( .A(n224), .B(n250), .C(n262), .Z(n260) );
  GTECH_OAI21 U274 ( .A(n22), .B(n258), .C(N150), .Z(n262) );
  GTECH_NAND2 U275 ( .A(n263), .B(n215), .Z(n250) );
  GTECH_NOT U276 ( .A(n22), .Z(n215) );
  GTECH_OAI21 U277 ( .A(n245), .B(n264), .C(n265), .Z(N142) );
  GTECH_MUX2 U278 ( .A(n266), .B(n267), .S(n22), .Z(n265) );
  GTECH_NAND2 U279 ( .A(N152), .B(n263), .Z(n267) );
  GTECH_XNOR2 U280 ( .A(n22), .B(n258), .Z(n264) );
  GTECH_OR3 U281 ( .A(n20), .B(n16), .C(n268), .Z(n258) );
  GTECH_NAND2 U282 ( .A(n269), .B(n266), .Z(N140) );
  GTECH_NAND2 U283 ( .A(n270), .B(N152), .Z(n266) );
  GTECH_NOT U284 ( .A(n224), .Z(N152) );
  GTECH_NOT U285 ( .A(n263), .Z(n270) );
  GTECH_NAND2 U286 ( .A(n20), .B(n268), .Z(n263) );
  GTECH_MUX2 U287 ( .A(n271), .B(n272), .S(n20), .Z(n269) );
  GTECH_OR3 U288 ( .A(n16), .B(n268), .C(n245), .Z(n272) );
  GTECH_NOT U289 ( .A(sub_85_carry_2_), .Z(n268) );
  GTECH_AND2 U290 ( .A(n273), .B(n274), .Z(n271) );
  GTECH_MUX2 U291 ( .A(n245), .B(n224), .S(sub_85_carry_2_), .Z(n273) );
  GTECH_AO21 U292 ( .A(period[5]), .B(n213), .C(reset), .Z(N14) );
  GTECH_MUX2 U293 ( .A(n275), .B(n276), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U294 ( .A(n274), .Z(n276) );
  GTECH_OAI21 U295 ( .A(n16), .B(n245), .C(n224), .Z(n275) );
  GTECH_OAI21 U296 ( .A(n16), .B(n224), .C(n274), .Z(N136) );
  GTECH_NAND2 U297 ( .A(n16), .B(N150), .Z(n274) );
  GTECH_NOT U298 ( .A(n245), .Z(N150) );
  GTECH_NAND2 U299 ( .A(n277), .B(n186), .Z(n245) );
  GTECH_NOT U300 ( .A(n229), .Z(n277) );
  GTECH_NAND2 U301 ( .A(n158), .B(n278), .Z(n224) );
  GTECH_NOT U302 ( .A(N169), .Z(n278) );
  GTECH_NAND2 U303 ( .A(n186), .B(n240), .Z(N169) );
  GTECH_NOT U304 ( .A(n14), .Z(n240) );
  GTECH_AND2 U305 ( .A(n279), .B(n280), .Z(N134) );
  GTECH_OAI21 U306 ( .A(n169), .B(n281), .C(n185), .Z(n280) );
  GTECH_NAND2 U307 ( .A(n186), .B(n229), .Z(N133) );
  GTECH_NAND2 U308 ( .A(n158), .B(n14), .Z(n229) );
  GTECH_AND2 U309 ( .A(n282), .B(n279), .Z(N132) );
  GTECH_XOR2 U310 ( .A(n281), .B(n169), .Z(n282) );
  GTECH_NAND2 U311 ( .A(n283), .B(n284), .Z(n281) );
  GTECH_NOT U312 ( .A(n159), .Z(n284) );
  GTECH_NOT U313 ( .A(n285), .Z(n283) );
  GTECH_AND2 U314 ( .A(n286), .B(n279), .Z(N130) );
  GTECH_XOR2 U315 ( .A(n285), .B(n159), .Z(n286) );
  GTECH_NAND2 U316 ( .A(n287), .B(n288), .Z(n285) );
  GTECH_NOT U317 ( .A(n160), .Z(n288) );
  GTECH_NOT U318 ( .A(n289), .Z(n287) );
  GTECH_AND2 U319 ( .A(period[4]), .B(n213), .Z(N13) );
  GTECH_AND2 U320 ( .A(n290), .B(n279), .Z(N128) );
  GTECH_XOR2 U321 ( .A(n289), .B(n160), .Z(n290) );
  GTECH_NAND2 U322 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_NOT U323 ( .A(n161), .Z(n292) );
  GTECH_NOT U324 ( .A(n293), .Z(n291) );
  GTECH_AND2 U325 ( .A(n294), .B(n279), .Z(N126) );
  GTECH_XOR2 U326 ( .A(n293), .B(n161), .Z(n294) );
  GTECH_NAND2 U327 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_NOT U328 ( .A(n297), .Z(n295) );
  GTECH_AND2 U329 ( .A(n298), .B(n279), .Z(N124) );
  GTECH_XOR2 U330 ( .A(n297), .B(n162), .Z(n298) );
  GTECH_NAND2 U331 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U332 ( .A(n163), .Z(n300) );
  GTECH_NOT U333 ( .A(n301), .Z(n299) );
  GTECH_AND2 U334 ( .A(n302), .B(n279), .Z(N122) );
  GTECH_XOR2 U335 ( .A(n301), .B(n163), .Z(n302) );
  GTECH_NAND2 U336 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U337 ( .A(n164), .Z(n304) );
  GTECH_NOT U338 ( .A(n305), .Z(n303) );
  GTECH_AND2 U339 ( .A(n306), .B(n279), .Z(N120) );
  GTECH_XOR2 U340 ( .A(n305), .B(n164), .Z(n306) );
  GTECH_NAND2 U341 ( .A(n307), .B(n308), .Z(n305) );
  GTECH_NOT U342 ( .A(n309), .Z(n307) );
  GTECH_AO21 U343 ( .A(period[3]), .B(n213), .C(reset), .Z(N12) );
  GTECH_AND2 U344 ( .A(n310), .B(n279), .Z(N118) );
  GTECH_XOR2 U345 ( .A(n309), .B(n165), .Z(n310) );
  GTECH_OR3 U346 ( .A(n168), .B(n167), .C(n166), .Z(n309) );
  GTECH_OAI2N2 U347 ( .A(n311), .B(n312), .C(N112), .D(n313), .Z(N116) );
  GTECH_NOT U348 ( .A(n166), .Z(n313) );
  GTECH_MUX2 U349 ( .A(n314), .B(n315), .S(n166), .Z(n312) );
  GTECH_NAND2 U350 ( .A(n314), .B(n316), .Z(n315) );
  GTECH_NOT U351 ( .A(n167), .Z(n314) );
  GTECH_MUX2 U352 ( .A(N112), .B(n317), .S(n167), .Z(N114) );
  GTECH_AND2 U353 ( .A(n279), .B(n316), .Z(n317) );
  GTECH_NOT U354 ( .A(n318), .Z(N112) );
  GTECH_NAND2 U355 ( .A(n279), .B(n168), .Z(n318) );
  GTECH_NOT U356 ( .A(n311), .Z(n279) );
  GTECH_NAND2 U357 ( .A(n228), .B(n186), .Z(n311) );
  GTECH_NAND2 U358 ( .A(n319), .B(n320), .Z(n228) );
  GTECH_OR3 U359 ( .A(n321), .B(n322), .C(n323), .Z(n320) );
  GTECH_OAI2N2 U360 ( .A(update_period[9]), .B(n159), .C(n324), .D(n325), .Z(
        n323) );
  GTECH_AOI2N2 U361 ( .A(update_period[7]), .B(n161), .C(n326), .D(n327), .Z(
        n325) );
  GTECH_OAI21 U362 ( .A(update_period[7]), .B(n161), .C(n162), .Z(n327) );
  GTECH_OA21 U363 ( .A(n328), .B(n329), .C(n330), .Z(n324) );
  GTECH_OR4 U364 ( .A(n329), .B(n331), .C(n332), .D(n333), .Z(n330) );
  GTECH_AOI222 U365 ( .A(n334), .B(n335), .C(update_period[3]), .D(n165), .E(
        n336), .F(n335), .Z(n333) );
  GTECH_AND2 U366 ( .A(update_period[2]), .B(n166), .Z(n336) );
  GTECH_NAND2 U367 ( .A(n337), .B(n308), .Z(n335) );
  GTECH_NOT U368 ( .A(n165), .Z(n308) );
  GTECH_NOT U369 ( .A(update_period[3]), .Z(n337) );
  GTECH_AND2 U370 ( .A(n338), .B(n339), .Z(n334) );
  GTECH_OAI2N2 U371 ( .A(n316), .B(n172), .C(update_period[1]), .D(n167), .Z(
        n339) );
  GTECH_NOT U372 ( .A(n168), .Z(n316) );
  GTECH_OA22 U373 ( .A(n167), .B(update_period[1]), .C(n166), .D(
        update_period[2]), .Z(n338) );
  GTECH_NOR2 U374 ( .A(n163), .B(update_period[5]), .Z(n332) );
  GTECH_NOR2 U375 ( .A(n164), .B(update_period[4]), .Z(n331) );
  GTECH_OAI2N2 U376 ( .A(update_period[7]), .B(n161), .C(n296), .D(n326), .Z(
        n329) );
  GTECH_NOT U377 ( .A(update_period[6]), .Z(n326) );
  GTECH_NOT U378 ( .A(n162), .Z(n296) );
  GTECH_AOI22 U379 ( .A(n163), .B(update_period[5]), .C(update_period[4]), .D(
        n340), .Z(n328) );
  GTECH_OA21 U380 ( .A(update_period[5]), .B(n163), .C(n164), .Z(n340) );
  GTECH_NOR2 U381 ( .A(update_period[8]), .B(n160), .Z(n321) );
  GTECH_OA22 U382 ( .A(n341), .B(n342), .C(n322), .D(n343), .Z(n319) );
  GTECH_AOI222 U383 ( .A(update_period[9]), .B(n159), .C(n344), .D(
        update_period[8]), .E(update_period[10]), .F(n169), .Z(n343) );
  GTECH_OA21 U384 ( .A(n159), .B(update_period[9]), .C(n160), .Z(n344) );
  GTECH_OAI2N2 U385 ( .A(update_period[10]), .B(n169), .C(n342), .D(n341), .Z(
        n322) );
  GTECH_NOT U386 ( .A(n185), .Z(n342) );
  GTECH_NOT U387 ( .A(update_period[11]), .Z(n341) );
  GTECH_AO21 U388 ( .A(period[2]), .B(n213), .C(reset), .Z(N11) );
  GTECH_AO21 U389 ( .A(period[1]), .B(n213), .C(reset), .Z(N10) );
  GTECH_NOT U390 ( .A(n214), .Z(n213) );
  GTECH_NAND2 U391 ( .A(period_load), .B(n186), .Z(n214) );
  GTECH_NOT U392 ( .A(reset), .Z(n186) );
endmodule

