
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
         n27, n28, n31, n32, n76, n154, n158, sub_85_carry_2_, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n173, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
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
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351;
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
        .CP(clk), .Q(update_period[1]), .QN(n173) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n76), .K(n76), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n76), .K(n76), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n171) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n76), .K(n76), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n170) );
  GTECH_FJK1S state_reg_0_ ( .J(n76), .K(n76), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n76), .K(n76), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n158) );
  GTECH_FJK1S update_digits_reg ( .J(n76), .K(n76), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n76), .K(n76), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n76), .K(n76), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n76), .K(n76), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n76), .K(n76), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n76), .K(n76), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n76), .K(n76), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n76), .K(n76), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n76), .K(n76), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n76), .K(n76), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n161) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n76), .K(n76), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n160) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n76), .K(n76), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n159) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n76), .K(n76), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n185) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n76), .K(n76), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n184) );
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
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n31) );
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
  GTECH_NAND2 U178 ( .A(n187), .B(n188), .Z(segments[6]) );
  GTECH_NOT U179 ( .A(n189), .Z(segments[4]) );
  GTECH_NAND3 U180 ( .A(n188), .B(n189), .C(n190), .Z(segments[3]) );
  GTECH_OAI21 U181 ( .A(n191), .B(n192), .C(n193), .Z(n189) );
  GTECH_NOT U182 ( .A(n194), .Z(n192) );
  GTECH_NAND2 U183 ( .A(n195), .B(n196), .Z(segments[2]) );
  GTECH_NOT U184 ( .A(segments[5]), .Z(n196) );
  GTECH_OAI21 U185 ( .A(n197), .B(n194), .C(n187), .Z(segments[5]) );
  GTECH_AND2 U186 ( .A(n198), .B(n190), .Z(n187) );
  GTECH_OA21 U187 ( .A(n199), .B(n194), .C(n200), .Z(n198) );
  GTECH_NAND3 U188 ( .A(n201), .B(n199), .C(n193), .Z(n200) );
  GTECH_NAND3 U189 ( .A(n202), .B(n188), .C(n195), .Z(segments[1]) );
  GTECH_NOT U190 ( .A(n203), .Z(n195) );
  GTECH_OAI21 U191 ( .A(n204), .B(n193), .C(n194), .Z(n203) );
  GTECH_NAND3 U192 ( .A(n193), .B(n205), .C(n199), .Z(n202) );
  GTECH_NAND3 U193 ( .A(n190), .B(n188), .C(n206), .Z(segments[0]) );
  GTECH_OA22 U194 ( .A(n207), .B(n194), .C(n204), .D(n193), .Z(n206) );
  GTECH_NAND2 U195 ( .A(n208), .B(n205), .Z(n194) );
  GTECH_NAND2 U196 ( .A(n191), .B(n208), .Z(n188) );
  GTECH_NOT U197 ( .A(n201), .Z(n208) );
  GTECH_NOT U198 ( .A(n204), .Z(n191) );
  GTECH_NAND2 U199 ( .A(n209), .B(n199), .Z(n204) );
  GTECH_NOT U200 ( .A(n205), .Z(n209) );
  GTECH_NAND3 U201 ( .A(n201), .B(n205), .C(n207), .Z(n190) );
  GTECH_NOT U202 ( .A(n210), .Z(n207) );
  GTECH_NAND2 U203 ( .A(n197), .B(n199), .Z(n210) );
  GTECH_NOT U204 ( .A(n211), .Z(n199) );
  GTECH_OAI22 U205 ( .A(n212), .B(n28), .C(n154), .D(n32), .Z(n211) );
  GTECH_NOT U206 ( .A(n193), .Z(n197) );
  GTECH_OAI22 U207 ( .A(seven_segment0_ten_count_reg[0]), .B(n154), .C(
        seven_segment0_unit_count_reg[0]), .D(n212), .Z(n193) );
  GTECH_OAI22 U208 ( .A(seven_segment0_ten_count_reg[1]), .B(n154), .C(
        seven_segment0_unit_count_reg[1]), .D(n212), .Z(n205) );
  GTECH_OAI22 U209 ( .A(n212), .B(n27), .C(n154), .D(n31), .Z(n201) );
  GTECH_NOT U210 ( .A(n154), .Z(n212) );
  GTECH_AO21 U211 ( .A(period[0]), .B(n213), .C(reset), .Z(N9) );
  GTECH_AND2 U212 ( .A(period[11]), .B(n213), .Z(N21) );
  GTECH_NAND2 U213 ( .A(n186), .B(n214), .Z(N20) );
  GTECH_AO21 U214 ( .A(period[10]), .B(n213), .C(reset), .Z(N19) );
  GTECH_AND2 U215 ( .A(period[9]), .B(n213), .Z(N18) );
  GTECH_AND2 U216 ( .A(period[8]), .B(n213), .Z(N17) );
  GTECH_AND2 U217 ( .A(N170), .B(n215), .Z(N168) );
  GTECH_NAND2 U218 ( .A(n216), .B(n217), .Z(N167) );
  GTECH_AND2 U219 ( .A(N170), .B(n218), .Z(N166) );
  GTECH_AND2 U220 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U221 ( .A(N170), .B(n219), .Z(N162) );
  GTECH_NOT U222 ( .A(n220), .Z(N170) );
  GTECH_NAND2 U223 ( .A(n221), .B(n186), .Z(n220) );
  GTECH_NOT U224 ( .A(n217), .Z(n221) );
  GTECH_OAI22 U225 ( .A(n222), .B(n223), .C(n224), .D(n225), .Z(N160) );
  GTECH_OA21 U226 ( .A(n226), .B(ten_count[2]), .C(n227), .Z(n224) );
  GTECH_NAND2 U227 ( .A(ten_count[2]), .B(n225), .Z(n223) );
  GTECH_NOT U228 ( .A(ten_count[3]), .Z(n225) );
  GTECH_AO21 U229 ( .A(period[7]), .B(n213), .C(reset), .Z(N16) );
  GTECH_OAI21 U230 ( .A(n228), .B(n229), .C(n230), .Z(N159) );
  GTECH_OAI22 U231 ( .A(n227), .B(n231), .C(ten_count[2]), .D(n222), .Z(N158)
         );
  GTECH_NAND3 U232 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n222) );
  GTECH_NOT U233 ( .A(ten_count[2]), .Z(n231) );
  GTECH_NOT U234 ( .A(n232), .Z(n227) );
  GTECH_OAI21 U235 ( .A(ten_count[1]), .B(n226), .C(n233), .Z(n232) );
  GTECH_OAI21 U236 ( .A(n234), .B(n233), .C(n235), .Z(N156) );
  GTECH_NAND3 U237 ( .A(N152), .B(ten_count[0]), .C(n234), .Z(n235) );
  GTECH_NOT U238 ( .A(ten_count[1]), .Z(n234) );
  GTECH_NOT U239 ( .A(n233), .Z(N154) );
  GTECH_NAND2 U240 ( .A(N152), .B(n236), .Z(n233) );
  GTECH_NOT U241 ( .A(ten_count[0]), .Z(n236) );
  GTECH_NAND2 U242 ( .A(n237), .B(n158), .Z(N151) );
  GTECH_OA21 U243 ( .A(n14), .B(n238), .C(n216), .Z(n237) );
  GTECH_NOT U244 ( .A(n239), .Z(n216) );
  GTECH_OAI21 U245 ( .A(n240), .B(n228), .C(n186), .Z(n239) );
  GTECH_AND2 U246 ( .A(period[6]), .B(n213), .Z(N15) );
  GTECH_OAI21 U247 ( .A(n226), .B(n238), .C(n241), .Z(N148) );
  GTECH_AND2 U248 ( .A(n242), .B(n243), .Z(n241) );
  GTECH_NAND4 U249 ( .A(n244), .B(N150), .C(n245), .D(n170), .Z(n243) );
  GTECH_AO21 U250 ( .A(n246), .B(n247), .C(n170), .Z(n242) );
  GTECH_OA22 U251 ( .A(n248), .B(n244), .C(n226), .D(n171), .Z(n246) );
  GTECH_NAND3 U252 ( .A(n249), .B(n217), .C(n230), .Z(N147) );
  GTECH_AND2 U253 ( .A(n186), .B(n250), .Z(n230) );
  GTECH_NAND3 U254 ( .A(n240), .B(n158), .C(n238), .Z(n250) );
  GTECH_NAND4 U255 ( .A(n184), .B(n171), .C(n170), .D(n251), .Z(n238) );
  GTECH_NAND2 U256 ( .A(n14), .B(n252), .Z(n217) );
  GTECH_NOT U257 ( .A(n158), .Z(n252) );
  GTECH_NAND3 U258 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n249) );
  GTECH_OAI22 U259 ( .A(n253), .B(n244), .C(n171), .D(n247), .Z(N146) );
  GTECH_OA21 U260 ( .A(n245), .B(n248), .C(n254), .Z(n247) );
  GTECH_AO21 U261 ( .A(n251), .B(n184), .C(n226), .Z(n254) );
  GTECH_NOT U262 ( .A(n255), .Z(n245) );
  GTECH_NOT U263 ( .A(n171), .Z(n244) );
  GTECH_OA21 U264 ( .A(n255), .B(n248), .C(n256), .Z(n253) );
  GTECH_NAND3 U265 ( .A(n215), .B(n257), .C(n258), .Z(n255) );
  GTECH_NOT U266 ( .A(n184), .Z(n257) );
  GTECH_NAND2 U267 ( .A(n259), .B(n256), .Z(N144) );
  GTECH_NAND3 U268 ( .A(N152), .B(n251), .C(n184), .Z(n256) );
  GTECH_OA21 U269 ( .A(n184), .B(n260), .C(n261), .Z(n259) );
  GTECH_NAND4 U270 ( .A(n258), .B(n215), .C(N150), .D(n184), .Z(n261) );
  GTECH_NOT U271 ( .A(n262), .Z(n258) );
  GTECH_OA21 U272 ( .A(n226), .B(n251), .C(n263), .Z(n260) );
  GTECH_OAI21 U273 ( .A(n22), .B(n262), .C(N150), .Z(n263) );
  GTECH_NAND2 U274 ( .A(n264), .B(n215), .Z(n251) );
  GTECH_NOT U275 ( .A(n22), .Z(n215) );
  GTECH_OAI21 U276 ( .A(n248), .B(n265), .C(n266), .Z(N142) );
  GTECH_OA21 U277 ( .A(n22), .B(n267), .C(n268), .Z(n266) );
  GTECH_NAND3 U278 ( .A(N152), .B(n264), .C(n22), .Z(n268) );
  GTECH_XNOR2 U279 ( .A(n262), .B(n22), .Z(n265) );
  GTECH_NAND3 U280 ( .A(n219), .B(n218), .C(sub_85_carry_2_), .Z(n262) );
  GTECH_NOT U281 ( .A(n20), .Z(n218) );
  GTECH_NAND3 U282 ( .A(n267), .B(n269), .C(n270), .Z(N140) );
  GTECH_NAND4 U283 ( .A(sub_85_carry_2_), .B(n219), .C(N150), .D(n20), .Z(n270) );
  GTECH_NOT U284 ( .A(n16), .Z(n219) );
  GTECH_AO21 U285 ( .A(n271), .B(n272), .C(n20), .Z(n269) );
  GTECH_OA22 U286 ( .A(sub_85_carry_2_), .B(n248), .C(n273), .D(n226), .Z(n272) );
  GTECH_NAND2 U287 ( .A(n274), .B(N152), .Z(n267) );
  GTECH_NOT U288 ( .A(n226), .Z(N152) );
  GTECH_NOT U289 ( .A(n264), .Z(n274) );
  GTECH_NAND2 U290 ( .A(n20), .B(n273), .Z(n264) );
  GTECH_AO21 U291 ( .A(period[5]), .B(n213), .C(reset), .Z(N14) );
  GTECH_OAI22 U292 ( .A(sub_85_carry_2_), .B(n275), .C(n273), .D(n271), .Z(
        N138) );
  GTECH_NOT U293 ( .A(sub_85_carry_2_), .Z(n273) );
  GTECH_OA21 U294 ( .A(n16), .B(n248), .C(n226), .Z(n275) );
  GTECH_OAI21 U295 ( .A(n16), .B(n226), .C(n271), .Z(N136) );
  GTECH_NAND2 U296 ( .A(n16), .B(N150), .Z(n271) );
  GTECH_NOT U297 ( .A(n248), .Z(N150) );
  GTECH_NAND2 U298 ( .A(n276), .B(n186), .Z(n248) );
  GTECH_NOT U299 ( .A(n229), .Z(n276) );
  GTECH_NAND2 U300 ( .A(n158), .B(n277), .Z(n226) );
  GTECH_NOT U301 ( .A(N169), .Z(n277) );
  GTECH_NAND2 U302 ( .A(n186), .B(n240), .Z(N169) );
  GTECH_NOT U303 ( .A(n14), .Z(n240) );
  GTECH_AND2 U304 ( .A(n278), .B(n279), .Z(N134) );
  GTECH_OAI21 U305 ( .A(n169), .B(n280), .C(n185), .Z(n279) );
  GTECH_NAND2 U306 ( .A(n186), .B(n229), .Z(N133) );
  GTECH_NAND2 U307 ( .A(n158), .B(n14), .Z(n229) );
  GTECH_AND2 U308 ( .A(n281), .B(n278), .Z(N132) );
  GTECH_XOR2 U309 ( .A(n280), .B(n169), .Z(n281) );
  GTECH_NAND2 U310 ( .A(n282), .B(n283), .Z(n280) );
  GTECH_NOT U311 ( .A(n284), .Z(n282) );
  GTECH_AND2 U312 ( .A(n285), .B(n278), .Z(N130) );
  GTECH_XOR2 U313 ( .A(n284), .B(n159), .Z(n285) );
  GTECH_NAND2 U314 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_NOT U315 ( .A(n160), .Z(n287) );
  GTECH_NOT U316 ( .A(n288), .Z(n286) );
  GTECH_AND2 U317 ( .A(period[4]), .B(n213), .Z(N13) );
  GTECH_AND2 U318 ( .A(n289), .B(n278), .Z(N128) );
  GTECH_XOR2 U319 ( .A(n288), .B(n160), .Z(n289) );
  GTECH_NAND2 U320 ( .A(n290), .B(n291), .Z(n288) );
  GTECH_NOT U321 ( .A(n292), .Z(n290) );
  GTECH_AND2 U322 ( .A(n293), .B(n278), .Z(N126) );
  GTECH_XOR2 U323 ( .A(n292), .B(n161), .Z(n293) );
  GTECH_NAND2 U324 ( .A(n294), .B(n295), .Z(n292) );
  GTECH_NOT U325 ( .A(n162), .Z(n295) );
  GTECH_NOT U326 ( .A(n296), .Z(n294) );
  GTECH_AND2 U327 ( .A(n297), .B(n278), .Z(N124) );
  GTECH_XOR2 U328 ( .A(n296), .B(n162), .Z(n297) );
  GTECH_NAND2 U329 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_NOT U330 ( .A(n163), .Z(n299) );
  GTECH_NOT U331 ( .A(n300), .Z(n298) );
  GTECH_AND2 U332 ( .A(n301), .B(n278), .Z(N122) );
  GTECH_XOR2 U333 ( .A(n300), .B(n163), .Z(n301) );
  GTECH_NAND2 U334 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_NOT U335 ( .A(n164), .Z(n303) );
  GTECH_NOT U336 ( .A(n304), .Z(n302) );
  GTECH_AND2 U337 ( .A(n305), .B(n278), .Z(N120) );
  GTECH_XOR2 U338 ( .A(n304), .B(n164), .Z(n305) );
  GTECH_NAND2 U339 ( .A(n306), .B(n307), .Z(n304) );
  GTECH_NOT U340 ( .A(n308), .Z(n306) );
  GTECH_AO21 U341 ( .A(period[3]), .B(n213), .C(reset), .Z(N12) );
  GTECH_AND2 U342 ( .A(n309), .B(n278), .Z(N118) );
  GTECH_XOR2 U343 ( .A(n308), .B(n165), .Z(n309) );
  GTECH_NAND3 U344 ( .A(n310), .B(n311), .C(n312), .Z(n308) );
  GTECH_NOT U345 ( .A(n166), .Z(n312) );
  GTECH_OAI22 U346 ( .A(n166), .B(n313), .C(n314), .D(n315), .Z(N116) );
  GTECH_OAI21 U347 ( .A(n167), .B(n166), .C(n316), .Z(n315) );
  GTECH_OAI21 U348 ( .A(n168), .B(n167), .C(n166), .Z(n316) );
  GTECH_OAI21 U349 ( .A(n167), .B(n313), .C(n317), .Z(N114) );
  GTECH_NAND3 U350 ( .A(n278), .B(n311), .C(n167), .Z(n317) );
  GTECH_NOT U351 ( .A(n168), .Z(n311) );
  GTECH_NOT U352 ( .A(n313), .Z(N112) );
  GTECH_NAND2 U353 ( .A(n278), .B(n168), .Z(n313) );
  GTECH_NOT U354 ( .A(n314), .Z(n278) );
  GTECH_NAND2 U355 ( .A(n228), .B(n186), .Z(n314) );
  GTECH_NOT U356 ( .A(n318), .Z(n228) );
  GTECH_AOI222 U357 ( .A(n319), .B(n320), .C(update_period[11]), .D(n185), .E(
        n321), .F(n322), .Z(n318) );
  GTECH_OAI2N2 U358 ( .A(n323), .B(n324), .C(n325), .D(n326), .Z(n321) );
  GTECH_OAI21 U359 ( .A(n327), .B(n283), .C(n328), .Z(n326) );
  GTECH_NAND3 U360 ( .A(n329), .B(update_period[8]), .C(n160), .Z(n328) );
  GTECH_AND3 U361 ( .A(n329), .B(n325), .C(n322), .Z(n320) );
  GTECH_NAND2 U362 ( .A(n330), .B(n331), .Z(n322) );
  GTECH_NOT U363 ( .A(n185), .Z(n331) );
  GTECH_NOT U364 ( .A(update_period[11]), .Z(n330) );
  GTECH_NAND2 U365 ( .A(n324), .B(n323), .Z(n325) );
  GTECH_NOT U366 ( .A(n169), .Z(n323) );
  GTECH_NOT U367 ( .A(update_period[10]), .Z(n324) );
  GTECH_NAND2 U368 ( .A(n283), .B(n327), .Z(n329) );
  GTECH_NOT U369 ( .A(update_period[9]), .Z(n327) );
  GTECH_NOT U370 ( .A(n159), .Z(n283) );
  GTECH_OA22 U371 ( .A(n160), .B(update_period[8]), .C(n332), .D(n333), .Z(
        n319) );
  GTECH_OAI21 U372 ( .A(n291), .B(n334), .C(n335), .Z(n333) );
  GTECH_NAND3 U373 ( .A(n336), .B(update_period[6]), .C(n162), .Z(n335) );
  GTECH_OAI2N2 U374 ( .A(n337), .B(n338), .C(n339), .D(n340), .Z(n332) );
  GTECH_ADD_ABC U375 ( .A(n341), .B(n163), .C(update_period[5]), .COUT(n340)
         );
  GTECH_AND2 U376 ( .A(update_period[4]), .B(n164), .Z(n341) );
  GTECH_OAI21 U377 ( .A(update_period[4]), .B(n164), .C(n339), .Z(n338) );
  GTECH_NOT U378 ( .A(n342), .Z(n339) );
  GTECH_OAI21 U379 ( .A(update_period[6]), .B(n162), .C(n336), .Z(n342) );
  GTECH_NAND2 U380 ( .A(n334), .B(n291), .Z(n336) );
  GTECH_NOT U381 ( .A(n161), .Z(n291) );
  GTECH_NOT U382 ( .A(update_period[7]), .Z(n334) );
  GTECH_OAI22 U383 ( .A(update_period[5]), .B(n163), .C(n343), .D(n344), .Z(
        n337) );
  GTECH_OAI21 U384 ( .A(n307), .B(n345), .C(n346), .Z(n344) );
  GTECH_NAND3 U385 ( .A(n347), .B(update_period[2]), .C(n166), .Z(n346) );
  GTECH_AND3 U386 ( .A(n348), .B(n349), .C(n347), .Z(n343) );
  GTECH_NAND2 U387 ( .A(n345), .B(n307), .Z(n347) );
  GTECH_NOT U388 ( .A(n165), .Z(n307) );
  GTECH_NOT U389 ( .A(update_period[3]), .Z(n345) );
  GTECH_OAI21 U390 ( .A(n350), .B(n310), .C(n173), .Z(n349) );
  GTECH_NOT U391 ( .A(n167), .Z(n310) );
  GTECH_OA21 U392 ( .A(n166), .B(update_period[2]), .C(n351), .Z(n348) );
  GTECH_OR_NOT U393 ( .A(n167), .B(n350), .Z(n351) );
  GTECH_NAND2 U394 ( .A(update_period[0]), .B(n168), .Z(n350) );
  GTECH_AO21 U395 ( .A(period[2]), .B(n213), .C(reset), .Z(N11) );
  GTECH_AO21 U396 ( .A(period[1]), .B(n213), .C(reset), .Z(N10) );
  GTECH_NOT U397 ( .A(n214), .Z(n213) );
  GTECH_NAND2 U398 ( .A(period_load), .B(n186), .Z(n214) );
  GTECH_NOT U399 ( .A(reset), .Z(n186) );
endmodule

