
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
         n28, n32, n81, n159, n162, sub_85_carry_2_, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352;
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
        .CP(clk), .Q(update_period[1]) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n81), .K(n81), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n81), .K(n81), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n177) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n81), .K(n81), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n176) );
  GTECH_FJK1S state_reg_0_ ( .J(n81), .K(n81), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n81), .K(n81), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n81), .K(n81), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n81), .K(n81), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n81), .K(n81), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n81), .K(n81), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n81), .K(n81), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n81), .K(n81), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n81), .K(n81), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n81), .K(n81), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n81), .K(n81), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n81), .K(n81), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n81), .K(n81), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n81), .K(n81), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n164) );
  GTECH_FJK1S update_digits_reg ( .J(n81), .K(n81), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n81), .K(n81), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n163) );
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
        seven_segment0_unit_count_reg[2]), .QN(n28) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n32) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n159) );
  GTECH_ZERO U171 ( .Z(n81) );
  GTECH_NAND2 U172 ( .A(n15), .B(n190), .Z(seven_segment0_N9) );
  GTECH_AND2 U173 ( .A(ten_count[0]), .B(n190), .Z(seven_segment0_N8) );
  GTECH_AND2 U174 ( .A(n159), .B(n190), .Z(seven_segment0_N6) );
  GTECH_AND2 U175 ( .A(unit_count[3]), .B(n190), .Z(seven_segment0_N22) );
  GTECH_AND2 U176 ( .A(unit_count[2]), .B(n190), .Z(seven_segment0_N20) );
  GTECH_AND2 U177 ( .A(unit_count[1]), .B(n190), .Z(seven_segment0_N18) );
  GTECH_AND2 U178 ( .A(unit_count[0]), .B(n190), .Z(seven_segment0_N16) );
  GTECH_AND2 U179 ( .A(ten_count[3]), .B(n190), .Z(seven_segment0_N14) );
  GTECH_AND2 U180 ( .A(ten_count[2]), .B(n190), .Z(seven_segment0_N12) );
  GTECH_AND2 U181 ( .A(ten_count[1]), .B(n190), .Z(seven_segment0_N10) );
  GTECH_NAND3 U182 ( .A(n191), .B(n192), .C(n193), .Z(segments[6]) );
  GTECH_AOI21 U183 ( .A(n194), .B(n195), .C(n196), .Z(n193) );
  GTECH_OAI21 U184 ( .A(n197), .B(n198), .C(n199), .Z(segments[3]) );
  GTECH_AND_NOT U185 ( .A(n200), .B(segments[4]), .Z(n199) );
  GTECH_OAI21 U186 ( .A(n201), .B(n202), .C(n192), .Z(segments[4]) );
  GTECH_NAND3 U187 ( .A(n202), .B(n203), .C(n204), .Z(segments[2]) );
  GTECH_NOT U188 ( .A(segments[5]), .Z(n203) );
  GTECH_OR3 U189 ( .A(n196), .B(n205), .C(n206), .Z(segments[5]) );
  GTECH_OAI21 U190 ( .A(n194), .B(n192), .C(n191), .Z(n206) );
  GTECH_NAND2 U191 ( .A(n195), .B(n207), .Z(n192) );
  GTECH_AND_NOT U192 ( .A(n207), .B(n202), .Z(n205) );
  GTECH_NAND3 U193 ( .A(n191), .B(n204), .C(n208), .Z(segments[1]) );
  GTECH_NOT U194 ( .A(n209), .Z(n208) );
  GTECH_NAND4 U195 ( .A(n198), .B(n207), .C(n210), .D(n211), .Z(n191) );
  GTECH_OR_NOT U196 ( .A(n196), .B(n212), .Z(segments[0]) );
  GTECH_AND2 U197 ( .A(n204), .B(n213), .Z(n212) );
  GTECH_NAND2 U198 ( .A(n207), .B(n209), .Z(n213) );
  GTECH_OAI21 U199 ( .A(n214), .B(n198), .C(n202), .Z(n209) );
  GTECH_NOT U200 ( .A(n201), .Z(n207) );
  GTECH_NAND2 U201 ( .A(n201), .B(n195), .Z(n204) );
  GTECH_NOT U202 ( .A(n197), .Z(n195) );
  GTECH_NAND2 U203 ( .A(n215), .B(n210), .Z(n197) );
  GTECH_OAI21 U204 ( .A(n210), .B(n202), .C(n200), .Z(n196) );
  GTECH_NAND4 U205 ( .A(n201), .B(n198), .C(n210), .D(n211), .Z(n200) );
  GTECH_NOT U206 ( .A(n194), .Z(n198) );
  GTECH_MUX2 U207 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n159), .Z(n201) );
  GTECH_NAND2 U208 ( .A(n194), .B(n211), .Z(n202) );
  GTECH_NOT U209 ( .A(n215), .Z(n211) );
  GTECH_MUX2 U210 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n159), .Z(n215) );
  GTECH_MUX2 U211 ( .A(n32), .B(n28), .S(n159), .Z(n194) );
  GTECH_NOT U212 ( .A(n214), .Z(n210) );
  GTECH_MUX2 U213 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n159), .Z(n214) );
  GTECH_AO21 U214 ( .A(period[0]), .B(n216), .C(reset), .Z(N9) );
  GTECH_AND2 U215 ( .A(period[11]), .B(n216), .Z(N21) );
  GTECH_NAND2 U216 ( .A(n190), .B(n217), .Z(N20) );
  GTECH_AO21 U217 ( .A(period[10]), .B(n216), .C(reset), .Z(N19) );
  GTECH_AND2 U218 ( .A(period[9]), .B(n216), .Z(N18) );
  GTECH_AND2 U219 ( .A(period[8]), .B(n216), .Z(N17) );
  GTECH_AND2 U220 ( .A(N170), .B(n218), .Z(N168) );
  GTECH_NAND2 U221 ( .A(n219), .B(n220), .Z(N167) );
  GTECH_NOT U222 ( .A(n221), .Z(n219) );
  GTECH_AND2 U223 ( .A(N170), .B(n222), .Z(N166) );
  GTECH_AND2 U224 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U225 ( .A(N170), .B(n223), .Z(N162) );
  GTECH_NOT U226 ( .A(n224), .Z(N170) );
  GTECH_NAND2 U227 ( .A(n225), .B(n190), .Z(n224) );
  GTECH_NOT U228 ( .A(n220), .Z(n225) );
  GTECH_MUX2 U229 ( .A(n226), .B(n227), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U230 ( .A(ten_count[2]), .B(n228), .C(n229), .Z(n227) );
  GTECH_NOT U231 ( .A(n230), .Z(n229) );
  GTECH_AND2 U232 ( .A(n231), .B(ten_count[2]), .Z(n226) );
  GTECH_AO21 U233 ( .A(period[7]), .B(n216), .C(reset), .Z(N16) );
  GTECH_OAI21 U234 ( .A(n232), .B(n233), .C(n234), .Z(N159) );
  GTECH_MUX2 U235 ( .A(n231), .B(n230), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U236 ( .A(ten_count[1]), .B(n228), .C(n235), .Z(n230) );
  GTECH_NOT U237 ( .A(n236), .Z(n231) );
  GTECH_NAND3 U238 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n236) );
  GTECH_MUX2 U239 ( .A(n237), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U240 ( .A(N152), .B(ten_count[0]), .Z(n237) );
  GTECH_NOT U241 ( .A(n235), .Z(N154) );
  GTECH_NAND2 U242 ( .A(N152), .B(n238), .Z(n235) );
  GTECH_NOT U243 ( .A(ten_count[0]), .Z(n238) );
  GTECH_NAND2 U244 ( .A(n239), .B(n162), .Z(N151) );
  GTECH_AOI21 U245 ( .A(n240), .B(n241), .C(n221), .Z(n239) );
  GTECH_OAI21 U246 ( .A(n241), .B(n232), .C(n190), .Z(n221) );
  GTECH_NOT U247 ( .A(n242), .Z(n240) );
  GTECH_AND2 U248 ( .A(period[6]), .B(n216), .Z(N15) );
  GTECH_OAI21 U249 ( .A(n228), .B(n242), .C(n243), .Z(N148) );
  GTECH_MUX2 U250 ( .A(n244), .B(n245), .S(n176), .Z(n243) );
  GTECH_OR3 U251 ( .A(n177), .B(n246), .C(n247), .Z(n245) );
  GTECH_AND_NOT U252 ( .A(n248), .B(n249), .Z(n244) );
  GTECH_MUX2 U253 ( .A(n228), .B(n246), .S(n177), .Z(n248) );
  GTECH_NAND3 U254 ( .A(n250), .B(n220), .C(n234), .Z(N147) );
  GTECH_AND2 U255 ( .A(n190), .B(n251), .Z(n234) );
  GTECH_NAND3 U256 ( .A(n241), .B(n162), .C(n242), .Z(n251) );
  GTECH_NAND4 U257 ( .A(n177), .B(n176), .C(n163), .D(n252), .Z(n242) );
  GTECH_NAND2 U258 ( .A(n14), .B(n253), .Z(n220) );
  GTECH_NOT U259 ( .A(n162), .Z(n253) );
  GTECH_NAND3 U260 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n250) );
  GTECH_MUX2 U261 ( .A(n249), .B(n254), .S(n177), .Z(N146) );
  GTECH_OAI21 U262 ( .A(n247), .B(n246), .C(n255), .Z(n254) );
  GTECH_OAI21 U263 ( .A(n256), .B(n246), .C(n257), .Z(n249) );
  GTECH_OAI21 U264 ( .A(n258), .B(n259), .C(N152), .Z(n257) );
  GTECH_NOT U265 ( .A(n247), .Z(n256) );
  GTECH_NAND3 U266 ( .A(n259), .B(n218), .C(n260), .Z(n247) );
  GTECH_NOT U267 ( .A(n163), .Z(n259) );
  GTECH_NAND2 U268 ( .A(n261), .B(n255), .Z(N144) );
  GTECH_NAND3 U269 ( .A(N152), .B(n252), .C(n163), .Z(n255) );
  GTECH_MUX2 U270 ( .A(n262), .B(n263), .S(n163), .Z(n261) );
  GTECH_NAND3 U271 ( .A(n260), .B(n218), .C(N150), .Z(n263) );
  GTECH_AOI2N2 U272 ( .A(n258), .B(N152), .C(n264), .D(n246), .Z(n262) );
  GTECH_AND2 U273 ( .A(n260), .B(n218), .Z(n264) );
  GTECH_NOT U274 ( .A(n252), .Z(n258) );
  GTECH_NAND2 U275 ( .A(n265), .B(n218), .Z(n252) );
  GTECH_NOT U276 ( .A(n22), .Z(n218) );
  GTECH_OAI21 U277 ( .A(n246), .B(n266), .C(n267), .Z(N142) );
  GTECH_MUX2 U278 ( .A(n268), .B(n269), .S(n22), .Z(n267) );
  GTECH_NAND2 U279 ( .A(N152), .B(n265), .Z(n269) );
  GTECH_XOR2 U280 ( .A(n22), .B(n260), .Z(n266) );
  GTECH_NOT U281 ( .A(n270), .Z(n260) );
  GTECH_NAND3 U282 ( .A(n223), .B(n222), .C(sub_85_carry_2_), .Z(n270) );
  GTECH_NOT U283 ( .A(n20), .Z(n222) );
  GTECH_NAND2 U284 ( .A(n271), .B(n268), .Z(N140) );
  GTECH_NAND2 U285 ( .A(n272), .B(N152), .Z(n268) );
  GTECH_NOT U286 ( .A(n228), .Z(N152) );
  GTECH_NOT U287 ( .A(n265), .Z(n272) );
  GTECH_NAND2 U288 ( .A(n20), .B(n273), .Z(n265) );
  GTECH_NOT U289 ( .A(sub_85_carry_2_), .Z(n273) );
  GTECH_MUX2 U290 ( .A(n274), .B(n275), .S(n20), .Z(n271) );
  GTECH_NAND3 U291 ( .A(sub_85_carry_2_), .B(n223), .C(N150), .Z(n275) );
  GTECH_NOT U292 ( .A(n16), .Z(n223) );
  GTECH_AND2 U293 ( .A(n276), .B(n277), .Z(n274) );
  GTECH_MUX2 U294 ( .A(n246), .B(n228), .S(sub_85_carry_2_), .Z(n276) );
  GTECH_AO21 U295 ( .A(period[5]), .B(n216), .C(reset), .Z(N14) );
  GTECH_MUX2 U296 ( .A(n278), .B(n279), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U297 ( .A(n277), .Z(n279) );
  GTECH_OAI21 U298 ( .A(n16), .B(n246), .C(n228), .Z(n278) );
  GTECH_OAI21 U299 ( .A(n16), .B(n228), .C(n277), .Z(N136) );
  GTECH_NAND2 U300 ( .A(n16), .B(N150), .Z(n277) );
  GTECH_NOT U301 ( .A(n246), .Z(N150) );
  GTECH_NAND2 U302 ( .A(n280), .B(n190), .Z(n246) );
  GTECH_NOT U303 ( .A(n233), .Z(n280) );
  GTECH_NAND2 U304 ( .A(n162), .B(n281), .Z(n228) );
  GTECH_NOT U305 ( .A(N169), .Z(n281) );
  GTECH_NAND2 U306 ( .A(n190), .B(n241), .Z(N169) );
  GTECH_NOT U307 ( .A(n14), .Z(n241) );
  GTECH_AND2 U308 ( .A(n282), .B(n283), .Z(N134) );
  GTECH_OAI21 U309 ( .A(n175), .B(n284), .C(n164), .Z(n283) );
  GTECH_NAND2 U310 ( .A(n190), .B(n233), .Z(N133) );
  GTECH_NAND2 U311 ( .A(n162), .B(n14), .Z(n233) );
  GTECH_AND2 U312 ( .A(n285), .B(n282), .Z(N132) );
  GTECH_XOR2 U313 ( .A(n284), .B(n175), .Z(n285) );
  GTECH_NAND2 U314 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_NOT U315 ( .A(n288), .Z(n286) );
  GTECH_AND2 U316 ( .A(n289), .B(n282), .Z(N130) );
  GTECH_XOR2 U317 ( .A(n288), .B(n165), .Z(n289) );
  GTECH_NAND2 U318 ( .A(n290), .B(n291), .Z(n288) );
  GTECH_NOT U319 ( .A(n292), .Z(n290) );
  GTECH_AND2 U320 ( .A(period[4]), .B(n216), .Z(N13) );
  GTECH_AND2 U321 ( .A(n293), .B(n282), .Z(N128) );
  GTECH_XOR2 U322 ( .A(n292), .B(n166), .Z(n293) );
  GTECH_NAND2 U323 ( .A(n294), .B(n295), .Z(n292) );
  GTECH_NOT U324 ( .A(n167), .Z(n295) );
  GTECH_NOT U325 ( .A(n296), .Z(n294) );
  GTECH_AND2 U326 ( .A(n297), .B(n282), .Z(N126) );
  GTECH_XOR2 U327 ( .A(n296), .B(n167), .Z(n297) );
  GTECH_NAND2 U328 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_NOT U329 ( .A(n168), .Z(n299) );
  GTECH_NOT U330 ( .A(n300), .Z(n298) );
  GTECH_AND2 U331 ( .A(n301), .B(n282), .Z(N124) );
  GTECH_XOR2 U332 ( .A(n300), .B(n168), .Z(n301) );
  GTECH_NAND2 U333 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_NOT U334 ( .A(n169), .Z(n303) );
  GTECH_NOT U335 ( .A(n304), .Z(n302) );
  GTECH_AND2 U336 ( .A(n305), .B(n282), .Z(N122) );
  GTECH_XOR2 U337 ( .A(n304), .B(n169), .Z(n305) );
  GTECH_NAND2 U338 ( .A(n306), .B(n307), .Z(n304) );
  GTECH_NOT U339 ( .A(n170), .Z(n307) );
  GTECH_NOT U340 ( .A(n308), .Z(n306) );
  GTECH_AND2 U341 ( .A(n309), .B(n282), .Z(N120) );
  GTECH_XOR2 U342 ( .A(n308), .B(n170), .Z(n309) );
  GTECH_NAND2 U343 ( .A(n310), .B(n311), .Z(n308) );
  GTECH_NOT U344 ( .A(n171), .Z(n311) );
  GTECH_NOT U345 ( .A(n312), .Z(n310) );
  GTECH_AO21 U346 ( .A(period[3]), .B(n216), .C(reset), .Z(N12) );
  GTECH_AND2 U347 ( .A(n313), .B(n282), .Z(N118) );
  GTECH_XOR2 U348 ( .A(n312), .B(n171), .Z(n313) );
  GTECH_NAND3 U349 ( .A(n314), .B(n315), .C(n316), .Z(n312) );
  GTECH_NOT U350 ( .A(n172), .Z(n316) );
  GTECH_OAI22 U351 ( .A(n172), .B(n317), .C(n318), .D(n319), .Z(N116) );
  GTECH_MUX2 U352 ( .A(n314), .B(n320), .S(n172), .Z(n319) );
  GTECH_NAND2 U353 ( .A(n314), .B(n315), .Z(n320) );
  GTECH_NOT U354 ( .A(n173), .Z(n314) );
  GTECH_MUX2 U355 ( .A(N112), .B(n321), .S(n173), .Z(N114) );
  GTECH_AND2 U356 ( .A(n282), .B(n315), .Z(n321) );
  GTECH_NOT U357 ( .A(n174), .Z(n315) );
  GTECH_NOT U358 ( .A(n317), .Z(N112) );
  GTECH_NAND2 U359 ( .A(n282), .B(n174), .Z(n317) );
  GTECH_NOT U360 ( .A(n318), .Z(n282) );
  GTECH_NAND2 U361 ( .A(n232), .B(n190), .Z(n318) );
  GTECH_NOT U362 ( .A(n322), .Z(n232) );
  GTECH_AOI222 U363 ( .A(n323), .B(n324), .C(update_period[11]), .D(n164), .E(
        n325), .F(n326), .Z(n322) );
  GTECH_OAI2N2 U364 ( .A(n327), .B(n328), .C(n329), .D(n330), .Z(n325) );
  GTECH_OAI2N2 U365 ( .A(n331), .B(n332), .C(update_period[9]), .D(n165), .Z(
        n330) );
  GTECH_NAND2 U366 ( .A(n166), .B(n333), .Z(n331) );
  GTECH_AND3 U367 ( .A(n333), .B(n329), .C(n326), .Z(n324) );
  GTECH_NAND2 U368 ( .A(n334), .B(n335), .Z(n326) );
  GTECH_NOT U369 ( .A(n164), .Z(n335) );
  GTECH_NOT U370 ( .A(update_period[11]), .Z(n334) );
  GTECH_NAND2 U371 ( .A(n328), .B(n327), .Z(n329) );
  GTECH_NOT U372 ( .A(n175), .Z(n327) );
  GTECH_NOT U373 ( .A(update_period[10]), .Z(n328) );
  GTECH_NAND2 U374 ( .A(n287), .B(n336), .Z(n333) );
  GTECH_NOT U375 ( .A(update_period[9]), .Z(n336) );
  GTECH_NOT U376 ( .A(n165), .Z(n287) );
  GTECH_AOI2N2 U377 ( .A(n291), .B(n332), .C(n337), .D(n338), .Z(n323) );
  GTECH_OAI2N2 U378 ( .A(n339), .B(n340), .C(n341), .D(n342), .Z(n338) );
  GTECH_ADD_ABC U379 ( .A(n343), .B(n169), .C(update_period[5]), .COUT(n342)
         );
  GTECH_AND2 U380 ( .A(update_period[4]), .B(n170), .Z(n343) );
  GTECH_NOT U381 ( .A(update_period[6]), .Z(n340) );
  GTECH_OAI21 U382 ( .A(update_period[7]), .B(n167), .C(n168), .Z(n339) );
  GTECH_OAI2N2 U383 ( .A(n344), .B(n345), .C(update_period[7]), .D(n167), .Z(
        n337) );
  GTECH_OAI21 U384 ( .A(update_period[4]), .B(n170), .C(n341), .Z(n345) );
  GTECH_NOT U385 ( .A(n346), .Z(n341) );
  GTECH_OAI22 U386 ( .A(update_period[6]), .B(n168), .C(update_period[7]), .D(
        n167), .Z(n346) );
  GTECH_OAI22 U387 ( .A(n347), .B(n348), .C(update_period[5]), .D(n169), .Z(
        n344) );
  GTECH_ADD_ABC U388 ( .A(n349), .B(n171), .C(update_period[3]), .COUT(n348)
         );
  GTECH_AND2 U389 ( .A(update_period[2]), .B(n172), .Z(n349) );
  GTECH_AND_NOT U390 ( .A(n350), .B(n351), .Z(n347) );
  GTECH_OAI22 U391 ( .A(update_period[2]), .B(n172), .C(n171), .D(
        update_period[3]), .Z(n351) );
  GTECH_ADD_ABC U392 ( .A(update_period[1]), .B(n352), .C(n173), .COUT(n350)
         );
  GTECH_AND2 U393 ( .A(update_period[0]), .B(n174), .Z(n352) );
  GTECH_NOT U394 ( .A(update_period[8]), .Z(n332) );
  GTECH_NOT U395 ( .A(n166), .Z(n291) );
  GTECH_AO21 U396 ( .A(period[2]), .B(n216), .C(reset), .Z(N11) );
  GTECH_AO21 U397 ( .A(period[1]), .B(n216), .C(reset), .Z(N10) );
  GTECH_NOT U398 ( .A(n217), .Z(n216) );
  GTECH_NAND2 U399 ( .A(period_load), .B(n190), .Z(n217) );
  GTECH_NOT U400 ( .A(reset), .Z(n190) );
endmodule

