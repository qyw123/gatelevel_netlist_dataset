
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
         n27, n28, n31, n32, n81, n159, n163, sub_85_carry_2_, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n180, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n81), .K(n81), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n81), .K(n81), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n81), .K(n81), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n81), .K(n81), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n81), .K(n81), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n81), .K(n81), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n81), .K(n81), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n81), .K(n81), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n81), .K(n81), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n81), .K(n81), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n81), .K(n81), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n180) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n81), .K(n81), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n81), .K(n81), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n178) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n81), .K(n81), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n177) );
  GTECH_FJK1S state_reg_0_ ( .J(n81), .K(n81), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n81), .K(n81), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n163) );
  GTECH_FJK1S update_digits_reg ( .J(n81), .K(n81), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n81), .K(n81), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n176) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n81), .K(n81), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n81), .K(n81), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n81), .K(n81), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n81), .K(n81), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n81), .K(n81), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n81), .K(n81), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n81), .K(n81), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n81), .K(n81), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n81), .K(n81), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n81), .K(n81), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n81), .K(n81), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n165) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n81), .K(n81), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n164) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n81), .K(n81), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n81), .K(n81), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n81), .K(n81), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n81), .K(n81), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n81), .K(n81), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n81), .K(n81), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n81), .K(n81), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n81), .K(n81), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n81), .K(n81), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n81), .K(n81), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n81), .K(n81), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n81), .K(n81), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n159) );
  GTECH_ZERO U172 ( .Z(n81) );
  GTECH_NAND2 U173 ( .A(n15), .B(n191), .Z(seven_segment0_N9) );
  GTECH_AND2 U174 ( .A(ten_count[0]), .B(n191), .Z(seven_segment0_N8) );
  GTECH_AND2 U175 ( .A(n159), .B(n191), .Z(seven_segment0_N6) );
  GTECH_AND2 U176 ( .A(unit_count[3]), .B(n191), .Z(seven_segment0_N22) );
  GTECH_AND2 U177 ( .A(unit_count[2]), .B(n191), .Z(seven_segment0_N20) );
  GTECH_AND2 U178 ( .A(unit_count[1]), .B(n191), .Z(seven_segment0_N18) );
  GTECH_AND2 U179 ( .A(unit_count[0]), .B(n191), .Z(seven_segment0_N16) );
  GTECH_AND2 U180 ( .A(ten_count[3]), .B(n191), .Z(seven_segment0_N14) );
  GTECH_AND2 U181 ( .A(ten_count[2]), .B(n191), .Z(seven_segment0_N12) );
  GTECH_AND2 U182 ( .A(ten_count[1]), .B(n191), .Z(seven_segment0_N10) );
  GTECH_NAND2 U183 ( .A(n192), .B(n193), .Z(segments[6]) );
  GTECH_NAND2 U184 ( .A(n192), .B(n194), .Z(segments[5]) );
  GTECH_OA21 U185 ( .A(n195), .B(n196), .C(n197), .Z(n192) );
  GTECH_AND2 U186 ( .A(n198), .B(n199), .Z(n197) );
  GTECH_OAI21 U187 ( .A(n200), .B(n201), .C(n202), .Z(n196) );
  GTECH_NOT U188 ( .A(n203), .Z(segments[3]) );
  GTECH_AND3 U189 ( .A(n199), .B(n204), .C(n193), .Z(n203) );
  GTECH_NOT U190 ( .A(segments[4]), .Z(n204) );
  GTECH_OAI21 U191 ( .A(n195), .B(n205), .C(n194), .Z(segments[4]) );
  GTECH_NAND2 U192 ( .A(n206), .B(n207), .Z(segments[2]) );
  GTECH_OA21 U193 ( .A(n208), .B(n205), .C(n199), .Z(n206) );
  GTECH_NAND2 U194 ( .A(n207), .B(n193), .Z(segments[1]) );
  GTECH_AND2 U195 ( .A(n209), .B(n210), .Z(n207) );
  GTECH_OA21 U196 ( .A(n211), .B(n195), .C(n212), .Z(n209) );
  GTECH_NAND4 U197 ( .A(n210), .B(n193), .C(n199), .D(n194), .Z(segments[0])
         );
  GTECH_NAND2 U198 ( .A(n213), .B(n214), .Z(n194) );
  GTECH_NOT U199 ( .A(n215), .Z(n199) );
  GTECH_AND3 U200 ( .A(n195), .B(n202), .C(n200), .Z(n215) );
  GTECH_NOT U201 ( .A(n211), .Z(n200) );
  GTECH_NAND2 U202 ( .A(n216), .B(n217), .Z(n211) );
  GTECH_NOT U203 ( .A(n208), .Z(n202) );
  GTECH_NAND2 U204 ( .A(n201), .B(n208), .Z(n193) );
  GTECH_NOT U205 ( .A(n205), .Z(n201) );
  GTECH_NOT U206 ( .A(n218), .Z(n210) );
  GTECH_OAI21 U207 ( .A(n205), .B(n214), .C(n198), .Z(n218) );
  GTECH_NAND2 U208 ( .A(n213), .B(n219), .Z(n198) );
  GTECH_NOT U209 ( .A(n216), .Z(n219) );
  GTECH_NOT U210 ( .A(n212), .Z(n213) );
  GTECH_NAND2 U211 ( .A(n208), .B(n217), .Z(n212) );
  GTECH_NOT U212 ( .A(n220), .Z(n217) );
  GTECH_MUX2 U213 ( .A(n31), .B(n27), .S(n159), .Z(n208) );
  GTECH_NOT U214 ( .A(n195), .Z(n214) );
  GTECH_MUX2 U215 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n159), .Z(n195) );
  GTECH_NAND2 U216 ( .A(n220), .B(n216), .Z(n205) );
  GTECH_MUX2 U217 ( .A(n32), .B(n28), .S(n159), .Z(n216) );
  GTECH_MUX2 U218 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n159), .Z(n220) );
  GTECH_AO21 U219 ( .A(period[0]), .B(n221), .C(reset), .Z(N9) );
  GTECH_AND2 U220 ( .A(period[11]), .B(n221), .Z(N21) );
  GTECH_NAND2 U221 ( .A(n191), .B(n222), .Z(N20) );
  GTECH_AO21 U222 ( .A(period[10]), .B(n221), .C(reset), .Z(N19) );
  GTECH_AND2 U223 ( .A(period[9]), .B(n221), .Z(N18) );
  GTECH_AND2 U224 ( .A(period[8]), .B(n221), .Z(N17) );
  GTECH_AND2 U225 ( .A(N170), .B(n223), .Z(N168) );
  GTECH_NAND2 U226 ( .A(n224), .B(n225), .Z(N167) );
  GTECH_AND2 U227 ( .A(N170), .B(n226), .Z(N166) );
  GTECH_AND2 U228 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U229 ( .A(N170), .B(n227), .Z(N162) );
  GTECH_NOT U230 ( .A(n228), .Z(N170) );
  GTECH_NAND2 U231 ( .A(n229), .B(n191), .Z(n228) );
  GTECH_MUX2 U232 ( .A(n230), .B(n231), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U233 ( .A(ten_count[2]), .B(n232), .C(n233), .Z(n231) );
  GTECH_NOT U234 ( .A(n234), .Z(n233) );
  GTECH_AND2 U235 ( .A(n235), .B(ten_count[2]), .Z(n230) );
  GTECH_AO21 U236 ( .A(period[7]), .B(n221), .C(reset), .Z(N16) );
  GTECH_OAI21 U237 ( .A(n236), .B(n237), .C(n238), .Z(N159) );
  GTECH_NOT U238 ( .A(n239), .Z(n238) );
  GTECH_MUX2 U239 ( .A(n235), .B(n234), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U240 ( .A(ten_count[1]), .B(n232), .C(n240), .Z(n234) );
  GTECH_AND3 U241 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n235) );
  GTECH_MUX2 U242 ( .A(n241), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U243 ( .A(N152), .B(ten_count[0]), .Z(n241) );
  GTECH_NOT U244 ( .A(n240), .Z(N154) );
  GTECH_NAND2 U245 ( .A(N152), .B(n242), .Z(n240) );
  GTECH_NOT U246 ( .A(ten_count[0]), .Z(n242) );
  GTECH_NAND2 U247 ( .A(n243), .B(n163), .Z(N151) );
  GTECH_OA21 U248 ( .A(n14), .B(n244), .C(n224), .Z(n243) );
  GTECH_NOT U249 ( .A(n245), .Z(n224) );
  GTECH_OAI21 U250 ( .A(n246), .B(n236), .C(n191), .Z(n245) );
  GTECH_AND2 U251 ( .A(period[6]), .B(n221), .Z(N15) );
  GTECH_OAI21 U252 ( .A(n244), .B(n232), .C(n247), .Z(N148) );
  GTECH_MUX2 U253 ( .A(n248), .B(n249), .S(n177), .Z(n247) );
  GTECH_NAND2 U254 ( .A(n250), .B(n251), .Z(n249) );
  GTECH_AND_NOT U255 ( .A(N150), .B(n178), .Z(n250) );
  GTECH_AND_NOT U256 ( .A(n252), .B(n253), .Z(n248) );
  GTECH_MUX2 U257 ( .A(n232), .B(n254), .S(n178), .Z(n252) );
  GTECH_NOT U258 ( .A(n255), .Z(N147) );
  GTECH_NOR3 U259 ( .A(n239), .B(n229), .C(n256), .Z(n255) );
  GTECH_AND3 U260 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n256) );
  GTECH_NOT U261 ( .A(n225), .Z(n229) );
  GTECH_NAND2 U262 ( .A(n14), .B(n257), .Z(n225) );
  GTECH_OAI21 U263 ( .A(n257), .B(n258), .C(n191), .Z(n239) );
  GTECH_NAND2 U264 ( .A(n244), .B(n246), .Z(n258) );
  GTECH_NAND4 U265 ( .A(n178), .B(n177), .C(n164), .D(n259), .Z(n244) );
  GTECH_NOT U266 ( .A(n163), .Z(n257) );
  GTECH_MUX2 U267 ( .A(n253), .B(n260), .S(n178), .Z(N146) );
  GTECH_OAI21 U268 ( .A(n261), .B(n254), .C(n262), .Z(n260) );
  GTECH_NOT U269 ( .A(n251), .Z(n261) );
  GTECH_OAI21 U270 ( .A(n251), .B(n254), .C(n263), .Z(n253) );
  GTECH_AO21 U271 ( .A(n259), .B(n164), .C(n232), .Z(n263) );
  GTECH_AND3 U272 ( .A(n264), .B(n223), .C(n265), .Z(n251) );
  GTECH_NOT U273 ( .A(n164), .Z(n264) );
  GTECH_OR_NOT U274 ( .A(n266), .B(n262), .Z(N144) );
  GTECH_NOT U275 ( .A(n267), .Z(n262) );
  GTECH_AND3 U276 ( .A(N152), .B(n259), .C(n164), .Z(n267) );
  GTECH_MUX2 U277 ( .A(n268), .B(n269), .S(n164), .Z(n266) );
  GTECH_AND3 U278 ( .A(n223), .B(N150), .C(n265), .Z(n269) );
  GTECH_OAI22 U279 ( .A(n270), .B(n254), .C(n232), .D(n259), .Z(n268) );
  GTECH_NAND2 U280 ( .A(n271), .B(n223), .Z(n259) );
  GTECH_NOT U281 ( .A(n22), .Z(n223) );
  GTECH_AND_NOT U282 ( .A(n265), .B(n22), .Z(n270) );
  GTECH_OAI21 U283 ( .A(n254), .B(n272), .C(n273), .Z(N142) );
  GTECH_MUX2 U284 ( .A(n274), .B(n275), .S(n22), .Z(n273) );
  GTECH_NAND2 U285 ( .A(N152), .B(n271), .Z(n275) );
  GTECH_XOR2 U286 ( .A(n22), .B(n265), .Z(n272) );
  GTECH_AND3 U287 ( .A(n227), .B(n226), .C(sub_85_carry_2_), .Z(n265) );
  GTECH_NOT U288 ( .A(n20), .Z(n226) );
  GTECH_OR_NOT U289 ( .A(n276), .B(n274), .Z(N140) );
  GTECH_NAND2 U290 ( .A(n277), .B(N152), .Z(n274) );
  GTECH_NOT U291 ( .A(n232), .Z(N152) );
  GTECH_NOT U292 ( .A(n271), .Z(n277) );
  GTECH_NAND2 U293 ( .A(n20), .B(n278), .Z(n271) );
  GTECH_NOT U294 ( .A(sub_85_carry_2_), .Z(n278) );
  GTECH_MUX2 U295 ( .A(n279), .B(n280), .S(n20), .Z(n276) );
  GTECH_AND3 U296 ( .A(sub_85_carry_2_), .B(n227), .C(N150), .Z(n280) );
  GTECH_NOT U297 ( .A(n16), .Z(n227) );
  GTECH_NAND2 U298 ( .A(n281), .B(n282), .Z(n279) );
  GTECH_MUX2 U299 ( .A(n254), .B(n232), .S(sub_85_carry_2_), .Z(n281) );
  GTECH_AO21 U300 ( .A(period[5]), .B(n221), .C(reset), .Z(N14) );
  GTECH_MUX2 U301 ( .A(n283), .B(n284), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U302 ( .A(n282), .Z(n284) );
  GTECH_OAI21 U303 ( .A(n16), .B(n254), .C(n232), .Z(n283) );
  GTECH_OAI21 U304 ( .A(n16), .B(n232), .C(n282), .Z(N136) );
  GTECH_NAND2 U305 ( .A(n16), .B(N150), .Z(n282) );
  GTECH_NOT U306 ( .A(n254), .Z(N150) );
  GTECH_NAND2 U307 ( .A(n285), .B(n191), .Z(n254) );
  GTECH_NOT U308 ( .A(n237), .Z(n285) );
  GTECH_NAND2 U309 ( .A(n163), .B(n286), .Z(n232) );
  GTECH_NOT U310 ( .A(N169), .Z(n286) );
  GTECH_NAND2 U311 ( .A(n191), .B(n246), .Z(N169) );
  GTECH_NOT U312 ( .A(n14), .Z(n246) );
  GTECH_AND2 U313 ( .A(n287), .B(n288), .Z(N134) );
  GTECH_OAI21 U314 ( .A(n176), .B(n289), .C(n165), .Z(n288) );
  GTECH_NAND2 U315 ( .A(n191), .B(n237), .Z(N133) );
  GTECH_NAND2 U316 ( .A(n163), .B(n14), .Z(n237) );
  GTECH_AND2 U317 ( .A(n290), .B(n287), .Z(N132) );
  GTECH_XOR2 U318 ( .A(n289), .B(n176), .Z(n290) );
  GTECH_NAND2 U319 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_NOT U320 ( .A(n293), .Z(n291) );
  GTECH_AND2 U321 ( .A(n294), .B(n287), .Z(N130) );
  GTECH_XOR2 U322 ( .A(n293), .B(n166), .Z(n294) );
  GTECH_NAND2 U323 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_NOT U324 ( .A(n167), .Z(n296) );
  GTECH_NOT U325 ( .A(n297), .Z(n295) );
  GTECH_AND2 U326 ( .A(period[4]), .B(n221), .Z(N13) );
  GTECH_AND2 U327 ( .A(n298), .B(n287), .Z(N128) );
  GTECH_XOR2 U328 ( .A(n297), .B(n167), .Z(n298) );
  GTECH_NAND2 U329 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U330 ( .A(n301), .Z(n299) );
  GTECH_AND2 U331 ( .A(n302), .B(n287), .Z(N126) );
  GTECH_XOR2 U332 ( .A(n301), .B(n168), .Z(n302) );
  GTECH_NAND2 U333 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U334 ( .A(n169), .Z(n304) );
  GTECH_NOT U335 ( .A(n305), .Z(n303) );
  GTECH_AND2 U336 ( .A(n306), .B(n287), .Z(N124) );
  GTECH_XOR2 U337 ( .A(n305), .B(n169), .Z(n306) );
  GTECH_NAND2 U338 ( .A(n307), .B(n308), .Z(n305) );
  GTECH_NOT U339 ( .A(n170), .Z(n308) );
  GTECH_NOT U340 ( .A(n309), .Z(n307) );
  GTECH_AND2 U341 ( .A(n310), .B(n287), .Z(N122) );
  GTECH_XOR2 U342 ( .A(n309), .B(n170), .Z(n310) );
  GTECH_NAND2 U343 ( .A(n311), .B(n312), .Z(n309) );
  GTECH_NOT U344 ( .A(n171), .Z(n312) );
  GTECH_NOT U345 ( .A(n313), .Z(n311) );
  GTECH_AND2 U346 ( .A(n314), .B(n287), .Z(N120) );
  GTECH_XOR2 U347 ( .A(n313), .B(n171), .Z(n314) );
  GTECH_NAND2 U348 ( .A(n315), .B(n316), .Z(n313) );
  GTECH_AO21 U349 ( .A(period[3]), .B(n221), .C(reset), .Z(N12) );
  GTECH_AND2 U350 ( .A(n287), .B(n317), .Z(N118) );
  GTECH_XNOR2 U351 ( .A(n315), .B(n172), .Z(n317) );
  GTECH_AND3 U352 ( .A(n318), .B(n319), .C(n320), .Z(n315) );
  GTECH_NOT U353 ( .A(n173), .Z(n320) );
  GTECH_OAI22 U354 ( .A(n173), .B(n321), .C(n322), .D(n323), .Z(N116) );
  GTECH_MUX2 U355 ( .A(n318), .B(n324), .S(n173), .Z(n323) );
  GTECH_NAND2 U356 ( .A(n318), .B(n319), .Z(n324) );
  GTECH_MUX2 U357 ( .A(N112), .B(n325), .S(n174), .Z(N114) );
  GTECH_AND2 U358 ( .A(n287), .B(n319), .Z(n325) );
  GTECH_NOT U359 ( .A(n175), .Z(n319) );
  GTECH_NOT U360 ( .A(n321), .Z(N112) );
  GTECH_NAND2 U361 ( .A(n287), .B(n175), .Z(n321) );
  GTECH_NOT U362 ( .A(n322), .Z(n287) );
  GTECH_NAND2 U363 ( .A(n236), .B(n191), .Z(n322) );
  GTECH_OAI21 U364 ( .A(n326), .B(n327), .C(n328), .Z(n236) );
  GTECH_AOI2N2 U365 ( .A(n165), .B(update_period[11]), .C(n329), .D(n330), .Z(
        n328) );
  GTECH_AOI222 U366 ( .A(update_period[10]), .B(n176), .C(update_period[9]), 
        .D(n166), .E(n331), .F(update_period[8]), .Z(n330) );
  GTECH_AND2 U367 ( .A(n167), .B(n332), .Z(n331) );
  GTECH_AO21 U368 ( .A(n333), .B(n334), .C(n329), .Z(n327) );
  GTECH_OAI22 U369 ( .A(update_period[10]), .B(n176), .C(update_period[11]), 
        .D(n165), .Z(n329) );
  GTECH_AOI2N2 U370 ( .A(update_period[6]), .B(n335), .C(n300), .D(n336), .Z(
        n334) );
  GTECH_AND2 U371 ( .A(n169), .B(n337), .Z(n335) );
  GTECH_AOI2N2 U372 ( .A(n338), .B(n339), .C(n340), .D(n341), .Z(n333) );
  GTECH_OAI21 U373 ( .A(update_period[4]), .B(n171), .C(n338), .Z(n341) );
  GTECH_OAI22 U374 ( .A(update_period[5]), .B(n170), .C(n342), .D(n343), .Z(
        n340) );
  GTECH_OAI2N2 U375 ( .A(n316), .B(n344), .C(update_period[2]), .D(n345), .Z(
        n343) );
  GTECH_AND2 U376 ( .A(n173), .B(n346), .Z(n345) );
  GTECH_AND3 U377 ( .A(n347), .B(n348), .C(n346), .Z(n342) );
  GTECH_NAND2 U378 ( .A(n344), .B(n316), .Z(n346) );
  GTECH_NOT U379 ( .A(n172), .Z(n316) );
  GTECH_NOT U380 ( .A(update_period[3]), .Z(n344) );
  GTECH_OAI21 U381 ( .A(n349), .B(n318), .C(n180), .Z(n348) );
  GTECH_NOT U382 ( .A(n174), .Z(n318) );
  GTECH_OA21 U383 ( .A(n173), .B(update_period[2]), .C(n350), .Z(n347) );
  GTECH_OR_NOT U384 ( .A(n174), .B(n349), .Z(n350) );
  GTECH_NAND2 U385 ( .A(update_period[0]), .B(n175), .Z(n349) );
  GTECH_ADD_ABC U386 ( .A(n351), .B(n170), .C(update_period[5]), .COUT(n339)
         );
  GTECH_AND2 U387 ( .A(update_period[4]), .B(n171), .Z(n351) );
  GTECH_NOT U388 ( .A(n352), .Z(n338) );
  GTECH_OAI21 U389 ( .A(update_period[6]), .B(n169), .C(n337), .Z(n352) );
  GTECH_NAND2 U390 ( .A(n336), .B(n300), .Z(n337) );
  GTECH_NOT U391 ( .A(n168), .Z(n300) );
  GTECH_NOT U392 ( .A(update_period[7]), .Z(n336) );
  GTECH_OAI21 U393 ( .A(update_period[8]), .B(n167), .C(n332), .Z(n326) );
  GTECH_NAND2 U394 ( .A(n353), .B(n292), .Z(n332) );
  GTECH_NOT U395 ( .A(n166), .Z(n292) );
  GTECH_NOT U396 ( .A(update_period[9]), .Z(n353) );
  GTECH_AO21 U397 ( .A(period[2]), .B(n221), .C(reset), .Z(N11) );
  GTECH_AO21 U398 ( .A(period[1]), .B(n221), .C(reset), .Z(N10) );
  GTECH_NOT U399 ( .A(n222), .Z(n221) );
  GTECH_NAND2 U400 ( .A(period_load), .B(n191), .Z(n222) );
  GTECH_NOT U401 ( .A(reset), .Z(n191) );
endmodule

