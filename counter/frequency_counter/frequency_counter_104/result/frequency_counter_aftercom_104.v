
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
         n23, n27, n29, n31, n33, n76, n157, sub_85_carry_2_, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341;
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
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n171) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n76), .K(n76), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n170) );
  GTECH_FJK1S state_reg_0_ ( .J(n76), .K(n76), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n76), .K(n76), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n15) );
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
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n158) );
  GTECH_FJK1S update_digits_reg ( .J(n76), .K(n76), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n16) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n76), .K(n76), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n184) );
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
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n29) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n33) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n157) );
  GTECH_ZERO U166 ( .Z(n76) );
  GTECH_OR_NOT U167 ( .A(reset), .B(n16), .Z(seven_segment0_N9) );
  GTECH_AND2 U168 ( .A(ten_count[0]), .B(n185), .Z(seven_segment0_N8) );
  GTECH_AND2 U169 ( .A(n157), .B(n185), .Z(seven_segment0_N6) );
  GTECH_AND2 U170 ( .A(unit_count[3]), .B(n185), .Z(seven_segment0_N22) );
  GTECH_AND2 U171 ( .A(unit_count[2]), .B(n185), .Z(seven_segment0_N20) );
  GTECH_AND2 U172 ( .A(unit_count[1]), .B(n185), .Z(seven_segment0_N18) );
  GTECH_AND2 U173 ( .A(unit_count[0]), .B(n185), .Z(seven_segment0_N16) );
  GTECH_AND2 U174 ( .A(ten_count[3]), .B(n185), .Z(seven_segment0_N14) );
  GTECH_AND2 U175 ( .A(ten_count[2]), .B(n185), .Z(seven_segment0_N12) );
  GTECH_AND2 U176 ( .A(ten_count[1]), .B(n185), .Z(seven_segment0_N10) );
  GTECH_NAND4 U177 ( .A(n186), .B(n187), .C(n188), .D(n189), .Z(segments[6])
         );
  GTECH_OR_NOT U178 ( .A(n190), .B(n191), .Z(segments[5]) );
  GTECH_OA21 U179 ( .A(n192), .B(n187), .C(n189), .Z(n191) );
  GTECH_NOT U180 ( .A(n193), .Z(n192) );
  GTECH_AO21 U181 ( .A(n194), .B(n195), .C(n196), .Z(segments[3]) );
  GTECH_OR_NOT U182 ( .A(segments[4]), .B(n188), .Z(n196) );
  GTECH_OR_NOT U183 ( .A(n197), .B(n198), .Z(segments[4]) );
  GTECH_NOT U184 ( .A(n187), .Z(n197) );
  GTECH_OR_NOT U185 ( .A(n194), .B(n199), .Z(n187) );
  GTECH_OR3 U186 ( .A(n190), .B(n200), .C(n201), .Z(segments[2]) );
  GTECH_AND_NOT U187 ( .A(n193), .B(n202), .Z(n200) );
  GTECH_OR_NOT U188 ( .A(n203), .B(n204), .Z(segments[1]) );
  GTECH_NOT U189 ( .A(n201), .Z(n204) );
  GTECH_NAND3 U190 ( .A(n189), .B(n205), .C(n206), .Z(n201) );
  GTECH_OR_NOT U191 ( .A(n202), .B(n194), .Z(n206) );
  GTECH_OR_NOT U192 ( .A(n194), .B(n195), .Z(n189) );
  GTECH_NOT U193 ( .A(n207), .Z(n195) );
  GTECH_NOT U194 ( .A(n188), .Z(n203) );
  GTECH_OR_NOT U195 ( .A(n190), .B(n208), .Z(segments[0]) );
  GTECH_OA21 U196 ( .A(n202), .B(n209), .C(n188), .Z(n208) );
  GTECH_OR_NOT U197 ( .A(n193), .B(n199), .Z(n188) );
  GTECH_NOT U198 ( .A(n202), .Z(n199) );
  GTECH_OR_NOT U199 ( .A(n210), .B(n211), .Z(n202) );
  GTECH_OR_NOT U200 ( .A(n212), .B(n186), .Z(n190) );
  GTECH_NOT U201 ( .A(n213), .Z(n186) );
  GTECH_OAI22 U202 ( .A(n207), .B(n209), .C(n211), .D(n205), .Z(n213) );
  GTECH_NOT U203 ( .A(n194), .Z(n209) );
  GTECH_NAND3 U204 ( .A(n210), .B(n193), .C(n211), .Z(n207) );
  GTECH_MUX2 U205 ( .A(n33), .B(n29), .S(n157), .Z(n211) );
  GTECH_NOT U206 ( .A(n198), .Z(n212) );
  GTECH_OR_NOT U207 ( .A(n194), .B(n214), .Z(n198) );
  GTECH_NOT U208 ( .A(n205), .Z(n214) );
  GTECH_OR_NOT U209 ( .A(n193), .B(n210), .Z(n205) );
  GTECH_MUX2 U210 ( .A(n31), .B(n27), .S(n157), .Z(n210) );
  GTECH_MUX2 U211 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n157), .Z(n193) );
  GTECH_MUX2 U212 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n157), .Z(n194) );
  GTECH_AO21 U213 ( .A(period[0]), .B(n215), .C(reset), .Z(N9) );
  GTECH_AND2 U214 ( .A(period[11]), .B(n215), .Z(N21) );
  GTECH_OR_NOT U215 ( .A(n215), .B(n185), .Z(N20) );
  GTECH_AO21 U216 ( .A(period[10]), .B(n215), .C(reset), .Z(N19) );
  GTECH_AND2 U217 ( .A(period[9]), .B(n215), .Z(N18) );
  GTECH_AND2 U218 ( .A(period[8]), .B(n215), .Z(N17) );
  GTECH_AND2 U219 ( .A(N170), .B(n216), .Z(N168) );
  GTECH_OR_NOT U220 ( .A(n217), .B(n218), .Z(N167) );
  GTECH_AND2 U221 ( .A(N170), .B(n219), .Z(N166) );
  GTECH_AND2 U222 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U223 ( .A(N170), .B(n220), .Z(N162) );
  GTECH_NOT U224 ( .A(n221), .Z(N170) );
  GTECH_OR_NOT U225 ( .A(reset), .B(n217), .Z(n221) );
  GTECH_NOT U226 ( .A(n222), .Z(n217) );
  GTECH_MUX2 U227 ( .A(n223), .B(n224), .S(ten_count[3]), .Z(N160) );
  GTECH_AO21 U228 ( .A(N152), .B(n225), .C(n226), .Z(n224) );
  GTECH_NOT U229 ( .A(ten_count[2]), .Z(n225) );
  GTECH_AND2 U230 ( .A(n227), .B(ten_count[2]), .Z(n223) );
  GTECH_AO21 U231 ( .A(period[7]), .B(n215), .C(reset), .Z(N16) );
  GTECH_AO21 U232 ( .A(n228), .B(n229), .C(n230), .Z(N159) );
  GTECH_MUX2 U233 ( .A(n227), .B(n226), .S(ten_count[2]), .Z(N158) );
  GTECH_AO21 U234 ( .A(N152), .B(n231), .C(N154), .Z(n226) );
  GTECH_NOT U235 ( .A(ten_count[1]), .Z(n231) );
  GTECH_NOT U236 ( .A(n232), .Z(n227) );
  GTECH_NAND3 U237 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n232) );
  GTECH_MUX2 U238 ( .A(n233), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U239 ( .A(N152), .B(ten_count[0]), .Z(n233) );
  GTECH_NOT U240 ( .A(n234), .Z(N154) );
  GTECH_OR_NOT U241 ( .A(ten_count[0]), .B(N152), .Z(n234) );
  GTECH_NAND3 U242 ( .A(n218), .B(n235), .C(n15), .Z(N151) );
  GTECH_OR2 U243 ( .A(n236), .B(n14), .Z(n235) );
  GTECH_NOT U244 ( .A(n237), .Z(n218) );
  GTECH_AO21 U245 ( .A(n229), .B(n14), .C(reset), .Z(n237) );
  GTECH_NOT U246 ( .A(n238), .Z(n229) );
  GTECH_AND2 U247 ( .A(period[6]), .B(n215), .Z(N15) );
  GTECH_NOT U248 ( .A(n239), .Z(N148) );
  GTECH_OA21 U249 ( .A(n236), .B(n240), .C(n241), .Z(n239) );
  GTECH_MUX2 U250 ( .A(n242), .B(n243), .S(n170), .Z(n241) );
  GTECH_OR3 U251 ( .A(n171), .B(n244), .C(n245), .Z(n243) );
  GTECH_AND_NOT U252 ( .A(n246), .B(n247), .Z(n242) );
  GTECH_MUX2 U253 ( .A(n240), .B(n244), .S(n171), .Z(n246) );
  GTECH_NAND3 U254 ( .A(n248), .B(n222), .C(n249), .Z(N147) );
  GTECH_NOT U255 ( .A(n230), .Z(n249) );
  GTECH_OR_NOT U256 ( .A(n250), .B(n185), .Z(n230) );
  GTECH_AND3 U257 ( .A(n236), .B(n251), .C(n15), .Z(n250) );
  GTECH_NAND4 U258 ( .A(n184), .B(n171), .C(n170), .D(n252), .Z(n236) );
  GTECH_OR_NOT U259 ( .A(n15), .B(n14), .Z(n222) );
  GTECH_NAND3 U260 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n248) );
  GTECH_MUX2 U261 ( .A(n247), .B(n253), .S(n171), .Z(N146) );
  GTECH_AO21 U262 ( .A(N150), .B(n254), .C(n255), .Z(n253) );
  GTECH_OAI22 U263 ( .A(n254), .B(n244), .C(n256), .D(n240), .Z(n247) );
  GTECH_AND2 U264 ( .A(n184), .B(n252), .Z(n256) );
  GTECH_NOT U265 ( .A(n245), .Z(n254) );
  GTECH_NAND3 U266 ( .A(n216), .B(n257), .C(n258), .Z(n245) );
  GTECH_NOT U267 ( .A(n184), .Z(n257) );
  GTECH_OR_NOT U268 ( .A(n255), .B(n259), .Z(N144) );
  GTECH_MUX2 U269 ( .A(n260), .B(n261), .S(n184), .Z(n259) );
  GTECH_NAND3 U270 ( .A(n258), .B(n216), .C(N150), .Z(n261) );
  GTECH_OA21 U271 ( .A(n240), .B(n252), .C(n262), .Z(n260) );
  GTECH_AO21 U272 ( .A(n258), .B(n216), .C(n244), .Z(n262) );
  GTECH_NOT U273 ( .A(n23), .Z(n216) );
  GTECH_NOT U274 ( .A(n263), .Z(n258) );
  GTECH_NOT U275 ( .A(n264), .Z(n255) );
  GTECH_NAND3 U276 ( .A(N152), .B(n252), .C(n184), .Z(n264) );
  GTECH_OR_NOT U277 ( .A(n23), .B(n265), .Z(n252) );
  GTECH_AO21 U278 ( .A(n266), .B(N150), .C(n267), .Z(N142) );
  GTECH_MUX2 U279 ( .A(n268), .B(n269), .S(n23), .Z(n267) );
  GTECH_AND2 U280 ( .A(N152), .B(n265), .Z(n269) );
  GTECH_XOR2 U281 ( .A(n263), .B(n23), .Z(n266) );
  GTECH_NAND3 U282 ( .A(n220), .B(n219), .C(sub_85_carry_2_), .Z(n263) );
  GTECH_NOT U283 ( .A(n21), .Z(n219) );
  GTECH_OR_NOT U284 ( .A(n268), .B(n270), .Z(N140) );
  GTECH_MUX2 U285 ( .A(n271), .B(n272), .S(n21), .Z(n270) );
  GTECH_NAND3 U286 ( .A(sub_85_carry_2_), .B(n220), .C(N150), .Z(n272) );
  GTECH_AND2 U287 ( .A(n273), .B(n274), .Z(n271) );
  GTECH_MUX2 U288 ( .A(n244), .B(n240), .S(sub_85_carry_2_), .Z(n273) );
  GTECH_NOT U289 ( .A(n275), .Z(n268) );
  GTECH_OR_NOT U290 ( .A(n240), .B(n276), .Z(n275) );
  GTECH_NOT U291 ( .A(n265), .Z(n276) );
  GTECH_OR_NOT U292 ( .A(sub_85_carry_2_), .B(n21), .Z(n265) );
  GTECH_AO21 U293 ( .A(period[5]), .B(n215), .C(reset), .Z(N14) );
  GTECH_MUX2 U294 ( .A(n277), .B(n278), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_AO21 U295 ( .A(N150), .B(n220), .C(N152), .Z(n277) );
  GTECH_NOT U296 ( .A(n244), .Z(N150) );
  GTECH_AO21 U297 ( .A(N152), .B(n220), .C(n278), .Z(N136) );
  GTECH_NOT U298 ( .A(n274), .Z(n278) );
  GTECH_OR_NOT U299 ( .A(n244), .B(n17), .Z(n274) );
  GTECH_OR_NOT U300 ( .A(reset), .B(n228), .Z(n244) );
  GTECH_NOT U301 ( .A(n17), .Z(n220) );
  GTECH_NOT U302 ( .A(n240), .Z(N152) );
  GTECH_OR_NOT U303 ( .A(N169), .B(n15), .Z(n240) );
  GTECH_OR_NOT U304 ( .A(n14), .B(n185), .Z(N169) );
  GTECH_AND_NOT U305 ( .A(n279), .B(n280), .Z(N134) );
  GTECH_OA21 U306 ( .A(n281), .B(n169), .C(n158), .Z(n280) );
  GTECH_OR_NOT U307 ( .A(n228), .B(n185), .Z(N133) );
  GTECH_NOT U308 ( .A(reset), .Z(n185) );
  GTECH_NOT U309 ( .A(n282), .Z(n228) );
  GTECH_OR_NOT U310 ( .A(n251), .B(n15), .Z(n282) );
  GTECH_NOT U311 ( .A(n14), .Z(n251) );
  GTECH_AND2 U312 ( .A(n283), .B(n279), .Z(N132) );
  GTECH_XOR2 U313 ( .A(n281), .B(n169), .Z(n283) );
  GTECH_OR_NOT U314 ( .A(n159), .B(n284), .Z(n281) );
  GTECH_NOT U315 ( .A(n285), .Z(n284) );
  GTECH_AND2 U316 ( .A(n286), .B(n279), .Z(N130) );
  GTECH_XOR2 U317 ( .A(n285), .B(n159), .Z(n286) );
  GTECH_OR_NOT U318 ( .A(n160), .B(n287), .Z(n285) );
  GTECH_NOT U319 ( .A(n288), .Z(n287) );
  GTECH_AND2 U320 ( .A(period[4]), .B(n215), .Z(N13) );
  GTECH_AND2 U321 ( .A(n289), .B(n279), .Z(N128) );
  GTECH_XOR2 U322 ( .A(n288), .B(n160), .Z(n289) );
  GTECH_OR_NOT U323 ( .A(n161), .B(n290), .Z(n288) );
  GTECH_NOT U324 ( .A(n291), .Z(n290) );
  GTECH_AND2 U325 ( .A(n292), .B(n279), .Z(N126) );
  GTECH_XOR2 U326 ( .A(n291), .B(n161), .Z(n292) );
  GTECH_OR_NOT U327 ( .A(n162), .B(n293), .Z(n291) );
  GTECH_NOT U328 ( .A(n294), .Z(n293) );
  GTECH_AND2 U329 ( .A(n295), .B(n279), .Z(N124) );
  GTECH_XOR2 U330 ( .A(n294), .B(n162), .Z(n295) );
  GTECH_OR_NOT U331 ( .A(n163), .B(n296), .Z(n294) );
  GTECH_NOT U332 ( .A(n297), .Z(n296) );
  GTECH_AND2 U333 ( .A(n298), .B(n279), .Z(N122) );
  GTECH_XOR2 U334 ( .A(n297), .B(n163), .Z(n298) );
  GTECH_OR_NOT U335 ( .A(n164), .B(n299), .Z(n297) );
  GTECH_NOT U336 ( .A(n300), .Z(n299) );
  GTECH_AND2 U337 ( .A(n301), .B(n279), .Z(N120) );
  GTECH_XOR2 U338 ( .A(n300), .B(n164), .Z(n301) );
  GTECH_OR_NOT U339 ( .A(n165), .B(n302), .Z(n300) );
  GTECH_NOT U340 ( .A(n303), .Z(n302) );
  GTECH_AO21 U341 ( .A(period[3]), .B(n215), .C(reset), .Z(N12) );
  GTECH_AND2 U342 ( .A(n304), .B(n279), .Z(N118) );
  GTECH_XOR2 U343 ( .A(n303), .B(n165), .Z(n304) );
  GTECH_NAND3 U344 ( .A(n305), .B(n306), .C(n307), .Z(n303) );
  GTECH_NOT U345 ( .A(n166), .Z(n307) );
  GTECH_OAI22 U346 ( .A(n166), .B(n308), .C(n309), .D(n310), .Z(N116) );
  GTECH_MUX2 U347 ( .A(n305), .B(n311), .S(n166), .Z(n310) );
  GTECH_OR_NOT U348 ( .A(n168), .B(n305), .Z(n311) );
  GTECH_NOT U349 ( .A(n167), .Z(n305) );
  GTECH_MUX2 U350 ( .A(N112), .B(n312), .S(n167), .Z(N114) );
  GTECH_AND2 U351 ( .A(n279), .B(n306), .Z(n312) );
  GTECH_NOT U352 ( .A(n308), .Z(N112) );
  GTECH_OR_NOT U353 ( .A(n306), .B(n279), .Z(n308) );
  GTECH_NOT U354 ( .A(n309), .Z(n279) );
  GTECH_OR_NOT U355 ( .A(reset), .B(n238), .Z(n309) );
  GTECH_AO21 U356 ( .A(n313), .B(n314), .C(n315), .Z(n238) );
  GTECH_OAI2N2 U357 ( .A(n316), .B(n317), .C(n158), .D(update_period[11]), .Z(
        n315) );
  GTECH_AOI222 U358 ( .A(update_period[10]), .B(n169), .C(update_period[9]), 
        .D(n159), .E(n318), .F(update_period[8]), .Z(n317) );
  GTECH_AND2 U359 ( .A(n160), .B(n314), .Z(n318) );
  GTECH_OR_NOT U360 ( .A(n159), .B(n319), .Z(n314) );
  GTECH_NOT U361 ( .A(update_period[9]), .Z(n319) );
  GTECH_NOR3 U362 ( .A(n320), .B(n316), .C(n321), .Z(n313) );
  GTECH_NOR2 U363 ( .A(n160), .B(update_period[8]), .Z(n321) );
  GTECH_OAI22 U364 ( .A(update_period[10]), .B(n169), .C(update_period[11]), 
        .D(n158), .Z(n316) );
  GTECH_AOI222 U365 ( .A(update_period[7]), .B(n161), .C(n322), .D(
        update_period[6]), .E(n323), .F(n324), .Z(n320) );
  GTECH_NOT U366 ( .A(n325), .Z(n324) );
  GTECH_AOI222 U367 ( .A(update_period[5]), .B(n163), .C(n326), .D(
        update_period[4]), .E(n327), .F(n328), .Z(n325) );
  GTECH_OA21 U368 ( .A(n164), .B(update_period[4]), .C(n329), .Z(n328) );
  GTECH_OA21 U369 ( .A(n330), .B(n331), .C(n332), .Z(n327) );
  GTECH_AO21 U370 ( .A(update_period[1]), .B(n167), .C(n333), .Z(n332) );
  GTECH_AO21 U371 ( .A(n334), .B(update_period[0]), .C(n330), .Z(n333) );
  GTECH_OA21 U372 ( .A(update_period[1]), .B(n167), .C(n168), .Z(n334) );
  GTECH_OA22 U373 ( .A(n166), .B(update_period[2]), .C(n165), .D(
        update_period[3]), .Z(n331) );
  GTECH_OA21 U374 ( .A(update_period[3]), .B(n165), .C(n335), .Z(n330) );
  GTECH_OAI2N2 U375 ( .A(n336), .B(n337), .C(n166), .D(update_period[2]), .Z(
        n335) );
  GTECH_NOT U376 ( .A(n165), .Z(n337) );
  GTECH_NOT U377 ( .A(update_period[3]), .Z(n336) );
  GTECH_AND2 U378 ( .A(n164), .B(n329), .Z(n326) );
  GTECH_OR_NOT U379 ( .A(n163), .B(n338), .Z(n329) );
  GTECH_NOT U380 ( .A(update_period[5]), .Z(n338) );
  GTECH_OA21 U381 ( .A(n162), .B(update_period[6]), .C(n339), .Z(n323) );
  GTECH_AND2 U382 ( .A(n339), .B(n162), .Z(n322) );
  GTECH_OR_NOT U383 ( .A(n161), .B(n340), .Z(n339) );
  GTECH_NOT U384 ( .A(update_period[7]), .Z(n340) );
  GTECH_NOT U385 ( .A(n168), .Z(n306) );
  GTECH_AO21 U386 ( .A(period[2]), .B(n215), .C(reset), .Z(N11) );
  GTECH_AO21 U387 ( .A(period[1]), .B(n215), .C(reset), .Z(N10) );
  GTECH_NOT U388 ( .A(n341), .Z(n215) );
  GTECH_OR_NOT U389 ( .A(reset), .B(period_load), .Z(n341) );
endmodule

