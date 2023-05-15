
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
         n23, n25, n26, n28, n29, n30, n32, n76, n154, sub_85_carry_2_, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n185, n186, n187, n188, n189, n190, n191, n192, n193,
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
         n348, n349;
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
        .Q(dbg_state[1]), .QN(n15) );
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
        clk), .Q(update_digits), .QN(n16) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n76), .K(n76), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n185) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n76), .K(n76), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n17) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n76), .K(n76), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n76), .K(n76), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n76), .K(n76), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n76), .K(n76), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n21) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n76), .K(n76), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n76), .K(n76), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n23) );
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
        seven_segment0_unit_count_reg[1]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n29) );
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
  GTECH_NAND2 U168 ( .A(n16), .B(n186), .Z(seven_segment0_N9) );
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
  GTECH_NAND2 U179 ( .A(n187), .B(n189), .Z(segments[5]) );
  GTECH_NAND3 U180 ( .A(n190), .B(n191), .C(n188), .Z(segments[3]) );
  GTECH_NOT U181 ( .A(segments[4]), .Z(n191) );
  GTECH_OAI21 U182 ( .A(n192), .B(n193), .C(n189), .Z(segments[4]) );
  GTECH_NAND2 U183 ( .A(n194), .B(n187), .Z(segments[2]) );
  GTECH_AND2 U184 ( .A(n195), .B(n196), .Z(n187) );
  GTECH_NAND3 U185 ( .A(n197), .B(n198), .C(n199), .Z(n196) );
  GTECH_NAND3 U186 ( .A(n200), .B(n188), .C(n194), .Z(segments[1]) );
  GTECH_NOT U187 ( .A(n201), .Z(n194) );
  GTECH_NAND2 U188 ( .A(n202), .B(n203), .Z(n201) );
  GTECH_NAND3 U189 ( .A(n199), .B(n204), .C(n198), .Z(n200) );
  GTECH_NAND4 U190 ( .A(n195), .B(n202), .C(n189), .D(n188), .Z(segments[0])
         );
  GTECH_NAND2 U191 ( .A(n205), .B(n206), .Z(n188) );
  GTECH_NAND2 U192 ( .A(n198), .B(n207), .Z(n189) );
  GTECH_NOT U193 ( .A(n203), .Z(n207) );
  GTECH_NAND2 U194 ( .A(n205), .B(n193), .Z(n202) );
  GTECH_NOT U195 ( .A(n192), .Z(n205) );
  GTECH_NAND2 U196 ( .A(n199), .B(n208), .Z(n192) );
  GTECH_NOT U197 ( .A(n204), .Z(n208) );
  GTECH_NOT U198 ( .A(n209), .Z(n195) );
  GTECH_OAI21 U199 ( .A(n199), .B(n203), .C(n190), .Z(n209) );
  GTECH_NAND4 U200 ( .A(n204), .B(n197), .C(n199), .D(n193), .Z(n190) );
  GTECH_NOT U201 ( .A(n198), .Z(n193) );
  GTECH_MUX2 U202 ( .A(n29), .B(n25), .S(n154), .Z(n198) );
  GTECH_NAND2 U203 ( .A(n204), .B(n206), .Z(n203) );
  GTECH_NOT U204 ( .A(n197), .Z(n206) );
  GTECH_MUX2 U205 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n154), .Z(n197) );
  GTECH_MUX2 U206 ( .A(n30), .B(n26), .S(n154), .Z(n204) );
  GTECH_MUX2 U207 ( .A(n32), .B(n28), .S(n154), .Z(n199) );
  GTECH_AO21 U208 ( .A(period[0]), .B(n210), .C(reset), .Z(N9) );
  GTECH_AND2 U209 ( .A(period[11]), .B(n210), .Z(N21) );
  GTECH_NAND2 U210 ( .A(n186), .B(n211), .Z(N20) );
  GTECH_AO21 U211 ( .A(period[10]), .B(n210), .C(reset), .Z(N19) );
  GTECH_AND2 U212 ( .A(period[9]), .B(n210), .Z(N18) );
  GTECH_AND2 U213 ( .A(period[8]), .B(n210), .Z(N17) );
  GTECH_AND2 U214 ( .A(N170), .B(n212), .Z(N168) );
  GTECH_NAND2 U215 ( .A(n213), .B(n214), .Z(N167) );
  GTECH_AND2 U216 ( .A(N170), .B(n215), .Z(N166) );
  GTECH_AND2 U217 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U218 ( .A(N170), .B(n216), .Z(N162) );
  GTECH_NOT U219 ( .A(n217), .Z(N170) );
  GTECH_NAND2 U220 ( .A(n218), .B(n186), .Z(n217) );
  GTECH_NOT U221 ( .A(n214), .Z(n218) );
  GTECH_OAI22 U222 ( .A(n219), .B(n220), .C(n221), .D(n222), .Z(N160) );
  GTECH_MUX2 U223 ( .A(n219), .B(n223), .S(ten_count[2]), .Z(n222) );
  GTECH_NAND2 U224 ( .A(n224), .B(n219), .Z(n223) );
  GTECH_NOT U225 ( .A(ten_count[3]), .Z(n219) );
  GTECH_AO21 U226 ( .A(period[7]), .B(n210), .C(reset), .Z(N16) );
  GTECH_OAI21 U227 ( .A(n225), .B(n226), .C(n227), .Z(N159) );
  GTECH_MUX2 U228 ( .A(n228), .B(n229), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U229 ( .A(n220), .Z(n229) );
  GTECH_NAND2 U230 ( .A(N152), .B(n230), .Z(n220) );
  GTECH_AND2 U231 ( .A(N152), .B(n224), .Z(n228) );
  GTECH_NOT U232 ( .A(n230), .Z(n224) );
  GTECH_NAND2 U233 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n230) );
  GTECH_MUX2 U234 ( .A(n231), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U235 ( .A(N152), .B(ten_count[0]), .Z(n231) );
  GTECH_NOT U236 ( .A(n232), .Z(N154) );
  GTECH_NAND2 U237 ( .A(N152), .B(n233), .Z(n232) );
  GTECH_NOT U238 ( .A(ten_count[0]), .Z(n233) );
  GTECH_NAND2 U239 ( .A(n234), .B(n15), .Z(N151) );
  GTECH_OA21 U240 ( .A(n14), .B(n235), .C(n213), .Z(n234) );
  GTECH_NOT U241 ( .A(n236), .Z(n213) );
  GTECH_OAI21 U242 ( .A(n237), .B(n225), .C(n186), .Z(n236) );
  GTECH_AND2 U243 ( .A(period[6]), .B(n210), .Z(N15) );
  GTECH_OAI21 U244 ( .A(n221), .B(n235), .C(n238), .Z(N148) );
  GTECH_MUX2 U245 ( .A(n239), .B(n240), .S(n171), .Z(n238) );
  GTECH_OR3 U246 ( .A(n172), .B(n241), .C(n242), .Z(n240) );
  GTECH_AND_NOT U247 ( .A(n243), .B(n244), .Z(n239) );
  GTECH_MUX2 U248 ( .A(n221), .B(n241), .S(n172), .Z(n243) );
  GTECH_NAND3 U249 ( .A(n245), .B(n214), .C(n227), .Z(N147) );
  GTECH_AND2 U250 ( .A(n186), .B(n246), .Z(n227) );
  GTECH_NAND3 U251 ( .A(n237), .B(n15), .C(n235), .Z(n246) );
  GTECH_NAND4 U252 ( .A(n185), .B(n172), .C(n171), .D(n247), .Z(n235) );
  GTECH_NAND2 U253 ( .A(n14), .B(n248), .Z(n214) );
  GTECH_NOT U254 ( .A(n15), .Z(n248) );
  GTECH_NAND3 U255 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n245) );
  GTECH_MUX2 U256 ( .A(n244), .B(n249), .S(n172), .Z(N146) );
  GTECH_OAI21 U257 ( .A(n242), .B(n241), .C(n250), .Z(n249) );
  GTECH_OAI21 U258 ( .A(n251), .B(n241), .C(n252), .Z(n244) );
  GTECH_AO21 U259 ( .A(n247), .B(n185), .C(n221), .Z(n252) );
  GTECH_NOT U260 ( .A(n242), .Z(n251) );
  GTECH_NAND3 U261 ( .A(n212), .B(n253), .C(n254), .Z(n242) );
  GTECH_NOT U262 ( .A(n185), .Z(n253) );
  GTECH_NAND2 U263 ( .A(n255), .B(n250), .Z(N144) );
  GTECH_NAND3 U264 ( .A(N152), .B(n247), .C(n185), .Z(n250) );
  GTECH_MUX2 U265 ( .A(n256), .B(n257), .S(n185), .Z(n255) );
  GTECH_NAND3 U266 ( .A(n254), .B(n212), .C(N150), .Z(n257) );
  GTECH_OA21 U267 ( .A(n221), .B(n247), .C(n258), .Z(n256) );
  GTECH_OAI21 U268 ( .A(n23), .B(n259), .C(N150), .Z(n258) );
  GTECH_NAND2 U269 ( .A(n260), .B(n212), .Z(n247) );
  GTECH_NOT U270 ( .A(n23), .Z(n212) );
  GTECH_OAI21 U271 ( .A(n241), .B(n261), .C(n262), .Z(N142) );
  GTECH_MUX2 U272 ( .A(n263), .B(n264), .S(n23), .Z(n262) );
  GTECH_NAND2 U273 ( .A(N152), .B(n260), .Z(n264) );
  GTECH_XOR2 U274 ( .A(n23), .B(n254), .Z(n261) );
  GTECH_NOT U275 ( .A(n259), .Z(n254) );
  GTECH_NAND3 U276 ( .A(n216), .B(n215), .C(sub_85_carry_2_), .Z(n259) );
  GTECH_NOT U277 ( .A(n21), .Z(n215) );
  GTECH_NAND2 U278 ( .A(n265), .B(n263), .Z(N140) );
  GTECH_NAND2 U279 ( .A(n266), .B(N152), .Z(n263) );
  GTECH_NOT U280 ( .A(n221), .Z(N152) );
  GTECH_NOT U281 ( .A(n260), .Z(n266) );
  GTECH_NAND2 U282 ( .A(n21), .B(n267), .Z(n260) );
  GTECH_NOT U283 ( .A(sub_85_carry_2_), .Z(n267) );
  GTECH_MUX2 U284 ( .A(n268), .B(n269), .S(n21), .Z(n265) );
  GTECH_NAND3 U285 ( .A(sub_85_carry_2_), .B(n216), .C(N150), .Z(n269) );
  GTECH_NOT U286 ( .A(n17), .Z(n216) );
  GTECH_AND2 U287 ( .A(n270), .B(n271), .Z(n268) );
  GTECH_MUX2 U288 ( .A(n241), .B(n221), .S(sub_85_carry_2_), .Z(n270) );
  GTECH_AO21 U289 ( .A(period[5]), .B(n210), .C(reset), .Z(N14) );
  GTECH_MUX2 U290 ( .A(n272), .B(n273), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U291 ( .A(n271), .Z(n273) );
  GTECH_OAI21 U292 ( .A(n17), .B(n241), .C(n221), .Z(n272) );
  GTECH_OAI21 U293 ( .A(n17), .B(n221), .C(n271), .Z(N136) );
  GTECH_NAND2 U294 ( .A(n17), .B(N150), .Z(n271) );
  GTECH_NOT U295 ( .A(n241), .Z(N150) );
  GTECH_NAND2 U296 ( .A(n274), .B(n186), .Z(n241) );
  GTECH_NOT U297 ( .A(n226), .Z(n274) );
  GTECH_NAND2 U298 ( .A(n15), .B(n275), .Z(n221) );
  GTECH_NOT U299 ( .A(N169), .Z(n275) );
  GTECH_NAND2 U300 ( .A(n186), .B(n237), .Z(N169) );
  GTECH_NOT U301 ( .A(n14), .Z(n237) );
  GTECH_AND2 U302 ( .A(n276), .B(n277), .Z(N134) );
  GTECH_OAI21 U303 ( .A(n170), .B(n278), .C(n159), .Z(n277) );
  GTECH_NAND2 U304 ( .A(n186), .B(n226), .Z(N133) );
  GTECH_NAND2 U305 ( .A(n15), .B(n14), .Z(n226) );
  GTECH_AND2 U306 ( .A(n279), .B(n276), .Z(N132) );
  GTECH_XOR2 U307 ( .A(n278), .B(n170), .Z(n279) );
  GTECH_NAND2 U308 ( .A(n280), .B(n281), .Z(n278) );
  GTECH_NOT U309 ( .A(n160), .Z(n281) );
  GTECH_NOT U310 ( .A(n282), .Z(n280) );
  GTECH_AND2 U311 ( .A(n283), .B(n276), .Z(N130) );
  GTECH_XOR2 U312 ( .A(n282), .B(n160), .Z(n283) );
  GTECH_NAND2 U313 ( .A(n284), .B(n285), .Z(n282) );
  GTECH_NOT U314 ( .A(n161), .Z(n285) );
  GTECH_NOT U315 ( .A(n286), .Z(n284) );
  GTECH_AND2 U316 ( .A(period[4]), .B(n210), .Z(N13) );
  GTECH_AND2 U317 ( .A(n287), .B(n276), .Z(N128) );
  GTECH_XOR2 U318 ( .A(n286), .B(n161), .Z(n287) );
  GTECH_NAND2 U319 ( .A(n288), .B(n289), .Z(n286) );
  GTECH_NOT U320 ( .A(n290), .Z(n288) );
  GTECH_AND2 U321 ( .A(n291), .B(n276), .Z(N126) );
  GTECH_XOR2 U322 ( .A(n290), .B(n162), .Z(n291) );
  GTECH_NAND2 U323 ( .A(n292), .B(n293), .Z(n290) );
  GTECH_NOT U324 ( .A(n163), .Z(n293) );
  GTECH_NOT U325 ( .A(n294), .Z(n292) );
  GTECH_AND2 U326 ( .A(n295), .B(n276), .Z(N124) );
  GTECH_XOR2 U327 ( .A(n294), .B(n163), .Z(n295) );
  GTECH_NAND2 U328 ( .A(n296), .B(n297), .Z(n294) );
  GTECH_NOT U329 ( .A(n298), .Z(n296) );
  GTECH_AND2 U330 ( .A(n299), .B(n276), .Z(N122) );
  GTECH_XOR2 U331 ( .A(n298), .B(n164), .Z(n299) );
  GTECH_NAND2 U332 ( .A(n300), .B(n301), .Z(n298) );
  GTECH_NOT U333 ( .A(n165), .Z(n301) );
  GTECH_NOT U334 ( .A(n302), .Z(n300) );
  GTECH_AND2 U335 ( .A(n303), .B(n276), .Z(N120) );
  GTECH_XOR2 U336 ( .A(n302), .B(n165), .Z(n303) );
  GTECH_NAND2 U337 ( .A(n304), .B(n305), .Z(n302) );
  GTECH_NOT U338 ( .A(n306), .Z(n304) );
  GTECH_AO21 U339 ( .A(period[3]), .B(n210), .C(reset), .Z(N12) );
  GTECH_AND2 U340 ( .A(n307), .B(n276), .Z(N118) );
  GTECH_XOR2 U341 ( .A(n306), .B(n166), .Z(n307) );
  GTECH_NAND3 U342 ( .A(n308), .B(n309), .C(n310), .Z(n306) );
  GTECH_NOT U343 ( .A(n167), .Z(n310) );
  GTECH_OAI22 U344 ( .A(n167), .B(n311), .C(n312), .D(n313), .Z(N116) );
  GTECH_MUX2 U345 ( .A(n308), .B(n314), .S(n167), .Z(n313) );
  GTECH_NAND2 U346 ( .A(n308), .B(n309), .Z(n314) );
  GTECH_NOT U347 ( .A(n168), .Z(n308) );
  GTECH_MUX2 U348 ( .A(N112), .B(n315), .S(n168), .Z(N114) );
  GTECH_AND2 U349 ( .A(n276), .B(n309), .Z(n315) );
  GTECH_NOT U350 ( .A(n169), .Z(n309) );
  GTECH_NOT U351 ( .A(n311), .Z(N112) );
  GTECH_NAND2 U352 ( .A(n276), .B(n169), .Z(n311) );
  GTECH_NOT U353 ( .A(n312), .Z(n276) );
  GTECH_NAND2 U354 ( .A(n225), .B(n186), .Z(n312) );
  GTECH_NOT U355 ( .A(n316), .Z(n225) );
  GTECH_AOI222 U356 ( .A(n317), .B(n318), .C(update_period[11]), .D(n159), .E(
        n319), .F(n320), .Z(n316) );
  GTECH_OAI22 U357 ( .A(n321), .B(n322), .C(n323), .D(n324), .Z(n319) );
  GTECH_AOI22 U358 ( .A(n160), .B(update_period[9]), .C(update_period[8]), .D(
        n325), .Z(n324) );
  GTECH_OA21 U359 ( .A(n160), .B(update_period[9]), .C(n161), .Z(n325) );
  GTECH_NOT U360 ( .A(n326), .Z(n323) );
  GTECH_AND2 U361 ( .A(n327), .B(n320), .Z(n318) );
  GTECH_NAND2 U362 ( .A(n328), .B(n329), .Z(n320) );
  GTECH_NOT U363 ( .A(update_period[11]), .Z(n329) );
  GTECH_NOT U364 ( .A(n159), .Z(n328) );
  GTECH_AND_NOT U365 ( .A(n326), .B(n330), .Z(n327) );
  GTECH_AOI222 U366 ( .A(update_period[7]), .B(n162), .C(n331), .D(n332), .E(
        n333), .F(n334), .Z(n330) );
  GTECH_AO22 U367 ( .A(update_period[6]), .B(n335), .C(n336), .D(n163), .Z(
        n333) );
  GTECH_OR2 U368 ( .A(n163), .B(n336), .Z(n335) );
  GTECH_OAI21 U369 ( .A(n297), .B(n337), .C(n338), .Z(n336) );
  GTECH_NAND3 U370 ( .A(n165), .B(n339), .C(update_period[4]), .Z(n338) );
  GTECH_OA21 U371 ( .A(n340), .B(n341), .C(n342), .Z(n332) );
  GTECH_AND2 U372 ( .A(n339), .B(n334), .Z(n342) );
  GTECH_NAND2 U373 ( .A(n289), .B(n343), .Z(n334) );
  GTECH_NOT U374 ( .A(update_period[7]), .Z(n343) );
  GTECH_NOT U375 ( .A(n162), .Z(n289) );
  GTECH_NAND2 U376 ( .A(n337), .B(n297), .Z(n339) );
  GTECH_NOT U377 ( .A(n164), .Z(n297) );
  GTECH_NOT U378 ( .A(update_period[5]), .Z(n337) );
  GTECH_OA21 U379 ( .A(n167), .B(update_period[2]), .C(n344), .Z(n341) );
  GTECH_OA21 U380 ( .A(n163), .B(update_period[6]), .C(n345), .Z(n331) );
  GTECH_OA22 U381 ( .A(n340), .B(n346), .C(n165), .D(update_period[4]), .Z(
        n345) );
  GTECH_ADD_ABC U382 ( .A(update_period[1]), .B(n347), .C(n168), .COUT(n346)
         );
  GTECH_AND2 U383 ( .A(update_period[0]), .B(n169), .Z(n347) );
  GTECH_OAI21 U384 ( .A(n305), .B(n348), .C(n349), .Z(n340) );
  GTECH_NAND3 U385 ( .A(n167), .B(n344), .C(update_period[2]), .Z(n349) );
  GTECH_NAND2 U386 ( .A(n348), .B(n305), .Z(n344) );
  GTECH_NOT U387 ( .A(update_period[3]), .Z(n348) );
  GTECH_NOT U388 ( .A(n166), .Z(n305) );
  GTECH_NAND2 U389 ( .A(n322), .B(n321), .Z(n326) );
  GTECH_NOT U390 ( .A(n170), .Z(n321) );
  GTECH_NOT U391 ( .A(update_period[10]), .Z(n322) );
  GTECH_OA22 U392 ( .A(n161), .B(update_period[8]), .C(n160), .D(
        update_period[9]), .Z(n317) );
  GTECH_AO21 U393 ( .A(period[2]), .B(n210), .C(reset), .Z(N11) );
  GTECH_AO21 U394 ( .A(period[1]), .B(n210), .C(reset), .Z(N10) );
  GTECH_NOT U395 ( .A(n211), .Z(n210) );
  GTECH_NAND2 U396 ( .A(period_load), .B(n186), .Z(n211) );
  GTECH_NOT U397 ( .A(reset), .Z(n186) );
endmodule

