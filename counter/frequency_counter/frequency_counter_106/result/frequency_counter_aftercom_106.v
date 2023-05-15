
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
         n23, n29, n30, n33, n34, n77, n155, sub_85_carry_2_, n158, n159, n160,
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
         n326, n327, n328, n329, n330, n331, n332;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n77), .K(n77), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n77), .K(n77), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n77), .K(n77), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n77), .K(n77), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n77), .K(n77), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n77), .K(n77), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n77), .K(n77), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n77), .K(n77), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n77), .K(n77), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n77), .K(n77), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n77), .K(n77), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n77), .K(n77), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]), .QN(n172) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n77), .K(n77), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n171) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n77), .K(n77), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n170) );
  GTECH_FJK1S state_reg_0_ ( .J(n77), .K(n77), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n77), .K(n77), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n77), .K(n77), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n77), .K(n77), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n77), .K(n77), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n77), .K(n77), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n77), .K(n77), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n77), .K(n77), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n77), .K(n77), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n77), .K(n77), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n77), .K(n77), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n161) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n77), .K(n77), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n160) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n77), .K(n77), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n159) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n77), .K(n77), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n158) );
  GTECH_FJK1S update_digits_reg ( .J(n77), .K(n77), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n16) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n77), .K(n77), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n184) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n77), .K(n77), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n17) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n77), .K(n77), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n77), .K(n77), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n77), .K(n77), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n77), .K(n77), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n21) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n77), .K(n77), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n77), .K(n77), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n23) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n77), .K(n77), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n77), .K(n77), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n77), .K(n77), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n77), .K(n77), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n77), .K(n77), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n29) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n33) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n34) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n155) );
  GTECH_ZERO U166 ( .Z(n77) );
  GTECH_OR_NOT U167 ( .A(reset), .B(n16), .Z(seven_segment0_N9) );
  GTECH_AND2 U168 ( .A(ten_count[0]), .B(n185), .Z(seven_segment0_N8) );
  GTECH_AND2 U169 ( .A(n155), .B(n185), .Z(seven_segment0_N6) );
  GTECH_AND2 U170 ( .A(unit_count[3]), .B(n185), .Z(seven_segment0_N22) );
  GTECH_AND2 U171 ( .A(unit_count[2]), .B(n185), .Z(seven_segment0_N20) );
  GTECH_AND2 U172 ( .A(unit_count[1]), .B(n185), .Z(seven_segment0_N18) );
  GTECH_AND2 U173 ( .A(unit_count[0]), .B(n185), .Z(seven_segment0_N16) );
  GTECH_AND2 U174 ( .A(ten_count[3]), .B(n185), .Z(seven_segment0_N14) );
  GTECH_AND2 U175 ( .A(ten_count[2]), .B(n185), .Z(seven_segment0_N12) );
  GTECH_AND2 U176 ( .A(ten_count[1]), .B(n185), .Z(seven_segment0_N10) );
  GTECH_OR_NOT U177 ( .A(n186), .B(n187), .Z(segments[6]) );
  GTECH_NOT U178 ( .A(n188), .Z(n186) );
  GTECH_NOT U179 ( .A(n189), .Z(segments[4]) );
  GTECH_NAND3 U180 ( .A(n188), .B(n189), .C(n190), .Z(segments[3]) );
  GTECH_OAI21 U181 ( .A(n191), .B(n192), .C(n193), .Z(n189) );
  GTECH_NOT U182 ( .A(n194), .Z(n192) );
  GTECH_OR_NOT U183 ( .A(segments[5]), .B(n195), .Z(segments[2]) );
  GTECH_OAI21 U184 ( .A(n196), .B(n194), .C(n187), .Z(segments[5]) );
  GTECH_AND2 U185 ( .A(n190), .B(n197), .Z(n187) );
  GTECH_MUX2 U186 ( .A(n198), .B(n194), .S(n199), .Z(n197) );
  GTECH_OR_NOT U187 ( .A(n200), .B(n193), .Z(n198) );
  GTECH_NAND3 U188 ( .A(n201), .B(n188), .C(n195), .Z(segments[1]) );
  GTECH_NOT U189 ( .A(n202), .Z(n195) );
  GTECH_OAI21 U190 ( .A(n203), .B(n193), .C(n194), .Z(n202) );
  GTECH_NAND3 U191 ( .A(n193), .B(n204), .C(n205), .Z(n201) );
  GTECH_NAND3 U192 ( .A(n190), .B(n188), .C(n206), .Z(segments[0]) );
  GTECH_OA22 U193 ( .A(n207), .B(n194), .C(n203), .D(n193), .Z(n206) );
  GTECH_NOT U194 ( .A(n196), .Z(n193) );
  GTECH_OR_NOT U195 ( .A(n208), .B(n200), .Z(n194) );
  GTECH_OR_NOT U196 ( .A(n209), .B(n191), .Z(n188) );
  GTECH_NOT U197 ( .A(n203), .Z(n191) );
  GTECH_OR_NOT U198 ( .A(n204), .B(n205), .Z(n203) );
  GTECH_NAND3 U199 ( .A(n209), .B(n204), .C(n207), .Z(n190) );
  GTECH_NOT U200 ( .A(n210), .Z(n207) );
  GTECH_OR_NOT U201 ( .A(n199), .B(n196), .Z(n210) );
  GTECH_MUX2 U202 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n155), .Z(n196) );
  GTECH_NOT U203 ( .A(n205), .Z(n199) );
  GTECH_MUX2 U204 ( .A(n34), .B(n30), .S(n155), .Z(n205) );
  GTECH_NOT U205 ( .A(n208), .Z(n204) );
  GTECH_MUX2 U206 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n155), .Z(n208) );
  GTECH_NOT U207 ( .A(n200), .Z(n209) );
  GTECH_MUX2 U208 ( .A(n33), .B(n29), .S(n155), .Z(n200) );
  GTECH_AO21 U209 ( .A(period[0]), .B(n211), .C(reset), .Z(N9) );
  GTECH_AND2 U210 ( .A(period[11]), .B(n211), .Z(N21) );
  GTECH_OR_NOT U211 ( .A(n211), .B(n185), .Z(N20) );
  GTECH_AO21 U212 ( .A(period[10]), .B(n211), .C(reset), .Z(N19) );
  GTECH_AND2 U213 ( .A(period[9]), .B(n211), .Z(N18) );
  GTECH_AND2 U214 ( .A(period[8]), .B(n211), .Z(N17) );
  GTECH_AND2 U215 ( .A(N170), .B(n212), .Z(N168) );
  GTECH_OR_NOT U216 ( .A(n213), .B(n214), .Z(N167) );
  GTECH_AND2 U217 ( .A(N170), .B(n215), .Z(N166) );
  GTECH_AND2 U218 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U219 ( .A(N170), .B(n216), .Z(N162) );
  GTECH_NOT U220 ( .A(n217), .Z(N170) );
  GTECH_OR_NOT U221 ( .A(reset), .B(n213), .Z(n217) );
  GTECH_NOT U222 ( .A(n218), .Z(n213) );
  GTECH_MUX2 U223 ( .A(n219), .B(n220), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U224 ( .A(ten_count[2]), .B(n221), .C(n222), .Z(n220) );
  GTECH_NOT U225 ( .A(n223), .Z(n222) );
  GTECH_AND2 U226 ( .A(n224), .B(ten_count[2]), .Z(n219) );
  GTECH_AO21 U227 ( .A(period[7]), .B(n211), .C(reset), .Z(N16) );
  GTECH_OAI21 U228 ( .A(n225), .B(n226), .C(n227), .Z(N159) );
  GTECH_MUX2 U229 ( .A(n224), .B(n223), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U230 ( .A(ten_count[1]), .B(n221), .C(n228), .Z(n223) );
  GTECH_NOT U231 ( .A(n229), .Z(n224) );
  GTECH_NAND3 U232 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n229) );
  GTECH_MUX2 U233 ( .A(n230), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U234 ( .A(N152), .B(ten_count[0]), .Z(n230) );
  GTECH_NOT U235 ( .A(n228), .Z(N154) );
  GTECH_OR_NOT U236 ( .A(ten_count[0]), .B(N152), .Z(n228) );
  GTECH_OR_NOT U237 ( .A(n231), .B(n232), .Z(N151) );
  GTECH_OA21 U238 ( .A(n14), .B(n233), .C(n214), .Z(n232) );
  GTECH_NOT U239 ( .A(n234), .Z(n214) );
  GTECH_OAI21 U240 ( .A(n235), .B(n225), .C(n185), .Z(n234) );
  GTECH_AND2 U241 ( .A(period[6]), .B(n211), .Z(N15) );
  GTECH_OAI21 U242 ( .A(n221), .B(n233), .C(n236), .Z(N148) );
  GTECH_MUX2 U243 ( .A(n237), .B(n238), .S(n170), .Z(n236) );
  GTECH_OR3 U244 ( .A(n171), .B(n239), .C(n240), .Z(n238) );
  GTECH_AND_NOT U245 ( .A(n241), .B(n242), .Z(n237) );
  GTECH_MUX2 U246 ( .A(n221), .B(n239), .S(n171), .Z(n241) );
  GTECH_NAND3 U247 ( .A(n243), .B(n218), .C(n227), .Z(N147) );
  GTECH_OA21 U248 ( .A(n231), .B(n244), .C(n185), .Z(n227) );
  GTECH_OR_NOT U249 ( .A(n14), .B(n233), .Z(n244) );
  GTECH_NAND4 U250 ( .A(n184), .B(n171), .C(n170), .D(n245), .Z(n233) );
  GTECH_NOT U251 ( .A(n15), .Z(n231) );
  GTECH_OR_NOT U252 ( .A(n15), .B(n14), .Z(n218) );
  GTECH_NAND3 U253 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n243) );
  GTECH_MUX2 U254 ( .A(n242), .B(n246), .S(n171), .Z(N146) );
  GTECH_OAI21 U255 ( .A(n240), .B(n239), .C(n247), .Z(n246) );
  GTECH_OAI21 U256 ( .A(n248), .B(n239), .C(n249), .Z(n242) );
  GTECH_AO21 U257 ( .A(n245), .B(n184), .C(n221), .Z(n249) );
  GTECH_NOT U258 ( .A(n240), .Z(n248) );
  GTECH_NAND3 U259 ( .A(n212), .B(n250), .C(n251), .Z(n240) );
  GTECH_NOT U260 ( .A(n184), .Z(n250) );
  GTECH_OR_NOT U261 ( .A(n252), .B(n247), .Z(N144) );
  GTECH_NAND3 U262 ( .A(N152), .B(n245), .C(n184), .Z(n247) );
  GTECH_MUX2 U263 ( .A(n253), .B(n254), .S(n184), .Z(n252) );
  GTECH_AND3 U264 ( .A(n212), .B(N150), .C(n251), .Z(n254) );
  GTECH_NOT U265 ( .A(n23), .Z(n212) );
  GTECH_OAI21 U266 ( .A(n245), .B(n221), .C(n255), .Z(n253) );
  GTECH_OAI21 U267 ( .A(n23), .B(n256), .C(N150), .Z(n255) );
  GTECH_OR_NOT U268 ( .A(n23), .B(n257), .Z(n245) );
  GTECH_OAI21 U269 ( .A(n239), .B(n258), .C(n259), .Z(N142) );
  GTECH_MUX2 U270 ( .A(n260), .B(n261), .S(n23), .Z(n259) );
  GTECH_OR_NOT U271 ( .A(n262), .B(N152), .Z(n261) );
  GTECH_NOT U272 ( .A(n221), .Z(N152) );
  GTECH_XOR2 U273 ( .A(n23), .B(n251), .Z(n258) );
  GTECH_NOT U274 ( .A(n256), .Z(n251) );
  GTECH_NAND3 U275 ( .A(n216), .B(n215), .C(sub_85_carry_2_), .Z(n256) );
  GTECH_NOT U276 ( .A(n21), .Z(n215) );
  GTECH_OR_NOT U277 ( .A(n263), .B(n264), .Z(N140) );
  GTECH_MUX2 U278 ( .A(n265), .B(n266), .S(n21), .Z(n264) );
  GTECH_NAND3 U279 ( .A(sub_85_carry_2_), .B(n216), .C(N150), .Z(n266) );
  GTECH_NOT U280 ( .A(n239), .Z(N150) );
  GTECH_NOT U281 ( .A(n17), .Z(n216) );
  GTECH_AND2 U282 ( .A(n267), .B(n268), .Z(n265) );
  GTECH_MUX2 U283 ( .A(n239), .B(n221), .S(sub_85_carry_2_), .Z(n267) );
  GTECH_NOT U284 ( .A(n260), .Z(n263) );
  GTECH_OR_NOT U285 ( .A(n221), .B(n262), .Z(n260) );
  GTECH_NOT U286 ( .A(n257), .Z(n262) );
  GTECH_OR_NOT U287 ( .A(sub_85_carry_2_), .B(n21), .Z(n257) );
  GTECH_AO21 U288 ( .A(period[5]), .B(n211), .C(reset), .Z(N14) );
  GTECH_MUX2 U289 ( .A(n269), .B(n270), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U290 ( .A(n268), .Z(n270) );
  GTECH_OAI21 U291 ( .A(n17), .B(n239), .C(n221), .Z(n269) );
  GTECH_OAI21 U292 ( .A(n17), .B(n221), .C(n268), .Z(N136) );
  GTECH_OR_NOT U293 ( .A(n239), .B(n17), .Z(n268) );
  GTECH_OR_NOT U294 ( .A(reset), .B(n271), .Z(n239) );
  GTECH_OR_NOT U295 ( .A(N169), .B(n15), .Z(n221) );
  GTECH_OR_NOT U296 ( .A(n14), .B(n185), .Z(N169) );
  GTECH_AND2 U297 ( .A(n272), .B(n273), .Z(N134) );
  GTECH_OAI21 U298 ( .A(n169), .B(n274), .C(n158), .Z(n273) );
  GTECH_OR_NOT U299 ( .A(n271), .B(n185), .Z(N133) );
  GTECH_NOT U300 ( .A(reset), .Z(n185) );
  GTECH_NOT U301 ( .A(n226), .Z(n271) );
  GTECH_OR_NOT U302 ( .A(n235), .B(n15), .Z(n226) );
  GTECH_NOT U303 ( .A(n14), .Z(n235) );
  GTECH_AND2 U304 ( .A(n275), .B(n272), .Z(N132) );
  GTECH_XOR2 U305 ( .A(n274), .B(n169), .Z(n275) );
  GTECH_OR_NOT U306 ( .A(n159), .B(n276), .Z(n274) );
  GTECH_NOT U307 ( .A(n277), .Z(n276) );
  GTECH_AND2 U308 ( .A(n278), .B(n272), .Z(N130) );
  GTECH_XOR2 U309 ( .A(n277), .B(n159), .Z(n278) );
  GTECH_OR_NOT U310 ( .A(n160), .B(n279), .Z(n277) );
  GTECH_NOT U311 ( .A(n280), .Z(n279) );
  GTECH_AND2 U312 ( .A(period[4]), .B(n211), .Z(N13) );
  GTECH_AND2 U313 ( .A(n281), .B(n272), .Z(N128) );
  GTECH_XOR2 U314 ( .A(n280), .B(n160), .Z(n281) );
  GTECH_OR_NOT U315 ( .A(n161), .B(n282), .Z(n280) );
  GTECH_NOT U316 ( .A(n283), .Z(n282) );
  GTECH_AND2 U317 ( .A(n284), .B(n272), .Z(N126) );
  GTECH_XOR2 U318 ( .A(n283), .B(n161), .Z(n284) );
  GTECH_OR_NOT U319 ( .A(n162), .B(n285), .Z(n283) );
  GTECH_NOT U320 ( .A(n286), .Z(n285) );
  GTECH_AND2 U321 ( .A(n287), .B(n272), .Z(N124) );
  GTECH_XOR2 U322 ( .A(n286), .B(n162), .Z(n287) );
  GTECH_OR_NOT U323 ( .A(n163), .B(n288), .Z(n286) );
  GTECH_NOT U324 ( .A(n289), .Z(n288) );
  GTECH_AND2 U325 ( .A(n290), .B(n272), .Z(N122) );
  GTECH_XOR2 U326 ( .A(n289), .B(n163), .Z(n290) );
  GTECH_OR_NOT U327 ( .A(n164), .B(n291), .Z(n289) );
  GTECH_NOT U328 ( .A(n292), .Z(n291) );
  GTECH_AND2 U329 ( .A(n293), .B(n272), .Z(N120) );
  GTECH_XOR2 U330 ( .A(n292), .B(n164), .Z(n293) );
  GTECH_OR_NOT U331 ( .A(n165), .B(n294), .Z(n292) );
  GTECH_NOT U332 ( .A(n295), .Z(n294) );
  GTECH_AO21 U333 ( .A(period[3]), .B(n211), .C(reset), .Z(N12) );
  GTECH_AND2 U334 ( .A(n296), .B(n272), .Z(N118) );
  GTECH_XOR2 U335 ( .A(n295), .B(n165), .Z(n296) );
  GTECH_NAND3 U336 ( .A(n297), .B(n298), .C(n299), .Z(n295) );
  GTECH_OAI2N2 U337 ( .A(n300), .B(n301), .C(N112), .D(n299), .Z(N116) );
  GTECH_NOT U338 ( .A(n166), .Z(n299) );
  GTECH_MUX2 U339 ( .A(n297), .B(n302), .S(n166), .Z(n301) );
  GTECH_OR_NOT U340 ( .A(n168), .B(n297), .Z(n302) );
  GTECH_NOT U341 ( .A(n167), .Z(n297) );
  GTECH_MUX2 U342 ( .A(N112), .B(n303), .S(n167), .Z(N114) );
  GTECH_AND2 U343 ( .A(n272), .B(n298), .Z(n303) );
  GTECH_NOT U344 ( .A(n304), .Z(N112) );
  GTECH_OR_NOT U345 ( .A(n298), .B(n272), .Z(n304) );
  GTECH_NOT U346 ( .A(n300), .Z(n272) );
  GTECH_OR_NOT U347 ( .A(reset), .B(n225), .Z(n300) );
  GTECH_OAI21 U348 ( .A(n305), .B(n306), .C(n307), .Z(n225) );
  GTECH_AOI2N2 U349 ( .A(n158), .B(update_period[11]), .C(n308), .D(n309), .Z(
        n307) );
  GTECH_AOI222 U350 ( .A(update_period[9]), .B(n159), .C(n310), .D(
        update_period[8]), .E(update_period[10]), .F(n169), .Z(n309) );
  GTECH_OA21 U351 ( .A(n159), .B(update_period[9]), .C(n160), .Z(n310) );
  GTECH_OAI21 U352 ( .A(update_period[8]), .B(n160), .C(n311), .Z(n306) );
  GTECH_NOT U353 ( .A(n308), .Z(n311) );
  GTECH_OAI2N2 U354 ( .A(update_period[11]), .B(n158), .C(n312), .D(n313), .Z(
        n308) );
  GTECH_NOT U355 ( .A(update_period[10]), .Z(n313) );
  GTECH_NOT U356 ( .A(n169), .Z(n312) );
  GTECH_OAI2N2 U357 ( .A(n159), .B(update_period[9]), .C(n314), .D(n315), .Z(
        n305) );
  GTECH_AOI2N2 U358 ( .A(update_period[7]), .B(n161), .C(n316), .D(n317), .Z(
        n315) );
  GTECH_OAI21 U359 ( .A(update_period[7]), .B(n161), .C(n162), .Z(n317) );
  GTECH_OA21 U360 ( .A(n318), .B(n319), .C(n320), .Z(n314) );
  GTECH_OR3 U361 ( .A(n319), .B(n321), .C(n322), .Z(n320) );
  GTECH_OAI2N2 U362 ( .A(n163), .B(update_period[5]), .C(n323), .D(n324), .Z(
        n322) );
  GTECH_AOI22 U363 ( .A(n165), .B(update_period[3]), .C(n325), .D(n166), .Z(
        n324) );
  GTECH_AND2 U364 ( .A(n326), .B(update_period[2]), .Z(n325) );
  GTECH_NAND3 U365 ( .A(n327), .B(n328), .C(n326), .Z(n323) );
  GTECH_OR_NOT U366 ( .A(n165), .B(n329), .Z(n326) );
  GTECH_NOT U367 ( .A(update_period[3]), .Z(n329) );
  GTECH_OAI2N2 U368 ( .A(n298), .B(n172), .C(update_period[1]), .D(n167), .Z(
        n328) );
  GTECH_OA22 U369 ( .A(n167), .B(update_period[1]), .C(n166), .D(
        update_period[2]), .Z(n327) );
  GTECH_NOR2 U370 ( .A(n164), .B(update_period[4]), .Z(n321) );
  GTECH_OAI2N2 U371 ( .A(update_period[7]), .B(n161), .C(n330), .D(n316), .Z(
        n319) );
  GTECH_NOT U372 ( .A(update_period[6]), .Z(n316) );
  GTECH_NOT U373 ( .A(n162), .Z(n330) );
  GTECH_AOI22 U374 ( .A(n163), .B(update_period[5]), .C(update_period[4]), .D(
        n331), .Z(n318) );
  GTECH_OA21 U375 ( .A(update_period[5]), .B(n163), .C(n164), .Z(n331) );
  GTECH_NOT U376 ( .A(n168), .Z(n298) );
  GTECH_AO21 U377 ( .A(period[2]), .B(n211), .C(reset), .Z(N11) );
  GTECH_AO21 U378 ( .A(period[1]), .B(n211), .C(reset), .Z(N10) );
  GTECH_NOT U379 ( .A(n332), .Z(n211) );
  GTECH_OR_NOT U380 ( .A(reset), .B(period_load), .Z(n332) );
endmodule

