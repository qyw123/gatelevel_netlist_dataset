
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
         n22, n26, n27, n30, n31, n76, n154, n158, n159, n160, n161, n162,
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
         n339, n340, n341, n342, n343, n344, n345, n346, n347;
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
        seven_segment0_unit_count_reg[1]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
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
  GTECH_NAND3 U192 ( .A(n193), .B(n200), .C(n205), .Z(n202) );
  GTECH_NOT U193 ( .A(n197), .Z(n193) );
  GTECH_NAND3 U194 ( .A(n190), .B(n188), .C(n206), .Z(segments[0]) );
  GTECH_AOI2N2 U195 ( .A(n197), .B(n191), .C(n207), .D(n194), .Z(n206) );
  GTECH_NAND2 U196 ( .A(n205), .B(n208), .Z(n194) );
  GTECH_NAND2 U197 ( .A(n191), .B(n208), .Z(n188) );
  GTECH_NOT U198 ( .A(n204), .Z(n191) );
  GTECH_NAND2 U199 ( .A(n209), .B(n200), .Z(n204) );
  GTECH_NOT U200 ( .A(n205), .Z(n209) );
  GTECH_NAND3 U201 ( .A(n205), .B(n201), .C(n207), .Z(n190) );
  GTECH_NOT U202 ( .A(n210), .Z(n207) );
  GTECH_NAND2 U203 ( .A(n197), .B(n200), .Z(n210) );
  GTECH_NOT U204 ( .A(n211), .Z(n200) );
  GTECH_MUX2 U205 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n154), .Z(n211) );
  GTECH_MUX2 U206 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n154), .Z(n197) );
  GTECH_NOT U207 ( .A(n208), .Z(n201) );
  GTECH_MUX2 U208 ( .A(n31), .B(n27), .S(n154), .Z(n208) );
  GTECH_MUX2 U209 ( .A(n30), .B(n26), .S(n154), .Z(n205) );
  GTECH_AO21 U210 ( .A(period[0]), .B(n212), .C(reset), .Z(N9) );
  GTECH_AND2 U211 ( .A(period[11]), .B(n212), .Z(N21) );
  GTECH_NAND2 U212 ( .A(n186), .B(n213), .Z(N20) );
  GTECH_AO21 U213 ( .A(period[10]), .B(n212), .C(reset), .Z(N19) );
  GTECH_AND2 U214 ( .A(period[9]), .B(n212), .Z(N18) );
  GTECH_AND2 U215 ( .A(period[8]), .B(n212), .Z(N17) );
  GTECH_AND2 U216 ( .A(N170), .B(n214), .Z(N168) );
  GTECH_NAND2 U217 ( .A(n215), .B(n216), .Z(N167) );
  GTECH_AND2 U218 ( .A(N170), .B(n217), .Z(N166) );
  GTECH_AND2 U219 ( .A(N170), .B(n218), .Z(N164) );
  GTECH_AND2 U220 ( .A(N170), .B(n219), .Z(N162) );
  GTECH_NOT U221 ( .A(n220), .Z(N170) );
  GTECH_NAND2 U222 ( .A(n221), .B(n186), .Z(n220) );
  GTECH_NOT U223 ( .A(n216), .Z(n221) );
  GTECH_MUX2 U224 ( .A(n222), .B(n223), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U225 ( .A(ten_count[2]), .B(n224), .C(n225), .Z(n223) );
  GTECH_NOT U226 ( .A(n226), .Z(n225) );
  GTECH_AND2 U227 ( .A(n227), .B(ten_count[2]), .Z(n222) );
  GTECH_AO21 U228 ( .A(period[7]), .B(n212), .C(reset), .Z(N16) );
  GTECH_OAI21 U229 ( .A(n228), .B(n229), .C(n230), .Z(N159) );
  GTECH_MUX2 U230 ( .A(n227), .B(n226), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U231 ( .A(ten_count[1]), .B(n224), .C(n231), .Z(n226) );
  GTECH_NOT U232 ( .A(n232), .Z(n227) );
  GTECH_NAND3 U233 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n232) );
  GTECH_MUX2 U234 ( .A(n233), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U235 ( .A(N152), .B(ten_count[0]), .Z(n233) );
  GTECH_NOT U236 ( .A(n231), .Z(N154) );
  GTECH_NAND2 U237 ( .A(N152), .B(n234), .Z(n231) );
  GTECH_NOT U238 ( .A(ten_count[0]), .Z(n234) );
  GTECH_NAND2 U239 ( .A(n235), .B(n158), .Z(N151) );
  GTECH_OA21 U240 ( .A(n14), .B(n236), .C(n215), .Z(n235) );
  GTECH_NOT U241 ( .A(n237), .Z(n215) );
  GTECH_OAI21 U242 ( .A(n238), .B(n228), .C(n186), .Z(n237) );
  GTECH_AND2 U243 ( .A(period[6]), .B(n212), .Z(N15) );
  GTECH_OAI21 U244 ( .A(n224), .B(n236), .C(n239), .Z(N148) );
  GTECH_MUX2 U245 ( .A(n240), .B(n241), .S(n170), .Z(n239) );
  GTECH_OR3 U246 ( .A(n171), .B(n242), .C(n243), .Z(n241) );
  GTECH_AND_NOT U247 ( .A(n244), .B(n245), .Z(n240) );
  GTECH_MUX2 U248 ( .A(n224), .B(n242), .S(n171), .Z(n244) );
  GTECH_NAND3 U249 ( .A(n246), .B(n216), .C(n230), .Z(N147) );
  GTECH_AND2 U250 ( .A(n186), .B(n247), .Z(n230) );
  GTECH_NAND3 U251 ( .A(n238), .B(n158), .C(n236), .Z(n247) );
  GTECH_NAND4 U252 ( .A(n184), .B(n171), .C(n170), .D(n248), .Z(n236) );
  GTECH_NAND2 U253 ( .A(n14), .B(n249), .Z(n216) );
  GTECH_NOT U254 ( .A(n158), .Z(n249) );
  GTECH_NAND3 U255 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n246) );
  GTECH_MUX2 U256 ( .A(n245), .B(n250), .S(n171), .Z(N146) );
  GTECH_OAI21 U257 ( .A(n243), .B(n242), .C(n251), .Z(n250) );
  GTECH_OAI21 U258 ( .A(n252), .B(n242), .C(n253), .Z(n245) );
  GTECH_AO21 U259 ( .A(n248), .B(n184), .C(n224), .Z(n253) );
  GTECH_NOT U260 ( .A(n243), .Z(n252) );
  GTECH_NAND3 U261 ( .A(n214), .B(n254), .C(n255), .Z(n243) );
  GTECH_NOT U262 ( .A(n184), .Z(n254) );
  GTECH_NAND2 U263 ( .A(n256), .B(n251), .Z(N144) );
  GTECH_NAND3 U264 ( .A(N152), .B(n248), .C(n184), .Z(n251) );
  GTECH_MUX2 U265 ( .A(n257), .B(n258), .S(n184), .Z(n256) );
  GTECH_NAND3 U266 ( .A(n255), .B(n214), .C(N150), .Z(n258) );
  GTECH_OA21 U267 ( .A(n224), .B(n248), .C(n259), .Z(n257) );
  GTECH_OAI21 U268 ( .A(n22), .B(n260), .C(N150), .Z(n259) );
  GTECH_OAI21 U269 ( .A(n218), .B(n217), .C(n214), .Z(n248) );
  GTECH_NOT U270 ( .A(n22), .Z(n214) );
  GTECH_MUX2 U271 ( .A(n261), .B(n262), .S(n22), .Z(N142) );
  GTECH_OAI21 U272 ( .A(n260), .B(n242), .C(n263), .Z(n262) );
  GTECH_OAI21 U273 ( .A(n218), .B(n217), .C(N152), .Z(n263) );
  GTECH_OAI21 U274 ( .A(n255), .B(n242), .C(n264), .Z(n261) );
  GTECH_NOT U275 ( .A(n260), .Z(n255) );
  GTECH_NAND3 U276 ( .A(n218), .B(n217), .C(n219), .Z(n260) );
  GTECH_NOT U277 ( .A(n20), .Z(n217) );
  GTECH_NAND2 U278 ( .A(n265), .B(n264), .Z(N140) );
  GTECH_NAND3 U279 ( .A(n18), .B(N152), .C(n20), .Z(n264) );
  GTECH_NOT U280 ( .A(n224), .Z(N152) );
  GTECH_MUX2 U281 ( .A(n266), .B(n267), .S(n20), .Z(n265) );
  GTECH_NAND3 U282 ( .A(n219), .B(n218), .C(N150), .Z(n267) );
  GTECH_NOT U283 ( .A(n18), .Z(n218) );
  GTECH_NOT U284 ( .A(n16), .Z(n219) );
  GTECH_AND2 U285 ( .A(n268), .B(n269), .Z(n266) );
  GTECH_MUX2 U286 ( .A(n224), .B(n242), .S(n18), .Z(n268) );
  GTECH_AO21 U287 ( .A(period[5]), .B(n212), .C(reset), .Z(N14) );
  GTECH_MUX2 U288 ( .A(n270), .B(n271), .S(n18), .Z(N138) );
  GTECH_OAI21 U289 ( .A(n16), .B(n242), .C(n224), .Z(n271) );
  GTECH_NOT U290 ( .A(n269), .Z(n270) );
  GTECH_OAI21 U291 ( .A(n16), .B(n224), .C(n269), .Z(N136) );
  GTECH_NAND2 U292 ( .A(n16), .B(N150), .Z(n269) );
  GTECH_NOT U293 ( .A(n242), .Z(N150) );
  GTECH_NAND2 U294 ( .A(n272), .B(n186), .Z(n242) );
  GTECH_NOT U295 ( .A(n229), .Z(n272) );
  GTECH_NAND2 U296 ( .A(n158), .B(n273), .Z(n224) );
  GTECH_NOT U297 ( .A(N169), .Z(n273) );
  GTECH_NAND2 U298 ( .A(n186), .B(n238), .Z(N169) );
  GTECH_NOT U299 ( .A(n14), .Z(n238) );
  GTECH_AND2 U300 ( .A(n274), .B(n275), .Z(N134) );
  GTECH_OAI21 U301 ( .A(n169), .B(n276), .C(n185), .Z(n275) );
  GTECH_NAND2 U302 ( .A(n186), .B(n229), .Z(N133) );
  GTECH_NAND2 U303 ( .A(n158), .B(n14), .Z(n229) );
  GTECH_AND2 U304 ( .A(n277), .B(n274), .Z(N132) );
  GTECH_XOR2 U305 ( .A(n276), .B(n169), .Z(n277) );
  GTECH_NAND2 U306 ( .A(n278), .B(n279), .Z(n276) );
  GTECH_NOT U307 ( .A(n280), .Z(n278) );
  GTECH_AND2 U308 ( .A(n281), .B(n274), .Z(N130) );
  GTECH_XOR2 U309 ( .A(n280), .B(n159), .Z(n281) );
  GTECH_NAND2 U310 ( .A(n282), .B(n283), .Z(n280) );
  GTECH_NOT U311 ( .A(n160), .Z(n283) );
  GTECH_NOT U312 ( .A(n284), .Z(n282) );
  GTECH_AND2 U313 ( .A(period[4]), .B(n212), .Z(N13) );
  GTECH_AND2 U314 ( .A(n285), .B(n274), .Z(N128) );
  GTECH_XOR2 U315 ( .A(n284), .B(n160), .Z(n285) );
  GTECH_NAND2 U316 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_NOT U317 ( .A(n288), .Z(n286) );
  GTECH_AND2 U318 ( .A(n289), .B(n274), .Z(N126) );
  GTECH_XOR2 U319 ( .A(n288), .B(n161), .Z(n289) );
  GTECH_NAND2 U320 ( .A(n290), .B(n291), .Z(n288) );
  GTECH_NOT U321 ( .A(n162), .Z(n291) );
  GTECH_NOT U322 ( .A(n292), .Z(n290) );
  GTECH_AND2 U323 ( .A(n293), .B(n274), .Z(N124) );
  GTECH_XOR2 U324 ( .A(n292), .B(n162), .Z(n293) );
  GTECH_NAND2 U325 ( .A(n294), .B(n295), .Z(n292) );
  GTECH_NOT U326 ( .A(n163), .Z(n295) );
  GTECH_NOT U327 ( .A(n296), .Z(n294) );
  GTECH_AND2 U328 ( .A(n297), .B(n274), .Z(N122) );
  GTECH_XOR2 U329 ( .A(n296), .B(n163), .Z(n297) );
  GTECH_NAND2 U330 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_NOT U331 ( .A(n164), .Z(n299) );
  GTECH_NOT U332 ( .A(n300), .Z(n298) );
  GTECH_AND2 U333 ( .A(n301), .B(n274), .Z(N120) );
  GTECH_XOR2 U334 ( .A(n300), .B(n164), .Z(n301) );
  GTECH_NAND2 U335 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_NOT U336 ( .A(n304), .Z(n302) );
  GTECH_AO21 U337 ( .A(period[3]), .B(n212), .C(reset), .Z(N12) );
  GTECH_AND2 U338 ( .A(n305), .B(n274), .Z(N118) );
  GTECH_XOR2 U339 ( .A(n304), .B(n165), .Z(n305) );
  GTECH_NAND3 U340 ( .A(n306), .B(n307), .C(n308), .Z(n304) );
  GTECH_NOT U341 ( .A(n166), .Z(n308) );
  GTECH_OAI22 U342 ( .A(n166), .B(n309), .C(n310), .D(n311), .Z(N116) );
  GTECH_MUX2 U343 ( .A(n306), .B(n312), .S(n166), .Z(n311) );
  GTECH_NAND2 U344 ( .A(n306), .B(n307), .Z(n312) );
  GTECH_MUX2 U345 ( .A(N112), .B(n313), .S(n167), .Z(N114) );
  GTECH_AND2 U346 ( .A(n274), .B(n307), .Z(n313) );
  GTECH_NOT U347 ( .A(n168), .Z(n307) );
  GTECH_NOT U348 ( .A(n309), .Z(N112) );
  GTECH_NAND2 U349 ( .A(n274), .B(n168), .Z(n309) );
  GTECH_NOT U350 ( .A(n310), .Z(n274) );
  GTECH_NAND2 U351 ( .A(n228), .B(n186), .Z(n310) );
  GTECH_NOT U352 ( .A(n314), .Z(n228) );
  GTECH_AOI222 U353 ( .A(n315), .B(n316), .C(update_period[11]), .D(n185), .E(
        n317), .F(n318), .Z(n314) );
  GTECH_AND_NOT U354 ( .A(n319), .B(n320), .Z(n317) );
  GTECH_AOI222 U355 ( .A(update_period[10]), .B(n169), .C(update_period[9]), 
        .D(n159), .E(n321), .F(update_period[8]), .Z(n320) );
  GTECH_AND2 U356 ( .A(n160), .B(n322), .Z(n321) );
  GTECH_AND3 U357 ( .A(n322), .B(n318), .C(n319), .Z(n316) );
  GTECH_NAND2 U358 ( .A(n323), .B(n324), .Z(n319) );
  GTECH_NOT U359 ( .A(n169), .Z(n324) );
  GTECH_NOT U360 ( .A(update_period[10]), .Z(n323) );
  GTECH_NAND2 U361 ( .A(n325), .B(n326), .Z(n318) );
  GTECH_NOT U362 ( .A(n185), .Z(n326) );
  GTECH_NOT U363 ( .A(update_period[11]), .Z(n325) );
  GTECH_NAND2 U364 ( .A(n279), .B(n327), .Z(n322) );
  GTECH_NOT U365 ( .A(update_period[9]), .Z(n327) );
  GTECH_NOT U366 ( .A(n159), .Z(n279) );
  GTECH_AOI2N2 U367 ( .A(n328), .B(n329), .C(update_period[8]), .D(n160), .Z(
        n315) );
  GTECH_OA21 U368 ( .A(n330), .B(n331), .C(n332), .Z(n329) );
  GTECH_OR3 U369 ( .A(n333), .B(n330), .C(n334), .Z(n332) );
  GTECH_OAI22 U370 ( .A(update_period[5]), .B(n163), .C(n335), .D(n336), .Z(
        n334) );
  GTECH_OAI21 U371 ( .A(n303), .B(n337), .C(n338), .Z(n336) );
  GTECH_NAND3 U372 ( .A(n339), .B(update_period[2]), .C(n166), .Z(n338) );
  GTECH_AND3 U373 ( .A(n340), .B(n341), .C(n339), .Z(n335) );
  GTECH_NAND2 U374 ( .A(n337), .B(n303), .Z(n339) );
  GTECH_NOT U375 ( .A(n165), .Z(n303) );
  GTECH_NOT U376 ( .A(update_period[3]), .Z(n337) );
  GTECH_OAI21 U377 ( .A(n342), .B(n306), .C(n173), .Z(n341) );
  GTECH_NOT U378 ( .A(n167), .Z(n306) );
  GTECH_OA21 U379 ( .A(update_period[2]), .B(n166), .C(n343), .Z(n340) );
  GTECH_OR_NOT U380 ( .A(n167), .B(n342), .Z(n343) );
  GTECH_NAND2 U381 ( .A(update_period[0]), .B(n168), .Z(n342) );
  GTECH_NOR2 U382 ( .A(update_period[4]), .B(n164), .Z(n333) );
  GTECH_OAI21 U383 ( .A(update_period[5]), .B(n163), .C(n344), .Z(n331) );
  GTECH_AO22 U384 ( .A(update_period[5]), .B(n163), .C(update_period[4]), .D(
        n164), .Z(n344) );
  GTECH_OAI21 U385 ( .A(update_period[6]), .B(n162), .C(n345), .Z(n330) );
  GTECH_OA21 U386 ( .A(n287), .B(n346), .C(n347), .Z(n328) );
  GTECH_NAND3 U387 ( .A(n345), .B(update_period[6]), .C(n162), .Z(n347) );
  GTECH_NAND2 U388 ( .A(n346), .B(n287), .Z(n345) );
  GTECH_NOT U389 ( .A(update_period[7]), .Z(n346) );
  GTECH_NOT U390 ( .A(n161), .Z(n287) );
  GTECH_AO21 U391 ( .A(period[2]), .B(n212), .C(reset), .Z(N11) );
  GTECH_AO21 U392 ( .A(period[1]), .B(n212), .C(reset), .Z(N10) );
  GTECH_NOT U393 ( .A(n213), .Z(n212) );
  GTECH_NAND2 U394 ( .A(period_load), .B(n186), .Z(n213) );
  GTECH_NOT U395 ( .A(reset), .Z(n186) );
endmodule

