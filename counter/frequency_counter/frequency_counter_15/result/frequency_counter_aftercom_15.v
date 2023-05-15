
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
         seven_segment0_N8, seven_segment0_N6, n13, n14, n15, n16, n18, n20,
         n22, n27, n28, n31, n32, n76, n154, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n173, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346;
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
        .CP(clk), .Q(edge_counter[1]), .QN(n18) );
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
  GTECH_MUX2 U187 ( .A(n194), .B(n199), .S(n200), .Z(n198) );
  GTECH_NAND2 U188 ( .A(n193), .B(n201), .Z(n199) );
  GTECH_NAND3 U189 ( .A(n202), .B(n188), .C(n195), .Z(segments[1]) );
  GTECH_NOT U190 ( .A(n203), .Z(n195) );
  GTECH_OAI21 U191 ( .A(n204), .B(n193), .C(n194), .Z(n203) );
  GTECH_NAND3 U192 ( .A(n193), .B(n205), .C(n200), .Z(n202) );
  GTECH_NAND3 U193 ( .A(n190), .B(n188), .C(n206), .Z(segments[0]) );
  GTECH_OA22 U194 ( .A(n207), .B(n194), .C(n204), .D(n193), .Z(n206) );
  GTECH_NOT U195 ( .A(n197), .Z(n193) );
  GTECH_NAND2 U196 ( .A(n208), .B(n205), .Z(n194) );
  GTECH_NAND2 U197 ( .A(n191), .B(n208), .Z(n188) );
  GTECH_NOT U198 ( .A(n204), .Z(n191) );
  GTECH_NAND2 U199 ( .A(n209), .B(n200), .Z(n204) );
  GTECH_NAND3 U200 ( .A(n201), .B(n205), .C(n207), .Z(n190) );
  GTECH_NOT U201 ( .A(n210), .Z(n207) );
  GTECH_NAND2 U202 ( .A(n197), .B(n200), .Z(n210) );
  GTECH_MUX2 U203 ( .A(n32), .B(n28), .S(n154), .Z(n200) );
  GTECH_MUX2 U204 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n154), .Z(n197) );
  GTECH_NOT U205 ( .A(n209), .Z(n205) );
  GTECH_MUX2 U206 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n154), .Z(n209) );
  GTECH_NOT U207 ( .A(n208), .Z(n201) );
  GTECH_MUX2 U208 ( .A(n31), .B(n27), .S(n154), .Z(n208) );
  GTECH_AO21 U209 ( .A(period[0]), .B(n211), .C(reset), .Z(N9) );
  GTECH_AND2 U210 ( .A(period[11]), .B(n211), .Z(N21) );
  GTECH_NAND2 U211 ( .A(n186), .B(n212), .Z(N20) );
  GTECH_AO21 U212 ( .A(period[10]), .B(n211), .C(reset), .Z(N19) );
  GTECH_AND2 U213 ( .A(period[9]), .B(n211), .Z(N18) );
  GTECH_AND2 U214 ( .A(period[8]), .B(n211), .Z(N17) );
  GTECH_AND2 U215 ( .A(N170), .B(n213), .Z(N168) );
  GTECH_NAND2 U216 ( .A(n214), .B(n215), .Z(N167) );
  GTECH_AND2 U217 ( .A(N170), .B(n216), .Z(N166) );
  GTECH_AND2 U218 ( .A(N170), .B(n217), .Z(N164) );
  GTECH_AND2 U219 ( .A(N170), .B(n218), .Z(N162) );
  GTECH_NOT U220 ( .A(n219), .Z(N170) );
  GTECH_NAND2 U221 ( .A(n220), .B(n186), .Z(n219) );
  GTECH_NOT U222 ( .A(n215), .Z(n220) );
  GTECH_MUX2 U223 ( .A(n221), .B(n222), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U224 ( .A(ten_count[2]), .B(n223), .C(n224), .Z(n222) );
  GTECH_NOT U225 ( .A(n225), .Z(n224) );
  GTECH_AND2 U226 ( .A(n226), .B(ten_count[2]), .Z(n221) );
  GTECH_AO21 U227 ( .A(period[7]), .B(n211), .C(reset), .Z(N16) );
  GTECH_OAI21 U228 ( .A(n227), .B(n228), .C(n229), .Z(N159) );
  GTECH_MUX2 U229 ( .A(n226), .B(n225), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U230 ( .A(ten_count[1]), .B(n223), .C(n230), .Z(n225) );
  GTECH_NOT U231 ( .A(n231), .Z(n226) );
  GTECH_NAND3 U232 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n231) );
  GTECH_MUX2 U233 ( .A(n232), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U234 ( .A(N152), .B(ten_count[0]), .Z(n232) );
  GTECH_NOT U235 ( .A(n230), .Z(N154) );
  GTECH_NAND2 U236 ( .A(N152), .B(n233), .Z(n230) );
  GTECH_NOT U237 ( .A(ten_count[0]), .Z(n233) );
  GTECH_NAND2 U238 ( .A(n234), .B(n158), .Z(N151) );
  GTECH_OA21 U239 ( .A(n14), .B(n235), .C(n214), .Z(n234) );
  GTECH_NOT U240 ( .A(n236), .Z(n214) );
  GTECH_OAI21 U241 ( .A(n237), .B(n227), .C(n186), .Z(n236) );
  GTECH_AND2 U242 ( .A(period[6]), .B(n211), .Z(N15) );
  GTECH_OAI21 U243 ( .A(n223), .B(n235), .C(n238), .Z(N148) );
  GTECH_MUX2 U244 ( .A(n239), .B(n240), .S(n170), .Z(n238) );
  GTECH_OR3 U245 ( .A(n171), .B(n241), .C(n242), .Z(n240) );
  GTECH_AND_NOT U246 ( .A(n243), .B(n244), .Z(n239) );
  GTECH_MUX2 U247 ( .A(n223), .B(n241), .S(n171), .Z(n243) );
  GTECH_NAND3 U248 ( .A(n245), .B(n215), .C(n229), .Z(N147) );
  GTECH_AND2 U249 ( .A(n186), .B(n246), .Z(n229) );
  GTECH_NAND3 U250 ( .A(n237), .B(n158), .C(n235), .Z(n246) );
  GTECH_NAND4 U251 ( .A(n184), .B(n171), .C(n170), .D(n247), .Z(n235) );
  GTECH_NAND2 U252 ( .A(n14), .B(n248), .Z(n215) );
  GTECH_NOT U253 ( .A(n158), .Z(n248) );
  GTECH_NAND3 U254 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n245) );
  GTECH_MUX2 U255 ( .A(n244), .B(n249), .S(n171), .Z(N146) );
  GTECH_OAI21 U256 ( .A(n242), .B(n241), .C(n250), .Z(n249) );
  GTECH_OAI21 U257 ( .A(n251), .B(n241), .C(n252), .Z(n244) );
  GTECH_AO21 U258 ( .A(n247), .B(n184), .C(n223), .Z(n252) );
  GTECH_NOT U259 ( .A(n242), .Z(n251) );
  GTECH_NAND3 U260 ( .A(n213), .B(n253), .C(n254), .Z(n242) );
  GTECH_NOT U261 ( .A(n184), .Z(n253) );
  GTECH_NAND2 U262 ( .A(n255), .B(n250), .Z(N144) );
  GTECH_NAND3 U263 ( .A(N152), .B(n247), .C(n184), .Z(n250) );
  GTECH_MUX2 U264 ( .A(n256), .B(n257), .S(n184), .Z(n255) );
  GTECH_NAND3 U265 ( .A(n254), .B(n213), .C(N150), .Z(n257) );
  GTECH_OA21 U266 ( .A(n223), .B(n247), .C(n258), .Z(n256) );
  GTECH_OAI21 U267 ( .A(n22), .B(n259), .C(N150), .Z(n258) );
  GTECH_OAI21 U268 ( .A(n217), .B(n216), .C(n213), .Z(n247) );
  GTECH_NOT U269 ( .A(n22), .Z(n213) );
  GTECH_MUX2 U270 ( .A(n260), .B(n261), .S(n22), .Z(N142) );
  GTECH_OAI21 U271 ( .A(n259), .B(n241), .C(n262), .Z(n261) );
  GTECH_OAI21 U272 ( .A(n217), .B(n216), .C(N152), .Z(n262) );
  GTECH_OAI21 U273 ( .A(n254), .B(n241), .C(n263), .Z(n260) );
  GTECH_NOT U274 ( .A(n259), .Z(n254) );
  GTECH_NAND3 U275 ( .A(n217), .B(n216), .C(n218), .Z(n259) );
  GTECH_NOT U276 ( .A(n20), .Z(n216) );
  GTECH_NAND2 U277 ( .A(n264), .B(n263), .Z(N140) );
  GTECH_NAND3 U278 ( .A(n18), .B(N152), .C(n20), .Z(n263) );
  GTECH_NOT U279 ( .A(n223), .Z(N152) );
  GTECH_MUX2 U280 ( .A(n265), .B(n266), .S(n20), .Z(n264) );
  GTECH_NAND3 U281 ( .A(n218), .B(n217), .C(N150), .Z(n266) );
  GTECH_NOT U282 ( .A(n18), .Z(n217) );
  GTECH_NOT U283 ( .A(n16), .Z(n218) );
  GTECH_AND2 U284 ( .A(n267), .B(n268), .Z(n265) );
  GTECH_MUX2 U285 ( .A(n223), .B(n241), .S(n18), .Z(n267) );
  GTECH_AO21 U286 ( .A(period[5]), .B(n211), .C(reset), .Z(N14) );
  GTECH_MUX2 U287 ( .A(n269), .B(n270), .S(n18), .Z(N138) );
  GTECH_OAI21 U288 ( .A(n16), .B(n241), .C(n223), .Z(n270) );
  GTECH_NOT U289 ( .A(n268), .Z(n269) );
  GTECH_OAI21 U290 ( .A(n16), .B(n223), .C(n268), .Z(N136) );
  GTECH_NAND2 U291 ( .A(n16), .B(N150), .Z(n268) );
  GTECH_NOT U292 ( .A(n241), .Z(N150) );
  GTECH_NAND2 U293 ( .A(n271), .B(n186), .Z(n241) );
  GTECH_NOT U294 ( .A(n228), .Z(n271) );
  GTECH_NAND2 U295 ( .A(n158), .B(n272), .Z(n223) );
  GTECH_NOT U296 ( .A(N169), .Z(n272) );
  GTECH_NAND2 U297 ( .A(n186), .B(n237), .Z(N169) );
  GTECH_NOT U298 ( .A(n14), .Z(n237) );
  GTECH_AND2 U299 ( .A(n273), .B(n274), .Z(N134) );
  GTECH_OAI21 U300 ( .A(n169), .B(n275), .C(n185), .Z(n274) );
  GTECH_NAND2 U301 ( .A(n186), .B(n228), .Z(N133) );
  GTECH_NAND2 U302 ( .A(n158), .B(n14), .Z(n228) );
  GTECH_AND2 U303 ( .A(n276), .B(n273), .Z(N132) );
  GTECH_XOR2 U304 ( .A(n275), .B(n169), .Z(n276) );
  GTECH_NAND2 U305 ( .A(n277), .B(n278), .Z(n275) );
  GTECH_NOT U306 ( .A(n279), .Z(n277) );
  GTECH_AND2 U307 ( .A(n280), .B(n273), .Z(N130) );
  GTECH_XOR2 U308 ( .A(n279), .B(n159), .Z(n280) );
  GTECH_NAND2 U309 ( .A(n281), .B(n282), .Z(n279) );
  GTECH_NOT U310 ( .A(n160), .Z(n282) );
  GTECH_NOT U311 ( .A(n283), .Z(n281) );
  GTECH_AND2 U312 ( .A(period[4]), .B(n211), .Z(N13) );
  GTECH_AND2 U313 ( .A(n284), .B(n273), .Z(N128) );
  GTECH_XOR2 U314 ( .A(n283), .B(n160), .Z(n284) );
  GTECH_NAND2 U315 ( .A(n285), .B(n286), .Z(n283) );
  GTECH_NOT U316 ( .A(n287), .Z(n285) );
  GTECH_AND2 U317 ( .A(n288), .B(n273), .Z(N126) );
  GTECH_XOR2 U318 ( .A(n287), .B(n161), .Z(n288) );
  GTECH_NAND2 U319 ( .A(n289), .B(n290), .Z(n287) );
  GTECH_NOT U320 ( .A(n162), .Z(n290) );
  GTECH_NOT U321 ( .A(n291), .Z(n289) );
  GTECH_AND2 U322 ( .A(n292), .B(n273), .Z(N124) );
  GTECH_XOR2 U323 ( .A(n291), .B(n162), .Z(n292) );
  GTECH_NAND2 U324 ( .A(n293), .B(n294), .Z(n291) );
  GTECH_NOT U325 ( .A(n163), .Z(n294) );
  GTECH_NOT U326 ( .A(n295), .Z(n293) );
  GTECH_AND2 U327 ( .A(n296), .B(n273), .Z(N122) );
  GTECH_XOR2 U328 ( .A(n295), .B(n163), .Z(n296) );
  GTECH_NAND2 U329 ( .A(n297), .B(n298), .Z(n295) );
  GTECH_NOT U330 ( .A(n164), .Z(n298) );
  GTECH_NOT U331 ( .A(n299), .Z(n297) );
  GTECH_AND2 U332 ( .A(n300), .B(n273), .Z(N120) );
  GTECH_XOR2 U333 ( .A(n299), .B(n164), .Z(n300) );
  GTECH_NAND2 U334 ( .A(n301), .B(n302), .Z(n299) );
  GTECH_NOT U335 ( .A(n303), .Z(n301) );
  GTECH_AO21 U336 ( .A(period[3]), .B(n211), .C(reset), .Z(N12) );
  GTECH_AND2 U337 ( .A(n304), .B(n273), .Z(N118) );
  GTECH_XOR2 U338 ( .A(n303), .B(n165), .Z(n304) );
  GTECH_NAND3 U339 ( .A(n305), .B(n306), .C(n307), .Z(n303) );
  GTECH_NOT U340 ( .A(n166), .Z(n307) );
  GTECH_OAI22 U341 ( .A(n166), .B(n308), .C(n309), .D(n310), .Z(N116) );
  GTECH_MUX2 U342 ( .A(n305), .B(n311), .S(n166), .Z(n310) );
  GTECH_NAND2 U343 ( .A(n305), .B(n306), .Z(n311) );
  GTECH_MUX2 U344 ( .A(N112), .B(n312), .S(n167), .Z(N114) );
  GTECH_AND2 U345 ( .A(n273), .B(n306), .Z(n312) );
  GTECH_NOT U346 ( .A(n168), .Z(n306) );
  GTECH_NOT U347 ( .A(n308), .Z(N112) );
  GTECH_NAND2 U348 ( .A(n273), .B(n168), .Z(n308) );
  GTECH_NOT U349 ( .A(n309), .Z(n273) );
  GTECH_NAND2 U350 ( .A(n227), .B(n186), .Z(n309) );
  GTECH_NOT U351 ( .A(n313), .Z(n227) );
  GTECH_AOI222 U352 ( .A(n314), .B(n315), .C(update_period[11]), .D(n185), .E(
        n316), .F(n317), .Z(n313) );
  GTECH_OAI2N2 U353 ( .A(n318), .B(n319), .C(n320), .D(n321), .Z(n316) );
  GTECH_OAI21 U354 ( .A(n322), .B(n278), .C(n323), .Z(n321) );
  GTECH_NAND3 U355 ( .A(n324), .B(update_period[8]), .C(n160), .Z(n323) );
  GTECH_AND3 U356 ( .A(n324), .B(n320), .C(n317), .Z(n315) );
  GTECH_NAND2 U357 ( .A(n325), .B(n326), .Z(n317) );
  GTECH_NOT U358 ( .A(n185), .Z(n326) );
  GTECH_NOT U359 ( .A(update_period[11]), .Z(n325) );
  GTECH_NAND2 U360 ( .A(n319), .B(n318), .Z(n320) );
  GTECH_NOT U361 ( .A(n169), .Z(n318) );
  GTECH_NOT U362 ( .A(update_period[10]), .Z(n319) );
  GTECH_NAND2 U363 ( .A(n278), .B(n322), .Z(n324) );
  GTECH_NOT U364 ( .A(update_period[9]), .Z(n322) );
  GTECH_NOT U365 ( .A(n159), .Z(n278) );
  GTECH_OA22 U366 ( .A(n160), .B(update_period[8]), .C(n327), .D(n328), .Z(
        n314) );
  GTECH_OAI21 U367 ( .A(n286), .B(n329), .C(n330), .Z(n328) );
  GTECH_NAND3 U368 ( .A(n331), .B(update_period[6]), .C(n162), .Z(n330) );
  GTECH_OAI21 U369 ( .A(n332), .B(n333), .C(n334), .Z(n327) );
  GTECH_OR3 U370 ( .A(n335), .B(n332), .C(n336), .Z(n334) );
  GTECH_OAI22 U371 ( .A(update_period[5]), .B(n163), .C(n337), .D(n338), .Z(
        n336) );
  GTECH_OAI21 U372 ( .A(n302), .B(n339), .C(n340), .Z(n338) );
  GTECH_NAND3 U373 ( .A(n341), .B(update_period[2]), .C(n166), .Z(n340) );
  GTECH_AND3 U374 ( .A(n342), .B(n343), .C(n341), .Z(n337) );
  GTECH_NAND2 U375 ( .A(n339), .B(n302), .Z(n341) );
  GTECH_NOT U376 ( .A(n165), .Z(n302) );
  GTECH_NOT U377 ( .A(update_period[3]), .Z(n339) );
  GTECH_OAI21 U378 ( .A(n344), .B(n305), .C(n173), .Z(n343) );
  GTECH_NOT U379 ( .A(n167), .Z(n305) );
  GTECH_OA21 U380 ( .A(n166), .B(update_period[2]), .C(n345), .Z(n342) );
  GTECH_OR_NOT U381 ( .A(n167), .B(n344), .Z(n345) );
  GTECH_NAND2 U382 ( .A(update_period[0]), .B(n168), .Z(n344) );
  GTECH_NOR2 U383 ( .A(update_period[4]), .B(n164), .Z(n335) );
  GTECH_OAI21 U384 ( .A(update_period[5]), .B(n163), .C(n346), .Z(n333) );
  GTECH_AO22 U385 ( .A(update_period[5]), .B(n163), .C(update_period[4]), .D(
        n164), .Z(n346) );
  GTECH_OAI21 U386 ( .A(update_period[6]), .B(n162), .C(n331), .Z(n332) );
  GTECH_NAND2 U387 ( .A(n329), .B(n286), .Z(n331) );
  GTECH_NOT U388 ( .A(n161), .Z(n286) );
  GTECH_NOT U389 ( .A(update_period[7]), .Z(n329) );
  GTECH_AO21 U390 ( .A(period[2]), .B(n211), .C(reset), .Z(N11) );
  GTECH_AO21 U391 ( .A(period[1]), .B(n211), .C(reset), .Z(N10) );
  GTECH_NOT U392 ( .A(n212), .Z(n211) );
  GTECH_NAND2 U393 ( .A(period_load), .B(n186), .Z(n212) );
  GTECH_NOT U394 ( .A(reset), .Z(n186) );
endmodule

